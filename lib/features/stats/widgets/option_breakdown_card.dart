import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../domain/services/enhanced_stats_service.dart';
import '../../../domain/utils/localized_amal_title.dart';
import '../../../domain/utils/localized_option_label.dart';
import '../../../l10n/app_localizations.dart';

class OptionBreakdownCard extends StatefulWidget {
  const OptionBreakdownCard({super.key, required this.breakdown});

  final OptionBreakdown breakdown;

  // Mirror this widget's own layout below (card padding, SizedBox gaps, bar
  // and row heights) so `OptionBreakdownCarousel` can size a fixed-height
  // PageView around several of these cards without a real render pass. Keep
  // these in step if the layout below changes.
  static const double _chromeHeight =
      28 + 22 + 12 + 20; // card padding + title + gap + "no choice" line
  static const double _captionHeight = 20;
  static const double _barRowHeight = 42; // label row + gap + bar + bottom pad
  static const double _selectorRowHeight = 10 + 32; // gap above + chip row
  static const double _heightSafetyBuffer = 12;

  /// Estimated rendered height for [breakdown] at the current text scale,
  /// used by `OptionBreakdownCarousel` to size its `PageView`.
  static double estimateHeight(BuildContext context, OptionBreakdown b) {
    var height = _chromeHeight;
    if (b.perAmal.length >= 2) height += _selectorRowHeight;
    if (b.withChoice > 0) {
      height += _captionHeight + b.slices.length * _barRowHeight;
    }
    final textScale = (MediaQuery.textScalerOf(context).scale(14) / 14).clamp(
      1.0,
      1.6,
    );
    return height * textScale + _heightSafetyBuffer;
  }

  @override
  State<OptionBreakdownCard> createState() => _OptionBreakdownCardState();
}

class _OptionBreakdownCardState extends State<OptionBreakdownCard> {
  int? _selectedAmalId;

  @override
  void didUpdateWidget(OptionBreakdownCard oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.breakdown.setId != widget.breakdown.setId) {
      _selectedAmalId = null;
    }
  }

  OptionAmalSplit? _selectedSplit(OptionBreakdown breakdown) {
    final id = _selectedAmalId;
    if (id == null) return null;
    for (final split in breakdown.perAmal) {
      if (split.amalId == id) return split;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final breakdown = widget.breakdown;
    final selected = _selectedSplit(breakdown);
    final total = selected?.withChoice ?? breakdown.withChoice;
    final noChoice = selected?.noChoice ?? breakdown.noChoice;
    final totalCompleted = selected == null
        ? breakdown.totalCompleted
        : selected.withChoice + selected.noChoice;

    return Card(
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () => context.push('/insights/option/${breakdown.setId}'),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(16, 14, 16, 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      l.optionBreakdownTitle(
                        localizedOptionSetName(
                          breakdown.setSeedKey,
                          breakdown.setName,
                          l,
                        ),
                      ),
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                  Icon(
                    Icons.chevron_right,
                    size: 20,
                    color: theme.colorScheme.outline,
                  ),
                ],
              ),
              if (total > 0) ...[
                const SizedBox(height: 2),
                Text(
                  selected == null
                      ? l.optionBreakdownCaption(total)
                      : l.optionScopedCaption(
                          localizedAmalTitle(selected.title, l),
                          total,
                        ),
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.outline,
                  ),
                ),
              ],
              if (breakdown.perAmal.length >= 2) ...[
                const SizedBox(height: 10),
                _AmalSelectorRow(
                  perAmal: breakdown.perAmal,
                  selectedAmalId: _selectedAmalId,
                  onChanged: (id) => setState(() => _selectedAmalId = id),
                ),
              ],
              const SizedBox(height: 12),
              if (total > 0)
                for (final slice in breakdown.slices)
                  _Bar(
                    slice: slice,
                    count: selected == null
                        ? slice.count
                        : (selected.counts[slice.itemId] ?? 0),
                    total: total,
                  ),
              Padding(
                padding: const EdgeInsetsDirectional.only(top: 4),
                child: Text(
                  l.optionNoChoiceRecorded(noChoice, totalCompleted),
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.outline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Scopes the card's bars to one amal in the set, or all of them. Local to
/// this card's state — not persisted, and reset whenever the card starts
/// showing a different set.
class _AmalSelectorRow extends StatelessWidget {
  const _AmalSelectorRow({
    required this.perAmal,
    required this.selectedAmalId,
    required this.onChanged,
  });

  final List<OptionAmalSplit> perAmal;
  final int? selectedAmalId;
  final ValueChanged<int?> onChanged;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ChoiceChip(
            label: Text(l.optionAllAmals),
            selected: selectedAmalId == null,
            showCheckmark: false,
            visualDensity: VisualDensity.compact,
            onSelected: (_) => onChanged(null),
          ),
          for (final split in perAmal) ...[
            const SizedBox(width: 8),
            ChoiceChip(
              avatar: Text(split.icon, style: const TextStyle(fontSize: 15)),
              label: Text(localizedAmalTitle(split.title, l)),
              selected: selectedAmalId == split.amalId,
              showCheckmark: false,
              visualDensity: VisualDensity.compact,
              onSelected: (_) => onChanged(split.amalId),
            ),
          ],
        ],
      ),
    );
  }
}

class _Bar extends StatelessWidget {
  const _Bar({required this.slice, required this.count, required this.total});

  final OptionSlice slice;
  final int count;
  final int total;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final share = total > 0 ? count / total : 0.0;
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
                '$count · ${(share * 100).round()}%',
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
