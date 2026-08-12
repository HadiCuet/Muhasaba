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
import '../../domain/utils/localized_challenge_title.dart';
import '../../l10n/app_localizations.dart';
import '../tutorial/tutorial_anchors.dart';
import '../tutorial/tutorial_controller.dart';
import 'challenge_providers.dart';
import 'widgets/challenge_card.dart';
import 'widgets/challenge_delete.dart';
import 'widgets/expiry_prompt.dart';
import 'widgets/just_finished_strip.dart';

class ChallengeScreen extends ConsumerStatefulWidget {
  const ChallengeScreen({super.key});

  @override
  ConsumerState<ChallengeScreen> createState() => _ChallengeScreenState();
}

class _ChallengeScreenState extends ConsumerState<ChallengeScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabs;
  bool _promptShown = false;
  bool _promptPending = false;
  int _tourCheckedEpoch = -1;
  // Local copy so a drag-reorder updates synchronously (smooth drop); the DB
  // write flows back through the stream and is reconciled in place.
  List<ChallengeView>? _ordered;
  DateTime _today = DateTime.now().toUtc();
  Map<int, int> _todayAmounts = const {};

  @override
  void initState() {
    super.initState();
    _tabs = TabController(length: 2, vsync: this)..addListener(_onTabChanged);
  }

  @override
  void dispose() {
    _tabs.removeListener(_onTabChanged);
    _tabs.dispose();
    super.dispose();
  }

  void _onTabChanged() {
    if (_tabs.indexIsChanging) return;
    setState(() {});
    if (_tabs.index == 1) {
      ref.read(challengeRepositoryProvider).markCompletionsSeen();
    }
    FirebaseAnalytics.instance.logEvent(
      name: 'challenge_tab_selected',
      parameters: {'tab': _tabs.index == 0 ? 'active' : 'past'},
    );
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final viewsAsync = ref.watch(challengeViewsProvider);
    _todayAmounts = ref.watch(todayAmountsProvider).value ?? const {};
    _today = ref.watch(currentMuhasabaDateProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(l.tabChallenge),
        bottom: TabBar(
          controller: _tabs,
          tabs: [
            Tab(text: l.challengesActive),
            Tab(text: l.challengesPast),
          ],
        ),
      ),
      body: viewsAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text(l.errorGeneric(e.toString()))),
        data: (views) {
          _maybePrompt(views);
          _ordered = _reconcile(views.where((v) => !v.isPast).toList());
          final active = _ordered!;
          final past = views.where((v) => v.isPast).toList();
          final unseen =
              past
                  .where(
                    (v) =>
                        v.row.status == ChallengeStatus.completed &&
                        !v.row.completionSeen,
                  )
                  .toList()
                ..sort(_byRecency);
          // Only from the Active tab: TabBarView unmounts the other page, so
          // the anchors would not resolve and the arming would be spent.
          if (active.isNotEmpty && !_promptPending && _tabs.index == 0) {
            _maybeRunTutorial();
          }
          final anchors = _challengeAnchorIds(active);
          return TabBarView(
            controller: _tabs,
            children: [
              _activeTab(l, active, unseen, anchors),
              _pastTab(l, past),
            ],
          );
        },
      ),
    );
  }

  Widget _activeTab(
    AppLocalizations l,
    List<ChallengeView> active,
    List<ChallengeView> unseen,
    ({int? cardId, int? stepperId}) anchors,
  ) {
    return MaxWidthBody(
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: SizedBox(height: 12)),
          if (unseen.isNotEmpty)
            SliverToBoxAdapter(
              child: JustFinishedStrip(
                count: unseen.length,
                mostRecentTitle: localizedChallengeTitle(
                  unseen.first.row.title,
                  l,
                ),
                onTap: () => _tabs.animateTo(1),
              ),
            ),
          if (active.isEmpty)
            const SliverFillRemaining(
              hasScrollBody: false,
              child: _EmptyState(),
            )
          else ...[
            _section(active, anchors),
            const SliverToBoxAdapter(child: SizedBox(height: 88)),
          ],
        ],
      ),
    );
  }

  Widget _pastTab(AppLocalizations l, List<ChallengeView> past) {
    if (past.isEmpty) {
      return MaxWidthBody(
        child: Center(
          child: Padding(
            padding: const EdgeInsetsDirectional.all(32),
            child: Text(
              l.challengesPastEmpty,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
          ),
        ),
      );
    }
    final completed =
        past.where((v) => v.row.status == ChallengeStatus.completed).toList()
          ..sort(_byRecency);
    final ended =
        past.where((v) => v.row.status == ChallengeStatus.ended).toList()
          ..sort(_byRecency);

    return MaxWidthBody(
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: SizedBox(height: 12)),
          if (completed.isNotEmpty) ...[
            SliverToBoxAdapter(child: _SectionHeader(l.challengeCompleted)),
            _pastSection(completed),
          ],
          if (ended.isNotEmpty) ...[
            SliverToBoxAdapter(child: _SectionHeader(l.challengeSectionEnded)),
            _pastSection(ended),
          ],
          const SliverToBoxAdapter(child: SizedBox(height: 88)),
        ],
      ),
    );
  }

  /// Newest first, with a stable tiebreak so the strip and the Past tab
  /// cannot disagree about which challenge is the most recent.
  int _byRecency(ChallengeView a, ChallengeView b) {
    final byDate = _pastKey(b).compareTo(_pastKey(a));
    return byDate != 0 ? byDate : b.row.id.compareTo(a.row.id);
  }

  /// When it finished, or when its window closed if it never did.
  DateTime _pastKey(ChallengeView v) =>
      v.row.completedAt ?? v.row.endExclusive ?? v.row.createdAt;

  Widget _pastSection(List<ChallengeView> views) {
    return SliverList.builder(
      itemCount: views.length,
      itemBuilder: (context, i) {
        final v = views[i];
        return Padding(
          key: ValueKey('challenge-${v.row.id}'),
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 12),
          child: ChallengeCard(
            view: v,
            todayAmount: _todayAmounts[v.row.id] ?? 0,
            onSetToday: (amount) => _setToday(ref, v, _today, amount),
            onTap: () => context.push('/challenge/${v.row.id}'),
            onLogToday: () =>
                _logToday(ref, v, _today, _todayAmounts[v.row.id] ?? 0),
            onDelete: () => confirmDeleteChallenge(context, ref, v.row.id),
          ),
        );
      },
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
    List<ChallengeView> active,
  ) {
    int? card;
    int? stepper;
    for (final v in active) {
      card ??= v.row.id;
      if (v.row.mode == ChallengeMode.count) {
        stepper = v.row.id;
        break;
      }
    }
    return (cardId: card, stepperId: stepper);
  }

  Widget _section(
    List<ChallengeView> views,
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
              todayAmount: _todayAmounts[v.row.id] ?? 0,
              onSetToday: (amount) => _setToday(ref, v, _today, amount),
              onTap: () => context.push('/challenge/${v.row.id}'),
              onLogToday: () =>
                  _logToday(ref, v, _today, _todayAmounts[v.row.id] ?? 0),
              onDelete: () => confirmDeleteChallenge(context, ref, v.row.id),
            ),
          ),
        );
      },
    );
  }

  void _reorder(List<ChallengeView> active, int oldIndex, int newIndex) {
    if (oldIndex < newIndex) newIndex -= 1;
    final reordered = List<ChallengeView>.of(active);
    reordered.insert(newIndex, reordered.removeAt(oldIndex));
    setState(() => _ordered = reordered);

    ref.read(challengeRepositoryProvider).reorder({
      for (var i = 0; i < reordered.length; i++) reordered[i].row.id: i,
    });

    FirebaseAnalytics.instance.logEvent(
      name: 'challenge_reordered',
      parameters: {'item_count': reordered.length},
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
