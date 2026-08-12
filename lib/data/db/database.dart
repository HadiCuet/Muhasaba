import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

import '../../domain/models/challenge.dart';
import '../../domain/models/frequency.dart';
import 'daos/amal_dao.dart';
import 'daos/category_dao.dart';
import 'daos/challenge_dao.dart';
import 'daos/completion_dao.dart';
import 'daos/hidden_day_dao.dart';
import 'daos/settings_dao.dart';
import 'seed.dart';
import 'tables.dart';

part 'database.g.dart';

@DriftDatabase(
  tables: [
    Amals,
    Completions,
    HiddenDays,
    SettingsKv,
    Categories,
    Challenges,
    ChallengeEntries,
  ],
  daos: [
    AmalDao,
    CategoryDao,
    CompletionDao,
    HiddenDayDao,
    SettingsDao,
    ChallengeDao,
  ],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase([QueryExecutor? executor])
    : super(executor ?? driftDatabase(name: 'muhasaba'));

  @override
  int get schemaVersion => 9;

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
              amals.icon: const CustomExpression<String>("COALESCE(icon, '⭐')"),
            },
          ),
        );
      }
      if (from < 5) {
        if (!await _hasColumn('amals', 'weekly_days')) {
          await m.addColumn(amals, amals.weeklyDays);
        }
        // Carry single-day weekly amals into the multi-day column.
        await customStatement(
          "UPDATE amals SET weekly_days = CAST(weekly_day AS TEXT) "
          "WHERE weekly_day IS NOT NULL "
          "AND (weekly_days IS NULL OR weekly_days = '')",
        );
      }
      if (from < 6) {
        if (!await _hasColumn('amals', 'monthly_dates')) {
          await m.addColumn(amals, amals.monthlyDates);
        }
        if (!await _hasColumn('amals', 'period_target')) {
          await m.addColumn(amals, amals.periodTarget);
        }
        // Carry single-date monthly amals into the multi-date column.
        await customStatement(
          "UPDATE amals SET monthly_dates = CAST(monthly_date AS TEXT) "
          "WHERE monthly_date IS NOT NULL "
          "AND (monthly_dates IS NULL OR monthly_dates = '')",
        );
      }
      if (from < 7) {
        if (!await _hasTable('challenges')) {
          await m.createTable(challenges);
        }
        if (!await _hasTable('challenge_entries')) {
          await m.createTable(challengeEntries);
        }
      }
      if (from < 8) {
        if (!await _hasColumn('challenges', 'category')) {
          await m.addColumn(challenges, challenges.category);
        }
        if (!await _hasColumn('challenges', 'reminder_time')) {
          await m.addColumn(challenges, challenges.reminderTime);
        }
      }
      if (from < 9) {
        if (!await _hasColumn('challenges', 'completion_seen')) {
          await m.addColumn(challenges, challenges.completionSeen);
        }
        // Everything already finished is history, not news — without this
        // the first launch after upgrading announces a year of old
        // completions as though they just happened. Ended rows are covered
        // too: the strip ignores them today, but this is the only chance to
        // mark them, and a later change could not reach back for them.
        await customStatement(
          'UPDATE challenges SET completion_seen = 1 WHERE status IN (?, ?)',
          [ChallengeStatus.completed.index, ChallengeStatus.ended.index],
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
