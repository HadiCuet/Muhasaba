import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app/providers.dart';
import '../../domain/services/enhanced_stats_service.dart';
import 'stats_filter.dart';

/// Notifier for the stats filter state.
class StatsFilterNotifier extends Notifier<StatsFilter> {
  @override
  StatsFilter build() => const StatsFilter();

  void update(StatsFilter filter) => state = filter;
}

/// The current filter state for the stats screen.
final statsFilterProvider =
    NotifierProvider<StatsFilterNotifier, StatsFilter>(StatsFilterNotifier.new);

/// Enhanced stats snapshot, recomputed whenever the filter, settings, amals,
/// or muhasaba date changes. Manually invalidate after completion writes.
final enhancedStatsProvider =
    FutureProvider.autoDispose<EnhancedSnapshot>((ref) async {
  final filter = ref.watch(statsFilterProvider);
  final settings = await ref.watch(settingsProvider.future);
  final date = ref.watch(currentMuhasabaDateProvider);
  final db = ref.watch(appDatabaseProvider);
  final allAmals = await ref.watch(_activeAmalsProvider.future);

  // Apply category / amal-id filter.
  var amals = allAmals;
  if (filter.category != null) {
    amals = amals.where((a) => a.category == filter.category).toList();
  }
  if (filter.amalId != null) {
    amals = amals.where((a) => a.id == filter.amalId).toList();
  }

  return const EnhancedStatsService().compute(
    filter: filter,
    muhasabaDate: date,
    settings: settings,
    amals: amals,
    periodCompletionsOf: db.completionDao.getForAmalBetween,
  );
});

final _activeAmalsProvider = StreamProvider.autoDispose((ref) {
  return ref.watch(appDatabaseProvider).amalDao.watchActive();
});

/// All active amals (unfiltered) — used by the filter row dropdown.
final allActiveAmalsProvider = StreamProvider.autoDispose((ref) {
  return ref.watch(appDatabaseProvider).amalDao.watchActive();
});

/// All category names for the filter dropdown.
final allCategoriesProvider =
    FutureProvider.autoDispose<List<String>>((ref) async {
  final amals = await ref.watch(allActiveAmalsProvider.future);
  final cats = <String>{};
  for (final a in amals) {
    if (a.category != null) cats.add(a.category!);
  }
  final sorted = cats.toList()..sort();
  return sorted;
});
