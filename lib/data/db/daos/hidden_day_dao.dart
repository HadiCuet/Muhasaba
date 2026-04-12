import 'package:drift/drift.dart';

import '../database.dart';
import '../tables.dart';

part 'hidden_day_dao.g.dart';

@DriftAccessor(tables: [HiddenDays])
class HiddenDayDao extends DatabaseAccessor<AppDatabase>
    with _$HiddenDayDaoMixin {
  HiddenDayDao(super.db);

  Stream<List<HiddenDayRow>> watchForDate(DateTime date) {
    return (select(
      hiddenDays,
    )..where((h) => h.muhasabaDate.equals(date))).watch();
  }

  Future<List<HiddenDayRow>> getForDate(DateTime date) {
    return (select(
      hiddenDays,
    )..where((h) => h.muhasabaDate.equals(date))).get();
  }

  Future<void> hide(int amalId, DateTime date) {
    return into(hiddenDays).insert(
      HiddenDaysCompanion.insert(amalId: amalId, muhasabaDate: date),
      mode: InsertMode.insertOrIgnore,
    );
  }

  Future<int> unhide(int amalId, DateTime date) {
    return (delete(hiddenDays)
          ..where((h) => h.amalId.equals(amalId) & h.muhasabaDate.equals(date)))
        .go();
  }
}
