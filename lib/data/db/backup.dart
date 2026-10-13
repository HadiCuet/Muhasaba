import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';

import 'database.dart';

enum BackupProblem { notABackup, newerVersion }

class BackupException implements Exception {
  const BackupException(this.problem);

  final BackupProblem problem;

  @override
  String toString() => 'BackupException(${problem.name})';
}

/// Tables every Muhasaba database has had since schema version 1.
const _coreTables = {'amals', 'completions', 'settings_kv'};

/// Writes a self-contained copy of [db] to [file], replacing any file there.
Future<void> writeBackup(AppDatabase db, File file) async {
  if (await file.exists()) await file.delete();
  await db.customStatement('VACUUM INTO ?', [file.path]);
}

/// Returns the schema version of the backup at [file], or throws a
/// [BackupException] if this app can't restore it.
Future<int> checkBackup(AppDatabase db, File file) async {
  final (int, Set<String>) found;
  try {
    found = await _withAttached(db, file, () async {
      final version = await db
          .customSelect('PRAGMA backup.user_version')
          .map((row) => row.read<int>('user_version'))
          .getSingle();
      final tables = await db
          .customSelect(
            "SELECT name FROM backup.sqlite_master WHERE type = 'table'",
          )
          .map((row) => row.read<String>('name'))
          .get();
      return (version, tables.toSet());
    });
  } catch (_) {
    throw const BackupException(BackupProblem.notABackup);
  }
  final (version, tables) = found;
  if (version > db.schemaVersion) {
    throw const BackupException(BackupProblem.newerVersion);
  }
  if (version < 1 || !tables.containsAll(_coreTables)) {
    throw const BackupException(BackupProblem.notABackup);
  }
  return version;
}

/// Replaces everything in [db] with the backup at [file], all at once: any
/// failure leaves [db] as it was.
///
/// An older backup is migrated in place first, so [file] must be a copy the
/// caller owns.
Future<void> restoreBackup(AppDatabase db, File file) async {
  if (await checkBackup(db, file) < db.schemaVersion) {
    await _migrate(file);
  }
  await _withAttached(db, file, () {
    return db.transaction(() async {
      await db.customStatement('PRAGMA defer_foreign_keys = ON');
      for (final table in db.allTables) {
        await db.customStatement('DELETE FROM main.${table.actualTableName}');
      }
      for (final table in db.allTables) {
        final name = table.actualTableName;
        final columns = table.$columns
            .map((c) => c.escapedNameFor(SqlDialect.sqlite))
            .join(', ');
        await db.customStatement(
          'INSERT INTO main.$name ($columns) SELECT $columns FROM backup.$name',
        );
      }
    });
  });
  db.markTablesUpdated(db.allTables);
}

Future<T> _withAttached<T>(
  AppDatabase db,
  File file,
  Future<T> Function() body,
) async {
  await db.customStatement('ATTACH DATABASE ? AS backup', [file.path]);
  try {
    return await body();
  } finally {
    await db.customStatement('DETACH DATABASE backup');
  }
}

Future<void> _migrate(File file) async {
  final dontWarn = driftRuntimeOptions.dontWarnAboutMultipleDatabases;
  driftRuntimeOptions.dontWarnAboutMultipleDatabases = true;
  final backup = AppDatabase(NativeDatabase(file));
  driftRuntimeOptions.dontWarnAboutMultipleDatabases = dontWarn;
  try {
    // Opening the database is what runs the migrations.
    await backup.customSelect('SELECT 1').get();
  } finally {
    await backup.close();
  }
}
