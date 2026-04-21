import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import '../../l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../app/providers.dart';
import '../../data/db/database.dart';
import '../../domain/services/today_builder.dart';
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
        title: Text(DateFormat('EEEE, MMM d', locale).format(date.toLocal())),
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

class _FlatView extends ConsumerWidget {
  const _FlatView({
    required this.rows,
    required this.date,
    required this.streaks,
  });

  final List<TodayRow> rows;
  final DateTime date;
  final Map<int, int> streaks;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ReorderableListView.builder(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 80),
      itemCount: rows.length,
      proxyDecorator: (child, index, animation) {
        return Material(
          elevation: 4,
          borderRadius: BorderRadius.circular(12),
          color: Colors.transparent,
          child: child,
        );
      },
      onReorder: (oldIndex, newIndex) =>
          _reorder(ref, rows, oldIndex, newIndex),
      itemBuilder: (context, i) {
        final row = rows[i];
        return Padding(
          key: ValueKey(row.amal.id),
          padding: const EdgeInsets.only(bottom: 8),
          child: _buildTile(context, ref, row),
        );
      },
    );
  }

  Widget _buildTile(BuildContext context, WidgetRef ref, TodayRow row) {
    return AmalRowTile(
      row: row,
      streak: streaks[row.amal.id],
      onProgressChanged: (progress) => _setProgress(ref, row, date, progress),
      onRemove: () => _openRemoveSheet(context, ref, row, date),
      onEdit: () => context.push('/amal/${row.amal.id}'),
      onNoteChanged: (note) => _setNote(ref, row, date, note),
    );
  }

  void _reorder(
    WidgetRef ref,
    List<TodayRow> rows,
    int oldIndex,
    int newIndex,
  ) {
    if (oldIndex < newIndex) newIndex -= 1;
    final reordered = List<TodayRow>.from(rows);
    final item = reordered.removeAt(oldIndex);
    reordered.insert(newIndex, item);

    final idToSortOrder = <int, int>{
      for (var i = 0; i < reordered.length; i++) reordered[i].amal.id: i,
    };

    ref.read(amalRepositoryProvider).reorder(idToSortOrder);
    ref.invalidate(todayRowsProvider(date));

    FirebaseAnalytics.instance.logEvent(
      name: 'amal_reordered',
      parameters: {'item_count': reordered.length},
    );
  }
}

// ---------------------------------------------------------------------------
// Grouped view with category headers
// ---------------------------------------------------------------------------

class _GroupedView extends ConsumerWidget {
  const _GroupedView({
    required this.rows,
    required this.date,
    required this.streaks,
  });

  final List<TodayRow> rows;
  final DateTime date;
  final Map<int, int> streaks;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = ref.watch(categoriesProvider).value ?? <CategoryRow>[];
    final groups = TodayBuilder.groupRows(rows, categories);

    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 80),
      itemCount: _itemCount(groups),
      itemBuilder: (context, index) {
        var remaining = index;
        for (final group in groups) {
          if (remaining == 0) {
            return _GroupHeader(group: group);
          }
          remaining--;
          if (remaining < group.rows.length) {
            final row = group.rows[remaining];
            return Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: AmalRowTile(
                row: row,
                streak: streaks[row.amal.id],
                onProgressChanged: (progress) =>
                    _setProgress(ref, row, date, progress),
                onRemove: () => _openRemoveSheet(context, ref, row, date),
                onEdit: () => context.push('/amal/${row.amal.id}'),
                onNoteChanged: (note) => _setNote(ref, row, date, note),
              ),
            );
          }
          remaining -= group.rows.length;
        }
        return const SizedBox.shrink();
      },
    );
  }

  int _itemCount(List<TodayGroup> groups) {
    return groups.fold(0, (sum, g) => sum + 1 + g.rows.length);
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
            '${group.completedCount}/${group.totalCount}',
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
  l.hadith0, l.hadith2, l.hadith3, l.hadith4, l.hadith6,
  l.hadith7, l.hadith8, l.hadith9, l.hadith10, l.hadith12,
  l.hadith13, l.hadith14, l.hadith15, l.hadith16, l.hadith17,
  l.hadith18, l.hadith19, l.hadith20, l.hadith22, l.hadith23,
  l.hadith24, l.hadith25, l.hadith26, l.hadith27, l.hadith29,
  l.hadith30, l.hadith32, l.hadith34, l.hadith36, l.hadith37,
  l.hadith38, l.hadith40, l.hadith41, l.hadith42, l.hadith43,
  l.hadith44, l.hadith45, l.hadith46, l.hadith47, l.hadith49,
  l.hadith53, l.hadith54, l.hadith55, l.hadith56, l.hadith57,
  l.hadith58, l.hadith65, l.hadith66, l.hadith67, l.hadith68,
  l.hadith69, l.hadith70, l.hadith71, l.hadith72, l.hadith73,
  l.hadith74, l.hadith75, l.hadith77, l.hadith78, l.hadith79,
  l.hadith80, l.hadith81, l.hadith82, l.hadith85, l.hadith86,
  l.hadith87, l.hadith88, l.hadith89, l.hadith90, l.hadith93,
  l.hadith94, l.hadith95, l.hadith96, l.hadith97, l.hadith98,
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
