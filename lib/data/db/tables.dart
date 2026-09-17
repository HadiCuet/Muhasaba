import 'package:drift/drift.dart';

import '../../domain/models/challenge.dart';
import '../../domain/models/frequency.dart';

/// User-defined (or seeded) acts of worship the user wants to track.
@DataClassName('AmalRow')
class Amals extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text().withLength(min: 1)();
  IntColumn get frequency => intEnum<Frequency>()();

  /// 0 = no goal: any amount completes the day.
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
  IntColumn get optionSetId => integer().nullable().references(
    OptionSets,
    #id,
    onDelete: KeyAction.setNull,
  )();
  BoolColumn get requireChoice =>
      boolean().withDefault(const Constant(false))();
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

/// One row per (amal, muhasabaDate). `AmalGoal.meets(progress)` decides
/// whether the amal counts for that muhasaba day.
@DataClassName('CompletionRow')
class Completions extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get amalId =>
      integer().references(Amals, #id, onDelete: KeyAction.cascade)();
  DateTimeColumn get muhasabaDate => dateTime()(); // date-only (UTC midnight)
  IntColumn get progress => integer().withDefault(const Constant(0))();
  TextColumn get note => text().nullable()();
  IntColumn get optionItemId => integer().nullable().references(
    OptionSetItems,
    #id,
    onDelete: KeyAction.setNull,
  )();
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
  TextColumn get title => text().withLength(min: 1)();
  TextColumn get icon => text().withDefault(const Constant('🚩'))();
  IntColumn get mode => intEnum<ChallengeMode>()();
  IntColumn get target => integer()();
  IntColumn get stepSize => integer().withDefault(const Constant(1))();
  TextColumn get unit => text().nullable()(); // user-typed, e.g. "rakah"
  TextColumn get category =>
      text().nullable()(); // shares the amal `categories` table
  TextColumn get reminderTime => text().nullable()(); // "HH:mm" local
  DateTimeColumn get startDate => dateTime()(); // date-only (UTC midnight)
  DateTimeColumn get endExclusive =>
      dateTime().nullable()(); // date-only; null = no deadline
  IntColumn get status => intEnum<ChallengeStatus>()();
  BoolColumn get expiryHandled =>
      boolean().withDefault(const Constant(false))();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get completedAt => dateTime().nullable()();
  IntColumn get sortOrder => integer().withDefault(const Constant(0))();

  /// Whether the user has been shown that this challenge finished.
  BoolColumn get completionSeen =>
      boolean().withDefault(const Constant(false))();
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

/// A reusable, named list of choices an amal can offer, e.g. "Jamaa".
@DataClassName('OptionSetRow')
class OptionSets extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 1)();

  /// Identifies a seeded set so its name can be localized. Cleared the moment
  /// the user renames it, which makes their wording win in every language.
  TextColumn get seedKey => text().nullable()();
  IntColumn get sortOrder => integer().withDefault(const Constant(0))();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get archivedAt => dateTime().nullable()();
}

/// One choice within an [OptionSets] row.
@DataClassName('OptionSetItemRow')
class OptionSetItems extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get setId =>
      integer().references(OptionSets, #id, onDelete: KeyAction.cascade)();
  TextColumn get label => text().withLength(min: 1)();
  TextColumn get seedKey => text().nullable()();
  IntColumn get sortOrder => integer().withDefault(const Constant(0))();
  DateTimeColumn get archivedAt => dateTime().nullable()();
}
