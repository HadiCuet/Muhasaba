import 'package:drift/drift.dart';

import '../../domain/models/frequency.dart';
import '../db/daos/amal_dao.dart';
import '../db/database.dart';

/// Thin wrapper over `AmalDao` for use by the UI layer. Exposes
/// streams/futures of Drift data classes directly — we intentionally don't
/// maintain a parallel domain model for amal to keep the code lean.
class AmalRepository {
  AmalRepository(this._dao);

  final AmalDao _dao;

  Stream<List<AmalRow>> watchActive() => _dao.watchActive();
  Future<List<AmalRow>> getActive() => _dao.getActive();
  Future<AmalRow?> getById(int id) => _dao.getById(id);

  Future<int> create({
    required String title,
    required Frequency frequency,
    int target = 1,
    int? weeklyDay,
    int? monthlyDate,
    bool defaultChecked = false,
    String? reminderTime,
    int sortOrder = 0,
    String? icon,
    String? category,
  }) {
    return _dao.insertAmal(
      AmalsCompanion.insert(
        title: title,
        frequency: frequency,
        target: Value(target),
        weeklyDay: Value(weeklyDay),
        monthlyDate: Value(monthlyDate),
        defaultChecked: Value(defaultChecked),
        reminderTime: Value(reminderTime),
        sortOrder: Value(sortOrder),
        icon: Value(icon),
        category: Value(category),
        createdAt: DateTime.now().toUtc(),
      ),
    );
  }

  Future<bool> update(AmalRow row) => _dao.updateAmal(row);

  /// Permanent removal from the user's tracked list (soft-delete).
  /// Historical completions are retained so stats remain accurate.
  Future<void> removeFromTracking(int id) =>
      _dao.archive(id, DateTime.now().toUtc());

  /// Returns distinct emoji icons used by active amal.
  Future<List<String>> getRecentIcons() => _dao.getRecentIcons();

  /// Batch-update sort orders for drag-to-reorder.
  Future<void> reorder(Map<int, int> idToSortOrder) =>
      _dao.updateSortOrders(idToSortOrder);
}
