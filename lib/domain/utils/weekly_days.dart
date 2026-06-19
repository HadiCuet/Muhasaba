// Helpers for the multi-day weekly schedule stored in `Amals.weeklyDays`.
//
// Storage format: `null`/empty string means "floating" (the amal may be done
// on any one day of the week). A non-empty value is an ascending, comma-
// separated list of `DateTime` weekday ints (Mon=1 … Sun=7), e.g. "5,6" for
// Friday + Saturday.

/// Parses the CSV in `Amals.weeklyDays` into a set of weekday ints (1..7).
/// Returns an empty set for null/empty/garbage input.
Set<int> parseWeeklyDays(String? csv) {
  if (csv == null || csv.trim().isEmpty) return {};
  final out = <int>{};
  for (final part in csv.split(',')) {
    final n = int.tryParse(part.trim());
    if (n != null && n >= 1 && n <= 7) out.add(n);
  }
  return out;
}

/// Formats weekday ints into the canonical ascending CSV, or null when empty.
String? formatWeeklyDays(Set<int> days) {
  final valid = days.where((d) => d >= 1 && d <= 7).toList()..sort();
  if (valid.isEmpty) return null;
  return valid.join(',');
}

/// Current + longest per-occurrence streak for a weekly amal pinned to
/// [scheduledWeekdays]. Counts consecutive completed scheduled days; an
/// as-yet-undone [today] does not break the current streak (same grace as
/// daily streaks). [isCompleted] reports whether a given day met target.
({int current, int longest}) weeklyOccurrenceStreak({
  required Set<int> scheduledWeekdays,
  required bool Function(DateTime day) isCompleted,
  required DateTime today,
  required int lookbackDays,
}) {
  assert(scheduledWeekdays.isNotEmpty);

  DateTime prevScheduled(DateTime d) {
    var c = d.subtract(const Duration(days: 1));
    while (!scheduledWeekdays.contains(c.weekday)) {
      c = c.subtract(const Duration(days: 1));
    }
    return c;
  }

  // Align to the most recent scheduled day on or before today.
  var cursor = today;
  while (!scheduledWeekdays.contains(cursor.weekday)) {
    cursor = cursor.subtract(const Duration(days: 1));
  }
  // Grace: don't break the streak if the latest scheduled day isn't done yet.
  if (!isCompleted(cursor)) cursor = prevScheduled(cursor);
  var current = 0;
  while (isCompleted(cursor)) {
    current++;
    cursor = prevScheduled(cursor);
  }

  // Longest run over the lookback window.
  final start = today.subtract(Duration(days: lookbackDays));
  var longest = 0;
  var run = 0;
  for (var d = today;
      !d.isBefore(start);
      d = d.subtract(const Duration(days: 1))) {
    if (!scheduledWeekdays.contains(d.weekday)) continue;
    if (isCompleted(d)) {
      run++;
      if (run > longest) longest = run;
    } else {
      run = 0;
    }
  }
  if (current > longest) longest = current;

  return (current: current, longest: longest);
}
