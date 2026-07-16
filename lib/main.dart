import 'dart:async';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app/app.dart';
import 'app/providers.dart';
import 'data/db/daos/settings_dao.dart';
import 'data/db/database.dart';
import 'domain/services/reminder_scheduler.dart';
import 'domain/services/reminder_sync.dart';
import 'domain/utils/app_locale.dart';
import 'l10n/app_localizations.dart';
import 'firebase_options.dart';

Future<void> main() async {
  runZonedGuarded<Future<void>>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );

      // Don't collect crashes or analytics during development; only in release builds.
      await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(
        !kDebugMode,
      );
      await FirebaseAnalytics.instance.setAnalyticsCollectionEnabled(
        !kDebugMode,
      );

      // Route Flutter framework errors to Crashlytics.
      FlutterError.onError =
          FirebaseCrashlytics.instance.recordFlutterFatalError;

      // Route uncaught async / platform errors to Crashlytics.
      PlatformDispatcher.instance.onError = (error, stack) {
        FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
        return true;
      };

      final db = AppDatabase();
      final scheduler = await ReminderScheduler.initialize();

      // Startup recovery: re-register all active reminders so device restarts
      // and OS notification clears don't silently kill reminders. Resolves the
      // locale up front so reminder text matches the UI language — there's no
      // widget tree yet to read localizations from.
      final storedLocale = await db.settingsDao.get(SettingKeys.locale);
      final l = await AppLocalizations.delegate.load(
        resolveAppLocale(storedLocale, PlatformDispatcher.instance.locales),
      );
      await syncReminders(db, scheduler, l);

      runApp(
        ProviderScope(
          overrides: [
            appDatabaseProvider.overrideWithValue(db),
            reminderSchedulerProvider.overrideWithValue(scheduler),
          ],
          child: const MuhasabaApp(),
        ),
      );
    },
    (error, stack) {
      FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    },
  );
}
