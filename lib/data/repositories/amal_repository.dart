import 'package:drift/drift.dart';

import '../../domain/models/frequency.dart';
import '../../domain/services/reminder_scheduler.dart';
import '../db/daos/amal_dao.dart';
import '../db/database.dart';

/// Thin wrapper over `AmalDao` for use by the UI layer. Exposes
/// streams/futures of Drift data classes directly — we intentionally don't
/// maintain a parallel domain model for amal to keep the code lean.
class AmalRepository {
  AmalRepository(this._dao, this._scheduler);

  final AmalDao _dao;
  final ReminderScheduler _scheduler;

  Stream<List<AmalRow>> watchActive() => _dao.watchActive();
  Future<List<AmalRow>> getActive() => _dao.getActive();
  Future<AmalRow?> getById(int id) => _dao.getById(id);

  /// Creates a new amal and schedules its OS notification if a valid
  /// reminder time is provided.
  ///
  /// [title] is the canonical value stored in the DB; [notificationTitle] is
  /// its localized rendering, used for the notification body. They differ for
  /// seeded and template titles, which are stored in English and translated at
  /// display time.
  Future<int> create({
    required String title,
    required String notificationTitle,
    required Frequency frequency,
    int target = 1,
    String? weeklyDays,
    String? monthlyDates,
    int periodTarget = 1,
    bool defaultChecked = false,
    String? reminderTime,
    int sortOrder = 0,
    required String icon,
    String? category,
  }) async {
    final id = await _dao.insertAmal(
      AmalsCompanion.insert(
        title: title,
        frequency: frequency,
        target: Value(target),
        weeklyDays: Value(weeklyDays),
        monthlyDates: Value(monthlyDates),
        periodTarget: Value(periodTarget),
        defaultChecked: Value(defaultChecked),
        reminderTime: Value(reminderTime),
        sortOrder: Value(sortOrder),
        icon: Value(icon),
        category: Value(category),
        createdAt: DateTime.now().toUtc(),
      ),
    );
    final t = parseReminderTime(reminderTime);
    if (t != null) {
      await _scheduler.scheduleDaily(
        id: id,
        title: notificationTitle,
        hour: t.hour,
        minute: t.minute,
      );
    }
    return id;
  }

  /// Updates an amal and syncs its OS notification to match the new
  /// reminder time. Schedules if a valid reminder exists, cancels otherwise.
  ///
  /// See [create] for why [notificationTitle] is passed separately.
  Future<bool> update(AmalRow row, {required String notificationTitle}) async {
    final result = await _dao.updateAmal(row);
    final t = parseReminderTime(row.reminderTime);
    if (t != null) {
      await _scheduler.scheduleDaily(
        id: row.id,
        title: notificationTitle,
        hour: t.hour,
        minute: t.minute,
      );
    } else {
      await _scheduler.cancel(row.id);
    }
    return result;
  }

  /// Permanent removal from the user's tracked list (soft-delete).
  /// Historical completions are retained so stats remain accurate.
  /// Also cancels any scheduled OS notification for this amal.
  Future<void> removeFromTracking(int id) async {
    await _dao.archive(id, DateTime.now().toUtc());
    await _scheduler.cancel(id);
  }

  Stream<List<AmalRow>> watchArchived() => _dao.watchArchived();

  /// Puts an archived amal back on the tracked list. Its completions were
  /// never deleted, so streaks and stats resume from what is already there.
  ///
  /// See [create] for why [notificationTitle] is passed separately.
  Future<void> restoreToTracking(
    int id, {
    required String notificationTitle,
  }) async {
    await _dao.unarchive(id);
    final row = await _dao.getById(id);
    if (row == null) return;
    final t = parseReminderTime(row.reminderTime);
    if (t != null) {
      await _scheduler.scheduleDaily(
        id: row.id,
        title: notificationTitle,
        hour: t.hour,
        minute: t.minute,
      );
    }
  }

  /// Returns distinct emoji icons used by active amal.
  Future<List<String>> getRecentIcons() => _dao.getRecentIcons();

  /// Batch-update sort orders for drag-to-reorder.
  Future<void> reorder(Map<int, int> idToSortOrder) =>
      _dao.updateSortOrders(idToSortOrder);
}
