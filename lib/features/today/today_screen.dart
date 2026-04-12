import 'package:flutter/material.dart';
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

    return Scaffold(
      appBar: AppBar(
        title: Text(
          DateFormat('EEEE, MMM d').format(date.toLocal()),
        ),
        actions: [
          IconButton(
            icon: Icon(
              viewMode == 'grouped'
                  ? Icons.view_list_rounded
                  : Icons.workspaces_outlined,
            ),
            tooltip:
                viewMode == 'flat' ? 'Group by category' : 'Flat list',
            onPressed: () {
              final next = viewMode == 'flat' ? 'grouped' : 'flat';
              ref.read(settingsRepositoryProvider).setTodayViewMode(next);
            },
          ),
        ],
      ),
      body: rowsAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Error: $e')),
        data: (rows) {
          if (rows.isEmpty) {
            return const _EmptyState();
          }
          if (viewMode == 'grouped') {
            return _GroupedView(
              rows: rows,
              date: date,
              streaks: streaks,
            );
          }
          return _FlatView(
            rows: rows,
            date: date,
            streaks: streaks,
          );
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
      onProgressChanged: (progress) =>
          _setProgress(ref, row, date, progress),
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
                onRemove: () =>
                    _openRemoveSheet(context, ref, row, date),
                onEdit: () => context.push('/amal/${row.amal.id}'),
                onNoteChanged: (note) =>
                    _setNote(ref, row, date, note),
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
    final name = group.categoryName ?? 'Other';
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
  await ref.read(completionRepositoryProvider).setNote(
        amalId: row.amal.id,
        muhasabaDate: date,
        note: note,
      );
  ref.invalidate(todayRowsProvider(date));
}

Future<void> _setProgress(
  WidgetRef ref,
  TodayRow row,
  DateTime date,
  int progress,
) async {
  await ref.read(completionRepositoryProvider).setProgress(
        amalId: row.amal.id,
        muhasabaDate: date,
        progress: progress,
        target: row.amal.target,
      );
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
    case RemoveChoice.tracking:
      await ref
          .read(amalRepositoryProvider)
          .removeFromTracking(row.amal.id);
      await ref.read(reminderSchedulerProvider).cancel(row.amal.id);
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

const _hadiths = [
  '"The most beloved deeds to Allah are those done consistently, even if small."\n— Bukhari & Muslim',
  '"Take up good deeds only as much as you are able, for the best deeds are those done consistently even if they are few."\n— Ibn Majah',
  '"When the son of Adam dies, his deeds come to an end except three: ongoing charity, beneficial knowledge, or a righteous child who prays for him."\n— Muslim',
  '"Whoever prays the two cool prayers (Fajr and Asr) will enter Paradise."\n— Bukhari',
  '"Allah does not look at your appearance or your wealth, but He looks at your hearts and your deeds."\n— Muslim',
  '"The best of people are those who are most beneficial to people."\n— Daraqutni',
  '"Make things easy and do not make them difficult; give glad tidings and do not scare people away."\n— Bukhari',
  '"He who treads a path in search of knowledge, Allah will make easy for him the path to Paradise."\n— Muslim',
  '"Charity does not decrease wealth."\n— Muslim',
  '"The strong believer is better and more beloved to Allah than the weak believer, while there is good in both."\n— Muslim',
];

class _EmptyState extends StatelessWidget {
  const _EmptyState();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final dayOfYear =
        DateTime.now().difference(DateTime(DateTime.now().year)).inDays;
    final hadith = _hadiths[dayOfYear % _hadiths.length];

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
              'Tap + to add your first amal.',
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
