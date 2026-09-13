import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../../domain/services/enhanced_stats_service.dart';
import '../../../l10n/app_localizations.dart';
import 'option_breakdown_card.dart';

/// Swipeable row of [OptionBreakdownCard]s, one per option set with data in
/// the current filter. Used only when there are 2 or more sets — a single
/// set renders as one plain full-width card instead, with no header or dots.
class OptionBreakdownCarousel extends StatefulWidget {
  const OptionBreakdownCarousel({
    super.key,
    required this.breakdowns,
    required this.expanded,
    required this.onToggle,
  });

  final List<OptionBreakdown> breakdowns;

  // Shared across every page, not per-card: PageView gives all pages in the
  // carousel the same height, so a per-card toggle would leave a collapsed
  // page sized to whatever the expanded page needs.
  final bool expanded;
  final VoidCallback onToggle;

  @override
  State<OptionBreakdownCarousel> createState() =>
      _OptionBreakdownCarouselState();
}

class _OptionBreakdownCarouselState extends State<OptionBreakdownCarousel> {
  static const double _viewportFraction = 0.88;
  static const double _pageGap = 12;
  static const double _activeDotWidth = 16;
  static const double _dotHeight = 6;
  static const double _dotSpacing = 3;

  late final PageController _controller = PageController(
    viewportFraction: _viewportFraction,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  int _activePage(int pageCount) {
    if (!_controller.hasClients) return 0;
    final page = _controller.page;
    return (page?.round() ?? 0).clamp(0, pageCount - 1);
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final breakdowns = widget.breakdowns;
    final height = breakdowns
        .map(
          (b) => OptionBreakdownCard.estimateHeight(
            context,
            b,
            expanded: widget.expanded,
          ),
        )
        .reduce(math.max);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                l.optionBreakdownSectionTitle,
                style: theme.textTheme.titleSmall,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(width: 8),
            Text(
              l.optionBreakdownSwipeHint(breakdowns.length),
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.outline,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: height,
          child: PageView.builder(
            controller: _controller,
            padEnds: false,
            itemCount: breakdowns.length,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsetsDirectional.only(
                end: index == breakdowns.length - 1 ? 0 : _pageGap,
              ),
              child: OptionBreakdownCard(
                breakdown: breakdowns[index],
                expanded: widget.expanded,
                onToggle: widget.onToggle,
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        AnimatedBuilder(
          animation: _controller,
          builder: (context, _) {
            final active = _activePage(breakdowns.length);
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (var i = 0; i < breakdowns.length; i++)
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 150),
                    margin: const EdgeInsetsDirectional.symmetric(
                      horizontal: _dotSpacing,
                    ),
                    width: i == active ? _activeDotWidth : _dotHeight,
                    height: _dotHeight,
                    decoration: BoxDecoration(
                      color: i == active
                          ? theme.colorScheme.primary
                          : theme.colorScheme.outline,
                      borderRadius: BorderRadius.circular(_dotHeight / 2),
                    ),
                  ),
              ],
            );
          },
        ),
      ],
    );
  }
}
