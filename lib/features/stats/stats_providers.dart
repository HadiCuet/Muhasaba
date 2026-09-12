import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app/providers.dart';
import '../../core/time/period.dart';
import '../../domain/models/app_settings.dart';
import '../../data/db/database.dart';
import '../../domain/services/enhanced_stats_service.dart';
import 'stats_filter.dart';

/// Ceiling on how far back [statsMaxPeriodOffsetProvider] will count, so a
/// corrupt floor date cannot spin the loop. 520 weeks is ten years.
const int _kMaxPeriodSteps = 520;

/// Notifier for the stats filter state.
class StatsFilterNotifier extends Notifier<StatsFilter> {
  @override
  StatsFilter build() => const StatsFilter();

  void update(StatsFilter filter) {
    // Picking a different window lands on its current period, never on the
    // offset left over from the last one.
    if (filter.period != state.period ||
        filter.customStart != state.customStart ||
        filter.customEnd != state.customEnd) {
      ref.read(statsPeriodOffsetProvider.notifier).reset();
    }
    state = filter;
  }
}

/// The current filter state for the stats screen.
final statsFilterProvider = NotifierProvider<StatsFilterNotifier, StatsFilter>(
  StatsFilterNotifier.new,
);

/// How many whole periods back the Overview tab is showing: 0 is the current
/// period, 1 the one before it.
///
/// Deliberately not a field on [StatsFilter]: [enhancedStatsProvider] watches
/// the filter, so an offset living there would throw away every other page's
/// cached snapshot on each swipe.
class StatsPeriodOffsetNotifier extends Notifier<int> {
  @override
  int build() => 0;

  void select(int offset) => state = offset < 0 ? 0 : offset;

  void reset() => state = 0;
}

final statsPeriodOffsetProvider =
    NotifierProvider<StatsPeriodOffsetNotifier, int>(
      StatsPeriodOffsetNotifier.new,
    );

/// The furthest offset that still ends on or after the day tracking started.
/// 0 means the current period is the only one, so the chart does not page.
final statsMaxPeriodOffsetProvider = Provider.autoDispose<int>((ref) {
  final filter = ref.watch(statsFilterProvider);
  final settings = ref.watch(settingsProvider).value ?? AppSettings.defaults;
  final today = ref.watch(currentMuhasabaDateProvider);
  final floor = ref.watch(historyFloorDateProvider);

  switch (filter.period) {
    // A single day has nothing to chart, and all-time has nothing before it.
    case StatsPeriod.today:
    case StatsPeriod.allTime:
      return 0;
    case StatsPeriod.thisWeek:
      var week = weekPeriodOf(today, settings.startOfWeek);
      var steps = 0;
      while (week.start.isAfter(floor) && steps < _kMaxPeriodSteps) {
        week = weekPeriodOf(
          week.start.subtract(const Duration(days: 1)),
          settings.startOfWeek,
        );
        steps++;
      }
      return steps;
    case StatsPeriod.thisMonth:
      var month = monthPeriodOf(today, settings.startOfMonth);
      var steps = 0;
      while (month.start.isAfter(floor) && steps < _kMaxPeriodSteps) {
        month = monthPeriodOf(
          month.start.subtract(const Duration(days: 1)),
          settings.startOfMonth,
        );
        steps++;
      }
      return steps;
    case StatsPeriod.custom:
      final start = filter.customStart;
      final end = filter.customEnd;
      if (start == null || end == null) return 0;
      final span = end.add(const Duration(days: 1)).difference(start);
      if (span.inDays <= 0) return 0;
      var cursor = start;
      var steps = 0;
      while (cursor.isAfter(floor) && steps < _kMaxPeriodSteps) {
        cursor = cursor.subtract(span);
        steps++;
      }
      return steps;
  }
});

/// Amals for the snapshot, already narrowed by the category / amal filter.
Future<List<AmalRow>> _filteredAmals(Ref ref, StatsFilter filter) async {
  var amals = await ref.watch(_activeAmalsProvider.future);
  if (filter.category != null) {
    amals = amals.where((a) => a.category == filter.category).toList();
  }
  if (filter.amalId != null) {
    amals = amals.where((a) => a.id == filter.amalId).toList();
  }
  return amals;
}

/// Enhanced stats snapshot for the period on screen, recomputed whenever the
/// filter, offset, settings, amals, or muhasaba date changes. Manually
/// invalidate after completion writes.
///
/// Deliberately one provider rather than a family keyed on the offset: a
/// family hands each new offset a fresh instance with no previous value, so
/// `when` falls to `loading` and the whole sliver list — the pager included —
/// is torn down mid-swipe. Reloading one provider keeps the last value, which
/// `skipLoadingOnReload` then renders through the recompute.
final enhancedStatsProvider = FutureProvider.autoDispose<EnhancedSnapshot>((
  ref,
) async {
  final filter = ref.watch(statsFilterProvider);
  final periodOffset = ref.watch(statsPeriodOffsetProvider);
  final settings = await ref.watch(settingsProvider.future);
  final date = ref.watch(currentMuhasabaDateProvider);
  final db = ref.watch(appDatabaseProvider);
  final amals = await _filteredAmals(ref, filter);

  return const EnhancedStatsService().compute(
    filter: filter,
    muhasabaDate: date,
    settings: settings,
    amals: amals,
    periodCompletionsOf: db.completionDao.getForAmalBetween,
    periodOffset: periodOffset,
  );
});

/// Bars for one page of the chart. One indexed range read per amal, so a
/// neighbouring page is cheap enough to keep warm while the finger is down —
/// unlike [enhancedStatsProvider], whose streak walks make it far too heavy
/// to run per swipe.
///
/// It watches everything in the filter *except* the offset, so committing a
/// settled page does not re-run every other page.
final dailyBreakdownProvider = FutureProvider.autoDispose
    .family<List<DailyBreakdown>, int>((ref, periodOffset) async {
      final key = ref.watch(
        statsFilterProvider.select(
          (f) => (f.period, f.category, f.amalId, f.customStart, f.customEnd),
        ),
      );
      final filter = StatsFilter(
        period: key.$1,
        category: key.$2,
        amalId: key.$3,
        customStart: key.$4,
        customEnd: key.$5,
      );
      final settings = await ref.watch(settingsProvider.future);
      final date = ref.watch(currentMuhasabaDateProvider);
      final db = ref.watch(appDatabaseProvider);
      final amals = await _filteredAmals(ref, filter);

      return const EnhancedStatsService().dailyBreakdownOnly(
        filter: filter,
        muhasabaDate: date,
        settings: settings,
        amals: amals,
        periodCompletionsOf: db.completionDao.getForAmalBetween,
        periodOffset: periodOffset,
      );
    });

final _activeAmalsProvider = StreamProvider.autoDispose((ref) {
  return ref.watch(appDatabaseProvider).amalDao.watchActive();
});

/// All active amals (unfiltered) — used by the filter row dropdown.
final allActiveAmalsProvider = StreamProvider.autoDispose((ref) {
  return ref.watch(appDatabaseProvider).amalDao.watchActive();
});

/// All category names for the filter dropdown.
final allCategoriesProvider = FutureProvider.autoDispose<List<String>>((
  ref,
) async {
  final amals = await ref.watch(allActiveAmalsProvider.future);
  final cats = <String>{};
  for (final a in amals) {
    if (a.category != null) cats.add(a.category!);
  }
  final sorted = cats.toList()..sort();
  return sorted;
});
