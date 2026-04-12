import 'package:drift/drift.dart';

import '../database.dart';
import '../tables.dart';

part 'category_dao.g.dart';

@DriftAccessor(tables: [Categories])
class CategoryDao extends DatabaseAccessor<AppDatabase>
    with _$CategoryDaoMixin {
  CategoryDao(super.db);

  /// All categories ordered by sortOrder.
  Stream<List<CategoryRow>> watchAll() {
    return (select(categories)
          ..orderBy([(c) => OrderingTerm.asc(c.sortOrder)]))
        .watch();
  }

  Future<List<CategoryRow>> getAll() {
    return (select(categories)
          ..orderBy([(c) => OrderingTerm.asc(c.sortOrder)]))
        .get();
  }

  Future<int> insertCategory(String name) async {
    final maxOrder = await customSelect(
      'SELECT COALESCE(MAX(sort_order), -1) AS m FROM categories',
    ).getSingle();
    final nextOrder = (maxOrder.read<int>('m')) + 1;
    return into(categories).insert(
      CategoriesCompanion.insert(name: name, sortOrder: Value(nextOrder)),
      mode: InsertMode.insertOrIgnore,
    );
  }

  /// Removes a category from the pick-list. Does NOT touch any amal that
  /// reference this category — they keep their `category` text intact.
  Future<void> deleteCategory(String name) {
    return (delete(categories)..where((c) => c.name.equals(name))).go();
  }

  Future<void> updateSortOrders(List<CategoryRow> rows) async {
    await db.batch((b) {
      for (var i = 0; i < rows.length; i++) {
        b.update(
          categories,
          CategoriesCompanion(sortOrder: Value(i)),
          where: (c) => c.name.equals(rows[i].name),
        );
      }
    });
  }
}
