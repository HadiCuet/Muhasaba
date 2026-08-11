import 'package:flutter/material.dart';

import '../tutorial_step.dart';

/// A looping hand-shaped hint drawn over the spotlit target.
///
/// The swipe variant travels toward the start edge, matching the row's
/// `DismissDirection.endToStart` in both text directions.
class GestureHint extends StatefulWidget {
  const GestureHint({super.key, required this.kind});

  final GestureKind kind;

  static const double size = 40;

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
      GestureKind.longPress => const Duration(milliseconds: 1500),
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

  double _hold(double t) => t < 0.3 ? 1 - 0.25 * (t / 0.3) : 0.75;

  double _swipeDx(double t) =>
      54 - 100 * Curves.easeInOut.transform((t.clamp(0.0, 0.75)) / 0.75);

  double _swipeOpacity(double t) {
    if (t < 0.15) return t / 0.15;
    if (t > 0.85) return (1 - t) / 0.15;
    return 1;
  }

  @override
  Widget build(BuildContext context) {
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
              alignment: Alignment.center,
              children: [_ring(t), _dot(_hold(t))],
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
