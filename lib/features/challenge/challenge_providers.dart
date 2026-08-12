import 'dart:ui';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app/providers.dart';
import '../../data/db/database.dart';
import '../../domain/models/app_settings.dart';
import '../../domain/models/challenge.dart';
import '../../domain/services/challenge_nudge.dart';
import '../../domain/services/challenge_pace.dart';
import '../../domain/services/reminder_scheduler.dart';
import '../../domain/utils/app_locale.dart';
import '../../l10n/app_localizations.dart';

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

/// All challenges with progress and pace attached, in list order. Carries the
/// rows stream's async state, so loading stays distinct from "no challenges".
final challengeViewsProvider =
    Provider.autoDispose<AsyncValue<List<ChallengeView>>>((ref) {
      final rowsAsync = ref.watch(_challengeRowsProvider);
      final progress = ref.watch(_challengeProgressProvider).value ?? const {};
      final today = ref.watch(currentMuhasabaDateProvider);

      return rowsAsync.whenData(
        (rows) => [
          for (final row in rows)
            ChallengeView(
              row: row,
              progress: progress[row.id] ?? 0,
              pace: computePace(
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
Future<void> refreshChallengeNudges(WidgetRef ref) async {
  final settings = ref.read(settingsProvider).value ?? AppSettings.defaults;
  final l = await AppLocalizations.delegate.load(
    resolveAppLocale(settings.locale, PlatformDispatcher.instance.locales),
  );
  final t = settings.dailyReminderEnabled
      ? parseReminderTime(settings.dailyReminderTime)
      : null;
  await syncChallengeNudges(
    db: ref.read(appDatabaseProvider),
    scheduler: ref.read(reminderSchedulerProvider),
    l: l,
    today: ref.read(currentMuhasabaDateProvider),
    hour: t?.hour ?? 20,
    minute: t?.minute ?? 0,
  );
}
