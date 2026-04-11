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

    return Scaffold(
      appBar: AppBar(
        title: InkWell(
          onTap: () => context.push('/history'),
          borderRadius: BorderRadius.circular(8),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Today'),
                Text(
                  DateFormat('EEEE, MMM d').format(date.toLocal()),
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
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
          return ListView.separated(
            itemCount: rows.length,
            separatorBuilder: (_, _) => const Divider(height: 1),
            itemBuilder: (context, i) {
              final row = rows[i];
              return AmalRowTile(
                row: row,
                onProgressChanged: (progress) =>
                    _setProgress(ref, row, date, progress),
                onLongPress: () => _openRemoveSheet(context, ref, row, date),
                onEdit: () => context.push('/amal/${row.amal.id}'),
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
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.check_circle_outline,
              size: 64,
              color: Theme.of(context).colorScheme.outline,
            ),
            const SizedBox(height: 16),
            Text(
              'Nothing to track today',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            Text(
              'Add an amal with the + button, or come back after the day rolls over.',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
