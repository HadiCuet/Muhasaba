import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

import '../../domain/models/frequency.dart';
import 'daos/amal_dao.dart';
import 'daos/category_dao.dart';
import 'daos/completion_dao.dart';
import 'daos/hidden_day_dao.dart';
import 'daos/settings_dao.dart';
import 'seed.dart';
import 'tables.dart';

part 'database.g.dart';

@DriftDatabase(
  tables: [Amals, Completions, HiddenDays, SettingsKv, Categories],
  daos: [AmalDao, CategoryDao, CompletionDao, HiddenDayDao, SettingsDao],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase([QueryExecutor? executor])
    : super(executor ?? driftDatabase(name: 'muhasaba'));

  @override
  int get schemaVersion => 4;

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (m) async {
      await m.createAll();
      await seedInitialAmals(this);
      await seedCategories(this);
    },
    onUpgrade: (m, from, to) async {
      // All DDL below is guarded with existence checks so the migration is
      // idempotent — safe to re-run even if a previous attempt committed
      // some steps before failing, which is exactly the state a few users
      // ended up in after the first (buggy) v3 build.
      if (from < 2) {
        if (!await _hasColumn('amals', 'icon')) {
          await m.addColumn(amals, amals.icon);
        }
        if (!await _hasColumn('amals', 'category')) {
          await m.addColumn(amals, amals.category);
        }
        if (!await _hasTable('categories')) {
          // `createTable` uses the compile-time `Categories` class, which
          // carries the `icon` column — so v1 → v3 upgraders get the full
          // v3 schema here, and `seedCategories` below inserts icons
          // alongside the seed names. No separate backfill needed.
          await m.createTable(categories);
        }
        // `seedCategories` is idempotent (insertOrIgnore), so it's safe to
        // run whether the table was just created or already existed.
        await seedCategories(this);
        await assignSeedIcons(this);
      }
      if (from == 2) {
        if (!await _hasColumn('categories', 'icon')) {
          await m.addColumn(categories, categories.icon);
        }
        await assignSeedCategoryIcons(this);
      }
      if (from < 4) {
        // Make Amals.icon mandatory. Backfill iconless rows with the
        // matching category's icon when available, else ⭐. NULLIF turns
        // empty-string category icons into NULL so COALESCE skips them.
        await customStatement('''
          UPDATE amals
          SET icon = COALESCE(
            NULLIF(
              (SELECT icon FROM categories WHERE categories.name = amals.category),
              ''
            ),
            '⭐'
          )
          WHERE icon IS NULL OR TRIM(icon) = ''
        ''');
        // Recreate the table with the new NOT NULL + DEFAULT '⭐' constraint.
        // Defensive transformer in case any null slipped past the backfill.
        await m.alterTable(
          TableMigration(
            amals,
            columnTransformer: {
              amals.icon: const CustomExpression<String>(
                "COALESCE(icon, '⭐')",
              ),
            },
          ),
        );
      }
    },
    beforeOpen: (details) async {
      // Enforce foreign keys on every connection (SQLite defaults to off).
      await customStatement('PRAGMA foreign_keys = ON');
    },
  );

  /// Returns `true` if [table] contains a column named [column].
  Future<bool> _hasColumn(String table, String column) async {
    final row = await customSelect(
      "SELECT 1 AS x FROM pragma_table_info(?) WHERE name = ? LIMIT 1",
      variables: [Variable.withString(table), Variable.withString(column)],
    ).getSingleOrNull();
    return row != null;
  }

  /// Returns `true` if a table named [name] exists in the DB.
  Future<bool> _hasTable(String name) async {
    final row = await customSelect(
      "SELECT 1 AS x FROM sqlite_master "
      "WHERE type = 'table' AND name = ? LIMIT 1",
      variables: [Variable.withString(name)],
    ).getSingleOrNull();
    return row != null;
  }
}
