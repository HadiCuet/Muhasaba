import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import '../../l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/providers.dart';
import '../../data/db/database.dart';
import '../../domain/services/today_builder.dart';
import '../../domain/utils/localized_number.dart';
import 'widgets/amal_row.dart';
import 'widgets/remove_sheet.dart';

class TodayScreen extends ConsumerWidget {
  const TodayScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final date = ref.watch(currentMuhasabaDateProvider);
    final rowsAsync = ref.watch(todayRowsProvider(date));
    final streaksAsync = ref.watch(currentStreaksProvider);
    final streaks = streaksAsync.value ?? const {};
    final settingsAsync = ref.watch(settingsProvider);
    final viewMode = settingsAsync.value?.todayViewMode ?? 'grouped';

    final l = AppLocalizations.of(context);
    final locale = Localizations.localeOf(context).toString();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          localizeDigits(
            context,
            safeDateFormat('EEEE, MMM d', locale).format(date.toLocal()),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              viewMode == 'grouped'
                  ? Icons.view_list_rounded
                  : Icons.workspaces_outlined,
            ),
            tooltip: viewMode == 'flat' ? l.groupByCategory : l.flatList,
            onPressed: () {
              final next = viewMode == 'flat' ? 'grouped' : 'flat';
              ref.read(settingsRepositoryProvider).setTodayViewMode(next);
              FirebaseAnalytics.instance.logEvent(
                name: 'today_view_mode_changed',
                parameters: {'mode': next},
              );
            },
          ),
        ],
      ),
      body: rowsAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text(l.errorGeneric(e.toString()))),
        data: (rows) {
          if (rows.isEmpty) {
            return const _EmptyState();
          }
          if (viewMode == 'grouped') {
            return _GroupedView(rows: rows, date: date, streaks: streaks);
          }
          return _FlatView(rows: rows, date: date, streaks: streaks);
        },
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Flat view with drag-to-reorder
// ---------------------------------------------------------------------------

/// Lift styling shared by the flat and grouped reorderable lists. Shadow and a
/// subtle scale ease in/out with the drag animation so releasing an item
/// settles smoothly instead of snapping.
Widget _proxyDecorator(Widget child, int index, Animation<double> animation) {
  return AnimatedBuilder(
    animation: animation,
    builder: (context, child) {
      final t = Curves.easeInOut.transform(animation.value);
      return Transform.scale(
        scale: 1 + 0.02 * t,
        child: Material(
          elevation: 6 * t,
          shadowColor: Colors.black54,
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(12),
          child: child,
        ),
      );
    },
    child: child,
  );
}

/// Merges an upstream rows list into a possibly locally-reordered one. When the
/// set of amal ids is unchanged (e.g. just after an optimistic drag-reorder, or
/// a completion toggle), the local order is preserved and only row content is
/// refreshed; otherwise the upstream list is adopted (an item was added,
/// removed, or hidden).
List<TodayRow> _reconcileOrder(List<TodayRow> local, List<TodayRow> incoming) {
  final byId = {for (final r in incoming) r.amal.id: r};
  if (local.length == byId.length &&
      local.every((r) => byId.containsKey(r.amal.id))) {
    return [for (final r in local) byId[r.amal.id]!];
  }
  return List<TodayRow>.of(incoming);
}

class _FlatView extends ConsumerStatefulWidget {
  const _FlatView({
    required this.rows,
    required this.date,
    required this.streaks,
  });

  final List<TodayRow> rows;
  final DateTime date;
  final Map<int, int> streaks;

  @override
  ConsumerState<_FlatView> createState() => _FlatViewState();
}

class _FlatViewState extends ConsumerState<_FlatView> {
  // Local copy so a drag-reorder updates the list synchronously (smooth drop);
  // the DB write flows back through the stream and is reconciled in place.
  late List<TodayRow> _rows;

  @override
  void initState() {
    super.initState();
    _rows = List<TodayRow>.of(widget.rows);
  }

  @override
  void didUpdateWidget(_FlatView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!identical(oldWidget.rows, widget.rows)) {
      _rows = _reconcileOrder(_rows, widget.rows);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ReorderableListView.builder(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 80),
      itemCount: _rows.length,
      proxyDecorator: _proxyDecorator,
      onReorder: _reorder,
      itemBuilder: (context, i) {
        final row = _rows[i];
        return Padding(
          key: ValueKey(row.amal.id),
          padding: const EdgeInsets.only(bottom: 8),
          child: _buildTile(row),
        );
      },
    );
  }

  Widget _buildTile(TodayRow row) {
    return AmalRowTile(
      row: row,
      streak: widget.streaks[row.amal.id],
      onProgressChanged: (progress) =>
          _setProgress(ref, row, widget.date, progress),
      onRemove: () => _openRemoveSheet(context, ref, row, widget.date),
      onEdit: () => context.push('/amal/${row.amal.id}'),
      onNoteChanged: (note) => _setNote(ref, row, widget.date, note),
    );
  }

  void _reorder(int oldIndex, int newIndex) {
    if (oldIndex < newIndex) newIndex -= 1;
    setState(() {
      final item = _rows.removeAt(oldIndex);
      _rows.insert(newIndex, item);
    });

    final idToSortOrder = <int, int>{
      for (var i = 0; i < _rows.length; i++) _rows[i].amal.id: i,
    };
    ref.read(amalRepositoryProvider).reorder(idToSortOrder);

    FirebaseAnalytics.instance.logEvent(
      name: 'amal_reordered',
      parameters: {'item_count': _rows.length, 'mode': 'flat'},
    );
  }
}

// ---------------------------------------------------------------------------
// Grouped view with category headers
// ---------------------------------------------------------------------------

class _GroupedView extends ConsumerStatefulWidget {
  const _GroupedView({
    required this.rows,
    required this.date,
    required this.streaks,
  });

  final List<TodayRow> rows;
  final DateTime date;
  final Map<int, int> streaks;

  @override
  ConsumerState<_GroupedView> createState() => _GroupedViewState();
}

class _GroupedViewState extends ConsumerState<_GroupedView> {
  // Local copy so a within-section drag-reorder updates synchronously (smooth
  // drop); the DB write flows back through the stream and is reconciled.
  late List<TodayRow> _rows;

  @override
  void initState() {
    super.initState();
    _rows = List<TodayRow>.of(widget.rows);
  }

  @override
  void didUpdateWidget(_GroupedView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!identical(oldWidget.rows, widget.rows)) {
      _rows = _reconcileOrder(_rows, widget.rows);
    }
  }

  @override
  Widget build(BuildContext context) {
    final categories = ref.watch(categoriesProvider).value ?? <CategoryRow>[];
    final groups = TodayBuilder.groupRows(_rows, categories);

    final slivers = <Widget>[
      const SliverToBoxAdapter(child: SizedBox(height: 8)),
    ];
    for (var gi = 0; gi < groups.length; gi++) {
      final group = groups[gi];
      slivers.add(
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: _GroupHeader(group: group),
          ),
        ),
      );
      slivers.add(
        SliverReorderableList(
          itemCount: group.rows.length,
          proxyDecorator: _proxyDecorator,
          onReorder: (oldIndex, newIndex) =>
              _reorderWithinGroup(groups, gi, oldIndex, newIndex),
          itemBuilder: (context, i) {
            final row = group.rows[i];
            return ReorderableDelayedDragStartListener(
              key: ValueKey(row.amal.id),
              index: i,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 12, 8),
                child: AmalRowTile(
                  row: row,
                  streak: widget.streaks[row.amal.id],
                  onProgressChanged: (progress) =>
                      _setProgress(ref, row, widget.date, progress),
                  onRemove: () =>
                      _openRemoveSheet(context, ref, row, widget.date),
                  onEdit: () => context.push('/amal/${row.amal.id}'),
                  onNoteChanged: (note) =>
                      _setNote(ref, row, widget.date, note),
                ),
              ),
            );
          },
        ),
      );
    }
    slivers.add(const SliverToBoxAdapter(child: SizedBox(height: 80)));

    return CustomScrollView(slivers: slivers);
  }

  void _reorderWithinGroup(
    List<TodayGroup> groups,
    int groupIndex,
    int oldIndex,
    int newIndex,
  ) {
    if (oldIndex < newIndex) newIndex -= 1;
    final newGroupRows = List<TodayRow>.of(groups[groupIndex].rows);
    final item = newGroupRows.removeAt(oldIndex);
    newGroupRows.insert(newIndex, item);

    // Walk the visible layout (sections in category order, this section in its
    // new order) and renumber sortOrder 0..N so both views stay consistent.
    final ordered = <TodayRow>[];
    for (var gi = 0; gi < groups.length; gi++) {
      ordered.addAll(gi == groupIndex ? newGroupRows : groups[gi].rows);
    }
    setState(() => _rows = ordered);

    final idToSortOrder = <int, int>{
      for (var i = 0; i < ordered.length; i++) ordered[i].amal.id: i,
    };
    ref.read(amalRepositoryProvider).reorder(idToSortOrder);

    FirebaseAnalytics.instance.logEvent(
      name: 'amal_reordered',
      parameters: {'item_count': ordered.length, 'mode': 'grouped'},
    );
  }
}

class _GroupHeader extends StatelessWidget {
  const _GroupHeader({required this.group});

  final TodayGroup group;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l = AppLocalizations.of(context);
    final name = group.categoryName ?? l.categoryOther;
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 12, 4, 6),
      child: Row(
        children: [
          Text(
            name,
            style: theme.textTheme.titleSmall?.copyWith(
              color: theme.colorScheme.primary,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(width: 8),
          Text(
            '${lnum(context, group.completedCount)}/${lnum(context, group.totalCount)}',
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Shared write helpers
// ---------------------------------------------------------------------------

Future<void> _setNote(
  WidgetRef ref,
  TodayRow row,
  DateTime date,
  String? note,
) async {
  await ref
      .read(completionRepositoryProvider)
      .setNote(amalId: row.amal.id, muhasabaDate: date, note: note);
  ref.invalidate(todayRowsProvider(date));

  // Only log actual saves (not clears). Don't include note content.
  if (note != null && note.isNotEmpty) {
    final hadPrev = row.note != null && row.note!.isNotEmpty;
    FirebaseAnalytics.instance.logEvent(
      name: 'amal_note_saved',
      parameters: {'had_previous_note': hadPrev ? 1 : 0},
    );
  }
}

Future<void> _setProgress(
  WidgetRef ref,
  TodayRow row,
  DateTime date,
  int progress,
) async {
  final wasCompleted = row.isCompleted;
  final nowCompleted = progress >= row.amal.target;
  await ref
      .read(completionRepositoryProvider)
      .setProgress(
        amalId: row.amal.id,
        muhasabaDate: date,
        progress: progress,
        target: row.amal.target,
      );
  if (!wasCompleted && nowCompleted) {
    FirebaseAnalytics.instance.logEvent(
      name: 'amal_completed',
      parameters: {
        'frequency': row.amal.frequency.name,
        'target': row.amal.target,
      },
    );
  } else if (wasCompleted && !nowCompleted) {
    FirebaseAnalytics.instance.logEvent(
      name: 'amal_uncompleted',
      parameters: {'frequency': row.amal.frequency.name},
    );
  }
  ref.invalidate(todayRowsProvider(date));
  ref.invalidate(statsSnapshotProvider);
  ref.invalidate(currentStreaksProvider);
}

Future<void> _openRemoveSheet(
  BuildContext context,
  WidgetRef ref,
  TodayRow row,
  DateTime date,
) async {
  final choice = await showRemoveSheet(context, amalTitle: row.amal.title);
  switch (choice) {
    case RemoveChoice.today:
      await ref
          .read(completionRepositoryProvider)
          .removeFromDay(row.amal.id, date);
      FirebaseAnalytics.instance.logEvent(
        name: 'amal_removed',
        parameters: {'scope': 'today'},
      );
    case RemoveChoice.tracking:
      await ref.read(amalRepositoryProvider).removeFromTracking(row.amal.id);
      FirebaseAnalytics.instance.logEvent(
        name: 'amal_removed',
        parameters: {'scope': 'tracking'},
      );
      if (row.amal.reminderTime != null) {
        FirebaseAnalytics.instance.logEvent(
          name: 'reminder_canceled',
          parameters: {'source': 'tracking_removed'},
        );
      }
    case RemoveChoice.cancel:
      return;
  }
  ref.invalidate(todayRowsProvider(date));
  ref.invalidate(statsSnapshotProvider);
  ref.invalidate(currentStreaksProvider);
}

// ---------------------------------------------------------------------------
// Inspirational empty state with rotating hadith
// ---------------------------------------------------------------------------

// Numbering is intentionally sparse — 25 entries were removed after an
// authenticity audit (see HADITH_AUDIT.md). Remaining 75 all match authentic
// narrations in Bukhari, Muslim, Tirmidhi, Abu Dawud, Nasa'i, Ibn Majah,
// Ahmad, or other standard collections, with correct attribution.
List<String> _hadiths(AppLocalizations l) => [
  l.hadith0,
  l.hadith2,
  l.hadith3,
  l.hadith4,
  l.hadith6,
  l.hadith7,
  l.hadith8,
  l.hadith9,
  l.hadith10,
  l.hadith12,
  l.hadith13,
  l.hadith14,
  l.hadith15,
  l.hadith16,
  l.hadith17,
  l.hadith18,
  l.hadith19,
  l.hadith20,
  l.hadith22,
  l.hadith23,
  l.hadith24,
  l.hadith25,
  l.hadith26,
  l.hadith27,
  l.hadith29,
  l.hadith30,
  l.hadith32,
  l.hadith34,
  l.hadith36,
  l.hadith37,
  l.hadith38,
  l.hadith40,
  l.hadith41,
  l.hadith42,
  l.hadith43,
  l.hadith44,
  l.hadith45,
  l.hadith46,
  l.hadith47,
  l.hadith49,
  l.hadith53,
  l.hadith54,
  l.hadith55,
  l.hadith56,
  l.hadith57,
  l.hadith58,
  l.hadith65,
  l.hadith66,
  l.hadith67,
  l.hadith68,
  l.hadith69,
  l.hadith70,
  l.hadith71,
  l.hadith72,
  l.hadith73,
  l.hadith74,
  l.hadith75,
  l.hadith77,
  l.hadith78,
  l.hadith79,
  l.hadith80,
  l.hadith81,
  l.hadith82,
  l.hadith85,
  l.hadith86,
  l.hadith87,
  l.hadith88,
  l.hadith89,
  l.hadith90,
  l.hadith93,
  l.hadith94,
  l.hadith95,
  l.hadith96,
  l.hadith97,
  l.hadith98,
];

class _EmptyState extends StatelessWidget {
  const _EmptyState();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l = AppLocalizations.of(context);
    final dayOfYear = DateTime.now()
        .difference(DateTime(DateTime.now().year))
        .inDays;
    final quotes = _hadiths(l);
    final hadith = quotes[dayOfYear % quotes.length];

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.auto_awesome,
              size: 48,
              color: theme.colorScheme.primary.withValues(alpha: 0.5),
            ),
            const SizedBox(height: 20),
            Text(
              hadith,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyLarge?.copyWith(
                fontStyle: FontStyle.italic,
                color: theme.colorScheme.onSurfaceVariant,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              l.todayEmptyHint,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.outline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
