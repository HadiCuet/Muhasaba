import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/time/day_boundary.dart';
import '../data/db/database.dart';
import '../data/repositories/amal_repository.dart';
import '../data/repositories/completion_repository.dart';
import '../data/repositories/settings_repository.dart';
import '../domain/models/app_settings.dart';
import '../domain/services/reminder_scheduler.dart';
import '../domain/services/stats_service.dart';
import '../domain/services/today_builder.dart';

/// The single `AppDatabase` instance, owned by the provider container.
/// Tests should override this with an in-memory database.
final appDatabaseProvider = Provider<AppDatabase>((ref) {
  final db = AppDatabase();
  ref.onDispose(db.close);
  return db;
});

/// Singleton reminder scheduler. In tests it's overridden with a no-op stub
/// so that widget tests don't try to reach iOS/Android native channels.
///
/// `throw UnimplementedError` here forces callers to override in a
/// `ProviderScope` — either with the real, initialized scheduler (from
/// `main()`) or with a test double.
final reminderSchedulerProvider = Provider<ReminderScheduler>((ref) {
  throw UnimplementedError(
    'reminderSchedulerProvider must be overridden in main() or a test.',
  );
});

final settingsRepositoryProvider = Provider<SettingsRepository>((ref) {
  return SettingsRepository(ref.watch(appDatabaseProvider).settingsDao);
});

final amalRepositoryProvider = Provider<AmalRepository>((ref) {
  return AmalRepository(ref.watch(appDatabaseProvider).amalDao);
});

final completionRepositoryProvider = Provider<CompletionRepository>((ref) {
  final db = ref.watch(appDatabaseProvider);
  return CompletionRepository(db.completionDao, db.hiddenDayDao);
});

/// Live stream of the user's settings. Rebuilds any dependent provider when
/// settings change.
final settingsProvider = StreamProvider<AppSettings>((ref) {
  return ref.watch(settingsRepositoryProvider).watch();
});

/// The current muhasaba date given the user's rollover-hour setting and the
/// wall-clock instant at provider construction time. Not auto-refreshing —
/// call `ref.invalidate` to re-read across the rollover boundary.
final currentMuhasabaDateProvider = Provider<DateTime>((ref) {
  final settings = ref.watch(settingsProvider).value ?? AppSettings.defaults;
  return muhasabaDateOf(DateTime.now(), settings.rolloverHour);
});

/// A small value type so the family key is comparable / const-friendly.
/// Using the raw `DateTime` directly works fine because `DateTime` has
/// value equality.
final todayRowsProvider =
    FutureProvider.family<List<TodayRow>, DateTime>((ref, date) async {
  final settings = await ref.watch(settingsProvider.future);
  final db = ref.watch(appDatabaseProvider);

  // Re-fetch when the user edits the amal list or completions/hidden rows
  // for this specific date change.
  final amals = await ref.watch(
    _activeAmalsProvider.future,
  );
  final completions = await ref.watch(_completionsForDateProvider(date).future);
  final hidden = await ref.watch(_hiddenForDateProvider(date).future);

  return const TodayBuilder().build(
    muhasabaDate: date,
    settings: settings,
    amals: amals,
    completionsForDate: completions,
    hiddenForDate: hidden,
    periodCompletionsOf: db.completionDao.getForAmalBetween,
  );
});

/// Rolled-up stats for the current muhasaba date. Rebuilds whenever the
/// amal list or settings change. Completion edits invalidate this through
/// `ref.invalidate(statsSnapshotProvider)` from write sites — we don't
/// subscribe to the completions stream here because stats depend on rows
/// across the entire 52-week / 24-month window, not just a single day.
final statsSnapshotProvider = FutureProvider.autoDispose<StatsSnapshot>(
  (ref) async {
    final settings = await ref.watch(settingsProvider.future);
    final date = ref.watch(currentMuhasabaDateProvider);
    final db = ref.watch(appDatabaseProvider);
    final amals = await ref.watch(_activeAmalsProvider.future);
    return const StatsService().compute(
      muhasabaDate: date,
      settings: settings,
      amals: amals,
      periodCompletionsOf: db.completionDao.getForAmalBetween,
    );
  },
);

/// Per-amal current streak for display on Today rows. Returns a map of
/// amalId → currentStreak. Invalidated alongside `statsSnapshotProvider`
/// after writes.
final currentStreaksProvider =
    FutureProvider.autoDispose<Map<int, int>>((ref) async {
  final snap = await ref.watch(statsSnapshotProvider.future);
  return {
    for (final s in snap.perAmal) s.amalId: s.currentStreak,
  };
});

final _activeAmalsProvider = StreamProvider.autoDispose((ref) {
  return ref.watch(appDatabaseProvider).amalDao.watchActive();
});

final _completionsForDateProvider =
    StreamProvider.autoDispose.family((ref, DateTime date) {
  return ref.watch(appDatabaseProvider).completionDao.watchForDate(date);
});

final _hiddenForDateProvider =
    StreamProvider.autoDispose.family((ref, DateTime date) {
  return ref.watch(appDatabaseProvider).hiddenDayDao.watchForDate(date);
});
