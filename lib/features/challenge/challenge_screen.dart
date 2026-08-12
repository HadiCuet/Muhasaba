import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/providers.dart';
import '../../app/widgets/max_width_body.dart';
import '../../app/widgets/reorder_proxy_decorator.dart';
import '../../domain/models/challenge.dart';
import '../../domain/services/challenge_pace.dart';
import '../../l10n/app_localizations.dart';
import '../tutorial/tutorial_anchors.dart';
import '../tutorial/tutorial_controller.dart';
import 'challenge_providers.dart';
import 'widgets/challenge_card.dart';
import 'widgets/challenge_delete.dart';
import 'widgets/expiry_prompt.dart';

class ChallengeScreen extends ConsumerStatefulWidget {
  const ChallengeScreen({super.key});

  @override
  ConsumerState<ChallengeScreen> createState() => _ChallengeScreenState();
}

class _ChallengeScreenState extends ConsumerState<ChallengeScreen> {
  bool _promptShown = false;
  bool _promptPending = false;
  int _tourCheckedEpoch = -1;
  // Local copy so a drag-reorder updates synchronously (smooth drop); the DB
  // write flows back through the stream and is reconciled in place.
  List<ChallengeView>? _ordered;

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
            if (!_promptPending) _maybeRunTutorial();
            _ordered = _reconcile(views);
            final active = _ordered!.where((v) => !v.isPast).toList();
            final past = _ordered!.where((v) => v.isPast).toList();
            final anchors = _challengeAnchorIds([...active, ...past]);
            return CustomScrollView(
              slivers: [
                const SliverToBoxAdapter(child: SizedBox(height: 12)),
                if (active.isNotEmpty)
                  SliverToBoxAdapter(child: _SectionHeader(l.challengesActive)),
                _section(active, today, todayAmounts, anchors),
                if (past.isNotEmpty)
                  SliverToBoxAdapter(child: _SectionHeader(l.challengesPast)),
                _section(past, today, todayAmounts, anchors),
                const SliverToBoxAdapter(child: SizedBox(height: 88)),
              ],
            );
          },
        ),
      ),
    );
  }

  /// Keeps rows the user has dragged where they are; new rows land at the end.
  List<ChallengeView> _reconcile(List<ChallengeView> incoming) {
    final previous = _ordered;
    if (previous == null) return List<ChallengeView>.of(incoming);
    final byId = {for (final v in incoming) v.row.id: v};
    final result = <ChallengeView>[];
    for (final old in previous) {
      final match = byId.remove(old.row.id);
      if (match != null) result.add(match);
    }
    result.addAll(byId.values);
    return result;
  }

  ({int? cardId, int? stepperId}) _challengeAnchorIds(
    List<ChallengeView> views,
  ) {
    int? card;
    int? stepper;
    for (final v in views) {
      card ??= v.row.id;
      if (v.row.mode == ChallengeMode.count &&
          v.row.status != ChallengeStatus.ended) {
        stepper = v.row.id;
        break;
      }
    }
    return (cardId: card, stepperId: stepper);
  }

  Widget _section(
    List<ChallengeView> views,
    DateTime today,
    Map<int, int> amounts,
    ({int? cardId, int? stepperId}) anchors,
  ) {
    return SliverReorderableList(
      itemCount: views.length,
      proxyDecorator: reorderProxyDecorator,
      onReorder: (oldIndex, newIndex) => _reorder(views, oldIndex, newIndex),
      itemBuilder: (context, i) {
        final v = views[i];
        return ReorderableDelayedDragStartListener(
          key: ValueKey('challenge-${v.row.id}'),
          index: i,
          child: Padding(
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 12),
            child: ChallengeCard(
              key: v.row.id == anchors.cardId ? tutorialChallengeCardKey : null,
              stepperKey: v.row.id == anchors.stepperId
                  ? tutorialChallengeStepperKey
                  : null,
              view: v,
              todayAmount: amounts[v.row.id] ?? 0,
              onSetToday: (amount) => _setToday(ref, v, today, amount),
              onTap: () => context.push('/challenge/${v.row.id}'),
              onLogToday: () =>
                  _logToday(ref, v, today, amounts[v.row.id] ?? 0),
              onDelete: () => confirmDeleteChallenge(context, ref, v.row.id),
            ),
          ),
        );
      },
    );
  }

  void _reorder(List<ChallengeView> section, int oldIndex, int newIndex) {
    if (oldIndex < newIndex) newIndex -= 1;
    final reordered = List<ChallengeView>.of(section);
    final item = reordered.removeAt(oldIndex);
    reordered.insert(newIndex, item);

    // Renumber the whole list, active section first, so both sections stay
    // consistent with the query's ORDER BY.
    final isPastSection = section.first.isPast;
    final others = [
      for (final v in _ordered!)
        if (v.isPast != isPastSection) v,
    ];
    final merged = isPastSection
        ? [...others, ...reordered]
        : [...reordered, ...others];
    setState(() => _ordered = merged);

    ref.read(challengeRepositoryProvider).reorder({
      for (var i = 0; i < merged.length; i++) merged[i].row.id: i,
    });

    FirebaseAnalytics.instance.logEvent(
      name: 'challenge_reordered',
      parameters: {'item_count': merged.length},
    );
  }

  /// Sets [_promptPending] for as long as the expiry dialog is up, so the tour
  /// cannot open over it. A frame-scoped flag would not hold: the views stream
  /// composes two Drift streams, so more builds land while the dialog is open.
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
    _promptPending = true;
    final first = expired.first;
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      if (!mounted) return;
      await showExpiryPrompt(context, ref, first.row, first.progress);
      if (mounted) setState(() => _promptPending = false);
    });
  }

  /// `GlobalKey` anchors resolve even for an inactive shell branch — go_router
  /// keeps it laid out behind an `Offstage` — so without the [TickerMode] gate
  /// the spotlight can open over whatever tab the user is actually looking at.
  /// Reading it also rebuilds this screen when the tab becomes active.
  void _maybeRunTutorial() {
    if (_tourCheckedEpoch == challengeTourEpoch) return;
    if (!TickerMode.valuesOf(context).enabled) return;
    _tourCheckedEpoch = challengeTourEpoch;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) runChallengeTutorial(context, ref, source: 'challenge_tab');
    });
  }

  Future<void> _logToday(
    WidgetRef ref,
    ChallengeView view,
    DateTime today,
    int current,
  ) {
    final next = view.row.mode == ChallengeMode.days
        ? (current > 0 ? 0 : 1)
        : current + view.row.stepSize;
    return _setToday(ref, view, today, next);
  }

  Future<void> _setToday(
    WidgetRef ref,
    ChallengeView view,
    DateTime today,
    int amount,
  ) async {
    if (view.row.mode == ChallengeMode.days && amount > 0) {
      HapticFeedback.mediumImpact();
    } else {
      HapticFeedback.selectionClick();
    }
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
      padding: const EdgeInsetsDirectional.only(start: 16, top: 8, bottom: 8),
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
