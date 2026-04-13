import 'package:flutter/material.dart';

import '../../../domain/services/enhanced_stats_service.dart';
import '../../../l10n/app_localizations.dart';

class CategoryBreakdownCard extends StatelessWidget {
  const CategoryBreakdownCard({super.key, required this.categories});

  final List<CategoryBreakdown> categories;

  static const _categoryIcons = <String, String>{
    'Salah': '\u{1F54C}',   // mosque
    'Quran': '\u{1F4D6}',   // open book
    'Dhikr': '\u{1F4BF}',   // prayer beads (disc as proxy)
    'Charity': '\u{1F49D}', // ribbon heart
  };

  static const _defaultIcon = '\u{1F4C2}'; // folder

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
            Text(l.statsByCategory, style: theme.textTheme.titleMedium),
            const SizedBox(height: 12),
            for (var i = 0; i < categories.length; i++) ...[
              _CategoryRow(category: categories[i]),
              if (i < categories.length - 1) const SizedBox(height: 10),
            ],
          ],
        ),
      ),
    );
  }
}

class _CategoryRow extends StatelessWidget {
  const _CategoryRow({required this.category});

  final CategoryBreakdown category;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final rate = category.rate.clamp(0.0, 1.0);
    final pct = (rate * 100).round();
    final icon = CategoryBreakdownCard._categoryIcons[category.name] ??
        CategoryBreakdownCard._defaultIcon;

    final barColor = _rateColor(theme, rate);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(icon, style: const TextStyle(fontSize: 16)),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                category.name,
                style: theme.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Text(
              '$pct%',
              style: theme.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w600,
                color: barColor,
              ),
            ),
          ],
        ),
        const SizedBox(height: 6),
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: LinearProgressIndicator(
            value: rate,
            minHeight: 6,
            backgroundColor: theme.colorScheme.surfaceContainerHighest,
            color: barColor,
          ),
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
