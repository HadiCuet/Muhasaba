import 'package:flutter/foundation.dart';

import '../../core/time/period.dart';
import '../../data/db/database.dart';
import '../models/app_settings.dart';
import '../models/frequency.dart';
import 'today_builder.dart' show PeriodCompletionsLookup;

/// Per-amal rolled-up stats over the current week and month plus streak.
/// The streak "unit" matches the amal's natural cadence:
///   daily → days, weekly → weeks, monthly → months.
@immutable
class AmalStats {
  const AmalStats({
    required this.amalId,
    required this.title,
    required this.frequency,
    required this.currentStreak,
    required this.longestStreak,
    required this.weeklyCompleted,
    required this.weeklyExpected,
    required this.monthlyCompleted,
    required this.monthlyExpected,
  });

  final int amalId;
  final String title;
  final Frequency frequency;

  /// Current back-to-back completion run (in the amal's unit). `0` means the
  /// user has not completed the amal recently — not necessarily today.
  final int currentStreak;

  /// Longest run observed within the look-back window.
  final int longestStreak;

  final int weeklyCompleted;
  final int weeklyExpected;
  final int monthlyCompleted;
  final int monthlyExpected;

  double get weeklyRate =>
      weeklyExpected == 0 ? 0 : weeklyCompleted / weeklyExpected;
  double get monthlyRate =>
      monthlyExpected == 0 ? 0 : monthlyCompleted / monthlyExpected;
}

/// Aggregate metrics across all amal for the current week / month.
@immutable
class GlobalStats {
  const GlobalStats({
    required this.weekTotalCompletions,
    required this.monthTotalCompletions,
  });

  final int weekTotalCompletions;
  final int monthTotalCompletions;
}

@immutable
class StatsSnapshot {
  const StatsSnapshot({required this.perAmal, required this.global});

  final List<AmalStats> perAmal;
  final GlobalStats global;
}

/// Computes stats from the raw amal list + a completions lookup. Pure domain
/// logic — no Flutter, no database handles — so it's trivial to unit-test
/// with an in-memory stub for `PeriodCompletionsLookup`.
class StatsService {
  const StatsService();

  /// Number of muhasaba days to look back when computing streaks for daily
  /// amal. Weekly/monthly streaks use their own caps (52 weeks, 24 months).
  static const int _dailyLookbackDays = 365;
  static const int _weeklyLookbackWeeks = 52;
  static const int _monthlyLookbackMonths = 24;

  Future<StatsSnapshot> compute({
    required DateTime muhasabaDate,
    required AppSettings settings,
    required List<AmalRow> amals,
    required PeriodCompletionsLookup periodCompletionsOf,
  }) async {
    final week = weekPeriodOf(muhasabaDate, settings.startOfWeek);
    final month = monthPeriodOf(muhasabaDate, settings.startOfMonth);

    final perAmal = <AmalStats>[];
    var weekTotal = 0;
    var monthTotal = 0;

    for (final amal in amals) {
      final weekRows = await periodCompletionsOf(
        amal.id,
        week.start,
        week.endExclusive,
      );
      final monthRows = await periodCompletionsOf(
        amal.id,
        month.start,
        month.endExclusive,
      );

      final weekComplete = weekRows
          .where((r) => r.progress >= amal.target)
          .length;
      final monthComplete = monthRows
          .where((r) => r.progress >= amal.target)
          .length;

      weekTotal += weekComplete;
      monthTotal += monthComplete;

      final weekExpected = _expectedCompletionsInPeriod(
        amal: amal,
        period: week,
      );
      final monthExpected = _expectedCompletionsInPeriod(
        amal: amal,
        period: month,
      );

      final streaks = await _computeStreaks(
        amal: amal,
        today: muhasabaDate,
        settings: settings,
        periodCompletionsOf: periodCompletionsOf,
      );

      perAmal.add(
        AmalStats(
          amalId: amal.id,
          title: amal.title,
          frequency: amal.frequency,
          currentStreak: streaks.current,
          longestStreak: streaks.longest,
          weeklyCompleted: weekComplete.clamp(0, weekExpected),
          weeklyExpected: weekExpected,
          monthlyCompleted: monthComplete.clamp(0, monthExpected),
          monthlyExpected: monthExpected,
        ),
      );
    }

    return StatsSnapshot(
      perAmal: perAmal,
      global: GlobalStats(
        weekTotalCompletions: weekTotal,
        monthTotalCompletions: monthTotal,
      ),
    );
  }

  /// How many completions *should* exist within `period` for this amal, given
  /// its frequency rule. Used as the denominator for percentage displays.
  int _expectedCompletionsInPeriod({
    required AmalRow amal,
    required Period period,
  }) {
    switch (amal.frequency) {
      case Frequency.daily:
        return period.endExclusive.difference(period.start).inDays;
      case Frequency.weekly:
        // Weekly amal count as one expected completion per 7-day slice that
        // overlaps the period. For the "current week" window, that's always 1.
        // For the "current month" window, count full weeks that start within
        // the month. Simplification: round(days / 7), min 1.
        final days = period.endExclusive.difference(period.start).inDays;
        final weeks = (days / 7).round();
        return weeks < 1 ? 1 : weeks;
      case Frequency.monthly:
        // One per month. For a weekly period this is 0 or 1; for a monthly
        // period it's always 1.
        final days = period.endExclusive.difference(period.start).inDays;
        return days >= 21 ? 1 : 0;
    }
  }

  Future<_StreakPair> _computeStreaks({
    required AmalRow amal,
    required DateTime today,
    required AppSettings settings,
    required PeriodCompletionsLookup periodCompletionsOf,
  }) async {
    switch (amal.frequency) {
      case Frequency.daily:
        return _dailyStreaks(amal, today, periodCompletionsOf);
      case Frequency.weekly:
        return _weeklyStreaks(amal, today, settings, periodCompletionsOf);
      case Frequency.monthly:
        return _monthlyStreaks(amal, today, settings, periodCompletionsOf);
    }
  }

  Future<_StreakPair> _dailyStreaks(
    AmalRow amal,
    DateTime today,
    PeriodCompletionsLookup lookup,
  ) async {
    final start = today.subtract(const Duration(days: _dailyLookbackDays));
    final endExclusive = today.add(const Duration(days: 1));
    final rows = await lookup(amal.id, start, endExclusive);
    final completed = <int>{
      for (final r in rows)
        if (r.progress >= amal.target) _dayKey(r.muhasabaDate),
    };

    // Current streak: allow today to be "not yet done" without breaking —
    // start counting at yesterday if today isn't complete.
    var current = 0;
    var cursor = today;
    if (!completed.contains(_dayKey(cursor))) {
      cursor = cursor.subtract(const Duration(days: 1));
    }
    while (completed.contains(_dayKey(cursor))) {
      current++;
      cursor = cursor.subtract(const Duration(days: 1));
    }

    // Longest streak in the window.
    var longest = 0;
    var run = 0;
    var d = start;
    while (!d.isAfter(today)) {
      if (completed.contains(_dayKey(d))) {
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

  Future<_StreakPair> _weeklyStreaks(
    AmalRow amal,
    DateTime today,
    AppSettings settings,
    PeriodCompletionsLookup lookup,
  ) async {
    // Walk back up to 52 weeks. For each week, "completed" means at least one
    // completion row in [week.start, week.endExclusive) that meets target.
    // For weekly amal with a specific day, completion must also fall on that
    // weekday — but the week-level lookup is enough because a specific-day
    // amal can only record one completion per week anyway.
    final weeks = <bool>[];
    var week = weekPeriodOf(today, settings.startOfWeek);
    for (var i = 0; i < _weeklyLookbackWeeks; i++) {
      final rows = await lookup(amal.id, week.start, week.endExclusive);
      weeks.add(rows.any((r) => r.progress >= amal.target));
      week = weekPeriodOf(
        week.start.subtract(const Duration(days: 1)),
        settings.startOfWeek,
      );
    }

    // weeks[0] is the current week. Don't break the streak if current week
    // is still open (i.e., not yet completed).
    var current = 0;
    var start = 0;
    if (!weeks.first) start = 1;
    for (var i = start; i < weeks.length; i++) {
      if (weeks[i]) {
        current++;
      } else {
        break;
      }
    }

    var longest = 0;
    var run = 0;
    for (final done in weeks.reversed) {
      if (done) {
        run++;
        if (run > longest) longest = run;
      } else {
        run = 0;
      }
    }
    if (current > longest) longest = current;

    return _StreakPair(current: current, longest: longest);
  }

  Future<_StreakPair> _monthlyStreaks(
    AmalRow amal,
    DateTime today,
    AppSettings settings,
    PeriodCompletionsLookup lookup,
  ) async {
    final months = <bool>[];
    var month = monthPeriodOf(today, settings.startOfMonth);
    for (var i = 0; i < _monthlyLookbackMonths; i++) {
      final rows = await lookup(amal.id, month.start, month.endExclusive);
      months.add(rows.any((r) => r.progress >= amal.target));
      month = monthPeriodOf(
        month.start.subtract(const Duration(days: 1)),
        settings.startOfMonth,
      );
    }

    var current = 0;
    var start = 0;
    if (!months.first) start = 1;
    for (var i = start; i < months.length; i++) {
      if (months[i]) {
        current++;
      } else {
        break;
      }
    }

    var longest = 0;
    var run = 0;
    for (final done in months.reversed) {
      if (done) {
        run++;
        if (run > longest) longest = run;
      } else {
        run = 0;
      }
    }
    if (current > longest) longest = current;

    return _StreakPair(current: current, longest: longest);
  }

  /// Integer key for a UTC-midnight date. Safe equality without relying on
  /// DateTime's `operator ==` nuances with different time zones.
  int _dayKey(DateTime d) => d.year * 10000 + d.month * 100 + d.day;
}

@immutable
class _StreakPair {
  const _StreakPair({required this.current, required this.longest});
  final int current;
  final int longest;
}
