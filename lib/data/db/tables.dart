import 'package:drift/drift.dart';

import '../../domain/models/challenge.dart';
import '../../domain/models/frequency.dart';

/// User-defined (or seeded) acts of worship the user wants to track.
@DataClassName('AmalRow')
class Amals extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text().withLength(min: 1, max: 120)();
  IntColumn get frequency => intEnum<Frequency>()();
  IntColumn get target => integer().withDefault(const Constant(1))();
  IntColumn get weeklyDay => integer()
      .nullable()(); // 1..7; legacy single day, superseded by weeklyDays
  TextColumn get weeklyDays =>
      text().nullable()(); // CSV of 1..7 (Mon=1); null/empty = "any day"
  IntColumn get monthlyDate => integer()
      .nullable()(); // 1..31; legacy single date, superseded by monthlyDates
  TextColumn get monthlyDates =>
      text().nullable()(); // CSV of 1..31; null/empty = "any day"
  IntColumn get periodTarget => integer().withDefault(
    const Constant(1),
  )(); // days per period in "any day" mode
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

/// A self-directed goal: reach [target] within an optional window.
@DataClassName('ChallengeRow')
class Challenges extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text().withLength(min: 1, max: 120)();
  TextColumn get icon => text().withDefault(const Constant('🚩'))();
  IntColumn get mode => intEnum<ChallengeMode>()();
  IntColumn get target => integer()();
  IntColumn get stepSize => integer().withDefault(const Constant(1))();
  TextColumn get unit => text().nullable()(); // user-typed, e.g. "rakah"
  DateTimeColumn get startDate => dateTime()(); // date-only (UTC midnight)
  DateTimeColumn get endExclusive =>
      dateTime().nullable()(); // date-only; null = no deadline
  IntColumn get status => intEnum<ChallengeStatus>()();
  BoolColumn get expiryHandled =>
      boolean().withDefault(const Constant(false))();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get completedAt => dateTime().nullable()();
  IntColumn get sortOrder => integer().withDefault(const Constant(0))();
}

/// One row per (challenge, muhasabaDate). Progress is `SUM(amount)` over these
/// — never a column on [Challenges] — so undo and back-dated edits stay exact.
@DataClassName('ChallengeEntryRow')
class ChallengeEntries extends Table {
  IntColumn get challengeId =>
      integer().references(Challenges, #id, onDelete: KeyAction.cascade)();
  DateTimeColumn get muhasabaDate => dateTime()(); // date-only (UTC midnight)
  IntColumn get amount => integer().withDefault(const Constant(0))();

  @override
  Set<Column> get primaryKey => {challengeId, muhasabaDate};
}
