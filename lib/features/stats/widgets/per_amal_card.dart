import 'package:flutter/material.dart';

import '../../../domain/services/enhanced_stats_service.dart';
import '../../../domain/models/frequency.dart';
import '../../../l10n/app_localizations.dart';

class PerAmalCard extends StatelessWidget {
  const PerAmalCard({super.key, required this.perAmal});

  final List<EnhancedAmalStats> perAmal;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l = AppLocalizations.of(context);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(l.statsPerAmal, style: theme.textTheme.titleMedium),
            const SizedBox(height: 12),
            for (var i = 0; i < perAmal.length; i++) ...[
              _AmalRow(stats: perAmal[i]),
              if (i < perAmal.length - 1)
                Divider(height: 20, color: theme.dividerColor),
            ],
          ],
        ),
      ),
    );
  }
}

class _AmalRow extends StatelessWidget {
  const _AmalRow({required this.stats});

  final EnhancedAmalStats stats;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final rate = stats.rate.clamp(0.0, 1.0);
    final fractionColor = _rateColor(theme, rate);

    return Row(
      children: [
        // Icon
        SizedBox(
          width: 28,
          child: Text(
            stats.icon,
            style: const TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(width: 10),
        // Title + frequency badge
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                stats.title,
                style: theme.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),
              _FrequencyChip(frequency: stats.frequency),
            ],
          ),
        ),
        const SizedBox(width: 8),
        // Completion fraction
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              '${stats.completed}/${stats.expected}',
              style: theme.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w600,
                color: fractionColor,
              ),
            ),
            const SizedBox(height: 2),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '\u{1F525}', // fire
                  style: const TextStyle(fontSize: 12),
                ),
                const SizedBox(width: 3),
                Text(
                  '${stats.currentStreak}',
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Color _rateColor(ThemeData theme, double rate) {
    if (rate >= 0.7) return theme.colorScheme.tertiary;
    if (rate >= 0.4) return theme.colorScheme.secondary;
    return theme.colorScheme.error;
  }
}

class _FrequencyChip extends StatelessWidget {
  const _FrequencyChip({required this.frequency});

  final Frequency frequency;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l = AppLocalizations.of(context);
    final label = switch (frequency) {
      Frequency.daily => l.frequencyBadgeDaily,
      Frequency.weekly => l.frequencyBadgeWeekly,
      Frequency.monthly => l.frequencyBadgeMonthly,
    };

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 1),
      decoration: BoxDecoration(
        color: theme.colorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        label,
        style: theme.textTheme.labelSmall?.copyWith(
          color: theme.colorScheme.onSecondaryContainer,
          fontSize: 10,
        ),
      ),
    );
  }
}
