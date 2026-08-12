import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../app/providers.dart';
import '../../../l10n/app_localizations.dart';

/// Confirms and deletes. Returns true when the challenge was removed, so the
/// caller knows whether to pop.
Future<bool> confirmDeleteChallenge(
  BuildContext context,
  WidgetRef ref,
  int challengeId,
) async {
  final l = AppLocalizations.of(context);
  // Both resolved before the dialog: `ref.read` throws once the caller
  // unmounts, and a confirmed delete should still land.
  final repository = ref.read(challengeRepositoryProvider);
  final messenger = ScaffoldMessenger.of(context);
  final ok = await showDialog<bool>(
    context: context,
    builder: (ctx) => AlertDialog(
      title: Text(l.deleteChallenge),
      content: Text(l.deleteChallengeConfirm),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(ctx, false),
          child: Text(l.cancel),
        ),
        FilledButton(
          onPressed: () => Navigator.pop(ctx, true),
          child: Text(l.delete),
        ),
      ],
    ),
  );
  if (ok != true) return false;
  try {
    await repository.remove(challengeId);
  } catch (_) {
    messenger.showSnackBar(SnackBar(content: Text(l.genericError)));
    return false;
  }
  return true;
}
