import 'dart:math' as math;

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/db/database.dart';
import '../../../domain/models/amal_goal.dart';
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
    final focusedAmal = ref.watch(statsFocusedAmalProvider);
    final count = _countModeFor(focusedAmal, widget.dailyBreakdown);

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
              count == null ? l.statsCompletionRate : l.statsAmountPerDay,
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height:
                  maxBarHeight +
                  (showLabels ? 40 : 24) +
                  (count == null ? 0 : _kReadoutHeight + 8),
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
                          focusedAmal: focusedAmal,
                          maxBarHeight: maxBarHeight,
                          showLabels: showLabels,
                          locale: widget.locale,
                        ),
                      ),
                    )
                  : _ChartBody(
                      breakdown: widget.dailyBreakdown,
                      focusedAmal: focusedAmal,
                      maxBarHeight: maxBarHeight,
                      showLabels: showLabels,
                      locale: widget.locale,
                      width: widget.dailyBreakdown.length > 31
                          ? widget.dailyBreakdown.length * 28.0
                          : null,
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
    required this.focusedAmal,
    required this.maxBarHeight,
    required this.showLabels,
    required this.locale,
  });

  final int offset;
  final AmalRow? focusedAmal;
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
    return _ChartBody(
      breakdown: breakdown,
      focusedAmal: focusedAmal,
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

/// Height reserved for the amount label that sits above a bar in count mode.
const double _kCountLabelHeight = 14.0;

/// Height of the Total / Avg / Best readout under the bars in count mode.
const double _kReadoutHeight = 34.0;

/// Rounds a logical height to a whole device pixel. Neighbouring bars whose
/// heights differ by a fraction of a pixel otherwise antialias differently and
/// make a row of short bars look ragged.
double _snapToDevicePixels(double logical, double devicePixelRatio) =>
    (logical * devicePixelRatio).roundToDouble() / devicePixelRatio;

/// Drawing parameters for amount-per-day bars. `null` anywhere below means
/// the chart is in its normal completion-rate mode.
@immutable
class _CountMode {
  const _CountMode({required this.maxAmount, required this.goal});

  /// What the bars scale against: the largest amount on screen, or the goal
  /// when every day fell short of it. Never zero.
  final int maxAmount;

  /// The amal's target, drawn as a reference bar. `null` when open-ended.
  final int? goal;
}

/// Count mode applies to exactly one amal that carries an amount. A simple
/// amal's amount is its tick, so its bars stay in rate mode.
_CountMode? _countModeFor(AmalRow? amal, List<DailyBreakdown> days) {
  if (amal == null || amal.isSimple) return null;
  final goal = amal.isCounted ? amal.target : null;
  var maxAmount = goal ?? 0;
  for (final day in days) {
    if (day.amount > maxAmount) maxAmount = day.amount;
  }
  return _CountMode(maxAmount: maxAmount <= 0 ? 1 : maxAmount, goal: goal);
}

class _ChartBody extends StatelessWidget {
  const _ChartBody({
    required this.breakdown,
    required this.focusedAmal,
    required this.maxBarHeight,
    required this.showLabels,
    required this.locale,
    this.width,
  });

  final List<DailyBreakdown> breakdown;
  final AmalRow? focusedAmal;
  final double maxBarHeight;
  final bool showLabels;
  final String locale;
  final double? width;

  @override
  Widget build(BuildContext context) {
    final count = _countModeFor(focusedAmal, breakdown);
    Widget bars = _BarGroup(
      breakdown: breakdown,
      count: count,
      maxBarHeight: maxBarHeight,
      showLabels: showLabels,
      locale: locale,
      width: width,
    );
    if (width != null) {
      bars = SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: bars,
      );
    }
    if (count == null) return bars;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(child: bars),
        _CountReadout(breakdown: breakdown, locale: locale),
      ],
    );
  }
}

/// Total / Avg / Best for the period on screen. The average divides by days
/// elapsed, not by the length of the period — a Wednesday average over seven
/// days would be wrong by construction and would sink further all week.
class _CountReadout extends StatelessWidget {
  const _CountReadout({required this.breakdown, required this.locale});

  final List<DailyBreakdown> breakdown;
  final String locale;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l = AppLocalizations.of(context);

    var total = 0;
    var elapsed = breakdown.length;
    DailyBreakdown? best;
    for (var i = 0; i < breakdown.length; i++) {
      final day = breakdown[i];
      total += day.amount;
      if (day.isToday) elapsed = i + 1;
      if (best == null || day.amount > best.amount) best = day;
    }
    final avg = elapsed > 0 ? total / elapsed : 0.0;

    final style = theme.textTheme.labelSmall?.copyWith(
      color: theme.colorScheme.onSurfaceVariant,
    );
    return Container(
      height: _kReadoutHeight,
      alignment: AlignmentDirectional.center,
      margin: const EdgeInsetsDirectional.only(top: 8),
      padding: const EdgeInsetsDirectional.only(top: 8),
      decoration: BoxDecoration(
        border: BorderDirectional(
          top: BorderSide(color: theme.colorScheme.outlineVariant),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(l.statsCountTotal(lnum(context, total)), style: style),
          Text(l.statsCountAvg(ldec(context, avg)), style: style),
          if (best != null && best.amount > 0)
            Flexible(
              child: Text(
                l.statsCountBest(
                  lnum(context, best.amount),
                  localizeDigits(
                    context,
                    safeDateFormat(
                      breakdown.length <= 7 ? 'E' : 'MMMd',
                      locale,
                    ).format(best.date),
                  ),
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: style,
              ),
            ),
        ],
      ),
    );
  }
}

class _BarGroup extends StatelessWidget {
  const _BarGroup({
    required this.breakdown,
    required this.count,
    required this.maxBarHeight,
    required this.showLabels,
    required this.locale,
    this.width,
  });

  final List<DailyBreakdown> breakdown;
  final _CountMode? count;
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
                    count: count,
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
    required this.count,
    required this.maxBarHeight,
    required this.showLabel,
    required this.showDayLabel,
    required this.locale,
    required this.isWeekView,
  });

  final DailyBreakdown day;
  final _CountMode? count;
  final double maxBarHeight;
  final bool showLabel;
  final bool showDayLabel;
  final String locale;
  final bool isWeekView;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final count = this.count;

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
        if (count == null)
          ..._rateBar(context, theme)
        else
          _countBar(context, theme, count),
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

  Widget _bar(ThemeData theme, double height) => Container(
    height: height,
    margin: const EdgeInsetsDirectional.symmetric(horizontal: 1.5),
    decoration: BoxDecoration(
      color: theme.colorScheme.primary,
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(math.min(_kBarRadius, height / 3)),
      ),
    ),
  );

  List<Widget> _rateBar(BuildContext context, ThemeData theme) {
    final rate = day.rate.clamp(0.0, 1.0);
    final pct = (rate * 100).round();
    final barHeight = rate <= 0
        ? 0.0
        : _snapToDevicePixels(
            (rate * maxBarHeight).clamp(_kMinBarHeight, maxBarHeight),
            MediaQuery.devicePixelRatioOf(context),
          );
    return [
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
      if (barHeight > 0) _bar(theme, barHeight),
    ];
  }

  Widget _countBar(BuildContext context, ThemeData theme, _CountMode count) {
    final dpr = MediaQuery.devicePixelRatioOf(context);
    double heightOf(int value) => value <= 0
        ? 0
        : _snapToDevicePixels(
            (value / count.maxAmount * maxBarHeight).clamp(
              _kMinBarHeight,
              maxBarHeight,
            ),
            dpr,
          );

    final barHeight = heightOf(day.amount);
    final goalHeight = count.goal == null ? 0.0 : heightOf(count.goal!);

    return SizedBox(
      height: maxBarHeight + (showLabel ? _kCountLabelHeight : 0),
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          if (goalHeight > 0)
            Container(
              height: goalHeight,
              margin: const EdgeInsetsDirectional.symmetric(horizontal: 1.5),
              decoration: BoxDecoration(
                color: theme.colorScheme.surfaceContainerHighest,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(_kBarRadius),
                ),
              ),
            ),
          if (barHeight > 0) _bar(theme, barHeight),
          if (showLabel && day.amount > 0)
            PositionedDirectional(
              start: 0,
              end: 0,
              bottom: barHeight,
              height: _kCountLabelHeight,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  lnum(context, day.amount),
                  maxLines: 1,
                  softWrap: false,
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                    fontSize: 9,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
