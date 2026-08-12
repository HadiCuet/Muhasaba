import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

import '../../../app/theme.dart';
import '../../../app/widgets/stepper_field.dart';
import '../../../domain/models/challenge.dart';
import '../../../domain/services/challenge_pace.dart';
import '../../../domain/utils/localized_challenge_title.dart';
import '../../../domain/utils/localized_number.dart';
import '../../../l10n/app_localizations.dart';
import '../challenge_providers.dart';

/// One row in the Challenge list: emoji tile, title, progress line, bar,
/// pace chip, and the logging control.
class ChallengeCard extends StatelessWidget {
  const ChallengeCard({
    super.key,
    required this.view,
    required this.todayAmount,
    required this.onSetToday,
    required this.onTap,
    required this.onLogToday,
    required this.onDelete,
    this.stepperKey,
  });

  final ChallengeView view;
  final int todayAmount;
  final ValueChanged<int> onSetToday;

  /// Opens the detail screen.
  final VoidCallback onTap;

  /// Body tap on an active card: toggles the day, or adds one step.
  final VoidCallback onLogToday;

  /// Swipe-left. The parent shows the confirmation.
  final VoidCallback onDelete;

  /// Tutorial anchor for the logging control. Non-null on at most one card.
  final Key? stepperKey;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final row = view.row;
    final fraction = row.target == 0
        ? 0.0
        : (view.progress / row.target).clamp(0.0, 1.0);

    return Dismissible(
      key: ValueKey('challenge-${row.id}'),
      direction: DismissDirection.endToStart,
      confirmDismiss: (_) async {
        onDelete();
        return false; // The parent's dialog performs the removal.
      },
      background: const SizedBox.shrink(),
      secondaryBackground: Container(
        margin: const EdgeInsetsDirectional.only(bottom: 8),
        alignment: AlignmentDirectional.centerEnd,
        padding: const EdgeInsetsDirectional.only(end: 20),
        decoration: BoxDecoration(
          color: theme.colorScheme.errorContainer,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(
          Icons.delete_outline,
          color: theme.colorScheme.onErrorContainer,
        ),
      ),
      child: Card(
        margin: const EdgeInsetsDirectional.only(bottom: 8),
        // Inside the Card: it forces its own semantics container, so an
        // action attached outside lands on a separate, unlabelled node.
        child: Semantics(
          customSemanticsActions: {
            CustomSemanticsAction(label: l.challengeOpenDetailsAction): onTap,
          },
          child: InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: view.isPast ? onTap : onLogToday,
            onDoubleTap: onTap,
            child: Padding(
              padding: const EdgeInsetsDirectional.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(row.icon, style: const TextStyle(fontSize: 22)),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              localizedChallengeTitle(row.title, l),
                              style: theme.textTheme.titleMedium,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 2),
                            Text(
                              _progressLine(context, l),
                              style: theme.textTheme.bodySmall?.copyWith(
                                color: theme.colorScheme.onSurfaceVariant,
                              ),
                            ),
                          ],
                        ),
                      ),
                      if (row.status != ChallengeStatus.ended)
                        _control(context),
                    ],
                  ),
                  if (!view.isPast) ...[
                    const SizedBox(height: 10),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(99),
                      child: LinearProgressIndicator(
                        value: fraction,
                        minHeight: 7,
                        color:
                            view.pace.state == PaceState.behind ||
                                view.pace.state == PaceState.lastDay
                            ? theme.colorScheme.behind
                            : theme.colorScheme.primary,
                      ),
                    ),
                    const SizedBox(height: 8),
                    _PaceChip(pace: view.pace),
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _control(BuildContext context) {
    if (view.row.mode == ChallengeMode.days) {
      final logged = todayAmount > 0;
      return IconButton(
        iconSize: 32,
        icon: Icon(logged ? Icons.check_circle : Icons.circle_outlined),
        onPressed: onLogToday,
      );
    }
    return StepperField(
      key: stepperKey,
      value: todayAmount,
      step: view.row.stepSize,
      label: lnum(context, todayAmount),
      onChanged: onSetToday,
    );
  }

  String _progressLine(BuildContext context, AppLocalizations l) {
    final done = lnum(context, view.progress);
    final target = lnum(context, view.row.target);
    final base = switch (view.row.mode) {
      ChallengeMode.days => l.challengeProgressDays(done, target),
      ChallengeMode.count =>
        (view.row.unit?.isNotEmpty ?? false)
            ? l.challengeProgressCount(done, target, view.row.unit!)
            : l.challengeProgressPlain(done, target),
    };
    final sep = l.listSeparator;
    if (view.row.status == ChallengeStatus.completed) {
      return '$base$sep${l.challengeCompleted}';
    }
    if (view.row.status == ChallengeStatus.ended) {
      return '$base$sep${l.challengeEnded(done, target)}';
    }
    if (view.row.endExclusive == null) return base;
    return switch (view.pace.state) {
      PaceState.onTrack || PaceState.behind || PaceState.lastDay =>
        '$base$sep'
            '${localizeDigits(context, l.challengeDaysLeft(view.pace.daysLeft))}',
      _ => base,
    };
  }
}

class _PaceChip extends StatelessWidget {
  const _PaceChip({required this.pace});

  final ChallengePace pace;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final scheme = Theme.of(context).colorScheme;
    final rate = lnum(context, pace.requiredPerDay);

    final (label, bg, fg) = switch (pace.state) {
      PaceState.noDeadline => (
        l.challengeNoDeadline,
        scheme.surfaceContainerHighest,
        scheme.onSurfaceVariant,
      ),
      PaceState.onTrack => (
        l.challengeOnTrack(rate),
        scheme.primaryContainer,
        scheme.onPrimaryContainer,
      ),
      PaceState.behind => (
        l.challengeBehind(rate),
        scheme.behindContainer,
        scheme.onBehindContainer,
      ),
      PaceState.lastDay => (
        l.challengeLastDay(lnum(context, pace.remaining)),
        scheme.behindContainer,
        scheme.onBehindContainer,
      ),
      PaceState.reached => (
        l.challengeReached,
        scheme.primaryContainer,
        scheme.onPrimaryContainer,
      ),
      PaceState.expired => (
        l.challengeNoDeadline,
        scheme.surfaceContainerHighest,
        scheme.onSurfaceVariant,
      ),
    };

    return Container(
      padding: const EdgeInsetsDirectional.symmetric(
        horizontal: 8,
        vertical: 3,
      ),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(99),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.labelSmall?.copyWith(color: fg),
      ),
    );
  }
}
