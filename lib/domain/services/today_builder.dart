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
        final week = weekPeriodOf(date, settings.startOfWeek);
        final inWeek = await periodCompletionsOf(
          amal.id,
          week.start,
          week.endExclusive,
        );
        return !inWeek.any((c) => c.progress >= amal.target);

      case Frequency.monthly:
        if (amal.monthlyDate != null) {
          final dim = daysInMonth(date.year, date.month);
          final targetDay =
              amal.monthlyDate! > dim ? dim : amal.monthlyDate!;
          return date.day == targetDay;
        }
        final month = monthPeriodOf(date, settings.startOfMonth);
        final inMonth = await periodCompletionsOf(
          amal.id,
          month.start,
          month.endExclusive,
        );
        return !inMonth.any((c) => c.progress >= amal.target);
    }
  }
}
