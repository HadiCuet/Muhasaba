import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app/providers.dart';
import '../../domain/services/today_builder.dart';
import '../stats/stats_providers.dart';

Future<void> setChoice(
  WidgetRef ref,
  TodayRow row,
  DateTime date,
  int? itemId,
) async {
  final target = row.amal.target;
  // Picking completes a simple amal; a counted one is still the stepper's job.
  final progress = itemId == null
      ? (row.amal.requireChoice ? 0 : row.progress)
      : (target == 1 ? target : row.progress);

  await ref
      .read(completionRepositoryProvider)
      .setChoice(
        amalId: row.amal.id,
        muhasabaDate: date,
        optionItemId: itemId,
        progress: progress,
        target: target,
      );

  if (itemId != null) {
    FirebaseAnalytics.instance.logEvent(
      name: 'option_chosen',
      parameters: {'set_id': row.amal.optionSetId ?? 0, 'item_id': itemId},
    );
  }
  ref.invalidate(statsSnapshotProvider);
  ref.invalidate(currentStreaksProvider);
  // StatsScreen is keep-alive, so the Overview tab is not disposed on a tab
  // switch and would otherwise show a stale breakdown.
  ref.invalidate(enhancedStatsProvider);
  ref.invalidate(optionDetailProvider);
}
