import '../../data/db/database.dart';
import '../../l10n/app_localizations.dart';
import '../models/challenge.dart';
import '../utils/localized_amal_title.dart';
import '../utils/localized_challenge_title.dart';
import 'reminder_scheduler.dart';

/// Re-registers every active amal's and challenge's reminder using [l] for the
/// notification text, and points the Android channel at the same locale.
///
/// Notification content is baked in when it's scheduled, so switching language
/// has to rewrite the pending notifications — otherwise they keep firing in the
/// old language until each amal happens to be edited. Called on startup and
/// after a locale change; `scheduleDaily` cancels before re-scheduling, so
/// running it repeatedly is harmless.
Future<void> syncReminders(
  AppDatabase db,
  ReminderScheduler scheduler,
  AppLocalizations l,
) async {
  scheduler.setChannelStrings(
    name: l.notificationChannelName,
    description: l.notificationChannelDescription,
  );

  for (final amal in await db.amalDao.getActive()) {
    final t = parseReminderTime(amal.reminderTime);
    if (t != null) {
      await scheduler.scheduleDaily(
        id: amal.id,
        title: localizedAmalTitle(amal.title, l),
        hour: t.hour,
        minute: t.minute,
      );
    }
  }

  for (final c in await db.challengeDao.getAll()) {
    if (c.status != ChallengeStatus.active) {
      await scheduler.cancel(ReminderScheduler.challengeReminderId(c.id));
      continue;
    }
    final t = parseReminderTime(c.reminderTime);
    if (t == null) {
      await scheduler.cancel(ReminderScheduler.challengeReminderId(c.id));
      continue;
    }
    await scheduler.scheduleDaily(
      id: ReminderScheduler.challengeReminderId(c.id),
      title: localizedChallengeTitle(c.title, l),
      hour: t.hour,
      minute: t.minute,
    );
  }
}
