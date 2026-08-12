import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app/providers.dart';
import 'spotlight_overlay.dart';
import 'tutorial_anchors.dart';
import 'tutorial_step.dart';

/// Guards against a second tour stacking on top of a running one — a
/// double-tap on the Settings row would otherwise insert two overlays.
///
/// Claimed synchronously, before either runner's first `await`: callers fire
/// from post-frame callbacks, so two frames can otherwise both get past the
/// check while the first is still reading the seen flag.
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

List<TutorialStep> _challengeSteps() => [
  TutorialStep(
    anchor: tutorialChallengeCardKey,
    gesture: GestureKind.tap,
    title: (l) => l.tutorialChallengeLogTitle,
    body: (l) => l.tutorialChallengeLogBody,
  ),
  TutorialStep(
    anchor: tutorialChallengeCardKey,
    gesture: GestureKind.doubleTap,
    title: (l) => l.tutorialChallengeOpenTitle,
    body: (l) => l.tutorialChallengeOpenBody,
  ),
  TutorialStep(
    anchor: tutorialChallengeCardKey,
    gesture: GestureKind.longPress,
    title: (l) => l.tutorialReorderTitle,
    body: (l) => l.tutorialReorderBody,
  ),
  TutorialStep(
    anchor: tutorialChallengeCardKey,
    gesture: GestureKind.swipe,
    title: (l) => l.tutorialRemoveTitle,
    body: (l) => l.tutorialChallengeDeleteBody,
  ),
  TutorialStep(
    anchor: tutorialChallengeStepperKey,
    gesture: GestureKind.tap,
    title: (l) => l.tutorialChallengeAmountTitle,
    body: (l) => l.tutorialChallengeAmountBody,
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
  _running = true;
  try {
    final repo = ref.read(settingsRepositoryProvider);
    if (!force && await repo.getTutorialSeen()) return;
    if (!context.mounted) return;

    final steps = _allSteps().where((s) => s.isResolvable).toList();
    if (steps.isEmpty) return;

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

/// Bumped when the Challenge tour should be offered again. `ChallengeScreen`
/// checks the seen flag once per epoch, so Settings can re-arm a tour whose
/// screen State survives in the shell's `IndexedStack`.
int challengeTourEpoch = 0;

void rearmChallengeTutorial() => challengeTourEpoch++;

/// Runs the Challenge tour if it hasn't been seen, or unconditionally when
/// [force]. Returns without doing anything when no anchor resolves — the case
/// on an empty Challenge list.
Future<void> runChallengeTutorial(
  BuildContext context,
  WidgetRef ref, {
  required String source,
  bool force = false,
}) async {
  if (_running) return;
  _running = true;
  try {
    final repo = ref.read(settingsRepositoryProvider);
    if (!force && await repo.getChallengeTutorialSeen()) return;
    if (!context.mounted) return;

    final steps = _challengeSteps().where((s) => s.isResolvable).toList();
    if (steps.isEmpty) return;

    FirebaseAnalytics.instance.logEvent(
      name: 'challenge_tutorial_started',
      parameters: {'source': source, 'steps': steps.length},
    );

    final skippedAt = await showTutorial(context, steps);
    await repo.setChallengeTutorialSeen(true);

    FirebaseAnalytics.instance.logEvent(
      name: skippedAt == null
          ? 'challenge_tutorial_completed'
          : 'challenge_tutorial_skipped',
      parameters: skippedAt == null
          ? {'steps': steps.length}
          : {'at_step': skippedAt},
    );
  } finally {
    _running = false;
  }
}
