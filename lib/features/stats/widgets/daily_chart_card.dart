import 'dart:math' as math;

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/services/enhanced_stats_service.dart';
import '../../../domain/utils/localized_number.dart';
import '../../../l10n/app_localizations.dart';
import '../stats_providers.dart';

/// The Daily Breakdown chart.
///
/// Gestures: swipe the bars horizontally to step back a whole period at a
/// time — a week when the filter says This Week, a month when it says This
/// Month. The settled page is written to [statsPeriodOffsetProvider], which
/// the rest of the Overview tab follows, so the whole page moves together.
class DailyChartCard extends ConsumerStatefulWidget {
  const DailyChartCard({
    super.key,
    required this.dailyBreakdown,
    required this.locale,
  });

  /// The period currently on screen. Other pages read their own data.
  final List<DailyBreakdown> dailyBreakdown;
  final String locale;

  @override
  ConsumerState<DailyChartCard> createState() => _DailyChartCardState();
}

class _DailyChartCardState extends ConsumerState<DailyChartCard> {
  late final PageController _controller = PageController(
    initialPage: ref.read(statsPeriodOffsetProvider),
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  /// Fires at the halfway crossover, with the finger still down. Cheap work
  /// only — committing here would kick off a full recompute mid-drag, twice
  /// over if the swipe is dragged back.
  void _onPageChanged(int offset) => HapticFeedback.selectionClick();

  /// Commits the settled page, which the rest of the Overview tab follows.
  bool _onScrollEnd(ScrollEndNotification notification) {
    if (notification.depth != 0) return false;
    final offset = _controller.page?.round();
    if (offset == null) return false;
    if (offset == ref.read(statsPeriodOffsetProvider)) return false;
    ref.read(statsPeriodOffsetProvider.notifier).select(offset);
    FirebaseAnalytics.instance.logEvent(
      name: 'stats_period_swiped',
      parameters: {'periods_back': offset},
    );
    return false;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l = AppLocalizations.of(context);
    final showLabels = widget.dailyBreakdown.length <= 14;
    const maxBarHeight = 120.0;
    final maxOffset = ref.watch(statsMaxPeriodOffsetProvider);

    // A range past 31 days already scrolls horizontally inside the card, and
    // two nested horizontal drags would fight each other.
    final pageable = maxOffset > 0 && widget.dailyBreakdown.length <= 31;

    // The offset can also change from outside — picking a new filter resets
    // it — so follow it rather than assuming the pager caused every change.
    ref.listen<int>(statsPeriodOffsetProvider, (_, next) {
      if (!_controller.hasClients) return;
      if (_controller.page?.round() == next) return;
      _controller.jumpToPage(next);
    });

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(l.statsDailyBreakdown, style: theme.textTheme.titleMedium),
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
              child: pageable
                  // `reverse` is derived from Directionality and then flipped,
                  // so later pages sit toward the start edge in both text
                  // directions: swipe right to go back in LTR, left in RTL.
                  ? NotificationListener<ScrollEndNotification>(
                      onNotification: _onScrollEnd,
                      child: PageView.builder(
                        controller: _controller,
                        reverse: true,
                        // Without this the viewport's cacheExtent is zero, so
                        // the incoming page only starts loading once the drag
                        // begins and slides in empty.
                        allowImplicitScrolling: true,
                        itemCount: maxOffset + 1,
                        onPageChanged: _onPageChanged,
                        itemBuilder: (_, offset) => _ChartPage(
                          offset: offset,
                          maxBarHeight: maxBarHeight,
                          showLabels: showLabels,
                          locale: widget.locale,
                        ),
                      ),
                    )
                  : widget.dailyBreakdown.length > 31
                  ? SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: _BarGroup(
                        breakdown: widget.dailyBreakdown,
                        maxBarHeight: maxBarHeight,
                        showLabels: showLabels,
                        locale: widget.locale,
                        width: widget.dailyBreakdown.length * 28.0,
                      ),
                    )
                  : _BarGroup(
                      breakdown: widget.dailyBreakdown,
                      maxBarHeight: maxBarHeight,
                      showLabels: showLabels,
                      locale: widget.locale,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

/// One period's bars. Holds its own data so a neighbouring page is already
/// drawn by the time the swipe lands on it.
class _ChartPage extends ConsumerWidget {
  const _ChartPage({
    required this.offset,
    required this.maxBarHeight,
    required this.showLabels,
    required this.locale,
  });

  final int offset;
  final double maxBarHeight;
  final bool showLabels;
  final String locale;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final breakdown = ref.watch(dailyBreakdownProvider(offset)).value;
    if (breakdown == null || breakdown.isEmpty) {
      // Blank rather than a spinner: the card keeps its height and the bars
      // simply appear, which reads better mid-swipe than a flashing loader.
      return const SizedBox.shrink();
    }
    return _BarGroup(
      breakdown: breakdown,
      maxBarHeight: maxBarHeight,
      showLabels: showLabels,
      locale: locale,
    );
  }
}

/// Minimum horizontal room, in logical pixels, to give each day-number label.
/// Drives how many labels are shown: at ~18pt a two-digit number sits with a
/// small gap from its neighbour, so we show one label per this much width and
/// skip the rest. Wide layouts (iPad, landscape) end up showing every day;
/// a narrow phone month view thins them out. Lower it to show more labels,
/// raise it to show fewer.
const double _kMinLabelSpacing = 18.0;

/// Shortest bar drawn for a day that has any progress. A day at 0% draws no bar
/// at all — only the ground rule — so an empty day can never be mistaken for a
/// small one.
const double _kMinBarHeight = 3.0;

const double _kBarRadius = 3.0;
const double _kGroundHeight = 1.5;

/// Height reserved for the day-number row, enough for the 9pt label at any
/// text scale the chart uses.
const double _kDayLabelHeight = 12.0;

/// Rounds a logical height to a whole device pixel. Neighbouring bars whose
/// heights differ by a fraction of a pixel otherwise antialias differently and
/// make a row of short bars look ragged.
double _snapToDevicePixels(double logical, double devicePixelRatio) =>
    (logical * devicePixelRatio).roundToDouble() / devicePixelRatio;

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
      child: LayoutBuilder(
        builder: (context, constraints) {
          // How many days share one label slot, based on the real rendered
          // width. stride 1 = label every day (wide screens); higher strides
          // thin the labels on narrow ones so 2-digit numbers never crowd.
          final columnWidth = constraints.maxWidth / breakdown.length;
          final labelStride = columnWidth.isFinite && columnWidth > 0
              ? (_kMinLabelSpacing / columnWidth).ceil().clamp(
                  1,
                  breakdown.length,
                )
              : 1;
          return Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              for (var i = 0; i < breakdown.length; i++) ...[
                Expanded(
                  child: _SingleBar(
                    day: breakdown[i],
                    maxBarHeight: maxBarHeight,
                    showLabel: showLabels,
                    showDayLabel: i % labelStride == 0,
                    locale: locale,
                    isWeekView: breakdown.length <= 7,
                  ),
                ),
              ],
            ],
          );
        },
      ),
    );
  }
}

class _SingleBar extends StatelessWidget {
  const _SingleBar({
    required this.day,
    required this.maxBarHeight,
    required this.showLabel,
    required this.showDayLabel,
    required this.locale,
    required this.isWeekView,
  });

  final DailyBreakdown day;
  final double maxBarHeight;
  final bool showLabel;
  final bool showDayLabel;
  final String locale;
  final bool isWeekView;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final rate = day.rate.clamp(0.0, 1.0);
    final pct = (rate * 100).round();

    final double barHeight;
    if (rate <= 0) {
      barHeight = 0;
    } else {
      barHeight = _snapToDevicePixels(
        (rate * maxBarHeight).clamp(_kMinBarHeight, maxBarHeight),
        MediaQuery.devicePixelRatioOf(context),
      );
    }
    final barRadius = math.min(_kBarRadius, barHeight / 3);

    final String dayLabel;
    if (isWeekView) {
      final wd = safeDateFormat('E', locale).format(day.date);
      dayLabel = wd.length <= 3 ? wd : wd.substring(0, 3);
    } else {
      dayLabel = localizeDigits(
        context,
        safeDateFormat('d', locale).format(day.date),
      );
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        if (showLabel)
          Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: Text(
              lpct(context, pct),
              style: theme.textTheme.labelSmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
                fontSize: 9,
              ),
            ),
          ),
        // Today is drawn like any other day; its bold primary day number is the
        // only marker, matching how the challenge detail screen marks today.
        if (barHeight > 0)
          Container(
            height: barHeight,
            margin: const EdgeInsetsDirectional.symmetric(horizontal: 1.5),
            decoration: BoxDecoration(
              color: theme.colorScheme.primary,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(barRadius),
              ),
            ),
          ),
        // Spans the full column width, unlike the bar, so neighbouring columns
        // join into one unbroken ground line. Today is not tinted here — it is
        // already marked by its outlined bar and its bold day number, and a
        // full-strength segment under a 30%-alpha bar reads as a stray foot.
        Container(
          height: _kGroundHeight,
          color: theme.colorScheme.outlineVariant,
        ),
        const SizedBox(height: 4),
        // Fixed height, not the label's own. Columns are bottom-aligned, so any
        // variation here lifts the whole bar and its ground segment: FittedBox
        // shrinks a wide 2-digit number to fit a narrow month column, and that
        // scales its height down too, which is enough to make the ground line
        // visibly step between columns.
        SizedBox(
          height: _kDayLabelHeight,
          child: Visibility(
            visible: showDayLabel,
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            // Keeps a 2-digit number on one line in a narrow month column,
            // which would otherwise wrap and split e.g. "20" into "2"/"0".
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                dayLabel,
                maxLines: 1,
                softWrap: false,
                style: theme.textTheme.labelSmall?.copyWith(
                  fontSize: 9,
                  color: day.isToday
                      ? theme.colorScheme.primary
                      : theme.colorScheme.onSurfaceVariant,
                  fontWeight: day.isToday ? FontWeight.bold : null,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
