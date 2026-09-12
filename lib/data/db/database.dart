import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

import '../../domain/models/challenge.dart';
import '../../domain/models/frequency.dart';
import 'daos/amal_dao.dart';
import 'daos/category_dao.dart';
import 'daos/challenge_dao.dart';
import 'daos/completion_dao.dart';
import 'daos/hidden_day_dao.dart';
import 'daos/option_set_dao.dart';
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
    OptionSets,
    OptionSetItems,
  ],
  daos: [
    AmalDao,
    CategoryDao,
    CompletionDao,
    HiddenDayDao,
    SettingsDao,
    ChallengeDao,
    OptionSetDao,
  ],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase([QueryExecutor? executor])
    : super(executor ?? driftDatabase(name: 'muhasaba'));

  @override
  int get schemaVersion => 11;

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (m) async {
      await m.createAll();
      await seedInitialAmals(this);
      await seedCategories(this);
      await seedOptionSets(this);
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
      if (from < 10) {
        // The badge used to be stored as TipTier.rank, so inserting or
        // reordering a tier would silently relabel every supporter. Store
        // the store's immutable product id instead.
        //
        // The ids are spelled out rather than read from TipTier: a migration
        // has to mean what it meant when it shipped, and the enum is free to
        // change underneath it.
        await customStatement(
          "INSERT OR REPLACE INTO settings_kv (key, value) "
          "SELECT 'supporter_product', CASE value "
          "WHEN '1' THEN 'dev.mukashi.muhasaba.tip.rafiq' "
          "WHEN '2' THEN 'dev.mukashi.muhasaba.tip.nasir' "
          "WHEN '3' THEN 'dev.mukashi.muhasaba.tip.muhsin' "
          "WHEN '4' THEN 'dev.mukashi.muhasaba.tip.ansar' END "
          "FROM settings_kv "
          "WHERE key = 'supporter_tier' AND value IN ('1','2','3','4')",
        );
        await customStatement(
          "DELETE FROM settings_kv WHERE key = 'supporter_tier'",
        );
      }
      if (from < 11) {
        if (!await _hasTable('option_sets')) {
          await m.createTable(optionSets);
        }
        if (!await _hasTable('option_set_items')) {
          await m.createTable(optionSetItems);
        }
        if (!await _hasColumn('amals', 'option_set_id')) {
          await m.addColumn(amals, amals.optionSetId);
        }
        if (!await _hasColumn('amals', 'require_choice')) {
          await m.addColumn(amals, amals.requireChoice);
        }
        if (!await _hasColumn('completions', 'option_item_id')) {
          await m.addColumn(completions, completions.optionItemId);
        }
        await seedOptionSets(this);
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
