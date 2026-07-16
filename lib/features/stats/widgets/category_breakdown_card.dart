import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../app/providers.dart';
import '../../../data/db/database.dart';
import '../../../domain/services/enhanced_stats_service.dart';
import '../../../domain/utils/localized_category.dart';
import '../../../domain/utils/localized_number.dart';
import '../../../l10n/app_localizations.dart';

class CategoryBreakdownCard extends ConsumerWidget {
  const CategoryBreakdownCard({super.key, required this.categories});

  final List<CategoryBreakdown> categories;

  static const _defaultIcon = '\u{1F4C2}'; // folder

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final l = AppLocalizations.of(context);

    // Icons come from the categories table, which is also what the picker and
    // the seed write to — so user-created categories get their icon here too,
    // and seed icons can't drift out of sync with a duplicate list.
    final rows = ref.watch(categoriesProvider).value ?? const <CategoryRow>[];
    final icons = <String, String?>{for (final c in rows) c.name: c.icon};

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(l.statsByCategory, style: theme.textTheme.titleMedium),
            const SizedBox(height: 12),
            for (var i = 0; i < categories.length; i++) ...[
              _CategoryRow(
                category: categories[i],
                // Falls back for uncategorized amal, and for a category that
                // was deleted from the pick-list while amal still carry its
                // name.
                icon: icons[categories[i].name] ?? _defaultIcon,
              ),
              if (i < categories.length - 1) const SizedBox(height: 10),
            ],
          ],
        ),
      ),
    );
  }
}

class _CategoryRow extends StatelessWidget {
  const _CategoryRow({required this.category, required this.icon});

  final CategoryBreakdown category;
  final String icon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l = AppLocalizations.of(context);
    final rate = category.rate.clamp(0.0, 1.0);
    final pct = (rate * 100).round();
    final name = category.name == null
        ? l.categoryOther
        : localizedCategoryName(category.name!, l);

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
                name,
                style: theme.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Text(
              lpct(context, pct),
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
