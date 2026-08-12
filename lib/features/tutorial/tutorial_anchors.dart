import 'package:flutter/widgets.dart';

// Anchors the tutorial spotlight measures. Each must be attached at a call
// site that renders exactly once — a GlobalKey held by two mounted widgets
// at the same time is a framework error.

/// The first amal row in render order, in whichever Today view is mounted.
final tutorialFirstRowKey = GlobalKey();

/// The count stepper on the first amal whose target is above one. Often
/// absent: no seeded amal has a target above one.
final tutorialStepperKey = GlobalKey();

/// The grouped/flat toggle in the Today app bar.
final tutorialViewToggleKey = GlobalKey();

/// The first challenge card in render order — the active section when it has
/// any, otherwise the first past card.
final tutorialChallengeCardKey = GlobalKey();

/// The stepper on the first count-mode challenge. Absent when every challenge
/// counts days.
final tutorialChallengeStepperKey = GlobalKey();
