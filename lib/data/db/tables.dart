import 'package:drift/drift.dart';

import '../../domain/models/frequency.dart';

/// User-defined (or seeded) acts of worship the user wants to track.
@DataClassName('AmalRow')
class Amals extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text().withLength(min: 1, max: 120)();
  IntColumn get frequency => intEnum<Frequency>()();
  IntColumn get target => integer().withDefault(const Constant(1))();
  IntColumn get weeklyDay =>
      integer().nullable()(); // 1..7, DateTime.monday == 1
  IntColumn get monthlyDate => integer().nullable()(); // 1..31
  BoolColumn get defaultChecked =>
      boolean().withDefault(const Constant(false))();
  TextColumn get reminderTime => text().nullable()(); // "HH:mm" local
  IntColumn get sortOrder => integer().withDefault(const Constant(0))();
  BoolColumn get isSeed => boolean().withDefault(const Constant(false))();
  TextColumn get icon =>
      text().withDefault(const Constant('⭐'))(); // emoji, defaults to ⭐
  TextColumn get category => text().nullable()(); // category name
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get archivedAt => dateTime().nullable()();
}

/// Persisted category list so users don't re-type category names.
@DataClassName('CategoryRow')
class Categories extends Table {
  TextColumn get name => text()();
  IntColumn get sortOrder => integer().withDefault(const Constant(0))();
  TextColumn get icon => text().nullable()(); // emoji, e.g. "🕌"

  @override
  Set<Column> get primaryKey => {name};
}

/// One row per (amal, muhasabaDate). `progress >= amal.target` means the amal
/// is considered complete for that muhasaba day.
@DataClassName('CompletionRow')
class Completions extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get amalId =>
      integer().references(Amals, #id, onDelete: KeyAction.cascade)();
  DateTimeColumn get muhasabaDate => dateTime()(); // date-only (UTC midnight)
  IntColumn get progress => integer().withDefault(const Constant(0))();
  TextColumn get note => text().nullable()();
  DateTimeColumn get completedAt => dateTime().nullable()();

  @override
  List<Set<Column>> get uniqueKeys => [
    {amalId, muhasabaDate},
  ];
}

/// Row-level "remove from today" — a transient hide for a single muhasaba day.
@DataClassName('HiddenDayRow')
class HiddenDays extends Table {
  IntColumn get amalId =>
      integer().references(Amals, #id, onDelete: KeyAction.cascade)();
  DateTimeColumn get muhasabaDate => dateTime()();

  @override
  Set<Column> get primaryKey => {amalId, muhasabaDate};
}

/// Simple key-value store for app settings.
@DataClassName('SettingRow')
class SettingsKv extends Table {
  TextColumn get key => text()();
  TextColumn get value => text()();

  @override
  Set<Column> get primaryKey => {key};
}
