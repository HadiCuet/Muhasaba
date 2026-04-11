/// Inclusive-start / exclusive-end period spanning a range of muhasaba days.
class Period {
  const Period({required this.start, required this.endExclusive});

  /// UTC-midnight date-only, inclusive.
  final DateTime start;

  /// UTC-midnight date-only, exclusive.
  final DateTime endExclusive;

  bool contains(DateTime date) =>
      !date.isBefore(start) && date.isBefore(endExclusive);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Period &&
          other.start == start &&
          other.endExclusive == endExclusive;

  @override
  int get hashCode => Object.hash(start, endExclusive);

  @override
  String toString() =>
      'Period(${start.toIso8601String()} .. ${endExclusive.toIso8601String()})';
}

/// The weekly period containing `date`, given the user's `startOfWeek`
/// (`DateTime.monday == 1 .. DateTime.sunday == 7`).
Period weekPeriodOf(DateTime date, int startOfWeek) {
  assert(startOfWeek >= 1 && startOfWeek <= 7);
  final d = _dateOnly(date);
  final daysSinceStart = (d.weekday - startOfWeek + 7) % 7;
  final start = d.subtract(Duration(days: daysSinceStart));
  final end = start.add(const Duration(days: 7));
  return Period(start: start, endExclusive: end);
}

/// The monthly period containing `date`, given the user's `startOfMonth`
/// (1..31). If `startOfMonth` exceeds the month's day count (e.g. 31 in Feb)
/// the period is clamped to the last day of that month.
Period monthPeriodOf(DateTime date, int startOfMonth) {
  assert(startOfMonth >= 1 && startOfMonth <= 31);
  final d = _dateOnly(date);

  final candidateThis = _clampedDay(d.year, d.month, startOfMonth);
  DateTime start;
  if (!d.isBefore(candidateThis)) {
    start = candidateThis;
  } else {
    final prevMonth = d.month == 1
        ? DateTime.utc(d.year - 1, 12, 1)
        : DateTime.utc(d.year, d.month - 1, 1);
    start = _clampedDay(prevMonth.year, prevMonth.month, startOfMonth);
  }
  final nextBase = start.month == 12
      ? DateTime.utc(start.year + 1, 1, 1)
      : DateTime.utc(start.year, start.month + 1, 1);
  final endExclusive =
      _clampedDay(nextBase.year, nextBase.month, startOfMonth);
  return Period(start: start, endExclusive: endExclusive);
}

/// The number of days in the given calendar month.
int daysInMonth(int year, int month) {
  final firstOfNext =
      month == 12 ? DateTime.utc(year + 1, 1, 1) : DateTime.utc(year, month + 1, 1);
  final lastOfThis = firstOfNext.subtract(const Duration(days: 1));
  return lastOfThis.day;
}

DateTime _clampedDay(int year, int month, int day) {
  final dim = daysInMonth(year, month);
  return DateTime.utc(year, month, day > dim ? dim : day);
}

DateTime _dateOnly(DateTime t) => DateTime.utc(t.year, t.month, t.day);
