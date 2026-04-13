import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../l10n/app_localizations.dart';
import 'stats_providers.dart';
import 'widgets/stats_filter_row.dart';
import 'widgets/score_ring_card.dart';
import 'widgets/daily_chart_card.dart';
import 'widgets/category_breakdown_card.dart';
import 'widgets/streaks_card.dart';
import 'widgets/heatmap_card.dart';
import 'widgets/per_amal_card.dart';

class StatsScreen extends ConsumerWidget {
  const StatsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = AppLocalizations.of(context);
    final snapshotAsync = ref.watch(enhancedStatsProvider);
    final filter = ref.watch(statsFilterProvider);
    final locale = Localizations.localeOf(context).toString();

    return Scaffold(
      appBar: AppBar(title: Text(l.statsTitle)),
      body: RefreshIndicator(
        onRefresh: () async => ref.invalidate(enhancedStatsProvider),
        child: CustomScrollView(
          slivers: [
            // Filter row — always visible at top
            const SliverToBoxAdapter(
              child: StatsFilterRow(),
            ),
            // Stats content
            ...snapshotAsync.when(
              loading: () => [
                const SliverFillRemaining(
                  child: Center(child: CircularProgressIndicator()),
                ),
              ],
              error: (e, _) => [
                SliverFillRemaining(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.all(32),
                      child: Text(
                        l.statsLoadError(e.toString()),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
              data: (snap) {
                if (snap.perAmal.isEmpty) {
                  return [
                    const SliverFillRemaining(child: _EmptyState()),
                  ];
                }

                final isSingleAmal = filter.amalId != null;
                final children = <Widget>[];

                // 1. Score ring
                children.add(ScoreRingCard(snapshot: snap));
                children.add(const SizedBox(height: 12));

                // 2. Daily chart (hide if <= 1 day)
                if (snap.dailyBreakdown.length > 1) {
                  children.add(DailyChartCard(
                    dailyBreakdown: snap.dailyBreakdown,
                    locale: locale,
                  ));
                  children.add(const SizedBox(height: 12));
                }

                // 3. Category breakdown (hide if empty or single-amal filter)
                if (snap.categoryBreakdown.isNotEmpty && !isSingleAmal) {
                  children.add(CategoryBreakdownCard(
                    categories: snap.categoryBreakdown,
                  ));
                  children.add(const SizedBox(height: 12));
                }

                // 4. Streaks
                children.add(StreaksCard(
                  currentStreak: snap.currentStreak,
                  longestStreak: snap.longestStreak,
                  totalCompletedDays: snap.totalCompletedDays,
                ));
                children.add(const SizedBox(height: 12));

                // 5. Heatmap (hide if empty)
                if (snap.heatmapData.isNotEmpty) {
                  children.add(HeatmapCard(heatmapData: snap.heatmapData));
                  children.add(const SizedBox(height: 12));
                }

                // 6. Per-amal list (hide if <= 1 amal and single-amal filter)
                if (!(snap.perAmal.length <= 1 && isSingleAmal)) {
                  children.add(PerAmalCard(perAmal: snap.perAmal));
                  children.add(const SizedBox(height: 12));
                }

                return [
                  SliverPadding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 16),
                    sliver: SliverList(
                      delegate: SliverChildListDelegate(children),
                    ),
                  ),
                ];
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState();

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.insights,
              size: 56,
              color: Theme.of(context).colorScheme.outline,
            ),
            const SizedBox(height: 12),
            Text(
              l.statsEmpty,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
