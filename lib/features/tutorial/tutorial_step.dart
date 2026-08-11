import 'package:flutter/widgets.dart';

import '../../l10n/app_localizations.dart';

/// Which gesture a step teaches. Lives here rather than in the hint widget:
/// it describes the step, and the model must not depend on a widget file.
enum GestureKind { tap, doubleTap, longPress, swipe }

@immutable
class TutorialStep {
  const TutorialStep({
    required this.anchor,
    required this.gesture,
    required this.title,
    required this.body,
  });

  final GlobalKey anchor;
  final GestureKind gesture;
  final String Function(AppLocalizations l) title;
  final String Function(AppLocalizations l) body;

  /// Whether this step's target is currently mounted and laid out.
  bool get isResolvable {
    final ctx = anchor.currentContext;
    if (ctx == null) return false;
    final box = ctx.findRenderObject();
    return box is RenderBox && box.hasSize;
  }
}
