import 'package:drift/drift.dart';

import '../database.dart';
import '../tables.dart';

part 'option_set_dao.g.dart';

@DriftAccessor(tables: [OptionSets, OptionSetItems, Amals, Completions])
class OptionSetDao extends DatabaseAccessor<AppDatabase>
    with _$OptionSetDaoMixin {
  OptionSetDao(super.db);

  Stream<List<OptionSetRow>> watchSets() {
    return (select(optionSets)
          ..where((s) => s.archivedAt.isNull())
          ..orderBy([(s) => OrderingTerm.asc(s.sortOrder)]))
        .watch();
  }

  /// Every item, archived included — callers need archived rows to resolve
  /// historical choices.
  Stream<List<OptionSetItemRow>> watchItems() {
    return (select(
      optionSetItems,
    )..orderBy([(i) => OrderingTerm.asc(i.sortOrder)])).watch();
  }

  Future<List<OptionSetItemRow>> getItems() {
    return (select(
      optionSetItems,
    )..orderBy([(i) => OrderingTerm.asc(i.sortOrder)])).get();
  }

  Future<int> upsertSet({
    int? id,
    required String name,
    String? seedKey,
    required List<({int? id, String label, String? seedKey})> items,
  }) async {
    return transaction(() async {
      final int setId;
      if (id == null) {
        final maxOrder = await customSelect(
          'SELECT COALESCE(MAX(sort_order), -1) AS m FROM option_sets',
        ).getSingle();
        setId = await into(optionSets).insert(
          OptionSetsCompanion.insert(
            name: name,
            seedKey: Value(seedKey),
            sortOrder: Value(maxOrder.read<int>('m') + 1),
            createdAt: DateTime.now().toUtc(),
          ),
        );
      } else {
        setId = id;
        await (update(optionSets)..where((s) => s.id.equals(setId))).write(
          OptionSetsCompanion(name: Value(name), seedKey: Value(seedKey)),
        );
      }

      final keptIds = items.map((i) => i.id).whereType<int>().toSet();
      final existing = await (select(
        optionSetItems,
      )..where((i) => i.setId.equals(setId))).get();

      for (final row in existing) {
        if (keptIds.contains(row.id) || row.archivedAt != null) continue;
        await _removeItem(row.id);
      }

      for (var i = 0; i < items.length; i++) {
        final item = items[i];
        if (item.id == null) {
          await into(optionSetItems).insert(
            OptionSetItemsCompanion.insert(
              setId: setId,
              label: item.label,
              seedKey: Value(item.seedKey),
              sortOrder: Value(i),
            ),
          );
        } else {
          await (update(
            optionSetItems,
          )..where((r) => r.id.equals(item.id!) & r.setId.equals(setId))).write(
            OptionSetItemsCompanion(
              label: Value(item.label),
              seedKey: Value(item.seedKey),
              sortOrder: Value(i),
            ),
          );
        }
      }
      return setId;
    });
  }

  /// Archives when a completion points at it, hard-deletes otherwise.
  Future<void> _removeItem(int itemId) async {
    if (await _itemIsReferenced(itemId)) {
      await (update(optionSetItems)..where((i) => i.id.equals(itemId))).write(
        OptionSetItemsCompanion(archivedAt: Value(DateTime.now().toUtc())),
      );
    } else {
      await (delete(optionSetItems)..where((i) => i.id.equals(itemId))).go();
    }
  }

  Future<bool> _itemIsReferenced(int itemId) async {
    final row = await customSelect(
      'SELECT 1 AS x FROM completions WHERE option_item_id = ? LIMIT 1',
      variables: [Variable.withInt(itemId)],
    ).getSingleOrNull();
    return row != null;
  }

  Future<void> deleteSet(int setId) async {
    await transaction(() async {
      await (update(amals)..where((a) => a.optionSetId.equals(setId))).write(
        const AmalsCompanion(
          optionSetId: Value(null),
          requireChoice: Value(false),
        ),
      );

      final rows = await (select(
        optionSetItems,
      )..where((i) => i.setId.equals(setId))).get();
      var anyReferenced = false;
      for (final row in rows) {
        if (await _itemIsReferenced(row.id)) anyReferenced = true;
      }

      final now = DateTime.now().toUtc();
      if (anyReferenced) {
        await (update(optionSetItems)..where((i) => i.setId.equals(setId)))
            .write(OptionSetItemsCompanion(archivedAt: Value(now)));
        await (update(optionSets)..where((s) => s.id.equals(setId))).write(
          OptionSetsCompanion(archivedAt: Value(now)),
        );
      } else {
        await (delete(optionSets)..where((s) => s.id.equals(setId))).go();
      }
    });
  }
}
