import 'package:flutter/material.dart';

import '../tutorial_step.dart';

/// A looping hand-shaped hint drawn over the spotlit target.
///
/// The swipe variant travels toward the start edge, matching the row's
/// `DismissDirection.endToStart` in both text directions. The long-press
/// variant holds, then drags an outline of the target downward.
class GestureHint extends StatefulWidget {
  const GestureHint({super.key, required this.kind, this.targetSize});

  final GestureKind kind;

  /// Size of the spotlit widget. Only used by [GestureKind.longPress], which
  /// drags an outline of the target to show where it lands.
  final Size? targetSize;

  static const double size = 40;

  /// How far the reorder drag travels. The spotlight hole is extended by this
  /// much so the outline lands inside it.
  static const double dragTravel = 30;

  @override
  State<GestureHint> createState() => _GestureHintState();
}

class _GestureHintState extends State<GestureHint>
    with SingleTickerProviderStateMixin {
  late final AnimationController _c = AnimationController(
    vsync: this,
    duration: switch (widget.kind) {
      GestureKind.tap => const Duration(milliseconds: 1200),
      GestureKind.doubleTap => const Duration(milliseconds: 1600),
      GestureKind.longPress => const Duration(milliseconds: 2200),
      GestureKind.swipe => const Duration(milliseconds: 1900),
    },
  );

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (MediaQuery.disableAnimationsOf(context)) {
      _c.stop();
      _c.value = 0;
    } else if (!_c.isAnimating) {
      _c.repeat();
    }
  }

  @override
  void dispose() {
    _c.dispose();
    super.dispose();
  }

  double _pulse(double t) => 1 - 0.28 * (1 - (2 * t - 1).abs());

  double _doublePulse(double t) {
    if (t < 0.15) return 1 - 0.3 * (t / 0.15);
    if (t < 0.30) return 0.7 + 0.3 * ((t - 0.15) / 0.15);
    if (t < 0.45) return 1 - 0.3 * ((t - 0.30) / 0.15);
    if (t < 0.60) return 0.7 + 0.3 * ((t - 0.45) / 0.15);
    return 1;
  }

  double _hold(double t) {
    if (t < 0.18) return 1 - 0.25 * (t / 0.18);
    return 0.75;
  }

  double _dragDy(double t) {
    if (t < 0.30) return 0;
    if (t < 0.62) {
      return GestureHint.dragTravel *
          Curves.easeInOut.transform((t - 0.30) / 0.32);
    }
    return GestureHint.dragTravel;
  }

  // No fade-in: reduced motion parks the controller at t=0, so the resting
  // frame has to be fully opaque.
  double _dragOpacity(double t) => t < 0.80 ? 1 : (1 - t) / 0.20;

  double _dragRing(double t) => t < 0.30 ? t / 0.30 : 1;

  double _swipeDx(double t) =>
      54 - 100 * Curves.easeInOut.transform((t.clamp(0.0, 0.75)) / 0.75);

  double _swipeOpacity(double t) {
    if (t < 0.15) return t / 0.15;
    if (t > 0.85) return (1 - t) / 0.15;
    return 1;
  }

  @override
  Widget build(BuildContext context) {
    // A parked controller sits at t=0, which is a resting frame for some
    // curves and not others — the swipe variant starts transparent and
    // offset. Draw one static dot instead of trusting every curve's origin.
    if (MediaQuery.disableAnimationsOf(context)) {
      return IgnorePointer(child: _dot(1));
    }
    final rtl = Directionality.of(context) == TextDirection.rtl;
    return IgnorePointer(
      child: AnimatedBuilder(
        animation: _c,
        builder: (context, _) {
          final t = _c.value;
          return switch (widget.kind) {
            GestureKind.tap => _dot(_pulse(t)),
            GestureKind.doubleTap => _dot(_doublePulse(t)),
            GestureKind.longPress => Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                if (widget.targetSize != null)
                  _travellingOutline(_dragDy(t), _dragOpacity(t)),
                _ring(_dragRing(t)),
                Transform.translate(
                  offset: Offset(0, _dragDy(t)),
                  child: Opacity(
                    opacity: _dragOpacity(t),
                    child: _dot(_hold(t)),
                  ),
                ),
              ],
            ),
            GestureKind.swipe => Transform.translate(
              offset: Offset(_swipeDx(t) * (rtl ? -1 : 1), 0),
              child: Opacity(opacity: _swipeOpacity(t), child: _dot(1)),
            ),
          };
        },
      ),
    );
  }

  Widget _dot(double scale) {
    final c = Theme.of(context).colorScheme.primary;
    return Transform.scale(
      scale: scale,
      child: Container(
        width: GestureHint.size,
        height: GestureHint.size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: c.withValues(alpha: 0.25),
          border: Border.all(color: c, width: 2.5),
        ),
      ),
    );
  }

  Widget _travellingOutline(double dy, double opacity) {
    final size = widget.targetSize!;
    return Positioned(
      left: -(size.width - GestureHint.size) / 2,
      top: -(size.height - GestureHint.size) / 2 + dy,
      width: size.width,
      height: size.height,
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(
              context,
            ).colorScheme.primary.withValues(alpha: opacity * 0.9),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }

  Widget _ring(double t) {
    final c = Theme.of(context).colorScheme.primary;
    return Opacity(
      opacity: (1 - t).clamp(0.0, 1.0),
      child: Transform.scale(
        scale: 0.75 + 1.4 * t,
        child: Container(
          width: GestureHint.size,
          height: GestureHint.size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: c, width: 2),
          ),
        ),
      ),
    );
  }
}
