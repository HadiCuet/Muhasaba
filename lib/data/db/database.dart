import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

import '../../domain/models/frequency.dart';
import 'daos/amal_dao.dart';
import 'daos/completion_dao.dart';
import 'daos/hidden_day_dao.dart';
import 'daos/settings_dao.dart';
import 'seed.dart';
import 'tables.dart';

part 'database.g.dart';

@DriftDatabase(
  tables: [Amals, Completions, HiddenDays, SettingsKv],
  daos: [AmalDao, CompletionDao, HiddenDayDao, SettingsDao],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase([QueryExecutor? executor])
      : super(executor ?? driftDatabase(name: 'muhasaba'));

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (m) async {
          await m.createAll();
          await seedInitialAmals(this);
        },
        onUpgrade: (m, from, to) async {
          // Every future schema change MUST add a case here and bump
          // schemaVersion. Do NOT use `m.deleteAllTables()` — writing an
          // explicit per-version migration path is a hard requirement for
          // this project (see project memory).
          //
          // Example stub for future use:
          // if (from < 2) {
          //   await m.addColumn(amals, amals.someNewColumn);
          // }
        },
        beforeOpen: (details) async {
          // Enforce foreign keys on every connection (SQLite defaults to off).
          await customStatement('PRAGMA foreign_keys = ON');
        },
      );
}
