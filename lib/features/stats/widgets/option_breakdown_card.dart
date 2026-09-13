import 'package:flutter/material.dart';

import '../../../domain/services/enhanced_stats_service.dart';
import '../../../domain/utils/localized_option_label.dart';
import '../../../l10n/app_localizations.dart';

class OptionBreakdownCard extends StatelessWidget {
  const OptionBreakdownCard({super.key, required this.breakdown});

  final OptionBreakdown breakdown;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final total = breakdown.withChoice;

    return Card(
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16, 14, 16, 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              l.optionBreakdownTitle(
                localizedOptionSetName(
                  breakdown.setSeedKey,
                  breakdown.setName,
                  l,
                ),
              ),
              style: theme.textTheme.titleSmall,
            ),
            const SizedBox(height: 2),
            Text(
              l.optionBreakdownCaption(total),
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.outline,
              ),
            ),
            const SizedBox(height: 12),
            // No bars when nothing was recorded — there is no denominator to
            // divide by and a row of zeroes reads like a failure.
            if (total > 0)
              for (final slice in breakdown.slices)
                _Bar(slice: slice, total: total),
            Padding(
              padding: const EdgeInsetsDirectional.only(top: 4),
              child: Text(
                l.optionNoChoiceRecorded(
                  breakdown.noChoice,
                  breakdown.totalCompleted,
                ),
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.outline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Bar extends StatelessWidget {
  const _Bar({required this.slice, required this.total});

  final OptionSlice slice;
  final int total;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final share = total > 0 ? slice.count / total : 0.0;
    final colour = slice.archived
        ? theme.colorScheme.outline
        : theme.colorScheme.primary;
    final label = localizedOptionLabel(slice.seedKey, slice.label, l);

    return Padding(
      padding: const EdgeInsetsDirectional.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  slice.archived ? '$label · ${l.optionRemovedSuffix}' : label,
                  style: theme.textTheme.bodyMedium?.copyWith(color: colour),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text(
                '${slice.count} · ${(share * 100).round()}%',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.outline,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          ClipRRect(
            borderRadius: BorderRadius.circular(999),
            child: LinearProgressIndicator(
              value: share,
              minHeight: 8,
              backgroundColor: theme.colorScheme.surfaceContainerHighest,
              valueColor: AlwaysStoppedAnimation(colour),
            ),
          ),
        ],
      ),
    );
  }
}
