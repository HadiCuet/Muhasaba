// Shared storage format for the day/date sets on `Amals`.
//
// `null`/empty means "not pinned" — the amal floats and uses `periodTarget`
// instead. A non-empty value is an ascending, comma-separated list of ints,
// e.g. "13,14,15".

/// Parses a day CSV into a set of ints in 1..[max]. Returns an empty set for
/// null/empty/garbage input.
Set<int> parseDayCsv(String? csv, {required int max}) {
  if (csv == null || csv.trim().isEmpty) return {};
  final out = <int>{};
  for (final part in csv.split(',')) {
    final n = int.tryParse(part.trim());
    if (n != null && n >= 1 && n <= max) out.add(n);
  }
  return out;
}

/// Formats ints into the canonical ascending CSV, or null when empty.
String? formatDayCsv(Set<int> days, {required int max}) {
  final valid = days.where((d) => d >= 1 && d <= max).toList()..sort();
  if (valid.isEmpty) return null;
  return valid.join(',');
}
