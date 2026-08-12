import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../l10n/app_localizations.dart';
import 'tutorial_step.dart';
import 'widgets/gesture_hint.dart';

/// Runs the coach-mark tour. Completes with `null` when the user finishes it,
/// or with the zero-based index they bailed out on.
Future<int?> showTutorial(
  BuildContext context,
  List<TutorialStep> steps,
) async {
  if (steps.isEmpty) return null;
  final overlay = Navigator.of(context, rootNavigator: true).overlay;
  if (overlay == null) return null;

  final completer = Completer<int?>();
  late OverlayEntry entry;
  entry = OverlayEntry(
    builder: (_) => _TutorialTour(
      steps: steps,
      onFinish: (skippedAt) {
        entry.remove();
        if (!completer.isCompleted) completer.complete(skippedAt);
      },
    ),
  );
  overlay.insert(entry);
  return completer.future;
}

class _TutorialTour extends StatefulWidget {
  const _TutorialTour({required this.steps, required this.onFinish});

  final List<TutorialStep> steps;
  final ValueChanged<int?> onFinish;

  @override
  State<_TutorialTour> createState() => _TutorialTourState();
}

class _TutorialTourState extends State<_TutorialTour> {
  static const _cardEstimatedHeight = 190.0;
  static const _holeInset = 4.0;
  static const _holeRadius = 16.0;

  int _i = 0;
  Rect? _rect;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _focus());
  }

  Future<void> _focus() async {
    final ctx = widget.steps[_i].anchor.currentContext;
    if (ctx == null) {
      _next();
      return;
    }
    // The app-bar button has no Scrollable ancestor; ensureVisible would
    // assert on it.
    if (Scrollable.maybeOf(ctx) != null) {
      await Scrollable.ensureVisible(
        ctx,
        duration: const Duration(milliseconds: 250),
        alignment: 0.5,
      );
    }
    if (!mounted || !ctx.mounted) return;
    final box = ctx.findRenderObject();
    if (box is! RenderBox || !box.hasSize) {
      _next();
      return;
    }
    setState(() => _rect = box.localToGlobal(Offset.zero) & box.size);
  }

  void _next() {
    if (_i >= widget.steps.length - 1) {
      widget.onFinish(null);
      return;
    }
    setState(() {
      _i++;
      _rect = null;
    });
    WidgetsBinding.instance.addPostFrameCallback((_) => _focus());
  }

  void _skip() => widget.onFinish(_i);

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final size = MediaQuery.sizeOf(context);
    final rect = _rect;
    final step = widget.steps[_i];

    final dragRoom = step.gesture == GestureKind.longPress
        ? GestureHint.dragTravel
        : 0.0;
    final hole = rect == null
        ? null
        : Rect.fromLTRB(
            rect.left - _holeInset,
            rect.top - _holeInset,
            rect.right + _holeInset,
            rect.bottom + _holeInset + dragRoom,
          );

    final below = (hole?.bottom ?? 0) + 16;
    final fitsBelow = below + _cardEstimatedHeight < size.height - 24;
    final cardTop = hole == null
        ? size.height / 2 - _cardEstimatedHeight / 2
        : fitsBelow
        ? below
        : math.max(
            MediaQuery.paddingOf(context).top + 12,
            hole.top - _cardEstimatedHeight - 16,
          );

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop) _skip();
      },
      child: Material(
        type: MaterialType.transparency,
        child: Stack(
          children: [
            // Scrim. Absorbs taps so a stray tap can't reach the app or
            // dismiss a six-step tour by accident.
            Positioned.fill(
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {},
                child: CustomPaint(
                  painter: _SpotlightPainter(
                    hole: hole,
                    radius: _holeRadius,
                    color: Colors.black.withValues(alpha: 0.72),
                  ),
                ),
              ),
            ),
            if (rect != null)
              Positioned(
                left: hole!.center.dx - GestureHint.size / 2,
                top: rect.center.dy - GestureHint.size / 2,
                child: GestureHint(
                  key: ValueKey(_i),
                  kind: step.gesture,
                  targetSize: rect.size,
                ),
              ),
            PositionedDirectional(
              start: 16,
              end: 16,
              top: cardTop,
              child: _CaptionCard(
                title: step.title(l),
                body: step.body(l),
                index: _i,
                total: widget.steps.length,
                skipLabel: l.tutorialSkip,
                nextLabel: _i == widget.steps.length - 1
                    ? l.tutorialDone
                    : l.tutorialNext,
                onSkip: _skip,
                onNext: _next,
                color: theme.colorScheme,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SpotlightPainter extends CustomPainter {
  const _SpotlightPainter({
    required this.hole,
    required this.radius,
    required this.color,
  });

  final Rect? hole;
  final double radius;
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;
    final screen = Path()..addRect(Offset.zero & size);
    if (hole == null) {
      canvas.drawPath(screen, paint);
      return;
    }
    final cut = Path()
      ..addRRect(RRect.fromRectAndRadius(hole!, Radius.circular(radius)));
    canvas.drawPath(Path.combine(PathOperation.difference, screen, cut), paint);
  }

  @override
  bool shouldRepaint(_SpotlightPainter old) =>
      old.hole != hole || old.color != color || old.radius != radius;
}

class _CaptionCard extends StatelessWidget {
  const _CaptionCard({
    required this.title,
    required this.body,
    required this.index,
    required this.total,
    required this.skipLabel,
    required this.nextLabel,
    required this.onSkip,
    required this.onNext,
    required this.color,
  });

  final String title;
  final String body;
  final int index;
  final int total;
  final String skipLabel;
  final String nextLabel;
  final VoidCallback onSkip;
  final VoidCallback onNext;
  final ColorScheme color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsetsDirectional.all(16),
      decoration: BoxDecoration(
        color: color.surface,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(title, style: theme.textTheme.titleMedium),
          const SizedBox(height: 6),
          Text(
            body,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: color.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 14),
          Row(
            children: [
              for (var i = 0; i < total; i++)
                Padding(
                  padding: const EdgeInsetsDirectional.only(end: 5),
                  child: Container(
                    width: i == index ? 16 : 6,
                    height: 6,
                    decoration: BoxDecoration(
                      color: i == index ? color.primary : color.outlineVariant,
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                ),
              const Spacer(),
              TextButton(onPressed: onSkip, child: Text(skipLabel)),
              const SizedBox(width: 4),
              FilledButton(onPressed: onNext, child: Text(nextLabel)),
            ],
          ),
        ],
      ),
    );
  }
}
