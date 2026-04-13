import 'package:flutter/material.dart';

import '../../../l10n/app_localizations.dart';

class StreaksCard extends StatelessWidget {
  const StreaksCard({
    super.key,
    required this.currentStreak,
    required this.longestStreak,
    required this.totalCompletedDays,
  });

  final int currentStreak;
  final int longestStreak;
  final int totalCompletedDays;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Expanded(
              child: _StreakBox(
                icon: '\u{1F525}', // fire
                value: currentStreak,
                label: l.statsCurrentStreak,
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: _StreakBox(
                icon: '\u{2B50}', // star
                value: longestStreak,
                label: l.statsBestStreak,
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: _StreakBox(
                icon: '\u{2705}', // check mark
                value: totalCompletedDays,
                label: l.statsTotalDays,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _StreakBox extends StatelessWidget {
  const _StreakBox({
    required this.icon,
    required this.value,
    required this.label,
  });

  final String icon;
  final int value;
  final String label;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(icon, style: const TextStyle(fontSize: 22)),
          const SizedBox(height: 6),
          Text(
            '$value',
            style: theme.textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            label,
            style: theme.textTheme.labelSmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
