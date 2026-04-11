// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amal_dao.dart';

// ignore_for_file: type=lint
mixin _$AmalDaoMixin on DatabaseAccessor<AppDatabase> {
  $AmalsTable get amals => attachedDatabase.amals;
  AmalDaoManager get managers => AmalDaoManager(this);
}

class AmalDaoManager {
  final _$AmalDaoMixin _db;
  AmalDaoManager(this._db);
  $$AmalsTableTableManager get amals =>
      $$AmalsTableTableManager(_db.attachedDatabase, _db.amals);
}
