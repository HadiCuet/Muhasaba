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
  int get schemaVersion => 2;

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (m) async {
      await m.createAll();
      await seedInitialAmals(this);
      await seedCategories(this);
    },
    onUpgrade: (m, from, to) async {
      if (from < 2) {
        await m.addColumn(amals, amals.icon);
        await m.addColumn(amals, amals.category);
        await m.createTable(categories);
        await seedCategories(this);
        await assignSeedIcons(this);
      }
    },
    beforeOpen: (details) async {
      // Enforce foreign keys on every connection (SQLite defaults to off).
      await customStatement('PRAGMA foreign_keys = ON');
    },
  );
}
