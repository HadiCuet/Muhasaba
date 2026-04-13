import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../domain/services/enhanced_stats_service.dart';
import '../../../l10n/app_localizations.dart';

class DailyChartCard extends StatelessWidget {
  const DailyChartCard({
    super.key,
    required this.dailyBreakdown,
    required this.locale,
  });

  final List<DailyBreakdown> dailyBreakdown;
  final String locale;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l = AppLocalizations.of(context);
    final showLabels = dailyBreakdown.length <= 14;
    final maxBarHeight = 120.0;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(l.statsDailyBreakdown,
                style: theme.textTheme.titleMedium),
            const SizedBox(height: 2),
            Text(
              l.statsCompletionRate,
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: maxBarHeight + (showLabels ? 40 : 24),
              child: dailyBreakdown.length > 31
                  ? SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: _BarGroup(
                        breakdown: dailyBreakdown,
                        maxBarHeight: maxBarHeight,
                        showLabels: showLabels,
                        locale: locale,
                        width: dailyBreakdown.length * 28.0,
                      ),
                    )
                  : _BarGroup(
                      breakdown: dailyBreakdown,
                      maxBarHeight: maxBarHeight,
                      showLabels: showLabels,
                      locale: locale,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BarGroup extends StatelessWidget {
  const _BarGroup({
    required this.breakdown,
    required this.maxBarHeight,
    required this.showLabels,
    required this.locale,
    this.width,
  });

  final List<DailyBreakdown> breakdown;
  final double maxBarHeight;
  final bool showLabels;
  final String locale;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          for (var i = 0; i < breakdown.length; i++) ...[
            Expanded(
              child: _SingleBar(
                day: breakdown[i],
                maxBarHeight: maxBarHeight,
                showLabel: showLabels,
                locale: locale,
                isWeekView: breakdown.length <= 7,
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _SingleBar extends StatelessWidget {
  const _SingleBar({
    required this.day,
    required this.maxBarHeight,
    required this.showLabel,
    required this.locale,
    required this.isWeekView,
  });

  final DailyBreakdown day;
  final double maxBarHeight;
  final bool showLabel;
  final String locale;
  final bool isWeekView;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final rate = day.rate.clamp(0.0, 1.0);
    final barHeight = (rate * maxBarHeight).clamp(4.0, maxBarHeight);
    final pct = (rate * 100).round();

    final dayLabel = isWeekView
        ? DateFormat('E', locale).format(day.date).substring(0, 3)
        : DateFormat('d', locale).format(day.date);

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        if (showLabel)
          Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: Text(
              '$pct%',
              style: theme.textTheme.labelSmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
                fontSize: 9,
              ),
            ),
          ),
        Container(
          height: barHeight,
          margin: const EdgeInsetsDirectional.symmetric(horizontal: 1.5),
          decoration: BoxDecoration(
            color: day.isToday
                ? theme.colorScheme.primary.withValues(alpha: 0.3)
                : theme.colorScheme.primary,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(3)),
            border: day.isToday
                ? Border.all(
                    color: theme.colorScheme.primary,
                    width: 1.5,
                  )
                : null,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          dayLabel,
          style: theme.textTheme.labelSmall?.copyWith(
            fontSize: 9,
            color: day.isToday
                ? theme.colorScheme.primary
                : theme.colorScheme.onSurfaceVariant,
            fontWeight: day.isToday ? FontWeight.bold : null,
          ),
        ),
      ],
    );
  }
}
