import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app/providers.dart';
import 'spotlight_overlay.dart';
import 'tutorial_anchors.dart';
import 'tutorial_step.dart';

/// Guards against a second tour stacking on top of a running one — a
/// double-tap on the Settings row would otherwise insert two overlays.
bool _running = false;

/// Every step the tour can show, in order. Steps whose anchor isn't mounted
/// are dropped before the tour starts — no seeded amal has a target above
/// one, so the stepper step is normally absent on a first run.
List<TutorialStep> _allSteps() => [
  TutorialStep(
    anchor: tutorialFirstRowKey,
    gesture: GestureKind.tap,
    title: (l) => l.tutorialTapTitle,
    body: (l) => l.tutorialTapBody,
  ),
  TutorialStep(
    anchor: tutorialFirstRowKey,
    gesture: GestureKind.doubleTap,
    title: (l) => l.tutorialEditTitle,
    body: (l) => l.tutorialEditBody,
  ),
  TutorialStep(
    anchor: tutorialFirstRowKey,
    gesture: GestureKind.longPress,
    title: (l) => l.tutorialReorderTitle,
    body: (l) => l.tutorialReorderBody,
  ),
  TutorialStep(
    anchor: tutorialFirstRowKey,
    gesture: GestureKind.swipe,
    title: (l) => l.tutorialRemoveTitle,
    body: (l) => l.tutorialRemoveBody,
  ),
  TutorialStep(
    anchor: tutorialStepperKey,
    gesture: GestureKind.tap,
    title: (l) => l.tutorialCountTitle,
    body: (l) => l.tutorialCountBody,
  ),
  TutorialStep(
    anchor: tutorialViewToggleKey,
    gesture: GestureKind.tap,
    title: (l) => l.tutorialViewTitle,
    body: (l) => l.tutorialViewBody,
  ),
];

/// Runs the tour if it hasn't been seen, or unconditionally when [force].
/// Returns without doing anything when no anchor resolves — which is the
/// case on an empty Today list.
Future<void> runTutorial(
  BuildContext context,
  WidgetRef ref, {
  required String source,
  bool force = false,
}) async {
  if (_running) return;
  final repo = ref.read(settingsRepositoryProvider);
  if (!force && await repo.getTutorialSeen()) return;
  if (!context.mounted) return;

  final steps = _allSteps().where((s) => s.isResolvable).toList();
  if (steps.isEmpty) return;

  _running = true;
  try {
    FirebaseAnalytics.instance.logEvent(
      name: 'tutorial_started',
      parameters: {'source': source, 'steps': steps.length},
    );

    final skippedAt = await showTutorial(context, steps);
    await repo.setTutorialSeen(true);

    FirebaseAnalytics.instance.logEvent(
      name: skippedAt == null ? 'tutorial_completed' : 'tutorial_skipped',
      parameters: skippedAt == null
          ? {'steps': steps.length}
          : {'at_step': skippedAt},
    );
  } finally {
    _running = false;
  }
}
