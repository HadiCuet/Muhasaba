import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:timezone/data/latest_all.dart' as tz_data;
import 'package:timezone/timezone.dart' as tz;

/// Wraps `flutter_local_notifications` + `timezone` with the two operations
/// the app needs: schedule a repeating daily reminder for an amal and cancel
/// it. Also owns permission requests.
///
/// Notification IDs are the amal row's primary key, which is stable for the
/// lifetime of the amal — so `cancel(amalId)` always undoes a previous
/// `scheduleDaily(amalId: ...)` without any extra bookkeeping.
///
/// This is deliberately an abstract class so tests can swap in a no-op
/// implementation without touching platform channels.
abstract class ReminderScheduler {
  const ReminderScheduler();

  /// Boots the timezone DB + notification plugin. Call this from `main()`
  /// before creating a `ProviderScope`.
  static Future<ReminderScheduler> initialize() async {
    tz_data.initializeTimeZones();
    try {
      final info = await FlutterTimezone.getLocalTimezone();
      tz.setLocalLocation(tz.getLocation(info.identifier));
    } catch (e) {
      // On any failure (unsupported platform in tests, unknown zone on a
      // jailbroken device, etc.) fall back to UTC. Scheduling still works —
      // the worst case is a 1-hour drift across DST until the user re-saves
      // the reminder.
      debugPrint('ReminderScheduler: could not resolve local timezone: $e');
    }

    final plugin = FlutterLocalNotificationsPlugin();
    const init = InitializationSettings(
      android: AndroidInitializationSettings('@mipmap/ic_launcher'),
      iOS: DarwinInitializationSettings(
        // We request permissions lazily in `requestPermissions()` so the
        // first-launch experience is a plain splash, not a permission
        // prompt.
        requestAlertPermission: false,
        requestBadgePermission: false,
        requestSoundPermission: false,
      ),
    );
    await plugin.initialize(settings: init);
    return _LocalReminderScheduler(plugin);
  }

  /// A scheduler that silently discards every call. Use this in widget
  /// tests and other environments without a real notifications plugin.
  const factory ReminderScheduler.noop() = _NoopReminderScheduler;

  Future<bool> requestPermissions();

  /// Schedule (or re-schedule) a daily repeating reminder for `amalId` at
  /// `hour:minute` in the user's local timezone. Any existing notification
  /// with the same id is replaced.
  ///
  /// We repeat daily even for weekly/monthly amal — the app's visibility
  /// rules handle "should it actually show this day?" at the UI layer, and
  /// a gentle daily ping is a fine v1 behavior.
  Future<void> scheduleDaily({
    required int amalId,
    required String title,
    required int hour,
    required int minute,
  });

  Future<void> cancel(int amalId);

  Future<void> cancelAll();
}

class _LocalReminderScheduler extends ReminderScheduler {
  _LocalReminderScheduler(this._plugin);

  final FlutterLocalNotificationsPlugin _plugin;

  @override
  Future<bool> requestPermissions() async {
    final ios = _plugin.resolvePlatformSpecificImplementation<
        IOSFlutterLocalNotificationsPlugin>();
    if (ios != null) {
      final granted = await ios.requestPermissions(
        alert: true,
        badge: true,
        sound: true,
      );
      return granted ?? false;
    }

    final android = _plugin.resolvePlatformSpecificImplementation<
        AndroidFlutterLocalNotificationsPlugin>();
    if (android != null) {
      final granted = await android.requestNotificationsPermission();
      return granted ?? true;
    }

    return true;
  }

  @override
  Future<void> scheduleDaily({
    required int amalId,
    required String title,
    required int hour,
    required int minute,
  }) async {
    await cancel(amalId);

    final now = tz.TZDateTime.now(tz.local);
    var first = tz.TZDateTime(
      tz.local,
      now.year,
      now.month,
      now.day,
      hour,
      minute,
    );
    if (!first.isAfter(now)) {
      first = first.add(const Duration(days: 1));
    }

    await _plugin.zonedSchedule(
      id: amalId,
      title: 'Muhasaba',
      body: title,
      scheduledDate: first,
      notificationDetails: const NotificationDetails(
        android: AndroidNotificationDetails(
          'muhasaba_reminders',
          'Amal reminders',
          channelDescription: 'Daily reminders for your tracked amal.',
          importance: Importance.defaultImportance,
          priority: Priority.defaultPriority,
        ),
        iOS: DarwinNotificationDetails(),
      ),
      androidScheduleMode: AndroidScheduleMode.inexactAllowWhileIdle,
      matchDateTimeComponents: DateTimeComponents.time,
    );
  }

  @override
  Future<void> cancel(int amalId) => _plugin.cancel(id: amalId);

  @override
  Future<void> cancelAll() => _plugin.cancelAll();
}

class _NoopReminderScheduler extends ReminderScheduler {
  const _NoopReminderScheduler();

  @override
  Future<bool> requestPermissions() async => true;

  @override
  Future<void> scheduleDaily({
    required int amalId,
    required String title,
    required int hour,
    required int minute,
  }) async {}

  @override
  Future<void> cancel(int amalId) async {}

  @override
  Future<void> cancelAll() async {}
}

/// Parses a stored reminder string in `HH:mm` format. Returns `null` if the
/// string is malformed or out of range — callers treat that as "no reminder".
({int hour, int minute})? parseReminderTime(String? stored) {
  if (stored == null) return null;
  final parts = stored.split(':');
  if (parts.length != 2) return null;
  final h = int.tryParse(parts[0]);
  final m = int.tryParse(parts[1]);
  if (h == null || m == null) return null;
  if (h < 0 || h > 23 || m < 0 || m > 59) return null;
  return (hour: h, minute: m);
}
