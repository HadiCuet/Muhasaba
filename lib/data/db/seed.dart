import 'package:drift/drift.dart';

import '../../domain/models/frequency.dart';
import 'database.dart';

/// Inserts the first-run default amal list: Fajr, Dhuhr, Asr, Maghrib, Isha,
/// Tilawah. Called from `AppDatabase.migration.onCreate`.
Future<void> seedInitialAmals(AppDatabase db) async {
  final now = DateTime.now().toUtc();
  final entries = <AmalsCompanion>[
    _seed('Fajr', 0, now, icon: '🕌', category: 'Salah'),
    _seed('Dhuhr', 1, now, icon: '🕌', category: 'Salah'),
    _seed('Asr', 2, now, icon: '🕌', category: 'Salah'),
    _seed('Maghrib', 3, now, icon: '🕌', category: 'Salah'),
    _seed('Isha', 4, now, icon: '🕌', category: 'Salah'),
    _seed('Tilawah', 5, now, icon: '📖', category: 'Quran'),
  ];
  await db.batch((b) {
    b.insertAll(db.amals, entries);
  });
}

/// Seeds the default categories. Called from both onCreate and v2 migration.
Future<void> seedCategories(AppDatabase db) async {
  await db.batch((b) {
    b.insertAll(db.categories, [
      CategoriesCompanion.insert(name: 'Salah', sortOrder: const Value(0)),
      CategoriesCompanion.insert(name: 'Dhikr', sortOrder: const Value(1)),
      CategoriesCompanion.insert(name: 'Quran', sortOrder: const Value(2)),
      CategoriesCompanion.insert(name: 'Charity', sortOrder: const Value(3)),
    ]);
  });
}

/// Assigns icons and categories to existing seed amal (v1→v2 upgrade path).
Future<void> assignSeedIcons(AppDatabase db) async {
  const salahIcon = '🕌';
  const quranIcon = '📖';

  await (db.update(db.amals)..where(
        (a) =>
            a.isSeed.equals(true) &
            a.title.isIn(['Fajr', 'Dhuhr', 'Asr', 'Maghrib', 'Isha']),
      ))
      .write(
        const AmalsCompanion(icon: Value(salahIcon), category: Value('Salah')),
      );

  await (db.update(
    db.amals,
  )..where((a) => a.isSeed.equals(true) & a.title.equals('Tilawah'))).write(
    const AmalsCompanion(icon: Value(quranIcon), category: Value('Quran')),
  );
}

AmalsCompanion _seed(
  String title,
  int order,
  DateTime createdAt, {
  String? icon,
  String? category,
}) {
  return AmalsCompanion.insert(
    title: title,
    frequency: Frequency.daily,
    createdAt: createdAt,
    sortOrder: Value(order),
    isSeed: const Value(true),
    icon: Value(icon),
    category: Value(category),
  );
}
