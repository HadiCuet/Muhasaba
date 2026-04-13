import 'package:flutter/material.dart';

import '../../../domain/services/enhanced_stats_service.dart';
import '../../../l10n/app_localizations.dart';

class HeatmapCard extends StatelessWidget {
  const HeatmapCard({super.key, required this.heatmapData});

  final List<HeatmapDay> heatmapData;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l = AppLocalizations.of(context);

    // Organize into 7 columns (Mon-Sun) x 5 rows.
    // heatmapData is the last 35 days, ordered chronologically.
    // We need to map each day to (row, col) based on weekday.
    // Fill a 5x7 grid: rows = weeks, cols = weekdays (Mon=0, Sun=6).
    final cells = List<double?>.filled(35, null);

    for (var i = 0; i < heatmapData.length && i < 35; i++) {
      final day = heatmapData[i];
      // DateTime weekday: 1=Mon, 7=Sun. We want col 0=Mon, 6=Sun.
      final col = day.date.weekday - 1;
      final row = i ~/ 7;
      final idx = row * 7 + col;
      if (idx < 35) {
        cells[idx] = day.rate;
      }
    }

    final dayLabels = [
      l.mondayShort,
      l.tuesdayShort,
      l.wednesdayShort,
      l.thursdayShort,
      l.fridayShort,
      l.saturdayShort,
      l.sundayShort,
    ];

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(l.statsConsistency, style: theme.textTheme.titleMedium),
            const SizedBox(height: 2),
            Text(
              l.statsLast5Weeks,
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 12),
            // Grid: 5 rows x 7 columns
            for (var row = 0; row < 5; row++) ...[
              Row(
                children: [
                  for (var col = 0; col < 7; col++) ...[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: _HeatmapCell(
                            rate: cells[row * 7 + col],
                            primaryColor: theme.colorScheme.primary,
                            emptyColor:
                                theme.colorScheme.surfaceContainerHighest,
                          ),
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ],
            const SizedBox(height: 6),
            // Day labels
            Row(
              children: [
                for (final label in dayLabels)
                  Expanded(
                    child: Center(
                      child: Text(
                        label,
                        style: theme.textTheme.labelSmall?.copyWith(
                          fontSize: 9,
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _HeatmapCell extends StatelessWidget {
  const _HeatmapCell({
    required this.rate,
    required this.primaryColor,
    required this.emptyColor,
  });

  final double? rate;
  final Color primaryColor;
  final Color emptyColor;

  @override
  Widget build(BuildContext context) {
    final color = rate == null || rate == 0
        ? emptyColor
        : primaryColor.withValues(alpha: rate! * 0.8 + 0.2);

    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
