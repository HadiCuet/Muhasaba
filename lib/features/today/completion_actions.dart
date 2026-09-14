import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app/providers.dart';
import '../../domain/models/amal_goal.dart';
import '../../domain/services/today_builder.dart';
import '../stats/stats_providers.dart';

Future<void> setChoice(
  WidgetRef ref,
  TodayRow row,
  DateTime date,
  int? itemId,
) async {
  final amal = row.amal;
  // Picking completes a simple amal; a counted or open-ended one is still the
  // stepper's job.
  final progress = itemId == null
      ? (amal.requireChoice ? 0 : row.progress)
      : (amal.isSimple ? amal.target : row.progress);

  await ref
      .read(completionRepositoryProvider)
      .setChoice(
        amalId: amal.id,
        muhasabaDate: date,
        optionItemId: itemId,
        progress: progress,
        completed: amal.meets(progress),
      );

  if (itemId != null) {
    FirebaseAnalytics.instance.logEvent(
      name: 'option_chosen',
      parameters: {'set_id': amal.optionSetId ?? 0, 'item_id': itemId},
    );
  }
  ref.invalidate(statsSnapshotProvider);
  ref.invalidate(currentStreaksProvider);
  // StatsScreen is keep-alive, so the Overview tab is not disposed on a tab
  // switch and would otherwise show a stale breakdown.
  ref.invalidate(enhancedStatsProvider);
  ref.invalidate(dailyBreakdownProvider);
  ref.invalidate(optionDetailProvider);
}
