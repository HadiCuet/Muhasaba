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

  /// Creates a new challenge and schedules its daily reminder if a valid
  /// reminder time is provided.
  ///
  /// [title] is the canonical value stored in the DB; [notificationTitle] is
  /// its localized rendering, used for the notification body. They differ for
  /// template titles, which are stored in English and translated at display
  /// time.
  Future<int> create({
    required String title,
    required String notificationTitle,
    required String icon,
    required ChallengeMode mode,
    required int target,
    required int stepSize,
    String? unit,
    String? category,
    String? reminderTime,
    required DateTime startDate,
    DateTime? endExclusive,
  }) async {
    final id = await _dao.insertChallenge(
      ChallengesCompanion.insert(
        title: title,
        icon: Value(icon),
        mode: mode,
        target: target,
        stepSize: Value(stepSize),
        unit: Value(unit),
        category: Value(category),
        reminderTime: Value(reminderTime),
        startDate: startDate,
        endExclusive: Value(endExclusive),
        status: ChallengeStatus.active,
        createdAt: DateTime.now().toUtc(),
      ),
    );
    await _applyReminder(id, notificationTitle, reminderTime);
    return id;
  }

  /// See [create] for why [notificationTitle] is passed separately.
  Future<bool> update(
    ChallengeRow row, {
    required String notificationTitle,
  }) async {
    final ok = await _dao.updateChallenge(row);
    await _applyReminder(row.id, notificationTitle, row.reminderTime);
    return ok;
  }

  Future<void> _applyReminder(
    int id,
    String notificationTitle,
    String? reminderTime,
  ) async {
    final t = parseReminderTime(reminderTime);
    final notificationId = ReminderScheduler.challengeReminderId(id);
    if (t == null) {
      await _scheduler.cancel(notificationId);
      return;
    }
    await _scheduler.scheduleDaily(
      id: notificationId,
      title: notificationTitle,
      hour: t.hour,
      minute: t.minute,
    );
  }

  Future<int> remove(int id) async {
    final deleted = await _dao.deleteChallenge(id);
    for (var d = 0; d < 8; d++) {
      await _scheduler.cancel(ReminderScheduler.challengeNotificationId(id, d));
    }
    await _scheduler.cancel(ReminderScheduler.challengeReminderId(id));
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
      await _scheduler.cancel(
        ReminderScheduler.challengeReminderId(challenge.id),
      );
    } else if (!done && challenge.status == ChallengeStatus.completed) {
      await _dao.setStatus(challenge.id, ChallengeStatus.active);
      await _applyReminder(
        challenge.id,
        challenge.title,
        challenge.reminderTime,
      );
    }
  }

  Future<void> markEnded(int id) async {
    await _dao.setStatus(id, ChallengeStatus.ended, expiryHandled: true);
    await _scheduler.cancel(ReminderScheduler.challengeReminderId(id));
  }

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
