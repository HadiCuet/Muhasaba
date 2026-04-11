import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app/providers.dart';
import '../../domain/models/frequency.dart';
import '../../domain/services/stats_service.dart';

class StatsScreen extends ConsumerWidget {
  const StatsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final snapshotAsync = ref.watch(statsSnapshotProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Stats')),
      body: RefreshIndicator(
        onRefresh: () async => ref.invalidate(statsSnapshotProvider),
        child: snapshotAsync.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (e, _) => ListView(
            children: [
              const SizedBox(height: 120),
              Center(child: Text('Failed to load stats:\n$e')),
            ],
          ),
          data: (snap) {
            if (snap.perAmal.isEmpty) {
              return ListView(
                children: const [
                  SizedBox(height: 120),
                  _EmptyState(),
                ],
              );
            }
            return ListView(
              padding: const EdgeInsets.all(16),
              children: [
                _GlobalCard(global: snap.global),
                const SizedBox(height: 12),
                Text(
                  'Per amal',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                const SizedBox(height: 8),
                for (final s in snap.perAmal) ...[
                  _AmalStatsCard(stats: s),
                  const SizedBox(height: 8),
                ],
              ],
            );
          },
        ),
      ),
    );
  }
}

class _GlobalCard extends StatelessWidget {
  const _GlobalCard({required this.global});

  final GlobalStats global;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Expanded(
              child: _Metric(
                label: 'This week',
                value: '${global.weekTotalCompletions}',
                caption: 'total completions',
              ),
            ),
            Container(
              width: 1,
              height: 48,
              color: theme.dividerColor,
            ),
            Expanded(
              child: _Metric(
                label: 'This month',
                value: '${global.monthTotalCompletions}',
                caption: 'total completions',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AmalStatsCard extends StatelessWidget {
  const _AmalStatsCard({required this.stats});

  final AmalStats stats;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    stats.title,
                    style: theme.textTheme.titleMedium,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                _FrequencyBadge(frequency: stats.frequency),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: _Metric(
                    label: 'Current',
                    value: '${stats.currentStreak}',
                    caption: _streakUnit(stats.frequency, stats.currentStreak),
                  ),
                ),
                Expanded(
                  child: _Metric(
                    label: 'Longest',
                    value: '${stats.longestStreak}',
                    caption: _streakUnit(stats.frequency, stats.longestStreak),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            _RatioBar(
              label: 'Week',
              completed: stats.weeklyCompleted,
              expected: stats.weeklyExpected,
              rate: stats.weeklyRate,
            ),
            const SizedBox(height: 8),
            _RatioBar(
              label: 'Month',
              completed: stats.monthlyCompleted,
              expected: stats.monthlyExpected,
              rate: stats.monthlyRate,
            ),
          ],
        ),
      ),
    );
  }

  String _streakUnit(Frequency f, int value) {
    switch (f) {
      case Frequency.daily:
        return value == 1 ? 'day' : 'days';
      case Frequency.weekly:
        return value == 1 ? 'week' : 'weeks';
      case Frequency.monthly:
        return value == 1 ? 'month' : 'months';
    }
  }
}

class _Metric extends StatelessWidget {
  const _Metric({
    required this.label,
    required this.value,
    required this.caption,
  });

  final String label;
  final String value;
  final String caption;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label.toUpperCase(),
          style: theme.textTheme.labelSmall?.copyWith(
            color: theme.colorScheme.primary,
            letterSpacing: 0.8,
          ),
        ),
        const SizedBox(height: 2),
        Text(value, style: theme.textTheme.headlineMedium),
        Text(
          caption,
          style: theme.textTheme.bodySmall?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}

class _RatioBar extends StatelessWidget {
  const _RatioBar({
    required this.label,
    required this.completed,
    required this.expected,
    required this.rate,
  });

  final String label;
  final int completed;
  final int expected;
  final double rate;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final pct = (rate * 100).round();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(label, style: theme.textTheme.labelMedium),
            const Spacer(),
            Text(
              '$completed / $expected  ·  $pct%',
              style: theme.textTheme.labelMedium,
            ),
          ],
        ),
        const SizedBox(height: 4),
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: LinearProgressIndicator(
            value: rate.clamp(0.0, 1.0),
            minHeight: 6,
            backgroundColor: theme.colorScheme.surfaceContainerHighest,
          ),
        ),
      ],
    );
  }
}

class _FrequencyBadge extends StatelessWidget {
  const _FrequencyBadge({required this.frequency});

  final Frequency frequency;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final label = switch (frequency) {
      Frequency.daily => 'daily',
      Frequency.weekly => 'weekly',
      Frequency.monthly => 'monthly',
    };
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: theme.colorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        label,
        style: theme.textTheme.labelSmall?.copyWith(
          color: theme.colorScheme.onSecondaryContainer,
        ),
      ),
    );
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState();

  @override
  Widget build(BuildContext context) {
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
              'No amal yet. Add one on Today to start tracking.',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
