import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:muhasaba/data/db/database.dart';
import 'package:muhasaba/domain/models/app_settings.dart';
import 'package:muhasaba/domain/models/frequency.dart';
import 'package:muhasaba/domain/services/stats_service.dart';

AmalRow _amal({
  required int id,
  required String title,
  Frequency frequency = Frequency.daily,
  int target = 1,
}) =>
    AmalRow(
      id: id,
      title: title,
      frequency: frequency,
      target: target,
      weeklyDay: null,
      monthlyDate: null,
      defaultChecked: false,
      reminderTime: null,
      sortOrder: id,
      isSeed: false,
      createdAt: DateTime.utc(2025, 1, 1),
      archivedAt: null,
    );

CompletionRow _completion({
  required int amalId,
  required DateTime date,
  int progress = 1,
}) =>
    CompletionRow(
      id: amalId * 10000 + date.day + date.month * 100 + date.year * 10000,
      amalId: amalId,
      muhasabaDate: date,
      progress: progress,
      note: null,
      completedAt: null,
    );

/// In-memory completions lookup that filters an in-test list by
/// [amalId, start, endExclusive). Mirrors `CompletionDao.getForAmalBetween`.
class _FakeLookup {
  _FakeLookup(this._rows);
  final List<CompletionRow> _rows;
  Future<List<CompletionRow>> call(
    int amalId,
    DateTime start,
    DateTime endExclusive,
  ) async {
    return _rows
        .where((r) =>
            r.amalId == amalId &&
            !r.muhasabaDate.isBefore(start) &&
            r.muhasabaDate.isBefore(endExclusive))
        .toList();
  }
}

const _settings = AppSettings(
  startOfWeek: DateTime.saturday,
  startOfMonth: 1,
  rolloverHour: 0,
  themeMode: ThemeMode.system,
);

void main() {
  group('StatsService', () {
    const service = StatsService();

    test('daily streak: three consecutive days completed ending today', () async {
      final today = DateTime.utc(2026, 4, 11);
      final fake = _FakeLookup([
        _completion(amalId: 1, date: DateTime.utc(2026, 4, 9)),
        _completion(amalId: 1, date: DateTime.utc(2026, 4, 10)),
        _completion(amalId: 1, date: DateTime.utc(2026, 4, 11)),
      ]);
      final snap = await service.compute(
        muhasabaDate: today,
        settings: _settings,
        amals: [_amal(id: 1, title: 'Fajr')],
        periodCompletionsOf: fake.call,
      );
      expect(snap.perAmal.single.currentStreak, 3);
      expect(snap.perAmal.single.longestStreak, greaterThanOrEqualTo(3));
    });

    test('daily streak: skipping today does NOT break the streak', () async {
      // User hasn't done Fajr today yet; streak should still reflect the
      // yesterday-anchored run.
      final today = DateTime.utc(2026, 4, 11);
      final fake = _FakeLookup([
        _completion(amalId: 1, date: DateTime.utc(2026, 4, 8)),
        _completion(amalId: 1, date: DateTime.utc(2026, 4, 9)),
        _completion(amalId: 1, date: DateTime.utc(2026, 4, 10)),
      ]);
      final snap = await service.compute(
        muhasabaDate: today,
        settings: _settings,
        amals: [_amal(id: 1, title: 'Fajr')],
        periodCompletionsOf: fake.call,
      );
      expect(snap.perAmal.single.currentStreak, 3);
    });

    test('daily streak: a gap resets the current run to the most recent span',
        () async {
      final today = DateTime.utc(2026, 4, 11);
      final fake = _FakeLookup([
        // Old run of 5 days — should only affect `longest`, not `current`.
        for (var d = 1; d <= 5; d++)
          _completion(amalId: 1, date: DateTime.utc(2026, 4, d)),
        // Current run of 2 days ending today.
        _completion(amalId: 1, date: DateTime.utc(2026, 4, 10)),
        _completion(amalId: 1, date: DateTime.utc(2026, 4, 11)),
      ]);
      final snap = await service.compute(
        muhasabaDate: today,
        settings: _settings,
        amals: [_amal(id: 1, title: 'Fajr')],
        periodCompletionsOf: fake.call,
      );
      expect(snap.perAmal.single.currentStreak, 2);
      expect(snap.perAmal.single.longestStreak, 5);
    });

    test('weekly amal: one completion anywhere in the week counts as done',
        () async {
      final today = DateTime.utc(2026, 4, 15); // Wed
      final fake = _FakeLookup([
        // Current week (Sat Apr 11 .. Sat Apr 18)
        _completion(amalId: 1, date: DateTime.utc(2026, 4, 13)),
        // Previous week (Sat Apr 4 .. Sat Apr 11)
        _completion(amalId: 1, date: DateTime.utc(2026, 4, 6)),
        // Two weeks ago — gap
      ]);
      final snap = await service.compute(
        muhasabaDate: today,
        settings: _settings,
        amals: [
          _amal(id: 1, title: 'Surah Kahf', frequency: Frequency.weekly),
        ],
        periodCompletionsOf: fake.call,
      );
      expect(snap.perAmal.single.currentStreak, 2);
      expect(snap.perAmal.single.weeklyCompleted, 1);
      expect(snap.perAmal.single.weeklyExpected, 1);
    });

    test('monthly amal: current streak counts back-to-back months', () async {
      final today = DateTime.utc(2026, 4, 20);
      final fake = _FakeLookup([
        _completion(amalId: 1, date: DateTime.utc(2026, 2, 10)),
        _completion(amalId: 1, date: DateTime.utc(2026, 3, 5)),
        _completion(amalId: 1, date: DateTime.utc(2026, 4, 1)),
      ]);
      final snap = await service.compute(
        muhasabaDate: today,
        settings: _settings,
        amals: [
          _amal(id: 1, title: 'Sadaqah', frequency: Frequency.monthly),
        ],
        periodCompletionsOf: fake.call,
      );
      expect(snap.perAmal.single.currentStreak, 3);
      expect(snap.perAmal.single.monthlyCompleted, 1);
      expect(snap.perAmal.single.monthlyExpected, 1);
    });

    test('global stats sum completions across all amal', () async {
      final today = DateTime.utc(2026, 4, 15);
      final fake = _FakeLookup([
        _completion(amalId: 1, date: DateTime.utc(2026, 4, 13)),
        _completion(amalId: 1, date: DateTime.utc(2026, 4, 14)),
        _completion(amalId: 2, date: DateTime.utc(2026, 4, 12)),
      ]);
      final snap = await service.compute(
        muhasabaDate: today,
        settings: _settings,
        amals: [
          _amal(id: 1, title: 'Fajr'),
          _amal(id: 2, title: 'Dhuhr'),
        ],
        periodCompletionsOf: fake.call,
      );
      expect(snap.global.weekTotalCompletions, 3);
      expect(snap.global.monthTotalCompletions, 3);
    });

    test('zero completions → empty streaks and zero rates', () async {
      final today = DateTime.utc(2026, 4, 11);
      final fake = _FakeLookup([]);
      final snap = await service.compute(
        muhasabaDate: today,
        settings: _settings,
        amals: [_amal(id: 1, title: 'Fajr')],
        periodCompletionsOf: fake.call,
      );
      final s = snap.perAmal.single;
      expect(s.currentStreak, 0);
      expect(s.longestStreak, 0);
      expect(s.weeklyRate, 0);
      expect(s.monthlyRate, 0);
    });
  });
}
