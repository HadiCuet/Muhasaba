import 'package:flutter/material.dart';

import '../../../app/theme.dart';
import '../../../domain/models/challenge.dart';
import '../../../domain/services/challenge_pace.dart';
import '../../../domain/utils/localized_number.dart';
import '../../../l10n/app_localizations.dart';

/// Non-interactive rendering of the challenge the form currently describes,
/// using the same pace maths the real card uses.
class ChallengePreviewCard extends StatelessWidget {
  const ChallengePreviewCard({
    super.key,
    required this.icon,
    required this.title,
    required this.mode,
    required this.target,
    required this.unit,
    required this.startDate,
    required this.endExclusive,
    required this.today,
  });

  final String icon;
  final String title;
  final ChallengeMode mode;
  final int target;
  final String? unit;
  final DateTime startDate;
  final DateTime? endExclusive;
  final DateTime today;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final pace = computePace(
      target: target,
      progress: 0,
      startDate: startDate,
      endExclusive: endExclusive,
      today: today,
    );
    final zero = lnum(context, 0);
    final tgt = lnum(context, target);
    final line = switch (mode) {
      ChallengeMode.days => l.challengeProgressDays(zero, tgt),
      ChallengeMode.count =>
        (unit?.isNotEmpty ?? false)
            ? l.challengeProgressCount(zero, tgt, unit!)
            : l.challengeProgressPlain(zero, tgt),
    };
    final scheme = theme.colorScheme;

    return Container(
      padding: const EdgeInsetsDirectional.all(12),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(icon, style: const TextStyle(fontSize: 21)),
              const SizedBox(width: 11),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title.isEmpty ? l.newChallenge : title,
                      style: theme.textTheme.titleMedium,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      line,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(99),
            child: LinearProgressIndicator(
              value: 0,
              minHeight: 7,
              color:
                  pace.state == PaceState.behind ||
                      pace.state == PaceState.lastDay
                  ? scheme.behind
                  : scheme.primary,
            ),
          ),
          // `computePace` reports a zero target as `reached`, so a form the
          // user has not filled in yet would otherwise greet them with it.
          if (target > 0) ...[
            const SizedBox(height: 8),
            _paceChip(context, l, theme, pace),
          ],
        ],
      ),
    );
  }

  Widget _paceChip(
    BuildContext context,
    AppLocalizations l,
    ThemeData theme,
    ChallengePace pace,
  ) {
    final scheme = theme.colorScheme;
    final (chip, chipBg, chipFg) = switch (pace.state) {
      PaceState.noDeadline || PaceState.expired => (
        l.challengeNoDeadline,
        scheme.surfaceContainerHighest,
        scheme.onSurfaceVariant,
      ),
      PaceState.reached => (
        l.challengeReached,
        scheme.primaryContainer,
        scheme.onPrimaryContainer,
      ),
      PaceState.behind => (
        l.challengeBehind(lnum(context, pace.requiredPerDay)),
        scheme.behindContainer,
        scheme.onBehindContainer,
      ),
      PaceState.lastDay => (
        l.challengeLastDay(lnum(context, pace.remaining)),
        scheme.behindContainer,
        scheme.onBehindContainer,
      ),
      PaceState.onTrack => (
        l.challengeOnTrack(lnum(context, pace.requiredPerDay)),
        scheme.primaryContainer,
        scheme.onPrimaryContainer,
      ),
    };

    return Container(
      padding: const EdgeInsetsDirectional.symmetric(
        horizontal: 8,
        vertical: 3,
      ),
      decoration: BoxDecoration(
        color: chipBg,
        borderRadius: BorderRadius.circular(99),
      ),
      child: Text(
        chip,
        style: theme.textTheme.labelSmall?.copyWith(color: chipFg),
      ),
    );
  }
}
