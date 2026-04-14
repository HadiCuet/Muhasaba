import '../db/daos/category_dao.dart';
import '../db/database.dart';

/// Thin wrapper over [CategoryDao] for the UI layer.
class CategoryRepository {
  CategoryRepository(this._dao);

  final CategoryDao _dao;

  Stream<List<CategoryRow>> watchAll() => _dao.watchAll();
  Future<List<CategoryRow>> getAll() => _dao.getAll();

  Future<void> create(String name, {String? icon}) =>
      _dao.insertCategory(name, icon: icon);

  /// Updates the icon of an existing category. Passing `null` clears it.
  Future<void> updateIcon(String name, String? icon) =>
      _dao.updateIcon(name, icon);

  /// Removes a category from the pick-list. Existing amal keep their
  /// category text — only the suggestion chip disappears.
  Future<void> delete(String name) => _dao.deleteCategory(name);

  Future<void> reorder(List<CategoryRow> rows) => _dao.updateSortOrders(rows);
}
