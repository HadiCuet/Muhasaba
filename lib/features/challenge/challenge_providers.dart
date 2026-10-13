import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app/providers.dart';
import '../../data/db/database.dart';
import '../../domain/models/app_settings.dart';
import '../../domain/models/challenge.dart';
import '../../domain/services/challenge_nudge.dart';
import '../../domain/services/challenge_pace.dart';

/// A challenge plus its derived progress and pace — what every widget needs.
class ChallengeView {
  const ChallengeView({
    required this.row,
    required this.progress,
    required this.pace,
  });

  final ChallengeRow row;
  final int progress;
  final ChallengePace pace;

  bool get isPast =>
      row.status == ChallengeStatus.completed ||
      row.status == ChallengeStatus.ended;
}

final _challengeRowsProvider = StreamProvider.autoDispose((ref) {
  return ref.watch(challengeRepositoryProvider).watchAll();
});

final _challengeProgressProvider = StreamProvider.autoDispose((ref) {
  return ref.watch(challengeRepositoryProvider).watchProgress();
});

/// All challenges with progress and pace attached, in list order. Loading until
/// both the rows and their progress have arrived, so loading stays distinct
/// from "no challenges" and no challenge is ever shown at zero by mistake.
final challengeViewsProvider =
    Provider.autoDispose<AsyncValue<List<ChallengeView>>>((ref) {
      final rowsAsync = ref.watch(_challengeRowsProvider);
      final progressAsync = ref.watch(_challengeProgressProvider);
      final today = ref.watch(currentMuhasabaDateProvider);

      if (progressAsync case AsyncError(:final error, :final stackTrace)) {
        return AsyncError(error, stackTrace);
      }
      final progress = progressAsync.value;
      if (progress == null) return const AsyncLoading();

      return rowsAsync.whenData(
        (rows) => [
          for (final row in rows)
            ChallengeView(
              row: row,
              progress: progress[row.id] ?? 0,
              pace: computePace(
                mode: row.mode,
                target: row.target,
                progress: progress[row.id] ?? 0,
                startDate: row.startDate,
                endExclusive: row.endExclusive,
                today: today,
              ),
            ),
        ],
      );
    });

/// Today's logged amount per challenge, for the stepper's centre number.
final todayAmountsProvider = StreamProvider.autoDispose<Map<int, int>>((ref) {
  final date = ref.watch(currentMuhasabaDateProvider);
  return ref.watch(challengeRepositoryProvider).watchAmountsForDate(date);
});

/// Every logged day of one challenge, newest first.
final challengeEntriesProvider = StreamProvider.autoDispose
    .family<List<ChallengeEntryRow>, int>((ref, id) {
      return ref.watch(challengeRepositoryProvider).watchEntries(id);
    });

/// Recomputes challenge nudges. Called from every site that can change a
/// challenge's progress, definition, or the app's idea of "today".
Future<void> refreshChallengeNudges(WidgetRef ref) {
  return syncChallengeNudgesFor(
    db: ref.read(appDatabaseProvider),
    scheduler: ref.read(reminderSchedulerProvider),
    settings: ref.read(settingsProvider).value ?? AppSettings.defaults,
    today: ref.read(currentMuhasabaDateProvider),
  );
}
