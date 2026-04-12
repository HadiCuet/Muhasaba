import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../app/providers.dart';
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

    return Scaffold(
      appBar: AppBar(
        title: InkWell(
          onTap: () => context.push('/history'),
          borderRadius: BorderRadius.circular(8),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
            child: Text(
              DateFormat('EEEE, MMM d').format(date.toLocal()),
            ),
          ),
        ),
        actions: [
          IconButton(
            tooltip: 'History',
            icon: const Icon(Icons.calendar_month_outlined),
            onPressed: () => context.push('/history'),
          ),
          IconButton(
            tooltip: 'Stats',
            icon: const Icon(Icons.insights_outlined),
            onPressed: () => context.push('/stats'),
          ),
          IconButton(
            tooltip: 'Settings',
            icon: const Icon(Icons.settings_outlined),
            onPressed: () => context.push('/settings'),
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
          return ListView.builder(
            padding: const EdgeInsets.fromLTRB(12, 8, 12, 80),
            itemCount: rows.length,
            itemBuilder: (context, i) {
              final row = rows[i];
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
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => context.push('/amal/new'),
        icon: const Icon(Icons.add),
        label: const Text('New amal'),
      ),
    );
  }

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
}

// ---------------------------------------------------------------------------
// Inspirational empty state with rotating hadith
// ---------------------------------------------------------------------------

/// Short, authenticated hadiths about istiqama (consistency in good deeds).
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
    final dayOfYear = DateTime.now().difference(DateTime(DateTime.now().year)).inDays;
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
