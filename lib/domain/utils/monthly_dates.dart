import '../../core/time/period.dart';
import 'day_csv.dart';

/// Parses the CSV in `Amals.monthlyDates` into a set of month days (1..31).
Set<int> parseMonthlyDates(String? csv) => parseDayCsv(csv, max: 31);

/// Formats month days into the canonical ascending CSV, or null when empty.
String? formatMonthlyDates(Set<int> dates) => formatDayCsv(dates, max: 31);

/// Whether [day] falls on one of [dates], with each entry clamped to that
/// month's length — so a 31st amal fires on 28 February. Clamping can map
/// several entries onto the same day; this returns true once, not per entry.
bool isScheduledMonthDate(Set<int> dates, DateTime day) {
  if (dates.isEmpty) return false;
  final dim = daysInMonth(day.year, day.month);
  for (final d in dates) {
    if ((d > dim ? dim : d) == day.day) return true;
  }
  return false;
}
