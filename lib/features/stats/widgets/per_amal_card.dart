import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/services/enhanced_stats_service.dart';
import '../../../domain/models/frequency.dart';
import '../../../domain/utils/localized_amal_title.dart';
import '../../../domain/utils/localized_number.dart';
import '../../../l10n/app_localizations.dart';
import '../stats_providers.dart';

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

class _AmalRow extends ConsumerWidget {
  const _AmalRow({required this.stats});

  final EnhancedAmalStats stats;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final l = AppLocalizations.of(context);
    final rate = stats.rate.clamp(0.0, 1.0);
    final fractionColor = _rateColor(theme, rate);

    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: () {
        final filter = ref.read(statsFilterProvider);
        ref
            .read(statsFilterProvider.notifier)
            .update(filter.copyWith(amalId: () => stats.amalId));
        FirebaseAnalytics.instance.logEvent(
          name: 'stats_amal_filter_changed',
          parameters: {'active': 1, 'source': 'per_amal_row'},
        );
      },
      child: Padding(
        padding: const EdgeInsetsDirectional.symmetric(vertical: 2),
        child: Row(
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
                    localizedAmalTitle(stats.title, l),
                    style: theme.textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      _FrequencyChip(frequency: stats.frequency),
                      if (stats.isOpenEnded) ...[
                        const SizedBox(width: 6),
                        Flexible(
                          child: Text(
                            l.statsDaysFraction(
                              lnum(context, stats.completed),
                              lnum(context, stats.expected),
                              stats.expected,
                            ),
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.labelSmall?.copyWith(
                              color: theme.colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            // Completion fraction, or the period total when there is no goal.
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                if (stats.isOpenEnded) ...[
                  Text(
                    lnum(context, stats.amount),
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                  Text(
                    l.statsTotalCaption,
                    style: theme.textTheme.labelSmall?.copyWith(
                      fontSize: 10,
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ] else
                  Text(
                    '${lnum(context, stats.completed)}/${lnum(context, stats.expected)}',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: fractionColor,
                    ),
                  ),
                const SizedBox(height: 2),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text('\u{1F525}', style: TextStyle(fontSize: 12)),
                    const SizedBox(width: 3),
                    Text(
                      lnum(context, stats.currentStreak),
                      style: theme.textTheme.labelSmall?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
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
