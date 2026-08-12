import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../app/providers.dart';
import '../../../data/db/database.dart';
import '../../../domain/utils/localized_number.dart';
import '../../../l10n/app_localizations.dart';
import '../challenge_providers.dart';

/// Asks what to do about a challenge whose window closed unmet. Neutral
/// wording by design — a missed goal is not a defeat.
Future<void> showExpiryPrompt(
  BuildContext context,
  WidgetRef ref,
  ChallengeRow row,
  int progress,
) async {
  final l = AppLocalizations.of(context);
  final repo = ref.read(challengeRepositoryProvider);
  final today = ref.read(currentMuhasabaDateProvider);

  final action = await showDialog<String>(
    context: context,
    builder: (ctx) => AlertDialog(
      title: Text(l.challengeExpiredTitle),
      content: Text(
        l.challengeExpiredBody(
          row.title,
          lnum(ctx, progress),
          lnum(ctx, row.target),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(ctx, 'archive'),
          child: Text(l.challengeArchive),
        ),
        TextButton(
          onPressed: () => Navigator.pop(ctx, 'restart'),
          child: Text(l.challengeRestart),
        ),
        FilledButton(
          onPressed: () => Navigator.pop(ctx, 'extend'),
          child: Text(l.challengeExtend),
        ),
      ],
    ),
  );
  if (action == null) return;

  switch (action) {
    case 'extend':
      await repo.extend(row, today.add(const Duration(days: 7)));
    case 'restart':
      await repo.markEnded(row.id);
      await repo.create(
        title: row.title,
        icon: row.icon,
        mode: row.mode,
        target: row.target,
        stepSize: row.stepSize,
        unit: row.unit,
        startDate: today,
        endExclusive: row.endExclusive == null
            ? null
            : today.add(
                Duration(
                  days: row.endExclusive!.difference(row.startDate).inDays,
                ),
              ),
      );
    case 'archive':
      await repo.markEnded(row.id);
  }

  await refreshChallengeNudges(ref);

  FirebaseAnalytics.instance.logEvent(
    name: 'challenge_expiry_action',
    parameters: {'action': action},
  );
}
