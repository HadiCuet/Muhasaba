/// Maps a clock instant to the "muhasaba day" it belongs to, given the user's
/// configured rollover hour.
///
/// The returned value encodes a date-only (year, month, day) as a UTC midnight
/// `DateTime`. We use UTC-encoded date-only values everywhere so equality,
/// storage, and comparisons are stable regardless of the device's local
/// timezone. It is NOT a claim that the date is "UTC-today"; it is the
/// user's local wall-clock date after the rollover shift.
///
/// Example: rollover = 3am, local instant = 2026-04-11 02:30 local →
/// returns `DateTime.utc(2026, 4, 10)` (still belongs to Apr 10's muhasaba
/// day). At 2026-04-11 03:00 local → returns `DateTime.utc(2026, 4, 11)`.
DateTime muhasabaDateOf(DateTime instant, int rolloverHour) {
  assert(rolloverHour >= 0 && rolloverHour <= 23);
  final local = instant.isUtc ? instant.toLocal() : instant;
  final shifted = local.subtract(Duration(hours: rolloverHour));
  return DateTime.utc(shifted.year, shifted.month, shifted.day);
}

/// Encode a `DateTime` (local or utc) as a UTC-midnight date-only value.
DateTime toDateOnly(DateTime t) {
  final x = t.isUtc ? t : t;
  return DateTime.utc(x.year, x.month, x.day);
}
