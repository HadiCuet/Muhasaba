import 'package:flutter/material.dart';

import '../../../domain/services/enhanced_stats_service.dart';
import '../../../domain/utils/localized_amal_title.dart';
import '../../../domain/utils/localized_number.dart';
import '../../../domain/utils/localized_option_label.dart';
import '../../../l10n/app_localizations.dart';

class OptionBreakdownCard extends StatelessWidget {
  const OptionBreakdownCard({
    super.key,
    required this.breakdown,
    required this.expanded,
    required this.onToggle,
  });

  final OptionBreakdown breakdown;
  final bool expanded;
  final VoidCallback onToggle;

  // Mirror this widget's own layout below (card padding, SizedBox gaps, bar
  // and row heights) so `OptionBreakdownCarousel` can size a fixed-height
  // PageView around several of these cards without a real render pass. Keep
  // these in step if the layout below changes.
  static const double _chromeHeight =
      28 + 22 + 12 + 20; // card padding + title + gap + "no choice" line
  static const double _captionHeight = 20;
  static const double _barRowHeight = 42; // label row + gap + bar + bottom pad
  static const double _byAmalHeaderHeight =
      14 + 1 + 12 + 32; // top padding, divider, gap, tappable header row
  static const double _byAmalExpandedExtraHeight =
      8 + 4 + 20 + 6 + 16; // gap, spacer, legend, gap, caption
  static const double _byAmalRowHeight = 26; // one drill-down row + its gap
  static const double _legendExtraLineHeight = 20; // legend wraps past 4 slices
  static const double _heightSafetyBuffer = 12;

  /// Estimated rendered height for [breakdown] at the current text scale and
  /// [expanded] state, used by `OptionBreakdownCarousel` to size its
  /// `PageView`.
  static double estimateHeight(
    BuildContext context,
    OptionBreakdown b, {
    required bool expanded,
  }) {
    var height = _chromeHeight;
    if (b.withChoice > 0) {
      height += _captionHeight + b.slices.length * _barRowHeight;
    }
    if (b.perAmal.isNotEmpty) {
      height += _byAmalHeaderHeight;
      if (expanded) {
        height +=
            _byAmalExpandedExtraHeight + b.perAmal.length * _byAmalRowHeight;
        if (b.slices.length > 4) height += _legendExtraLineHeight;
      }
    }
    final textScale = (MediaQuery.textScalerOf(context).scale(14) / 14).clamp(
      1.0,
      1.6,
    );
    return height * textScale + _heightSafetyBuffer;
  }

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
            if (total > 0) ...[
              const SizedBox(height: 2),
              Text(
                l.optionBreakdownCaption(total),
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.outline,
                ),
              ),
            ],
            const SizedBox(height: 12),
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
            if (breakdown.perAmal.isNotEmpty)
              _ByAmalSection(
                breakdown: breakdown,
                expanded: expanded,
                onToggle: onToggle,
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

/// Per-amal drill-down: how each amal in the set split across its options,
/// all read against the same axis (share of the set's top option) so the
/// rows are comparable. Collapsed by default; the header stays visible so
/// the user can opt back in.
class _ByAmalSection extends StatelessWidget {
  const _ByAmalSection({
    required this.breakdown,
    required this.expanded,
    required this.onToggle,
  });

  final OptionBreakdown breakdown;
  final bool expanded;
  final VoidCallback onToggle;

  static const double _shadeStep = 0.13;
  static const double _minShade = 0.3;

  static Color _sliceColor(ThemeData theme, OptionSlice slice, int index) {
    if (slice.archived) return theme.colorScheme.outline;
    final opacity = (1 - index * _shadeStep).clamp(_minShade, 1.0);
    return theme.colorScheme.primary.withValues(alpha: opacity);
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final topSlice = breakdown.slices.first;
    final colors = [
      for (var i = 0; i < breakdown.slices.length; i++)
        _sliceColor(theme, breakdown.slices[i], i),
    ];

    return Padding(
      padding: const EdgeInsetsDirectional.only(top: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(height: 1, color: theme.colorScheme.outlineVariant),
          const SizedBox(height: 12),
          _ByAmalHeader(
            label: l.optionByAmal,
            toggleLabel: l.optionByAmalToggle,
            expanded: expanded,
            onToggle: onToggle,
          ),
          AnimatedSize(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut,
            child: expanded
                ? _ByAmalDetails(
                    breakdown: breakdown,
                    topSlice: topSlice,
                    colors: colors,
                  )
                : const SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}

class _ByAmalHeader extends StatelessWidget {
  const _ByAmalHeader({
    required this.label,
    required this.toggleLabel,
    required this.expanded,
    required this.onToggle,
  });

  final String label;
  final String toggleLabel;
  final bool expanded;
  final VoidCallback onToggle;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Semantics(
      label: toggleLabel,
      button: true,
      expanded: expanded,
      onTap: onToggle,
      child: ExcludeSemantics(
        child: InkWell(
          onTap: onToggle,
          child: Padding(
            padding: const EdgeInsetsDirectional.symmetric(vertical: 6),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    label.toUpperCase(),
                    style: theme.textTheme.labelMedium?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                      letterSpacing: 1.1,
                    ),
                  ),
                ),
                Icon(
                  expanded ? Icons.expand_less : Icons.expand_more,
                  size: 20,
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ByAmalDetails extends StatelessWidget {
  const _ByAmalDetails({
    required this.breakdown,
    required this.topSlice,
    required this.colors,
  });

  final OptionBreakdown breakdown;
  final OptionSlice topSlice;
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final topLabel = localizedOptionLabel(topSlice.seedKey, topSlice.label, l);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        for (final split in breakdown.perAmal) ...[
          _AmalSplitRow(
            slices: breakdown.slices,
            split: split,
            topSlice: topSlice,
            colors: colors,
          ),
          const SizedBox(height: 8),
        ],
        const SizedBox(height: 4),
        Wrap(
          spacing: 12,
          runSpacing: 4,
          children: [
            for (var i = 0; i < breakdown.slices.length; i++)
              _LegendEntry(
                color: colors[i],
                label: localizedOptionLabel(
                  breakdown.slices[i].seedKey,
                  breakdown.slices[i].label,
                  l,
                ),
              ),
          ],
        ),
        const SizedBox(height: 6),
        Text(
          l.optionByAmalShareOf(topLabel),
          style: theme.textTheme.bodySmall?.copyWith(
            color: theme.colorScheme.outline,
          ),
        ),
      ],
    );
  }
}

class _AmalSplitRow extends StatelessWidget {
  const _AmalSplitRow({
    required this.slices,
    required this.split,
    required this.topSlice,
    required this.colors,
  });

  final List<OptionSlice> slices;
  final OptionAmalSplit split;
  final OptionSlice topSlice;
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final share = split.withChoice > 0
        ? (split.counts[topSlice.itemId] ?? 0) / split.withChoice
        : 0.0;
    final segments = [
      for (var i = 0; i < slices.length; i++)
        (count: split.counts[slices[i].itemId] ?? 0, color: colors[i]),
    ].where((s) => s.count > 0).toList();

    return Row(
      children: [
        Expanded(
          flex: 5,
          child: Text(
            localizedAmalTitle(split.title, l),
            style: theme.textTheme.bodySmall,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          flex: 6,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(999),
            child: SizedBox(
              height: 6,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  for (final segment in segments)
                    Expanded(
                      flex: segment.count,
                      child: ColoredBox(color: segment.color),
                    ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(width: 8),
        SizedBox(
          width: 38,
          child: Text(
            lpct(context, (share * 100).round()),
            textAlign: TextAlign.end,
            style: theme.textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}

class _LegendEntry extends StatelessWidget {
  const _LegendEntry({required this.color, required this.label});

  final Color color;
  final String label;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        const SizedBox(width: 4),
        Text(
          label,
          style: theme.textTheme.labelSmall?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}
