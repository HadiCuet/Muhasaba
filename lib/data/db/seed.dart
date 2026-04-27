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

/// Seeds the default categories. Called from both `onCreate` and the v1 → v3
/// upgrade path. Uses `insertOrIgnore` so it's safe to call even when the
/// rows already exist (e.g. when a prior partial migration had already
/// created the table and seeded it).
///
/// Fresh installs on schemaVersion ≥ 3 get icons alongside the names. The
/// v2 → v3 upgrade path doesn't call this — it relies on
/// [assignSeedCategoryIcons] to backfill icons on the existing rows.
Future<void> seedCategories(AppDatabase db) async {
  await db.batch((b) {
    b.insertAll(db.categories, [
      CategoriesCompanion.insert(
        name: 'Salah',
        sortOrder: const Value(0),
        icon: const Value('🕌'),
      ),
      CategoriesCompanion.insert(
        name: 'Dhikr',
        sortOrder: const Value(1),
        icon: const Value('📿'),
      ),
      CategoriesCompanion.insert(
        name: 'Quran',
        sortOrder: const Value(2),
        icon: const Value('📖'),
      ),
      CategoriesCompanion.insert(
        name: 'Charity',
        sortOrder: const Value(3),
        icon: const Value('💰'),
      ),
    ], mode: InsertMode.insertOrIgnore);
  });
}

/// Assigns icons to the four seeded categories for existing installs that
/// upgraded from v2 (where `icon` didn't exist). The `IS NULL` guard means
/// we don't clobber any icon a user might have already set via the editor.
Future<void> assignSeedCategoryIcons(AppDatabase db) async {
  const mapping = <String, String>{
    'Salah': '🕌',
    'Dhikr': '📿',
    'Quran': '📖',
    'Charity': '💰',
  };
  for (final entry in mapping.entries) {
    await (db.update(db.categories)
          ..where((c) => c.name.equals(entry.key) & c.icon.isNull()))
        .write(CategoriesCompanion(icon: Value(entry.value)));
  }
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
  required String icon,
  String? category,
  Frequency frequency = Frequency.daily,
  int? weeklyDay,
  int? monthlyDate,
  int target = 1,
}) {
  return AmalsCompanion.insert(
    title: title,
    frequency: frequency,
    createdAt: createdAt,
    sortOrder: Value(order),
    isSeed: const Value(true),
    icon: Value(icon),
    category: Value(category),
    target: Value(target),
    weeklyDay: Value(weeklyDay),
    monthlyDate: Value(monthlyDate),
  );
}
