// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'option_set_dao.dart';

// ignore_for_file: type=lint
mixin _$OptionSetDaoMixin on DatabaseAccessor<AppDatabase> {
  $OptionSetsTable get optionSets => attachedDatabase.optionSets;
  $OptionSetItemsTable get optionSetItems => attachedDatabase.optionSetItems;
  $AmalsTable get amals => attachedDatabase.amals;
  $CompletionsTable get completions => attachedDatabase.completions;
  OptionSetDaoManager get managers => OptionSetDaoManager(this);
}

class OptionSetDaoManager {
  final _$OptionSetDaoMixin _db;
  OptionSetDaoManager(this._db);
  $$OptionSetsTableTableManager get optionSets =>
      $$OptionSetsTableTableManager(_db.attachedDatabase, _db.optionSets);
  $$OptionSetItemsTableTableManager get optionSetItems =>
      $$OptionSetItemsTableTableManager(
        _db.attachedDatabase,
        _db.optionSetItems,
      );
  $$AmalsTableTableManager get amals =>
      $$AmalsTableTableManager(_db.attachedDatabase, _db.amals);
  $$CompletionsTableTableManager get completions =>
      $$CompletionsTableTableManager(_db.attachedDatabase, _db.completions);
}
