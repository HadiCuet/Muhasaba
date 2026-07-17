import 'dart:ui';

import '../../l10n/app_localizations.dart';
import '../models/app_settings.dart';
import 'reminder_scheduler.dart';

/// Applies the user's daily-reminder settings to the OS scheduler: schedules
/// the single app-level reminder (id [ReminderScheduler.appReminderId]) at the
/// stored time with a body localized to the app's effective locale, or cancels
/// it when disabled or the time is unparseable. Context-free so it can run from
/// `main()` before any widget exists.
Future<void> applyDailyReminder(
  ReminderScheduler scheduler,
  AppSettings settings,
) async {
  final t = parseReminderTime(settings.dailyReminderTime);
  if (!settings.dailyReminderEnabled || t == null) {
    await scheduler.cancel(ReminderScheduler.appReminderId);
    return;
  }
  final l = await _loadL10n(settings.locale);
  await scheduler.scheduleAppReminder(
    hour: t.hour,
    minute: t.minute,
    body: l.dailyReminderBody,
  );
}

/// Loads `AppLocalizations` for the app's effective locale outside a widget
/// tree: the user's picked language, else the device locale, falling back to
/// English when unsupported (mirrors the app's locale resolution in app.dart).
Future<AppLocalizations> _loadL10n(String? localeTag) {
  var locale = localeTag != null
      ? Locale(localeTag)
      : PlatformDispatcher.instance.locale;
  if (!AppLocalizations.delegate.isSupported(locale)) {
    locale = const Locale('en');
  }
  return AppLocalizations.delegate.load(locale);
}
