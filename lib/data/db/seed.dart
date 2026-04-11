import 'package:drift/drift.dart';

import '../../domain/models/frequency.dart';
import 'database.dart';

/// Inserts the first-run default amal list: Fajr, Dhuhr, Asr, Maghrib, Isha,
/// Tilawah. Called from `AppDatabase.migration.onCreate`.
///
/// Why seeded here rather than lazily on first app launch: it keeps "fresh
/// install" state fully defined at the schema-creation boundary, so tests and
/// production share one code path and there's no "was the seed run yet?"
/// flag to maintain.
Future<void> seedInitialAmals(AppDatabase db) async {
  final now = DateTime.now().toUtc();
  final entries = <AmalsCompanion>[
    _seed('Fajr', 0, now),
    _seed('Dhuhr', 1, now),
    _seed('Asr', 2, now),
    _seed('Maghrib', 3, now),
    _seed('Isha', 4, now),
    _seed('Tilawah', 5, now),
  ];
  await db.batch((b) {
    b.insertAll(db.amals, entries);
  });
}

AmalsCompanion _seed(String title, int order, DateTime createdAt) {
  return AmalsCompanion.insert(
    title: title,
    frequency: Frequency.daily,
    createdAt: createdAt,
    sortOrder: Value(order),
    isSeed: const Value(true),
  );
}
