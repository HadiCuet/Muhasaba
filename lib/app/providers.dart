import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/time/day_boundary.dart';
import '../data/db/database.dart';
import '../data/repositories/amal_repository.dart';
import '../data/repositories/category_repository.dart';
import '../data/repositories/completion_repository.dart';
import '../data/repositories/settings_repository.dart';
import '../domain/models/app_settings.dart';
import '../domain/models/frequency.dart';
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

final categoryRepositoryProvider = Provider<CategoryRepository>((ref) {
  return CategoryRepository(ref.watch(appDatabaseProvider).categoryDao);
});

final categoriesProvider = StreamProvider<List<CategoryRow>>((ref) {
  return ref.watch(categoryRepositoryProvider).watchAll();
});

final recentIconsProvider = FutureProvider<List<String>>((ref) {
  return ref.watch(amalRepositoryProvider).getRecentIcons();
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
final todayRowsProvider = FutureProvider.family<List<TodayRow>, DateTime>((
  ref,
  date,
) async {
  final settings = await ref.watch(settingsProvider.future);
  final db = ref.watch(appDatabaseProvider);

  // Re-fetch when the user edits the amal list or completions/hidden rows
  // for this specific date change.
  final amals = await ref.watch(_activeAmalsProvider.future);
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

/// History-screen primary provider. Like [todayRowsProvider] but uses all
/// amals (including archived) and omits transient hidden-day rows, so
/// completed amals remain visible after being archived.
final historyRowsProvider = FutureProvider.family<List<TodayRow>, DateTime>((
  ref,
  date,
) async {
  final settings = await ref.watch(settingsProvider.future);
  final db = ref.watch(appDatabaseProvider);
  final amals = await ref.watch(_allAmalsProvider.future);
  // Exclude amals archived before this muhasaba date.
  final amalsForDate = amals.where((a) {
    if (a.archivedAt == null) return true;
    final archDay = a.archivedAt!.toLocal();
    final archDate = DateTime(archDay.year, archDay.month, archDay.day);
    return !archDate.isBefore(date);
  }).toList();
  final completions = await ref.watch(_completionsForDateProvider(date).future);
  return const TodayBuilder().build(
    muhasabaDate: date,
    settings: settings,
    amals: amalsForDate,
    completionsForDate: completions,
    hiddenForDate: const [],
    periodCompletionsOf: db.completionDao.getForAmalBetween,
  );
});

/// Fallback rows for the History screen used only when [historyRowsProvider]
/// returns an empty list for a given date (i.e. no amal was scheduled on that
/// day). Only includes amals that were either scheduled on that date
/// (frequency/day match) or have an actual completion record, to avoid
/// showing e.g. a Friday-only amal on a Monday.
final historyFallbackRowsProvider =
    FutureProvider.autoDispose.family<List<TodayRow>, DateTime>((
      ref,
      date,
    ) async {
      final amals = await ref.watch(_allAmalsProvider.future);
      if (amals.isEmpty) return const [];
      final completions = await ref.watch(
        _completionsForDateProvider(date).future,
      );
      final byAmalId = {for (final c in completions) c.amalId: c};
      return [
        for (final a in amals)
          if (_staticIsVisibleOnDate(a, date) || byAmalId[a.id] != null)
            TodayRow(
              amal: a,
              progress: byAmalId[a.id]?.progress ?? 0,
              note: byAmalId[a.id]?.note,
            ),
      ];
    });

/// Rolled-up stats for the current muhasaba date. Rebuilds whenever the
/// amal list or settings change. Completion edits invalidate this through
/// `ref.invalidate(statsSnapshotProvider)` from write sites — we don't
/// subscribe to the completions stream here because stats depend on rows
/// across the entire 52-week / 24-month window, not just a single day.
final statsSnapshotProvider = FutureProvider.autoDispose<StatsSnapshot>((
  ref,
) async {
  final settings = await ref.watch(settingsProvider.future);
  final date = ref.watch(currentMuhasabaDateProvider);
  final db = ref.watch(appDatabaseProvider);
  final amals = await ref.watch(_allAmalsProvider.future);
  return const StatsService().compute(
    muhasabaDate: date,
    settings: settings,
    amals: amals,
    periodCompletionsOf: db.completionDao.getForAmalBetween,
  );
});

/// Per-amal current streak for display on Today rows. Returns a map of
/// amalId → currentStreak. Invalidated alongside `statsSnapshotProvider`
/// after writes.
final currentStreaksProvider = FutureProvider.autoDispose<Map<int, int>>((
  ref,
) async {
  final snap = await ref.watch(statsSnapshotProvider.future);
  return {for (final s in snap.perAmal) s.amalId: s.currentStreak};
});

final _activeAmalsProvider = StreamProvider.autoDispose((ref) {
  return ref.watch(appDatabaseProvider).amalDao.watchActive();
});

final _allAmalsProvider = StreamProvider.autoDispose((ref) {
  return ref.watch(appDatabaseProvider).amalDao.watchAll();
});

bool _staticIsVisibleOnDate(AmalRow a, DateTime date) {
  switch (a.frequency) {
    case Frequency.daily:
      return true;
    case Frequency.weekly:
      return a.weeklyDay == null || date.weekday == a.weeklyDay;
    case Frequency.monthly:
      return a.monthlyDate == null || date.day == a.monthlyDate;
  }
}

final _completionsForDateProvider = StreamProvider.autoDispose.family((
  ref,
  DateTime date,
) {
  return ref.watch(appDatabaseProvider).completionDao.watchForDate(date);
});

final _hiddenForDateProvider = StreamProvider.autoDispose.family((
  ref,
  DateTime date,
) {
  return ref.watch(appDatabaseProvider).hiddenDayDao.watchForDate(date);
});
