import 'package:drift/drift.dart';

import '../db/daos/completion_dao.dart';
import '../db/daos/hidden_day_dao.dart';
import '../db/database.dart';

/// Groups completion + hidden-day access for a given muhasaba date. Kept as
/// one repository because the UI almost always needs both together when
/// rendering a day view.
class CompletionRepository {
  CompletionRepository(this._completions, this._hidden);

  final CompletionDao _completions;
  final HiddenDayDao _hidden;

  Stream<List<CompletionRow>> watchForDate(DateTime date) =>
      _completions.watchForDate(date);

  Future<List<CompletionRow>> getForDate(DateTime date) =>
      _completions.getForDate(date);

  Future<List<CompletionRow>> getForAmalBetween(
    int amalId,
    DateTime start,
    DateTime endExclusive,
  ) => _completions.getForAmalBetween(amalId, start, endExclusive);

  Future<int> countActiveDays() => _completions.countActiveDays();

  Future<CompletionRow?> getForAmalDate(int amalId, DateTime date) =>
      _completions.getForAmalDate(amalId, date);

  Future<void> setProgress({
    required int amalId,
    required DateTime muhasabaDate,
    required int progress,
    required int target,
  }) {
    final now = DateTime.now().toUtc();
    return _completions.upsertProgress(
      amalId: amalId,
      muhasabaDate: muhasabaDate,
      progress: progress,
      completedAt: Value(progress >= target ? now : null),
      optionItemId: progress == 0 ? const Value(null) : const Value.absent(),
    );
  }

  Future<void> setNote({
    required int amalId,
    required DateTime muhasabaDate,
    required String? note,
  }) async {
    final existing = await _completions.getForAmalDate(amalId, muhasabaDate);
    await _completions.upsertProgress(
      amalId: amalId,
      muhasabaDate: muhasabaDate,
      progress: existing?.progress ?? 0,
      note: Value(note),
    );
  }

  /// Writes the chosen option and the resulting progress in one upsert. The
  /// caller owns the semantics — whether picking completes the row depends on
  /// `target` and `requireChoice`, which only the UI knows.
  Future<void> setChoice({
    required int amalId,
    required DateTime muhasabaDate,
    required int? optionItemId,
    required int progress,
    required int target,
  }) async {
    final existing = await _completions.getForAmalDate(amalId, muhasabaDate);
    final completed = progress >= target;
    await _completions.upsertProgress(
      amalId: amalId,
      muhasabaDate: muhasabaDate,
      progress: progress,
      optionItemId: Value(optionItemId),
      completedAt: Value(
        completed ? (existing?.completedAt ?? DateTime.now().toUtc()) : null,
      ),
    );
  }

  /// Hide an amal from a single muhasaba day only. It returns on the next
  /// muhasaba day.
  Future<void> removeFromDay(int amalId, DateTime muhasabaDate) =>
      _hidden.hide(amalId, muhasabaDate);

  Future<void> unhideFromDay(int amalId, DateTime muhasabaDate) =>
      _hidden.unhide(amalId, muhasabaDate);

  Stream<List<HiddenDayRow>> watchHiddenForDate(DateTime date) =>
      _hidden.watchForDate(date);
}
