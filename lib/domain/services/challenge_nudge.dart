import '../../data/db/database.dart';
import '../../l10n/app_localizations.dart';
import '../models/challenge.dart';
import 'challenge_pace.dart';
import 'reminder_scheduler.dart';

/// iOS allows 64 pending notifications across the whole app. Amal reminders
/// need most of that headroom, so challenge nudges are capped well below it.
const _maxChallengeNotifications = 20;

/// Days ahead to pre-schedule for a single challenge.
const _horizonDays = 5;

/// Recomputes every challenge nudge from scratch.
///
/// `flutter_local_notifications` cannot run code when a notification fires, so
/// each body is rendered now and scheduled as a concrete one-shot. That text
/// cannot go stale: progress only changes through the app, and every in-app
/// change calls this again. A pending notification therefore survives
/// un-refreshed only when the app was not opened — in which case progress did
/// not change and the message is still correct.
Future<void> syncChallengeNudges({
  required AppDatabase db,
  required ReminderScheduler scheduler,
  required AppLocalizations l,
  required DateTime today,
  required int hour,
  required int minute,
}) async {
  final rows = await db.challengeDao.getAll();
  final progressById = await db.challengeDao.getProgress();

  for (final row in rows) {
    for (var d = 0; d < 8; d++) {
      await scheduler.cancel(
        ReminderScheduler.challengeNotificationId(row.id, d),
      );
    }
  }

  final candidates =
      rows
          .where(
            (r) => r.status == ChallengeStatus.active && r.endExclusive != null,
          )
          .toList()
        ..sort((a, b) => a.endExclusive!.compareTo(b.endExclusive!));

  var scheduled = 0;
  for (final row in candidates) {
    if (scheduled >= _maxChallengeNotifications) break;
    final progress = progressById[row.id] ?? 0;

    for (var offset = 0; offset < _horizonDays; offset++) {
      if (scheduled >= _maxChallengeNotifications) break;
      final day = today.add(Duration(days: offset));
      final pace = computePace(
        target: row.target,
        progress: progress,
        startDate: row.startDate,
        endExclusive: row.endExclusive,
        today: day,
      );

      final body = switch (pace.state) {
        PaceState.behind => l.challengeNudgeBody(
          row.title,
          pace.requiredPerDay.toString(),
        ),
        PaceState.lastDay => l.challengeLastDayBody(
          row.title,
          pace.remaining.toString(),
        ),
        _ => null,
      };
      if (body == null) continue;

      final fireDate = DateTime.now().add(Duration(days: offset));
      await scheduler.scheduleOneShot(
        id: ReminderScheduler.challengeNotificationId(row.id, offset),
        body: body,
        when: DateTime(
          fireDate.year,
          fireDate.month,
          fireDate.day,
          hour,
          minute,
        ),
      );
      scheduled++;
    }
  }
}
