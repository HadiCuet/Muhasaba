import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app/widgets/max_width_body.dart';
import '../../domain/services/enhanced_stats_service.dart';
import '../../domain/utils/localized_amal_title.dart';
import '../../domain/utils/localized_number.dart';
import '../../domain/utils/localized_option_label.dart';
import '../../l10n/app_localizations.dart';
import 'stats_providers.dart';
import 'widgets/option_breakdown_card.dart'
    show OptionAmalSelectorRow, OptionBar;

typedef _Segment = ({int count, Color color});

const double _shadeStep = 0.13;
const double _minShade = 0.3;

Color _sliceColor(ThemeData theme, OptionSlice slice, int index) {
  if (slice.archived) return theme.colorScheme.outline;
  final opacity = (1 - index * _shadeStep).clamp(_minShade, 1.0);
  return theme.colorScheme.primary.withValues(alpha: opacity);
}

class OptionDetailScreen extends ConsumerStatefulWidget {
  const OptionDetailScreen({super.key, required this.setId});

  final int setId;

  @override
  ConsumerState<OptionDetailScreen> createState() => _OptionDetailScreenState();
}

class _OptionDetailScreenState extends ConsumerState<OptionDetailScreen> {
  int? _selectedAmalId;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final unscopedAsync = ref.watch(
      optionDetailProvider((setId: widget.setId, amalId: null)),
    );

    return unscopedAsync.when(
      skipLoadingOnReload: true,
      loading: () => Scaffold(
        appBar: AppBar(),
        body: const Center(child: CircularProgressIndicator()),
      ),
      error: (e, _) => Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Padding(
            padding: const EdgeInsetsDirectional.all(32),
            child: Text(
              l.statsLoadError(e.toString()),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
      data: (unscopedDetail) {
        if (unscopedDetail == null) {
          return Scaffold(
            appBar: AppBar(),
            body: const Center(child: _EmptyState()),
          );
        }
        return _buildLoaded(context, l, unscopedDetail);
      },
    );
  }

  Widget _buildLoaded(
    BuildContext context,
    AppLocalizations l,
    OptionDetail unscopedDetail,
  ) {
    final summary = unscopedDetail.summary;
    final chipOptions = summary.perAmal;
    final singleAmalScope = _selectedAmalId != null || chipOptions.length < 2;
    final scopedAsync = ref.watch(
      optionDetailProvider((setId: widget.setId, amalId: _selectedAmalId)),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          localizedOptionSetName(summary.setSeedKey, summary.setName, l),
        ),
      ),
      body: MaxWidthBody(
        child: CustomScrollView(
          slivers: [
            if (chipOptions.length >= 2)
              SliverPadding(
                padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                sliver: SliverToBoxAdapter(
                  child: OptionAmalSelectorRow(
                    perAmal: chipOptions,
                    selectedAmalId: _selectedAmalId,
                    onChanged: (id) => setState(() => _selectedAmalId = id),
                  ),
                ),
              ),
            ...scopedAsync.when(
              skipLoadingOnReload: true,
              loading: () => const [
                SliverFillRemaining(
                  child: Center(child: CircularProgressIndicator()),
                ),
              ],
              error: (e, _) => [
                SliverFillRemaining(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.all(32),
                      child: Text(
                        l.statsLoadError(e.toString()),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
              data: (detail) {
                if (detail == null) {
                  return const [
                    SliverFillRemaining(child: Center(child: _EmptyState())),
                  ];
                }
                return [
                  SliverPadding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                      16,
                      16,
                      16,
                      24,
                    ),
                    sliver: SliverToBoxAdapter(
                      child: _DetailBody(
                        detail: detail,
                        singleAmalScope: singleAmalScope,
                      ),
                    ),
                  ),
                ];
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState();

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.insights,
            size: 56,
            color: Theme.of(context).colorScheme.outline,
          ),
          const SizedBox(height: 12),
          Text(
            l.optionDetailEmpty,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}

class _DetailBody extends StatelessWidget {
  const _DetailBody({required this.detail, required this.singleAmalScope});

  final OptionDetail detail;
  final bool singleAmalScope;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final summary = detail.summary;
    final colors = [
      for (var i = 0; i < summary.slices.length; i++)
        _sliceColor(theme, summary.slices[i], i),
    ];
    final colorByItem = {
      for (var i = 0; i < summary.slices.length; i++)
        summary.slices[i].itemId: colors[i],
    };
    final sliceByItem = {for (final s in summary.slices) s.itemId: s};

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (summary.withChoice > 0)
          for (final slice in summary.slices)
            OptionBar(
              slice: slice,
              count: slice.count,
              total: summary.withChoice,
            ),
        Padding(
          padding: const EdgeInsetsDirectional.only(bottom: 8),
          child: Text(
            l.optionNoChoiceRecorded(summary.noChoice, summary.totalCompleted),
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.outline,
            ),
          ),
        ),
        if (detail.weeks.length >= 2) ...[
          const SizedBox(height: 16),
          _SectionHeading(l.optionDetailTrendHeading),
          const SizedBox(height: 10),
          _TrendSection(summary: summary, weeks: detail.weeks, colors: colors),
        ],
        if (summary.perAmal.length >= 2) ...[
          const SizedBox(height: 20),
          _SectionHeading(l.optionDetailByAmalHeading),
          const SizedBox(height: 10),
          _ByAmalSection(summary: summary, colors: colors),
        ],
        const SizedBox(height: 20),
        _SectionHeading(l.optionDetailRecordsHeading),
        const SizedBox(height: 10),
        _RecordsSection(
          records: detail.records,
          singleAmalScope: singleAmalScope,
        ),
        if (detail.recentDays.isNotEmpty) ...[
          const SizedBox(height: 20),
          _SectionHeading(l.optionDetailRecentDaysHeading),
          const SizedBox(height: 2),
          Text(
            l.optionDetailRecentDaysCount(detail.recentDays.length),
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.outline,
            ),
          ),
          const SizedBox(height: 8),
          for (final entry in detail.recentDays)
            _RecentDayRow(
              entry: entry,
              showAmal: !singleAmalScope,
              slice: sliceByItem[entry.itemId],
              color: colorByItem[entry.itemId] ?? theme.colorScheme.outline,
            ),
        ],
      ],
    );
  }
}

class _SectionHeading extends StatelessWidget {
  const _SectionHeading(this.label);

  final String label;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      label.toUpperCase(),
      style: theme.textTheme.labelMedium?.copyWith(
        color: theme.colorScheme.onSurfaceVariant,
        letterSpacing: 1.1,
      ),
    );
  }
}

class _TrendSection extends StatelessWidget {
  const _TrendSection({
    required this.summary,
    required this.weeks,
    required this.colors,
  });

  final OptionBreakdown summary;
  final List<OptionWeekSplit> weeks;
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final locale = Localizations.localeOf(context).toString();
    final topSlice = summary.slices.first;

    double shareOf(OptionWeekSplit week) => week.withChoice > 0
        ? (week.counts[topSlice.itemId] ?? 0) / week.withChoice
        : 0.0;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (final week in weeks)
          _ShareBarRow(
            label: localizeDigits(
              context,
              safeDateFormat('MMM d', locale).format(week.weekStart),
            ),
            segments: [
              for (var i = 0; i < summary.slices.length; i++)
                (
                  count: week.counts[summary.slices[i].itemId] ?? 0,
                  color: colors[i],
                ),
            ],
            share: shareOf(week),
          ),
        const SizedBox(height: 4),
        _ColorLegend(slices: summary.slices, colors: colors),
        const SizedBox(height: 8),
        Text(
          l.optionDetailTrendReadout(
            localizedOptionLabel(topSlice.seedKey, topSlice.label, l),
            lpct(context, (shareOf(weeks.first) * 100).round()),
            lpct(context, (shareOf(weeks.last) * 100).round()),
          ),
          style: theme.textTheme.bodyMedium?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}

class _ByAmalSection extends StatelessWidget {
  const _ByAmalSection({required this.summary, required this.colors});

  final OptionBreakdown summary;
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final topSlice = summary.slices.first;

    double shareOf(OptionAmalSplit split) => split.withChoice > 0
        ? (split.counts[topSlice.itemId] ?? 0) / split.withChoice
        : 0.0;

    final ranked = [...summary.perAmal]
      ..sort((a, b) => shareOf(b).compareTo(shareOf(a)));
    final best = ranked.first;
    final worst = ranked.last;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (final split in ranked)
          _ShareBarRow(
            label: localizedAmalTitle(split.title, l),
            segments: [
              for (var i = 0; i < summary.slices.length; i++)
                (
                  count: split.counts[summary.slices[i].itemId] ?? 0,
                  color: colors[i],
                ),
            ],
            share: shareOf(split),
          ),
        const SizedBox(height: 4),
        _ColorLegend(slices: summary.slices, colors: colors),
        const SizedBox(height: 8),
        Text(
          l.optionDetailByAmalReadout(
            localizedAmalTitle(best.title, l),
            lpct(context, (shareOf(best) * 100).round()),
            localizedAmalTitle(worst.title, l),
            lpct(context, (shareOf(worst) * 100).round()),
          ),
          style: theme.textTheme.bodyMedium?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}

class _ShareBarRow extends StatelessWidget {
  const _ShareBarRow({
    required this.label,
    required this.segments,
    required this.share,
  });

  final String label;
  final List<_Segment> segments;
  final double share;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final visible = segments.where((s) => s.count > 0).toList();

    return Padding(
      padding: const EdgeInsetsDirectional.only(bottom: 10),
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: Text(
              label,
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
                height: 10,
                child: visible.isEmpty
                    ? ColoredBox(
                        color: theme.colorScheme.surfaceContainerHighest,
                      )
                    : Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          for (final segment in visible)
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
            width: 44,
            child: Text(
              lpct(context, (share * 100).round()),
              textAlign: TextAlign.end,
              style: theme.textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ColorLegend extends StatelessWidget {
  const _ColorLegend({required this.slices, required this.colors});

  final List<OptionSlice> slices;
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final theme = Theme.of(context);
    return Wrap(
      spacing: 12,
      runSpacing: 4,
      children: [
        for (var i = 0; i < slices.length; i++)
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  color: colors[i],
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 4),
              Text(
                localizedOptionLabel(slices[i].seedKey, slices[i].label, l),
                style: theme.textTheme.labelSmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
      ],
    );
  }
}

class _RecordsSection extends StatelessWidget {
  const _RecordsSection({required this.records, required this.singleAmalScope});

  final OptionRecords records;
  final bool singleAmalScope;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final theme = Theme.of(context);

    String? amalTitleFor(String? dbTitle) => singleAmalScope || dbTitle == null
        ? null
        : localizedAmalTitle(dbTitle, l);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: _RecordTile(
                icon: '\u{1F3C6}',
                value: lnum(context, records.longestRun),
                label: l.optionDetailLongestRun,
                amalTitle: amalTitleFor(records.longestRunAmalTitle),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: _RecordTile(
                icon: '\u{1F4C8}',
                value: lpct(context, (records.bestWeekShare * 100).round()),
                label: l.optionDetailBestWeek,
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: _RecordTile(
                icon: '\u{1F525}',
                value: lnum(context, records.currentRun),
                label: l.optionDetailCurrentRun,
                amalTitle: amalTitleFor(records.currentRunAmalTitle),
              ),
            ),
          ],
        ),
        const SizedBox(height: 6),
        Text(
          l.optionDetailRecordsCaption,
          style: theme.textTheme.bodySmall?.copyWith(
            color: theme.colorScheme.outline,
          ),
        ),
      ],
    );
  }
}

class _RecordTile extends StatelessWidget {
  const _RecordTile({
    required this.icon,
    required this.value,
    required this.label,
    this.amalTitle,
  });

  final String icon;
  final String value;
  final String label;
  final String? amalTitle;

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
            value,
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
          if (amalTitle != null) ...[
            const SizedBox(height: 2),
            Text(
              amalTitle!,
              style: theme.textTheme.labelSmall?.copyWith(
                color: theme.colorScheme.primary,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ],
      ),
    );
  }
}

class _RecentDayRow extends StatelessWidget {
  const _RecentDayRow({
    required this.entry,
    required this.showAmal,
    required this.slice,
    required this.color,
  });

  final OptionDayEntry entry;
  final bool showAmal;
  final OptionSlice? slice;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final locale = Localizations.localeOf(context).toString();
    final dateLabel = localizeDigits(
      context,
      safeDateFormat('EEEE, MMM d', locale).format(entry.date),
    );
    final tag = slice == null
        ? ''
        : localizedOptionLabel(slice!.seedKey, slice!.label, l);

    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(vertical: 6),
      child: Row(
        children: [
          if (showAmal) ...[
            Text(entry.amalIcon, style: const TextStyle(fontSize: 16)),
            const SizedBox(width: 8),
          ],
          Expanded(
            child: Text(
              showAmal
                  ? '${localizedAmalTitle(entry.amalTitle, l)} · $dateLabel'
                  : dateLabel,
              style: theme.textTheme.bodyMedium,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(width: 8),
          _OptionTag(label: tag, color: color),
        ],
      ),
    );
  }
}

class _OptionTag extends StatelessWidget {
  const _OptionTag({required this.label, required this.color});

  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsetsDirectional.symmetric(
        horizontal: 10,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.14),
        borderRadius: BorderRadius.circular(999),
      ),
      child: Text(
        label,
        style: theme.textTheme.labelSmall?.copyWith(
          color: color,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
