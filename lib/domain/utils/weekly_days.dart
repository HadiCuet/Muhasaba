import 'day_csv.dart';

/// Parses the CSV in `Amals.weeklyDays` into a set of weekday ints (Mon=1).
Set<int> parseWeeklyDays(String? csv) => parseDayCsv(csv, max: 7);

/// Formats weekday ints into the canonical ascending CSV, or null when empty.
String? formatWeeklyDays(Set<int> days) => formatDayCsv(days, max: 7);

/// Current + longest streak counted over scheduled occurrences rather than
/// calendar days. [isScheduled] decides which days count as occurrences, so
/// this serves both pinned-weekday and pinned-month-date amal. An as-yet-
/// undone latest occurrence does not break the current streak.
({int current, int longest}) occurrenceStreak({
  required bool Function(DateTime day) isScheduled,
  required bool Function(DateTime day) isCompleted,
  required DateTime today,
  required int lookbackDays,
}) {
  final earliest = today.subtract(Duration(days: lookbackDays));
  final scheduled = <DateTime>[];
  for (
    var d = today;
    !d.isBefore(earliest);
    d = d.subtract(const Duration(days: 1))
  ) {
    if (isScheduled(d)) scheduled.add(d);
  }
  if (scheduled.isEmpty) return (current: 0, longest: 0);

  var i = isCompleted(scheduled.first) ? 0 : 1;
  var current = 0;
  while (i < scheduled.length && isCompleted(scheduled[i])) {
    current++;
    i++;
  }

  var longest = 0;
  var run = 0;
  for (final d in scheduled.reversed) {
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

/// Occurrence streak for an amal pinned to specific weekdays.
({int current, int longest}) weeklyOccurrenceStreak({
  required Set<int> scheduledWeekdays,
  required bool Function(DateTime day) isCompleted,
  required DateTime today,
  required int lookbackDays,
}) {
  assert(scheduledWeekdays.isNotEmpty);
  return occurrenceStreak(
    isScheduled: (d) => scheduledWeekdays.contains(d.weekday),
    isCompleted: isCompleted,
    today: today,
    lookbackDays: lookbackDays,
  );
}
