import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app/providers.dart';
import '../../data/repositories/settings_repository.dart';
import '../../domain/models/support_prompt_state.dart';
import '../../l10n/app_localizations.dart';
import '../tutorial/tutorial_controller.dart';
import 'tip_sheet.dart';

const int kSupportPromptActiveDays = 30;
const int kSupportPromptMaxAsks = 3;

bool _shownThisSession = false;

/// Call right after a completion on Today. Shows the prompt on the 30th
/// active day, again 30 active days after each snooze, at most three times
/// ever and at most once per session.
Future<void> maybeShowSupportPrompt(
  BuildContext context,
  WidgetRef ref, {
  required DateTime completedDate,
}) async {
  if (_shownThisSession) return;
  if (completedDate != ref.read(currentMuhasabaDateProvider)) return;
  if (isTutorialRunning) return;
  if (!ref.read(tipServiceProvider).isSupportedPlatform) return;

  final repo = ref.read(settingsRepositoryProvider);
  final completions = ref.read(completionRepositoryProvider);
  final settings = await repo.get();
  final state = settings.supportPromptState;
  if (state == SupportPromptState.never || state == SupportPromptState.done) {
    return;
  }

  final activeDays = await completions.countActiveDays();
  final threshold = state == SupportPromptState.snoozed
      ? settings.supportSnoozedAtActiveDays + kSupportPromptActiveDays
      : kSupportPromptActiveDays;
  if (activeDays < threshold) return;
  if (!context.mounted) return;

  _shownThisSession = true;
  await _run(
    context,
    repo,
    ask: settings.supportAskCount + 1,
    activeDays: activeDays,
  );
}

/// Debug builds only: the real flow, from the Version row, whatever the
/// active-day count.
Future<void> showSupportPromptForDebug(
  BuildContext context,
  WidgetRef ref,
) async {
  final repo = ref.read(settingsRepositoryProvider);
  final completions = ref.read(completionRepositoryProvider);
  final settings = await repo.get();
  final activeDays = await completions.countActiveDays();
  if (!context.mounted) return;
  await _run(
    context,
    repo,
    ask: settings.supportAskCount + 1,
    activeDays: activeDays,
  );
}

enum _Choice { now, later, never, dismiss }

Future<void> _run(
  BuildContext context,
  SettingsRepository repo, {
  required int ask,
  required int activeDays,
}) async {
  await repo.setSupportAskCount(ask);
  FirebaseAnalytics.instance.logEvent(
    name: 'support_prompt_shown',
    parameters: {'ask': ask},
  );
  if (!context.mounted) return;

  final choice =
      await showModalBottomSheet<_Choice>(
        context: context,
        showDragHandle: true,
        useSafeArea: true,
        builder: (_) => const _PromptSheet(),
      ) ??
      _Choice.dismiss;
  FirebaseAnalytics.instance.logEvent(
    name: 'support_prompt_action',
    parameters: {'action': choice.name},
  );

  switch (choice) {
    case _Choice.now:
      if (context.mounted) {
        await showTipSheet(context, source: TipSheetSource.prompt);
      }
      await _snoozeUnlessDone(repo, ask: ask, activeDays: activeDays);
    case _Choice.later:
    case _Choice.dismiss:
      await _snoozeUnlessDone(repo, ask: ask, activeDays: activeDays);
    case _Choice.never:
      await repo.setSupportPromptState(SupportPromptState.never);
  }
}

// Re-reads: a tip inside "Support now" may already have written `done`.
Future<void> _snoozeUnlessDone(
  SettingsRepository repo, {
  required int ask,
  required int activeDays,
}) async {
  final settings = await repo.get();
  if (settings.supportPromptState == SupportPromptState.done) return;
  if (ask >= kSupportPromptMaxAsks) {
    await repo.setSupportPromptState(SupportPromptState.never);
    return;
  }
  await repo.snoozeSupportPrompt(activeDays: activeDays);
}

class _PromptSheet extends StatelessWidget {
  const _PromptSheet();

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final theme = Theme.of(context);
    return SafeArea(
      top: false,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(l.supportPromptTitle, style: theme.textTheme.headlineSmall),
            const SizedBox(height: 12),
            Text(
              l.supportPromptBody,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
                height: 1.4,
              ),
            ),
            const SizedBox(height: 20),
            FilledButton(
              onPressed: () => Navigator.of(context).pop(_Choice.now),
              child: Text(l.supportPromptNow),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(_Choice.later),
              child: Text(l.supportPromptLater),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(_Choice.never),
              style: TextButton.styleFrom(
                foregroundColor: theme.colorScheme.onSurfaceVariant,
              ),
              child: Text(l.supportPromptNever),
            ),
          ],
        ),
      ),
    );
  }
}
