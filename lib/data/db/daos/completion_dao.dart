import 'package:drift/drift.dart';

import '../database.dart';
import '../tables.dart';

part 'completion_dao.g.dart';

@DriftAccessor(tables: [Completions])
class CompletionDao extends DatabaseAccessor<AppDatabase>
    with _$CompletionDaoMixin {
  CompletionDao(super.db);

  Stream<List<CompletionRow>> watchForDate(DateTime date) {
    return (select(completions)..where((c) => c.muhasabaDate.equals(date)))
        .watch();
  }

  Future<List<CompletionRow>> getForDate(DateTime date) {
    return (select(completions)..where((c) => c.muhasabaDate.equals(date)))
        .get();
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
    return (select(completions)
          ..where((c) =>
              c.amalId.equals(amalId) &
              c.muhasabaDate.isBiggerOrEqualValue(start) &
              c.muhasabaDate.isSmallerThanValue(endExclusive)))
        .get();
  }

  /// Upsert progress/note for (amal, date). Inserts a new row on first write.
  Future<void> upsertProgress({
    required int amalId,
    required DateTime muhasabaDate,
    required int progress,
    String? note,
    DateTime? completedAt,
  }) async {
    final existing = await getForAmalDate(amalId, muhasabaDate);
    if (existing == null) {
      await into(completions).insert(
        CompletionsCompanion.insert(
          amalId: amalId,
          muhasabaDate: muhasabaDate,
          progress: Value(progress),
          note: Value(note),
          completedAt: Value(completedAt),
        ),
      );
    } else {
      await (update(completions)..where((c) => c.id.equals(existing.id))).write(
        CompletionsCompanion(
          progress: Value(progress),
          note: Value(note),
          completedAt: Value(completedAt),
        ),
      );
    }
  }

  Future<int> clearFor(int amalId, DateTime date) {
    return (delete(completions)
          ..where(
              (c) => c.amalId.equals(amalId) & c.muhasabaDate.equals(date)))
        .go();
  }
}
