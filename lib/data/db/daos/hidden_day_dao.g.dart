// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hidden_day_dao.dart';

// ignore_for_file: type=lint
mixin _$HiddenDayDaoMixin on DatabaseAccessor<AppDatabase> {
  $AmalsTable get amals => attachedDatabase.amals;
  $HiddenDaysTable get hiddenDays => attachedDatabase.hiddenDays;
  HiddenDayDaoManager get managers => HiddenDayDaoManager(this);
}

class HiddenDayDaoManager {
  final _$HiddenDayDaoMixin _db;
  HiddenDayDaoManager(this._db);
  $$AmalsTableTableManager get amals =>
      $$AmalsTableTableManager(_db.attachedDatabase, _db.amals);
  $$HiddenDaysTableTableManager get hiddenDays =>
      $$HiddenDaysTableTableManager(_db.attachedDatabase, _db.hiddenDays);
}
