import 'package:drift/drift.dart';

import '../../domain/models/challenge.dart';
import '../../domain/services/reminder_scheduler.dart';
import '../db/daos/challenge_dao.dart';
import '../db/database.dart';

/// Thin wrapper over [ChallengeDao] for the UI layer, matching the shape of
/// `AmalRepository`.
class ChallengeRepository {
  ChallengeRepository(this._dao, this._scheduler);

  final ChallengeDao _dao;
  final ReminderScheduler _scheduler;

  Stream<List<ChallengeRow>> watchAll() => _dao.watchAll();
  Stream<Map<int, int>> watchProgress() => _dao.watchProgress();
  Stream<List<ChallengeEntryRow>> watchEntries(int id) => _dao.watchEntries(id);
  Stream<Map<int, int>> watchAmountsForDate(DateTime date) =>
      _dao.watchAmountsForDate(date);
  Future<ChallengeRow?> getById(int id) => _dao.getById(id);

  Future<int> create({
    required String title,
    required String icon,
    required ChallengeMode mode,
    required int target,
    required int stepSize,
    String? unit,
    required DateTime startDate,
    DateTime? endExclusive,
  }) {
    return _dao.insertChallenge(
      ChallengesCompanion.insert(
        title: title,
        icon: Value(icon),
        mode: mode,
        target: target,
        stepSize: Value(stepSize),
        unit: Value(unit),
        startDate: startDate,
        endExclusive: Value(endExclusive),
        status: ChallengeStatus.active,
        createdAt: DateTime.now().toUtc(),
      ),
    );
  }

  Future<bool> update(ChallengeRow row) => _dao.updateChallenge(row);

  Future<int> remove(int id) async {
    final deleted = await _dao.deleteChallenge(id);
    for (var d = 0; d < 8; d++) {
      await _scheduler.cancel(ReminderScheduler.challengeNotificationId(id, d));
    }
    return deleted;
  }

  Future<void> setDayAmount({
    required ChallengeRow challenge,
    required DateTime muhasabaDate,
    required int amount,
  }) async {
    await _dao.setEntry(
      challengeId: challenge.id,
      muhasabaDate: muhasabaDate,
      amount: amount,
    );
    await _reconcileStatus(challenge);
  }

  /// Status is derived from the entries, never latched: completing and then
  /// undoing a mis-tap must return the challenge to the active list.
  Future<void> _reconcileStatus(ChallengeRow challenge) async {
    final progress = (await _dao.getProgress())[challenge.id] ?? 0;
    final done = progress >= challenge.target;
    if (done && challenge.status != ChallengeStatus.completed) {
      await _dao.setStatus(
        challenge.id,
        ChallengeStatus.completed,
        completedAt: DateTime.now().toUtc(),
      );
    } else if (!done && challenge.status == ChallengeStatus.completed) {
      await _dao.setStatus(challenge.id, ChallengeStatus.active);
    }
  }

  Future<void> markEnded(int id) =>
      _dao.setStatus(id, ChallengeStatus.ended, expiryHandled: true);

  Future<void> extend(ChallengeRow row, DateTime newEndExclusive) {
    return _dao.updateChallenge(
      row.copyWith(
        endExclusive: Value(newEndExclusive),
        expiryHandled: false,
        status: ChallengeStatus.active,
      ),
    );
  }
}
