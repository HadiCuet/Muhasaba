// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'completion_dao.dart';

// ignore_for_file: type=lint
mixin _$CompletionDaoMixin on DatabaseAccessor<AppDatabase> {
  $OptionSetsTable get optionSets => attachedDatabase.optionSets;
  $AmalsTable get amals => attachedDatabase.amals;
  $OptionSetItemsTable get optionSetItems => attachedDatabase.optionSetItems;
  $CompletionsTable get completions => attachedDatabase.completions;
  CompletionDaoManager get managers => CompletionDaoManager(this);
}

class CompletionDaoManager {
  final _$CompletionDaoMixin _db;
  CompletionDaoManager(this._db);
  $$OptionSetsTableTableManager get optionSets =>
      $$OptionSetsTableTableManager(_db.attachedDatabase, _db.optionSets);
  $$AmalsTableTableManager get amals =>
      $$AmalsTableTableManager(_db.attachedDatabase, _db.amals);
  $$OptionSetItemsTableTableManager get optionSetItems =>
      $$OptionSetItemsTableTableManager(
        _db.attachedDatabase,
        _db.optionSetItems,
      );
  $$CompletionsTableTableManager get completions =>
      $$CompletionsTableTableManager(_db.attachedDatabase, _db.completions);
}
