import '../db/daos/option_set_dao.dart';
import '../db/database.dart';

/// Thin wrapper over [OptionSetDao] for the UI layer.
class OptionSetRepository {
  OptionSetRepository(this._dao);

  final OptionSetDao _dao;

  Stream<List<OptionSetRow>> watchSets() => _dao.watchSets();
  Stream<List<OptionSetItemRow>> watchItems() => _dao.watchItems();
  Future<List<OptionSetItemRow>> getItems() => _dao.getItems();

  Future<int> upsertSet({
    int? id,
    required String name,
    String? seedKey,
    required List<({int? id, String label, String? seedKey})> items,
  }) => _dao.upsertSet(id: id, name: name, seedKey: seedKey, items: items);

  /// Archives the set when history points at it, hard-deletes otherwise.
  /// Either way, amals using it are detached.
  Future<void> deleteSet(int setId) => _dao.deleteSet(setId);
}
