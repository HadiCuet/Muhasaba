import 'package:flutter/foundation.dart';

import '../../core/time/period.dart';
import '../../data/db/database.dart';
import '../models/app_settings.dart';
import '../models/frequency.dart';

/// View-model for a single amal row in the Today / History list.
@immutable
class TodayRow {
  const TodayRow({
    required this.amal,
    required this.progress,
    required this.note,
  });

  final AmalRow amal;
  final int progress;
  final String? note;

  bool get isCompleted => progress >= amal.target;

  double get fraction {
    if (amal.target <= 0) return 0;
    final f = progress / amal.target;
    return f < 0 ? 0 : (f > 1 ? 1 : f);
  }
}

/// A group of amal rows belonging to the same category, for the grouped view.
@immutable
class TodayGroup {
  const TodayGroup({
    required this.categoryName,
    required this.rows,
  });

  /// `null` means "Other" (uncategorized amal).
  final String? categoryName;
  final List<TodayRow> rows;

  int get completedCount => rows.where((r) => r.isCompleted).length;
  int get totalCount => rows.length;
}

/// Callback used by `TodayBuilder` to look up completions for a given amal
/// within a period. Pulled out as a function so tests can stub it without
/// spinning up a database.
typedef PeriodCompletionsLookup = Future<List<CompletionRow>> Function(
  int amalId,
  DateTime start,
  DateTime endExclusive,
);

/// Given a muhasaba date, the user's settings, the list of active amal, and
/// the completions + hidden-day rows for that single date, produces the
/// ordered list of `TodayRow`s that should be rendered.
///
/// This class implements the core visibility rules documented in the plan
/// (weekly/monthly "show until completed once, then hide until next period",
/// per-day removal, default-checked flag, etc.).
class TodayBuilder {
  const TodayBuilder();

  /// Partitions already-built [rows] into [TodayGroup]s by category.
  /// Categories are ordered by [categoryOrder]; uncategorized rows go last
  /// under a `null` group name ("Other" in the UI).
  static List<TodayGroup> groupRows(
    List<TodayRow> rows,
    List<CategoryRow> categoryOrder,
  ) {
    final catIndex = <String, int>{
      for (var i = 0; i < categoryOrder.length; i++)
        categoryOrder[i].name: i,
    };
    final buckets = <String?, List<TodayRow>>{};
    for (final row in rows) {
      final cat = row.amal.category;
      (buckets[cat] ??= []).add(row);
    }
    final groups = <TodayGroup>[];
    // Named categories first, in DB sort order.
    final sortedCats = buckets.keys
        .where((k) => k != null)
        .toList()
      ..sort((a, b) =>
          (catIndex[a!] ?? 999).compareTo(catIndex[b!] ?? 999));
    for (final cat in sortedCats) {
      groups.add(TodayGroup(categoryName: cat, rows: buckets[cat]!));
    }
    // Uncategorized last.
    if (buckets.containsKey(null)) {
      groups.add(TodayGroup(categoryName: null, rows: buckets[null]!));
    }
    return groups;
  }

  Future<List<TodayRow>> build({
    required DateTime muhasabaDate,
    required AppSettings settings,
    required List<AmalRow> amals,
    required List<CompletionRow> completionsForDate,
    required List<HiddenDayRow> hiddenForDate,
    required PeriodCompletionsLookup periodCompletionsOf,
  }) async {
    final hiddenIds = {for (final h in hiddenForDate) h.amalId};
    final todayByAmal = <int, CompletionRow>{
      for (final c in completionsForDate) c.amalId: c,
    };

    final rows = <TodayRow>[];
    for (final amal in amals) {
      if (hiddenIds.contains(amal.id)) continue;

      final visible = await _isVisible(
        amal: amal,
        date: muhasabaDate,
        settings: settings,
        periodCompletionsOf: periodCompletionsOf,
      );
      if (!visible) continue;

      final todayRow = todayByAmal[amal.id];
      final progress = todayRow != null
          ? todayRow.progress
          : (amal.defaultChecked ? amal.target : 0);

      rows.add(TodayRow(
        amal: amal,
        progress: progress,
        note: todayRow?.note,
      ));
    }
    return rows;
  }

  Future<bool> _isVisible({
    required AmalRow amal,
    required DateTime date,
    required AppSettings settings,
    required PeriodCompletionsLookup periodCompletionsOf,
  }) async {
    switch (amal.frequency) {
      case Frequency.daily:
        return true;

      case Frequency.weekly:
        if (amal.weeklyDay != null) {
          return date.weekday == amal.weeklyDay;
        }
        // Only check completions BEFORE today so that today's completion
        // keeps the amal visible (as "done") for the rest of the day.
        final week = weekPeriodOf(date, settings.startOfWeek);
        final inWeek = await periodCompletionsOf(
          amal.id,
          week.start,
          date,
        );
        return !inWeek.any((c) => c.progress >= amal.target);

      case Frequency.monthly:
        if (amal.monthlyDate != null) {
          final dim = daysInMonth(date.year, date.month);
          final targetDay =
              amal.monthlyDate! > dim ? dim : amal.monthlyDate!;
          return date.day == targetDay;
        }
        // Same as weekly: exclude today so the amal stays visible when
        // completed, then hides starting tomorrow.
        final month = monthPeriodOf(date, settings.startOfMonth);
        final inMonth = await periodCompletionsOf(
          amal.id,
          month.start,
          date,
        );
        return !inMonth.any((c) => c.progress >= amal.target);
    }
  }
}
