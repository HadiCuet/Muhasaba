import 'package:drift/drift.dart';

import '../database.dart';
import '../tables.dart';

part 'amal_dao.g.dart';

@DriftAccessor(tables: [Amals])
class AmalDao extends DatabaseAccessor<AppDatabase> with _$AmalDaoMixin {
  AmalDao(super.db);

  /// All amals including archived, ordered by sortOrder then id.
  Stream<List<AmalRow>> watchAll() {
    return (select(amals)
          ..orderBy([
            (a) => OrderingTerm.asc(a.sortOrder),
            (a) => OrderingTerm.asc(a.id),
          ]))
        .watch();
  }

  /// All non-archived amal, ordered by sortOrder then id.
  Stream<List<AmalRow>> watchActive() {
    return (select(amals)
          ..where((a) => a.archivedAt.isNull())
          ..orderBy([
            (a) => OrderingTerm.asc(a.sortOrder),
            (a) => OrderingTerm.asc(a.id),
          ]))
        .watch();
  }

  Future<List<AmalRow>> getActive() {
    return (select(amals)
          ..where((a) => a.archivedAt.isNull())
          ..orderBy([
            (a) => OrderingTerm.asc(a.sortOrder),
            (a) => OrderingTerm.asc(a.id),
          ]))
        .get();
  }

  Future<AmalRow?> getById(int id) {
    return (select(amals)..where((a) => a.id.equals(id))).getSingleOrNull();
  }

  Future<int> insertAmal(AmalsCompanion entry) => into(amals).insert(entry);

  Future<bool> updateAmal(AmalRow row) => update(amals).replace(row);

  /// Soft-delete: hides from tracking but keeps historical completions.
  Future<int> archive(int id, DateTime at) {
    return (update(amals)..where((a) => a.id.equals(id))).write(
      AmalsCompanion(archivedAt: Value(at)),
    );
  }

  /// Hard-delete an amal and cascade its completions/hidden days. Use
  /// sparingly — `archive` is usually what we want.
  Future<int> deleteAmal(int id) {
    return (delete(amals)..where((a) => a.id.equals(id))).go();
  }

  /// Returns distinct icons used by active amal, most-recently-created first.
  Future<List<String>> getRecentIcons() async {
    final rows =
        await (selectOnly(amals, distinct: true)
              ..addColumns([amals.icon])
              ..where(amals.archivedAt.isNull())
              ..orderBy([OrderingTerm.desc(amals.id)])
              ..limit(20))
            .get();
    return rows.map((r) => r.read(amals.icon)!).toList();
  }

  /// Batch-update sortOrder for multiple amal at once (drag-to-reorder).
  Future<void> updateSortOrders(Map<int, int> idToSortOrder) async {
    await db.batch((b) {
      for (final entry in idToSortOrder.entries) {
        b.update(
          amals,
          AmalsCompanion(sortOrder: Value(entry.value)),
          where: (a) => a.id.equals(entry.key),
        );
      }
    });
  }
}
