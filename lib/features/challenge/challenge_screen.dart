import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/providers.dart';
import '../../app/widgets/max_width_body.dart';
import '../../domain/models/challenge.dart';
import '../../domain/services/challenge_pace.dart';
import '../../l10n/app_localizations.dart';
import 'challenge_providers.dart';
import 'widgets/challenge_card.dart';
import 'widgets/expiry_prompt.dart';

class ChallengeScreen extends ConsumerStatefulWidget {
  const ChallengeScreen({super.key});

  @override
  ConsumerState<ChallengeScreen> createState() => _ChallengeScreenState();
}

class _ChallengeScreenState extends ConsumerState<ChallengeScreen> {
  bool _promptShown = false;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final viewsAsync = ref.watch(challengeViewsProvider);
    final todayAmounts = ref.watch(todayAmountsProvider).value ?? const {};
    final today = ref.watch(currentMuhasabaDateProvider);

    return Scaffold(
      appBar: AppBar(title: Text(l.tabChallenge)),
      body: MaxWidthBody(
        child: viewsAsync.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (e, _) => Center(child: Text(l.errorGeneric(e.toString()))),
          data: (views) {
            _maybePrompt(views);
            if (views.isEmpty) return const _EmptyState();
            final active = views.where((v) => !v.isPast).toList();
            final past = views.where((v) => v.isPast).toList();
            return ListView(
              padding: const EdgeInsetsDirectional.fromSTEB(12, 12, 12, 88),
              children: [
                if (active.isNotEmpty) _SectionHeader(l.challengesActive),
                for (final v in active)
                  ChallengeCard(
                    view: v,
                    todayAmount: todayAmounts[v.row.id] ?? 0,
                    onSetToday: (amount) => _setToday(ref, v, today, amount),
                    onTap: () => context.push('/challenge/${v.row.id}'),
                  ),
                if (past.isNotEmpty) _SectionHeader(l.challengesPast),
                for (final v in past)
                  ChallengeCard(
                    view: v,
                    todayAmount: todayAmounts[v.row.id] ?? 0,
                    onSetToday: (amount) => _setToday(ref, v, today, amount),
                    onTap: () => context.push('/challenge/${v.row.id}'),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }

  void _maybePrompt(List<ChallengeView> views) {
    if (_promptShown) return;
    final expired = views.where(
      (v) =>
          v.row.status == ChallengeStatus.active &&
          !v.row.expiryHandled &&
          v.pace.state == PaceState.expired,
    );
    if (expired.isEmpty) return;
    _promptShown = true;
    final first = expired.first;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) showExpiryPrompt(context, ref, first.row, first.progress);
    });
  }

  Future<void> _setToday(
    WidgetRef ref,
    ChallengeView view,
    DateTime today,
    int amount,
  ) async {
    await ref
        .read(challengeRepositoryProvider)
        .setDayAmount(
          challenge: view.row,
          muhasabaDate: today,
          amount: amount < 0 ? 0 : amount,
        );
    FirebaseAnalytics.instance.logEvent(
      name: 'challenge_logged',
      parameters: {
        'mode': view.row.mode == ChallengeMode.days ? 'days' : 'count',
      },
    );
    await refreshChallengeNudges(ref);
  }
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader(this.label);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 4, top: 8, bottom: 8),
      child: Text(
        label.toUpperCase(),
        style: Theme.of(context).textTheme.labelMedium?.copyWith(
          color: Theme.of(context).colorScheme.onSurfaceVariant,
          letterSpacing: 1.1,
        ),
      ),
    );
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState();

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final theme = Theme.of(context);
    return Center(
      child: Padding(
        padding: const EdgeInsetsDirectional.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.flag_outlined,
              size: 56,
              color: theme.colorScheme.outline,
            ),
            const SizedBox(height: 12),
            Text(
              l.challengesEmptyTitle,
              textAlign: TextAlign.center,
              style: theme.textTheme.titleMedium,
            ),
            const SizedBox(height: 6),
            Text(
              l.challengesEmptyBody,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
