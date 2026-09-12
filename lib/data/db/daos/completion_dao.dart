import 'package:drift/drift.dart';

import '../database.dart';
import '../tables.dart';

part 'completion_dao.g.dart';

@DriftAccessor(tables: [Completions])
class CompletionDao extends DatabaseAccessor<AppDatabase>
    with _$CompletionDaoMixin {
  CompletionDao(super.db);

  Stream<List<CompletionRow>> watchForDate(DateTime date) {
    return (select(
      completions,
    )..where((c) => c.muhasabaDate.equals(date))).watch();
  }

  Future<List<CompletionRow>> getForDate(DateTime date) {
    return (select(
      completions,
    )..where((c) => c.muhasabaDate.equals(date))).get();
  }

  Future<CompletionRow?> getForAmalDate(int amalId, DateTime date) {
    return (select(completions)
          ..where((c) => c.amalId.equals(amalId) & c.muhasabaDate.equals(date)))
        .getSingleOrNull();
  }

  Future<List<CompletionRow>> getForAmalBetween(
    int amalId,
    DateTime start, // inclusive
    DateTime endExclusive,
  ) {
    return (select(completions)..where(
          (c) =>
              c.amalId.equals(amalId) &
              c.muhasabaDate.isBiggerOrEqualValue(start) &
              c.muhasabaDate.isSmallerThanValue(endExclusive),
        ))
        .get();
  }

  /// Upsert for (amal, date). Fields left `Value.absent()` are not written, so
  /// a progress change never clobbers a note and vice versa.
  Future<void> upsertProgress({
    required int amalId,
    required DateTime muhasabaDate,
    required int progress,
    Value<String?> note = const Value.absent(),
    Value<int?> optionItemId = const Value.absent(),
    Value<DateTime?> completedAt = const Value.absent(),
  }) async {
    final existing = await getForAmalDate(amalId, muhasabaDate);
    if (existing == null) {
      await into(completions).insert(
        CompletionsCompanion.insert(
          amalId: amalId,
          muhasabaDate: muhasabaDate,
          progress: Value(progress),
          note: note,
          optionItemId: optionItemId,
          completedAt: completedAt,
        ),
      );
    } else {
      await (update(completions)..where((c) => c.id.equals(existing.id))).write(
        CompletionsCompanion(
          progress: Value(progress),
          note: note,
          optionItemId: optionItemId,
          completedAt: completedAt,
        ),
      );
    }
  }

  Future<int> clearFor(int amalId, DateTime date) {
    return (delete(completions)
          ..where((c) => c.amalId.equals(amalId) & c.muhasabaDate.equals(date)))
        .go();
  }

  Future<int> countActiveDays() async {
    final distinctDays = completions.muhasabaDate.count(distinct: true);
    final query = selectOnly(completions)
      ..addColumns([distinctDays])
      ..where(completions.progress.isBiggerThanValue(0));
    final row = await query.getSingle();
    return row.read(distinctDays) ?? 0;
  }
}
