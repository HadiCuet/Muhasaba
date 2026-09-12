// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amal_dao.dart';

// ignore_for_file: type=lint
mixin _$AmalDaoMixin on DatabaseAccessor<AppDatabase> {
  $OptionSetsTable get optionSets => attachedDatabase.optionSets;
  $AmalsTable get amals => attachedDatabase.amals;
  AmalDaoManager get managers => AmalDaoManager(this);
}

class AmalDaoManager {
  final _$AmalDaoMixin _db;
  AmalDaoManager(this._db);
  $$OptionSetsTableTableManager get optionSets =>
      $$OptionSetsTableTableManager(_db.attachedDatabase, _db.optionSets);
  $$AmalsTableTableManager get amals =>
      $$AmalsTableTableManager(_db.attachedDatabase, _db.amals);
}
