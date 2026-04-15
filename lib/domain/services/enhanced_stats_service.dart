import 'package:flutter/foundation.dart';

import '../../core/time/period.dart';
import '../../data/db/database.dart';
import '../../features/stats/stats_filter.dart';
import '../models/app_settings.dart';
import '../models/frequency.dart';
import 'today_builder.dart' show PeriodCompletionsLookup;

// ─── Models ──────────────────────────────────────────────────────────────────

@immutable
class DailyBreakdown {
  const DailyBreakdown({
    required this.date,
    required this.completed,
    required this.expected,
    required this.isToday,
  });

  final DateTime date;
  final int completed;
  final int expected;
  final bool isToday;

  double get rate => expected > 0 ? completed / expected : 0;
}

@immutable
class CategoryBreakdown {
  const CategoryBreakdown({
    required this.name,
    required this.completed,
    required this.expected,
  });

  final String name;
  final int completed;
  final int expected;

  double get rate => expected > 0 ? completed / expected : 0;
}

@immutable
class HeatmapDay {
  const HeatmapDay({required this.date, required this.rate});

  final DateTime date;

  /// 0.0 – 1.0 (fraction of amals completed that day).
  final double rate;
}

@immutable
class EnhancedAmalStats {
  const EnhancedAmalStats({
    required this.amalId,
    required this.title,
    required this.icon,
    this.category,
    required this.frequency,
    required this.completed,
    required this.expected,
    required this.currentStreak,
  });

  final int amalId;
  final String title;
  final String icon;
  final String? category;
  final Frequency frequency;
  final int completed;
  final int expected;
  final int currentStreak;

  double get rate => expected > 0 ? completed / expected : 0;
}

@immutable
class EnhancedSnapshot {
  const EnhancedSnapshot({
    required this.overallRate,
    required this.totalCompleted,
    required this.totalExpected,
    this.previousPeriodRate,
    required this.dailyBreakdown,
    required this.categoryBreakdown,
    required this.currentStreak,
    required this.longestStreak,
    required this.totalCompletedDays,
    required this.heatmapData,
    required this.perAmal,
  });

  final double overallRate;
  final int totalCompleted;
  final int totalExpected;

  /// Rate of the equivalent previous period, for comparison. `null` when the
  /// selected period is "all time" or there is insufficient data.
  final double? previousPeriodRate;

  final List<DailyBreakdown> dailyBreakdown;
  final List<CategoryBreakdown> categoryBreakdown;

  /// Consecutive days where ALL filtered daily amals were completed.
  final int currentStreak;
  final int longestStreak;

  /// Distinct days where at least one filtered amal was completed.
  final int totalCompletedDays;

  final List<HeatmapDay> heatmapData;
  final List<EnhancedAmalStats> perAmal;
}

// ─── Service ─────────────────────────────────────────────────────────────────

class EnhancedStatsService {
  const EnhancedStatsService();

  static const int _dailyStreakLookback = 365;
  static const int _heatmapDays = 35; // 5 weeks

  Future<EnhancedSnapshot> compute({
    required StatsFilter filter,
    required DateTime muhasabaDate,
    required AppSettings settings,
    required List<AmalRow> amals,
    required PeriodCompletionsLookup periodCompletionsOf,
  }) async {
    final period = _resolvePeriod(filter, muhasabaDate, settings, amals);

    // ── Per-amal stats for the selected period ──────────────────────────────
    final perAmalResults = <EnhancedAmalStats>[];
    var totalCompleted = 0;
    var totalExpected = 0;

    // Cache completions per amal for the period (reused for daily breakdown).
    final completionsByAmal = <int, List<CompletionRow>>{};

    for (final amal in amals) {
      final rows = await periodCompletionsOf(
        amal.id,
        period.start,
        period.endExclusive,
      );
      completionsByAmal[amal.id] = rows;

      final completed =
          rows.where((r) => r.progress >= amal.target).length;
      final expected = _expectedInPeriod(amal, period);

      totalCompleted += completed;
      totalExpected += expected;

      final streak = await _currentStreakForAmal(
        amal,
        muhasabaDate,
        settings,
        periodCompletionsOf,
      );

      perAmalResults.add(EnhancedAmalStats(
        amalId: amal.id,
        title: amal.title,
        icon: amal.icon,
        category: amal.category,
        frequency: amal.frequency,
        completed: completed,
        expected: expected,
        currentStreak: streak,
      ));
    }

    final overallRate =
        totalExpected > 0 ? totalCompleted / totalExpected : 0.0;

    // ── Previous-period comparison ──────────────────────────────────────────
    double? prevRate;
    if (filter.period != StatsPeriod.allTime) {
      prevRate = await _previousPeriodRate(
        filter,
        muhasabaDate,
        settings,
        amals,
        periodCompletionsOf,
      );
    }

    // ── Daily breakdown ─────────────────────────────────────────────────────
    final daily = _buildDailyBreakdown(
      period,
      muhasabaDate,
      amals,
      completionsByAmal,
    );

    // ── Category breakdown ──────────────────────────────────────────────────
    final categories = _buildCategoryBreakdown(perAmalResults);

    // ── Heatmap (last 5 weeks, always) ──────────────────────────────────────
    final heatmap = await _buildHeatmap(
      muhasabaDate,
      amals,
      periodCompletionsOf,
    );

    // ── Global streaks ──────────────────────────────────────────────────────
    final dailyAmals =
        amals.where((a) => a.frequency == Frequency.daily).toList();
    final globalStreaks = await _globalStreaks(
      dailyAmals,
      muhasabaDate,
      periodCompletionsOf,
    );

    // ── Total completed days ────────────────────────────────────────────────
    final allDates = <int>{};
    for (final rows in completionsByAmal.values) {
      for (final r in rows) {
        if (r.progress > 0) allDates.add(_dayKey(r.muhasabaDate));
      }
    }

    return EnhancedSnapshot(
      overallRate: overallRate,
      totalCompleted: totalCompleted,
      totalExpected: totalExpected,
      previousPeriodRate: prevRate,
      dailyBreakdown: daily,
      categoryBreakdown: categories,
      currentStreak: globalStreaks.current,
      longestStreak: globalStreaks.longest,
      totalCompletedDays: allDates.length,
      heatmapData: heatmap,
      perAmal: perAmalResults,
    );
  }

  // ── Period resolution ────────────────────────────────────────────────────

  Period _resolvePeriod(
    StatsFilter filter,
    DateTime muhasabaDate,
    AppSettings settings,
    List<AmalRow> amals,
  ) {
    switch (filter.period) {
      case StatsPeriod.today:
        return Period(
          start: muhasabaDate,
          endExclusive: muhasabaDate.add(const Duration(days: 1)),
        );
      case StatsPeriod.thisWeek:
        return weekPeriodOf(muhasabaDate, settings.startOfWeek);
      case StatsPeriod.thisMonth:
        return monthPeriodOf(muhasabaDate, settings.startOfMonth);
      case StatsPeriod.allTime:
        var earliest = muhasabaDate;
        for (final a in amals) {
          if (a.createdAt.isBefore(earliest)) earliest = a.createdAt;
        }
        final start = DateTime.utc(earliest.year, earliest.month, earliest.day);
        return Period(
          start: start,
          endExclusive: muhasabaDate.add(const Duration(days: 1)),
        );
      case StatsPeriod.custom:
        return Period(
          start: filter.customStart ?? muhasabaDate,
          endExclusive: (filter.customEnd ?? muhasabaDate)
              .add(const Duration(days: 1)),
        );
    }
  }

  // ── Expected completions ─────────────────────────────────────────────────

  int _expectedInPeriod(AmalRow amal, Period period) {
    final days = period.endExclusive.difference(period.start).inDays;
    switch (amal.frequency) {
      case Frequency.daily:
        return days;
      case Frequency.weekly:
        final weeks = (days / 7).round();
        return weeks < 1 ? 1 : weeks;
      case Frequency.monthly:
        return days >= 21 ? 1 : 0;
    }
  }

  // ── Daily breakdown ──────────────────────────────────────────────────────

  List<DailyBreakdown> _buildDailyBreakdown(
    Period period,
    DateTime today,
    List<AmalRow> amals,
    Map<int, List<CompletionRow>> completionsByAmal,
  ) {
    final days = period.endExclusive.difference(period.start).inDays;
    final result = <DailyBreakdown>[];

    for (var i = 0; i < days; i++) {
      final date = period.start.add(Duration(days: i));
      final key = _dayKey(date);
      var completed = 0;
      var expected = 0;

      for (final amal in amals) {
        if (amal.frequency == Frequency.daily) {
          expected++;
          final rows = completionsByAmal[amal.id] ?? [];
          final match = rows.where((r) => _dayKey(r.muhasabaDate) == key);
          if (match.any((r) => r.progress >= amal.target)) completed++;
        } else {
          // Non-daily: count only if there's activity on this day.
          final rows = completionsByAmal[amal.id] ?? [];
          final match = rows.where((r) => _dayKey(r.muhasabaDate) == key);
          if (match.isNotEmpty) {
            expected++;
            if (match.any((r) => r.progress >= amal.target)) completed++;
          }
        }
      }

      result.add(DailyBreakdown(
        date: date,
        completed: completed,
        expected: expected,
        isToday: key == _dayKey(today),
      ));
    }

    return result;
  }

  // ── Category breakdown ───────────────────────────────────────────────────

  List<CategoryBreakdown> _buildCategoryBreakdown(
    List<EnhancedAmalStats> perAmal,
  ) {
    final map = <String, List<EnhancedAmalStats>>{};
    for (final s in perAmal) {
      final cat = s.category ?? 'Other';
      (map[cat] ??= []).add(s);
    }

    final result = map.entries.map((e) {
      var completed = 0;
      var expected = 0;
      for (final s in e.value) {
        completed += s.completed;
        expected += s.expected;
      }
      return CategoryBreakdown(
        name: e.key,
        completed: completed,
        expected: expected,
      );
    }).toList();

    // Sort by rate descending.
    result.sort((a, b) => b.rate.compareTo(a.rate));
    return result;
  }

  // ── Heatmap (last 5 weeks) ───────────────────────────────────────────────

  Future<List<HeatmapDay>> _buildHeatmap(
    DateTime today,
    List<AmalRow> amals,
    PeriodCompletionsLookup lookup,
  ) async {
    final dailyAmals =
        amals.where((a) => a.frequency == Frequency.daily).toList();
    if (dailyAmals.isEmpty) return [];

    final start = today.subtract(const Duration(days: _heatmapDays - 1));
    final endExclusive = today.add(const Duration(days: 1));

    // Gather all completions for daily amals in the heatmap window.
    final allRows = <CompletionRow>[];
    for (final amal in dailyAmals) {
      allRows.addAll(await lookup(amal.id, start, endExclusive));
    }

    // Group by day.
    final byDay = <int, List<CompletionRow>>{};
    for (final r in allRows) {
      (byDay[_dayKey(r.muhasabaDate)] ??= []).add(r);
    }

    final result = <HeatmapDay>[];
    for (var i = 0; i < _heatmapDays; i++) {
      final date = start.add(Duration(days: i));
      final key = _dayKey(date);
      final rows = byDay[key] ?? [];

      var completed = 0;
      for (final amal in dailyAmals) {
        if (rows.any(
            (r) => r.amalId == amal.id && r.progress >= amal.target)) {
          completed++;
        }
      }

      result.add(HeatmapDay(
        date: date,
        rate: dailyAmals.isEmpty ? 0 : completed / dailyAmals.length,
      ));
    }
    return result;
  }

  // ── Per-amal current streak ──────────────────────────────────────────────

  Future<int> _currentStreakForAmal(
    AmalRow amal,
    DateTime today,
    AppSettings settings,
    PeriodCompletionsLookup lookup,
  ) async {
    switch (amal.frequency) {
      case Frequency.daily:
        final start =
            today.subtract(const Duration(days: _dailyStreakLookback));
        final end = today.add(const Duration(days: 1));
        final rows = await lookup(amal.id, start, end);
        final done = {
          for (final r in rows)
            if (r.progress >= amal.target) _dayKey(r.muhasabaDate),
        };
        var streak = 0;
        var cursor = today;
        if (!done.contains(_dayKey(cursor))) {
          cursor = cursor.subtract(const Duration(days: 1));
        }
        while (done.contains(_dayKey(cursor))) {
          streak++;
          cursor = cursor.subtract(const Duration(days: 1));
        }
        return streak;

      case Frequency.weekly:
        var week = weekPeriodOf(today, settings.startOfWeek);
        var streak = 0;
        for (var i = 0; i < 52; i++) {
          final rows = await lookup(amal.id, week.start, week.endExclusive);
          final done = rows.any((r) => r.progress >= amal.target);
          if (i == 0 && !done) {
            // Current week still open.
            week = weekPeriodOf(
              week.start.subtract(const Duration(days: 1)),
              settings.startOfWeek,
            );
            continue;
          }
          if (done) {
            streak++;
          } else {
            break;
          }
          week = weekPeriodOf(
            week.start.subtract(const Duration(days: 1)),
            settings.startOfWeek,
          );
        }
        return streak;

      case Frequency.monthly:
        var month = monthPeriodOf(today, settings.startOfMonth);
        var streak = 0;
        for (var i = 0; i < 24; i++) {
          final rows = await lookup(amal.id, month.start, month.endExclusive);
          final done = rows.any((r) => r.progress >= amal.target);
          if (i == 0 && !done) {
            month = monthPeriodOf(
              month.start.subtract(const Duration(days: 1)),
              settings.startOfMonth,
            );
            continue;
          }
          if (done) {
            streak++;
          } else {
            break;
          }
          month = monthPeriodOf(
            month.start.subtract(const Duration(days: 1)),
            settings.startOfMonth,
          );
        }
        return streak;
    }
  }

  // ── Global streaks (consecutive "all daily amals done" days) ─────────────

  Future<_StreakPair> _globalStreaks(
    List<AmalRow> dailyAmals,
    DateTime today,
    PeriodCompletionsLookup lookup,
  ) async {
    if (dailyAmals.isEmpty) {
      return const _StreakPair(current: 0, longest: 0);
    }

    final start = today.subtract(const Duration(days: _dailyStreakLookback));
    final end = today.add(const Duration(days: 1));

    // For each amal, build a set of completed day-keys.
    final perAmalDone = <int, Set<int>>{};
    for (final amal in dailyAmals) {
      final rows = await lookup(amal.id, start, end);
      perAmalDone[amal.id] = {
        for (final r in rows)
          if (r.progress >= amal.target) _dayKey(r.muhasabaDate),
      };
    }

    // A day is "fully done" when every daily amal was completed.
    bool allDone(DateTime date) {
      final key = _dayKey(date);
      return perAmalDone.values.every((s) => s.contains(key));
    }

    // Current streak.
    var current = 0;
    var cursor = today;
    if (!allDone(cursor)) {
      cursor = cursor.subtract(const Duration(days: 1));
    }
    while (allDone(cursor)) {
      current++;
      cursor = cursor.subtract(const Duration(days: 1));
    }

    // Longest streak in window.
    var longest = 0;
    var run = 0;
    var d = start;
    while (!d.isAfter(today)) {
      if (allDone(d)) {
        run++;
        if (run > longest) longest = run;
      } else {
        run = 0;
      }
      d = d.add(const Duration(days: 1));
    }
    if (current > longest) longest = current;

    return _StreakPair(current: current, longest: longest);
  }

  // ── Previous-period rate ─────────────────────────────────────────────────

  Future<double?> _previousPeriodRate(
    StatsFilter filter,
    DateTime muhasabaDate,
    AppSettings settings,
    List<AmalRow> amals,
    PeriodCompletionsLookup lookup,
  ) async {
    final current = _resolvePeriod(filter, muhasabaDate, settings, amals);
    final duration = current.endExclusive.difference(current.start);
    final prevEnd = current.start;
    final prevStart = prevEnd.subtract(duration);
    final prev = Period(start: prevStart, endExclusive: prevEnd);

    var completed = 0;
    var expected = 0;
    for (final amal in amals) {
      final rows = await lookup(amal.id, prev.start, prev.endExclusive);
      completed += rows.where((r) => r.progress >= amal.target).length;
      expected += _expectedInPeriod(amal, prev);
    }
    if (expected == 0) return null;
    return completed / expected;
  }

  int _dayKey(DateTime d) => d.year * 10000 + d.month * 100 + d.day;
}

@immutable
class _StreakPair {
  const _StreakPair({required this.current, required this.longest});
  final int current;
  final int longest;
}
