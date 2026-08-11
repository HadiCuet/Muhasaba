import 'dart:math' as math;

/// How a challenge is tracking against its deadline.
enum PaceState {
  /// Target already met.
  reached,

  /// No deadline, so there is no pace to be behind.
  noDeadline,

  /// Final day and the target is not met.
  lastDay,

  /// More than one day's fair share behind schedule.
  behind,

  onTrack,

  /// Past the deadline with the target unmet.
  expired,
}

class ChallengePace {
  const ChallengePace({
    required this.state,
    required this.remaining,
    required this.daysLeft,
    required this.requiredPerDay,
  });

  final PaceState state;
  final int remaining;

  /// Whole days until the window closes. Zero when there is no deadline.
  final int daysLeft;

  /// What must be logged each remaining day to finish. Zero when there is no
  /// deadline or nothing is left.
  final int requiredPerDay;
}

/// Pure pace evaluation, shared by the cards, the detail screen and the
/// notification scheduler so all three can never disagree.
///
/// [today], [startDate] and [endExclusive] are date-only UTC-midnight values,
/// the convention used everywhere in this app (see `core/time/day_boundary.dart`).
ChallengePace computePace({
  required int target,
  required int progress,
  required DateTime startDate,
  required DateTime? endExclusive,
  required DateTime today,
}) {
  final remaining = math.max(0, target - progress);

  if (remaining == 0) {
    return const ChallengePace(
      state: PaceState.reached,
      remaining: 0,
      daysLeft: 0,
      requiredPerDay: 0,
    );
  }
  if (endExclusive == null) {
    return ChallengePace(
      state: PaceState.noDeadline,
      remaining: remaining,
      daysLeft: 0,
      requiredPerDay: 0,
    );
  }

  final daysLeft = endExclusive.difference(today).inDays;
  if (daysLeft <= 0) {
    return ChallengePace(
      state: PaceState.expired,
      remaining: remaining,
      daysLeft: 0,
      requiredPerDay: 0,
    );
  }

  final requiredPerDay = (remaining / daysLeft).ceil();
  if (daysLeft == 1) {
    return ChallengePace(
      state: PaceState.lastDay,
      remaining: remaining,
      daysLeft: 1,
      requiredPerDay: requiredPerDay,
    );
  }

  final totalDays = math.max(1, endExclusive.difference(startDate).inDays);
  final elapsed = today.difference(startDate).inDays.clamp(0, totalDays);
  final fairShare = target / totalDays;
  final expected = target * elapsed / totalDays;

  return ChallengePace(
    state: (expected - progress) > fairShare
        ? PaceState.behind
        : PaceState.onTrack,
    remaining: remaining,
    daysLeft: daysLeft,
    requiredPerDay: requiredPerDay,
  );
}
