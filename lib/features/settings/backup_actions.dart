import 'dart:io';

import 'package:file_selector/file_selector.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

import '../../app/app_restarter.dart';
import '../../app/providers.dart';
import '../../core/time/day_boundary.dart';
import '../../data/db/backup.dart';
import '../../data/db/database.dart';
import '../../data/repositories/settings_repository.dart';
import '../../domain/services/challenge_nudge.dart';
import '../../domain/services/daily_reminder.dart';
import '../../domain/services/reminder_scheduler.dart';
import '../../domain/services/reminder_sync.dart';
import '../../domain/utils/app_locale.dart';
import '../../l10n/app_localizations.dart';

/// Writes a backup and opens the share sheet for it. Pass the tapped row's
/// [context]: on iPad the sheet pops over it.
Future<void> exportBackup(BuildContext context, WidgetRef ref) async {
  final db = ref.read(appDatabaseProvider);
  final messenger = ScaffoldMessenger.of(context);
  final l = AppLocalizations.of(context);
  final box = context.findRenderObject() as RenderBox?;
  final origin = box == null ? null : box.localToGlobal(Offset.zero) & box.size;
  try {
    final dir = await _emptyTempDir('backup');
    final file = File('${dir.path}/${_backupFileName(DateTime.now())}');
    await writeBackup(db, file);
    final result = await SharePlus.instance.share(
      ShareParams(
        files: [XFile(file.path, mimeType: 'application/octet-stream')],
        sharePositionOrigin: origin,
      ),
    );
    FirebaseAnalytics.instance.logEvent(
      name: 'backup_exported',
      parameters: {'status': result.status.name},
    );
  } catch (e, s) {
    FirebaseCrashlytics.instance.recordError(e, s);
    messenger.showSnackBar(SnackBar(content: Text(l.genericError)));
  }
}

/// Picks a backup, confirms, replaces all data with it, then restarts the app
/// on the restored data.
Future<void> restoreFromBackup(BuildContext context, WidgetRef ref) async {
  final db = ref.read(appDatabaseProvider);
  final scheduler = ref.read(reminderSchedulerProvider);
  final restarter = AppRestarter.of(context);
  final messenger = ScaffoldMessenger.of(context);
  final rootNavigator = Navigator.of(context, rootNavigator: true);
  final l = AppLocalizations.of(context);

  Directory? dir;
  var restoring = false;
  try {
    final picked = await openFile();
    if (picked == null) return;
    dir = await _emptyTempDir('restore');
    final file = File('${dir.path}/backup.sqlite');
    await picked.saveTo(file.path);
    final version = await checkBackup(db, file);
    if (!context.mounted || !await _confirmRestore(context)) return;
    if (!context.mounted) return;
    restoring = true;
    showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (_) => const PopScope(
        canPop: false,
        child: Center(child: CircularProgressIndicator()),
      ),
    );
    await restoreBackup(db, file);
    FirebaseAnalytics.instance.logEvent(
      name: 'backup_restored',
      parameters: {'from_version': version},
    );
  } catch (e, s) {
    if (restoring) rootNavigator.pop();
    final problem = e is BackupException ? e.problem : null;
    if (problem == null) FirebaseCrashlytics.instance.recordError(e, s);
    FirebaseAnalytics.instance.logEvent(
      name: 'backup_restore_failed',
      parameters: {'reason': problem?.name ?? 'error'},
    );
    messenger.showSnackBar(
      SnackBar(
        content: Text(switch (problem) {
          BackupProblem.notABackup => l.backupNotABackup,
          BackupProblem.newerVersion => l.backupNewerVersion,
          null => l.backupRestoreFailed,
        }),
      ),
    );
    return;
  } finally {
    dir?.delete(recursive: true).ignore();
  }
  await _rescheduleReminders(db, scheduler);
  await restarter.restart();
}

Future<bool> _confirmRestore(BuildContext context) async {
  final l = AppLocalizations.of(context);
  final ok = await showDialog<bool>(
    context: context,
    builder: (ctx) => AlertDialog(
      title: Text(l.backupRestoreConfirmTitle),
      content: Text(l.backupRestoreConfirmBody),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(ctx, false),
          child: Text(l.cancel),
        ),
        FilledButton(
          onPressed: () => Navigator.pop(ctx, true),
          child: Text(l.backupRestoreConfirmAction),
        ),
      ],
    ),
  );
  return ok == true;
}

/// Pending notifications belong to the data that was just replaced, so all of
/// them go and the restored data's are scheduled in their place.
Future<void> _rescheduleReminders(
  AppDatabase db,
  ReminderScheduler scheduler,
) async {
  try {
    final settings = await SettingsRepository(db.settingsDao).get();
    final l = await AppLocalizations.delegate.load(
      resolveAppLocale(
        settings.locale,
        WidgetsBinding.instance.platformDispatcher.locales,
      ),
    );
    await scheduler.cancelAll();
    await syncReminders(db, scheduler, l);
    await applyDailyReminder(scheduler, settings);
    await syncChallengeNudgesFor(
      db: db,
      scheduler: scheduler,
      settings: settings,
      today: muhasabaDateOf(DateTime.now(), settings.rolloverHour),
    );
  } catch (e, s) {
    FirebaseCrashlytics.instance.recordError(e, s);
  }
}

Future<Directory> _emptyTempDir(String name) async {
  final dir = Directory('${(await getTemporaryDirectory()).path}/$name');
  if (await dir.exists()) await dir.delete(recursive: true);
  return dir.create(recursive: true);
}

String _backupFileName(DateTime now) {
  String two(int n) => n.toString().padLeft(2, '0');
  return 'muhasaba-backup-${now.year}-${two(now.month)}-${two(now.day)}'
      '.muhasaba';
}
