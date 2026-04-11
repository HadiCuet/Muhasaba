import 'package:drift/native.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:muhasaba/data/db/database.dart';
import 'package:muhasaba/domain/models/app_settings.dart';
import 'package:muhasaba/domain/models/frequency.dart';
import 'package:muhasaba/domain/services/today_builder.dart';

AppDatabase _memDb() => AppDatabase(NativeDatabase.memory());

/// Creates a minimal AmalRow for tests without needing to actually insert
/// into the database. We still go through the DB for frequency-based
/// visibility tests since they query completions.
AmalRow _amal({
  required int id,
  required String title,
  Frequency frequency = Frequency.daily,
  int target = 1,
  int? weeklyDay,
  int? monthlyDate,
  bool defaultChecked = false,
}) =>
    AmalRow(
      id: id,
      title: title,
      frequency: frequency,
      target: target,
      weeklyDay: weeklyDay,
      monthlyDate: monthlyDate,
      defaultChecked: defaultChecked,
      reminderTime: null,
      sortOrder: id,
      isSeed: false,
      createdAt: DateTime.utc(2026, 4, 1),
      archivedAt: null,
    );

const _noPeriodLookup = _AlwaysEmptyLookup();

class _AlwaysEmptyLookup {
  const _AlwaysEmptyLookup();
  Future<List<CompletionRow>> call(int _, DateTime _, DateTime _) async =>
      const [];
}

final _settings = AppSettings(
  startOfWeek: DateTime.saturday,
  startOfMonth: 1,
  rolloverHour: 0,
  themeMode: ThemeMode.system,
);

void main() {
  group('TodayBuilder', () {
    final builder = const TodayBuilder();

    test('daily amal is always visible', () async {
      final date = DateTime.utc(2026, 4, 11); // Saturday
      final rows = await builder.build(
        muhasabaDate: date,
        settings: _settings,
        amals: [_amal(id: 1, title: 'Fajr')],
        completionsForDate: const [],
        hiddenForDate: const [],
        periodCompletionsOf: _noPeriodLookup.call,
      );
      expect(rows.length, 1);
      expect(rows.single.amal.title, 'Fajr');
      expect(rows.single.isCompleted, isFalse);
      expect(rows.single.progress, 0);
    });

    test('hidden-for-today row is filtered out', () async {
      final date = DateTime.utc(2026, 4, 11);
      final rows = await builder.build(
        muhasabaDate: date,
        settings: _settings,
        amals: [_amal(id: 1, title: 'Fajr')],
        completionsForDate: const [],
        hiddenForDate: [HiddenDayRow(amalId: 1, muhasabaDate: date)],
        periodCompletionsOf: _noPeriodLookup.call,
      );
      expect(rows, isEmpty);
    });

    test('defaultChecked with no completion row reports as complete', () async {
      final date = DateTime.utc(2026, 4, 11);
      final rows = await builder.build(
        muhasabaDate: date,
        settings: _settings,
        amals: [
          _amal(id: 1, title: 'Morning Dhikr', defaultChecked: true),
        ],
        completionsForDate: const [],
        hiddenForDate: const [],
        periodCompletionsOf: _noPeriodLookup.call,
      );
      expect(rows.single.progress, 1);
      expect(rows.single.isCompleted, isTrue);
    });

    test('explicit progress=0 overrides defaultChecked (user unchecked)',
        () async {
      final date = DateTime.utc(2026, 4, 11);
      final rows = await builder.build(
        muhasabaDate: date,
        settings: _settings,
        amals: [
          _amal(id: 1, title: 'Morning Dhikr', defaultChecked: true),
        ],
        completionsForDate: [
          CompletionRow(
            id: 99,
            amalId: 1,
            muhasabaDate: date,
            progress: 0,
            note: null,
            completedAt: null,
          ),
        ],
        hiddenForDate: const [],
        periodCompletionsOf: _noPeriodLookup.call,
      );
      expect(rows.single.progress, 0);
      expect(rows.single.isCompleted, isFalse);
    });

    test('weekly with specific day: visible only on that weekday', () async {
      final friday = DateTime.utc(2026, 4, 10); // Friday, weekday=5
      final saturday = DateTime.utc(2026, 4, 11);

      final amal = _amal(
        id: 1,
        title: 'Jummah',
        frequency: Frequency.weekly,
        weeklyDay: DateTime.friday,
      );

      final onFri = await builder.build(
        muhasabaDate: friday,
        settings: _settings,
        amals: [amal],
        completionsForDate: const [],
        hiddenForDate: const [],
        periodCompletionsOf: _noPeriodLookup.call,
      );
      expect(onFri.length, 1);

      final onSat = await builder.build(
        muhasabaDate: saturday,
        settings: _settings,
        amals: [amal],
        completionsForDate: const [],
        hiddenForDate: const [],
        periodCompletionsOf: _noPeriodLookup.call,
      );
      expect(onSat, isEmpty);
    });

    test(
        'weekly without specific day: visible every day until completed, '
        'then hidden until next week', () async {
      final db = _memDb();
      addTearDown(db.close);

      final amalId = await db.amalDao.insertAmal(
        AmalsCompanion.insert(
          title: 'Surah Kahf',
          frequency: Frequency.weekly,
          createdAt: DateTime.utc(2026, 4, 1),
        ),
      );
      final amal = (await db.amalDao.getById(amalId))!;
      final builder = const TodayBuilder();

      // Before any completion: visible on Sat (start of week), Tue, Fri.
      final sat = DateTime.utc(2026, 4, 11);
      final tue = DateTime.utc(2026, 4, 14);
      final fri = DateTime.utc(2026, 4, 17);
      final nextSat = DateTime.utc(2026, 4, 18);

      for (final d in [sat, tue, fri]) {
        final rows = await builder.build(
          muhasabaDate: d,
          settings: _settings,
          amals: [amal],
          completionsForDate: await db.completionDao.getForDate(d),
          hiddenForDate: const [],
          periodCompletionsOf: db.completionDao.getForAmalBetween,
        );
        expect(rows.length, 1, reason: 'visible on $d');
      }

      // User completes on Tuesday.
      await db.completionDao.upsertProgress(
        amalId: amalId,
        muhasabaDate: tue,
        progress: 1,
      );

      // Now Fri (still within the [Sat 11, Sat 18) week) should HIDE the amal.
      final afterFri = await builder.build(
        muhasabaDate: fri,
        settings: _settings,
        amals: [amal],
        completionsForDate: await db.completionDao.getForDate(fri),
        hiddenForDate: const [],
        periodCompletionsOf: db.completionDao.getForAmalBetween,
      );
      expect(afterFri, isEmpty);

      // Next week's Saturday (new period) → visible again.
      final nextWeek = await builder.build(
        muhasabaDate: nextSat,
        settings: _settings,
        amals: [amal],
        completionsForDate: await db.completionDao.getForDate(nextSat),
        hiddenForDate: const [],
        periodCompletionsOf: db.completionDao.getForAmalBetween,
      );
      expect(nextWeek.length, 1);
    });

    test(
        'monthly without specific date: hidden for rest of month after one '
        'completion, visible again on next month start', () async {
      final db = _memDb();
      addTearDown(db.close);

      final amalId = await db.amalDao.insertAmal(
        AmalsCompanion.insert(
          title: 'Sadaqah',
          frequency: Frequency.monthly,
          createdAt: DateTime.utc(2026, 4, 1),
        ),
      );
      final amal = (await db.amalDao.getById(amalId))!;
      final builder = const TodayBuilder();

      final apr5 = DateTime.utc(2026, 4, 5);
      final apr20 = DateTime.utc(2026, 4, 20);
      final may1 = DateTime.utc(2026, 5, 1);

      await db.completionDao
          .upsertProgress(amalId: amalId, muhasabaDate: apr5, progress: 1);

      final later = await builder.build(
        muhasabaDate: apr20,
        settings: _settings,
        amals: [amal],
        completionsForDate: await db.completionDao.getForDate(apr20),
        hiddenForDate: const [],
        periodCompletionsOf: db.completionDao.getForAmalBetween,
      );
      expect(later, isEmpty, reason: 'hidden after completion this month');

      final newMonth = await builder.build(
        muhasabaDate: may1,
        settings: _settings,
        amals: [amal],
        completionsForDate: await db.completionDao.getForDate(may1),
        hiddenForDate: const [],
        periodCompletionsOf: db.completionDao.getForAmalBetween,
      );
      expect(newMonth.length, 1, reason: 'visible in new month');
    });

    test('monthly with specific date=31 clamps to last day of month', () async {
      final builder = const TodayBuilder();
      final amal = _amal(
        id: 1,
        title: 'Monthly Charity',
        frequency: Frequency.monthly,
        monthlyDate: 31,
      );

      // February 2026 (non-leap) has 28 days; the amal should appear on Feb 28.
      final feb28 = DateTime.utc(2026, 2, 28);
      final rows = await builder.build(
        muhasabaDate: feb28,
        settings: _settings,
        amals: [amal],
        completionsForDate: const [],
        hiddenForDate: const [],
        periodCompletionsOf: _noPeriodLookup.call,
      );
      expect(rows.length, 1);

      // Not visible on Feb 27.
      final feb27 = DateTime.utc(2026, 2, 27);
      final rowsPrev = await builder.build(
        muhasabaDate: feb27,
        settings: _settings,
        amals: [amal],
        completionsForDate: const [],
        hiddenForDate: const [],
        periodCompletionsOf: _noPeriodLookup.call,
      );
      expect(rowsPrev, isEmpty);
    });
  });
}
