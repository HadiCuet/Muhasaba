import 'package:flutter/material.dart';

/// Lift styling for a dragged row: shadow and a subtle scale ease in/out with
/// the drag animation so releasing settles smoothly instead of snapping.
///
/// Shared so the Today and Challenge lists cannot drift apart in feel.
Widget reorderProxyDecorator(
  Widget child,
  int index,
  Animation<double> animation,
) {
  return AnimatedBuilder(
    animation: animation,
    builder: (context, child) {
      final t = Curves.easeInOut.transform(animation.value);
      return Transform.scale(
        scale: 1 + 0.02 * t,
        child: Material(
          elevation: 6 * t,
          shadowColor: Colors.black54,
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(12),
          child: child,
        ),
      );
    },
    child: child,
  );
}
