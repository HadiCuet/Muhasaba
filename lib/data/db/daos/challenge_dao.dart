import 'package:drift/drift.dart';

import '../../../domain/models/challenge.dart';
import '../database.dart';
import '../tables.dart';

part 'challenge_dao.g.dart';

@DriftAccessor(tables: [Challenges, ChallengeEntries])
class ChallengeDao extends DatabaseAccessor<AppDatabase>
    with _$ChallengeDaoMixin {
  ChallengeDao(super.db);

  Stream<List<ChallengeRow>> watchAll() {
    return (select(challenges)..orderBy([
          (c) => OrderingTerm.asc(c.sortOrder),
          (c) => OrderingTerm.asc(c.id),
        ]))
        .watch();
  }

  Future<List<ChallengeRow>> getAll() {
    return (select(challenges)..orderBy([
          (c) => OrderingTerm.asc(c.sortOrder),
          (c) => OrderingTerm.asc(c.id),
        ]))
        .get();
  }

  Future<ChallengeRow?> getById(int id) {
    return (select(
      challenges,
    )..where((c) => c.id.equals(id))).getSingleOrNull();
  }

  /// challengeId → total logged. The only place progress is computed.
  Stream<Map<int, int>> watchProgress() {
    final total = challengeEntries.amount.sum();
    final q = selectOnly(challengeEntries)
      ..addColumns([challengeEntries.challengeId, total])
      ..groupBy([challengeEntries.challengeId]);
    return q.watch().map(
      (rows) => {
        for (final r in rows)
          r.read(challengeEntries.challengeId)!: r.read(total) ?? 0,
      },
    );
  }

  Future<Map<int, int>> getProgress() async {
    final total = challengeEntries.amount.sum();
    final q = selectOnly(challengeEntries)
      ..addColumns([challengeEntries.challengeId, total])
      ..groupBy([challengeEntries.challengeId]);
    final rows = await q.get();
    return {
      for (final r in rows)
        r.read(challengeEntries.challengeId)!: r.read(total) ?? 0,
    };
  }

  Stream<List<ChallengeEntryRow>> watchEntries(int challengeId) {
    return (select(challengeEntries)
          ..where((e) => e.challengeId.equals(challengeId))
          ..orderBy([(e) => OrderingTerm.desc(e.muhasabaDate)]))
        .watch();
  }

  Future<ChallengeEntryRow?> getEntry(int challengeId, DateTime date) {
    return (select(challengeEntries)..where(
          (e) =>
              e.challengeId.equals(challengeId) & e.muhasabaDate.equals(date),
        ))
        .getSingleOrNull();
  }

  /// Sets the day's amount. Deletes the row at zero so a day the user backed
  /// out of leaves no trace and `SUM` stays honest.
  Future<void> setEntry({
    required int challengeId,
    required DateTime muhasabaDate,
    required int amount,
  }) async {
    if (amount <= 0) {
      await (delete(challengeEntries)..where(
            (e) =>
                e.challengeId.equals(challengeId) &
                e.muhasabaDate.equals(muhasabaDate),
          ))
          .go();
      return;
    }
    await into(challengeEntries).insertOnConflictUpdate(
      ChallengeEntriesCompanion.insert(
        challengeId: challengeId,
        muhasabaDate: muhasabaDate,
        amount: Value(amount),
      ),
    );
  }

  /// Appends at the end of the user's order. Without an explicit sortOrder the
  /// column defaults to 0, which would sort a new challenge above everything
  /// already dragged.
  Future<int> insertChallenge(ChallengesCompanion entry) async {
    final maxOrder = await customSelect(
      'SELECT COALESCE(MAX(sort_order), -1) AS m FROM challenges',
    ).getSingle();
    return into(
      challenges,
    ).insert(entry.copyWith(sortOrder: Value(maxOrder.read<int>('m') + 1)));
  }

  Future<bool> updateChallenge(ChallengeRow row) =>
      update(challenges).replace(row);

  Future<int> deleteChallenge(int id) =>
      (delete(challenges)..where((c) => c.id.equals(id))).go();

  Future<int> setStatus(
    int id,
    ChallengeStatus status, {
    DateTime? completedAt,
    bool? expiryHandled,
  }) {
    return (update(challenges)..where((c) => c.id.equals(id))).write(
      ChallengesCompanion(
        status: Value(status),
        completedAt: Value(completedAt),
        expiryHandled: expiryHandled == null
            ? const Value.absent()
            : Value(expiryHandled),
      ),
    );
  }

  Stream<Map<int, int>> watchAmountsForDate(DateTime date) {
    return (select(challengeEntries)..where((e) => e.muhasabaDate.equals(date)))
        .watch()
        .map((rows) => {for (final e in rows) e.challengeId: e.amount});
  }

  /// Batch-update sortOrder for multiple challenges at once (drag-to-reorder).
  Future<void> updateSortOrders(Map<int, int> idToSortOrder) async {
    await db.batch((b) {
      for (final entry in idToSortOrder.entries) {
        b.update(
          challenges,
          ChallengesCompanion(sortOrder: Value(entry.value)),
          where: (c) => c.id.equals(entry.key),
        );
      }
    });
  }
}
