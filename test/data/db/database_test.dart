import 'package:drift/drift.dart' hide isNotNull;
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:muhasaba/data/db/database.dart';
import 'package:muhasaba/data/repositories/settings_repository.dart';
import 'package:muhasaba/domain/models/app_settings.dart';
import 'package:muhasaba/domain/models/frequency.dart';

AppDatabase _memDb() => AppDatabase(NativeDatabase.memory());

void main() {
  group('Schema + seed', () {
    test('fresh install seeds the five Salah + Tilawah', () async {
      final db = _memDb();
      addTearDown(db.close);

      final rows = await db.amalDao.getActive();
      expect(
        rows.map((r) => r.title).toList(),
        equals(['Fajr', 'Dhuhr', 'Asr', 'Maghrib', 'Isha', 'Tilawah']),
      );
      expect(rows.every((r) => r.isSeed), isTrue);
      expect(rows.every((r) => r.frequency == Frequency.daily), isTrue);
      expect(rows.every((r) => r.target == 1), isTrue);
    });

    test('foreign keys are enforced (cascade on amal delete)', () async {
      final db = _memDb();
      addTearDown(db.close);

      final date = DateTime.utc(2026, 4, 11);
      await db.completionDao.upsertProgress(
        amalId: 1,
        muhasabaDate: date,
        progress: 1,
      );
      expect((await db.completionDao.getForDate(date)).length, 1);

      await db.amalDao.deleteAmal(1);
      expect((await db.completionDao.getForDate(date)).length, 0);
    });
  });

  group('AmalDao', () {
    test('insert + archive hides from active list but keeps row', () async {
      final db = _memDb();
      addTearDown(db.close);

      final id = await db.amalDao.insertAmal(
        AmalsCompanion.insert(
          title: 'Tasbih',
          frequency: Frequency.daily,
          createdAt: DateTime.now().toUtc(),
          target: const Value(33),
        ),
      );

      final before = await db.amalDao.getActive();
      expect(before.any((a) => a.id == id), isTrue);

      await db.amalDao.archive(id, DateTime.now().toUtc());

      final after = await db.amalDao.getActive();
      expect(after.any((a) => a.id == id), isFalse);
      // The row itself still exists (soft delete).
      expect(await db.amalDao.getById(id), isNotNull);
    });
  });

  group('CompletionDao', () {
    test('upsert twice replaces, not duplicates (unique amal+date)', () async {
      final db = _memDb();
      addTearDown(db.close);

      final date = DateTime.utc(2026, 4, 11);
      await db.completionDao
          .upsertProgress(amalId: 1, muhasabaDate: date, progress: 1);
      await db.completionDao
          .upsertProgress(amalId: 1, muhasabaDate: date, progress: 0);

      final rows = await db.completionDao.getForDate(date);
      expect(rows.length, 1);
      expect(rows.single.progress, 0);
    });

    test('getForAmalBetween returns only rows in [start, endExclusive)',
        () async {
      final db = _memDb();
      addTearDown(db.close);

      await db.completionDao.upsertProgress(
        amalId: 1,
        muhasabaDate: DateTime.utc(2026, 4, 10),
        progress: 1,
      );
      await db.completionDao.upsertProgress(
        amalId: 1,
        muhasabaDate: DateTime.utc(2026, 4, 11),
        progress: 1,
      );
      await db.completionDao.upsertProgress(
        amalId: 1,
        muhasabaDate: DateTime.utc(2026, 4, 13),
        progress: 1,
      );

      final rows = await db.completionDao.getForAmalBetween(
        1,
        DateTime.utc(2026, 4, 11),
        DateTime.utc(2026, 4, 13),
      );
      expect(rows.map((r) => r.muhasabaDate).toList(),
          [DateTime.utc(2026, 4, 11)]);
    });
  });

  group('HiddenDayDao', () {
    test('hide is idempotent (insertOrIgnore)', () async {
      final db = _memDb();
      addTearDown(db.close);

      final date = DateTime.utc(2026, 4, 11);
      await db.hiddenDayDao.hide(1, date);
      await db.hiddenDayDao.hide(1, date);
      expect((await db.hiddenDayDao.getForDate(date)).length, 1);
    });
  });

  group('SettingsRepository', () {
    test('defaults when no rows written', () async {
      final db = _memDb();
      addTearDown(db.close);

      final repo = SettingsRepository(db.settingsDao);
      final s = await repo.get();
      expect(s, equals(AppSettings.defaults));
    });

    test('set + get round-trip', () async {
      final db = _memDb();
      addTearDown(db.close);

      final repo = SettingsRepository(db.settingsDao);
      await repo.setStartOfWeek(DateTime.monday);
      await repo.setRolloverHour(3);

      final s = await repo.get();
      expect(s.startOfWeek, DateTime.monday);
      expect(s.rolloverHour, 3);
      expect(s.startOfMonth, 1); // still default
    });
  });
}
