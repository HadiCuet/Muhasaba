import 'package:flutter/widgets.dart';

/// Caps a screen's body to a centered column so the single-column phone layout
/// doesn't stretch edge-to-edge on tablets and large screens. A no-op on phones,
/// where the available width is already below [maxWidth]. Wrap the scrolling
/// body (not app bars / bottom nav / FAB, which stay screen-anchored).
class MaxWidthBody extends StatelessWidget {
  const MaxWidthBody({super.key, required this.child, this.maxWidth = 640});

  final Widget child;
  final double maxWidth;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: maxWidth),
        child: child,
      ),
    );
  }
}
