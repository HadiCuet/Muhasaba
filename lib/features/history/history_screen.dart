import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../app/providers.dart';
import '../../domain/services/today_builder.dart';
import '../today/widgets/amal_row.dart';
import '../today/widgets/remove_sheet.dart';

/// History view: horizontal date strip + the same amal list as Today,
/// parameterized by the selected muhasaba date. All edits flow through the
/// same repositories, so Today/Stats stay consistent automatically.
class HistoryScreen extends ConsumerStatefulWidget {
  const HistoryScreen({super.key});

  @override
  ConsumerState<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends ConsumerState<HistoryScreen> {
  DateTime? _selected;

  @override
  Widget build(BuildContext context) {
    final today = ref.watch(currentMuhasabaDateProvider);
    final selected = _selected ?? today;
    final rowsAsync = ref.watch(todayRowsProvider(selected));

    return Scaffold(
      appBar: AppBar(
        title: const Text('History'),
        actions: [
          IconButton(
            tooltip: 'Jump to date',
            icon: const Icon(Icons.event),
            onPressed: () => _jumpToDate(context, today, selected),
          ),
        ],
      ),
      body: Column(
        children: [
          _DateStrip(
            selected: selected,
            today: today,
            onSelected: (d) => setState(() => _selected = d),
          ),
          const Divider(height: 1),
          Expanded(
            child: rowsAsync.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (e, _) => Center(child: Text('Error: $e')),
              data: (rows) {
                if (rows.isEmpty) {
                  return _EmptyDay(date: selected);
                }
                return ListView.separated(
                  itemCount: rows.length,
                  separatorBuilder: (_, _) => const Divider(height: 1),
                  itemBuilder: (context, i) {
                    final row = rows[i];
                    return AmalRowTile(
                      row: row,
                      onProgressChanged: (progress) =>
                          _setProgress(row, selected, progress),
                      onLongPress: () =>
                          _openRemoveSheet(context, row, selected),
                      onEdit: () => context.push('/amal/${row.amal.id}'),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _jumpToDate(
    BuildContext context,
    DateTime today,
    DateTime current,
  ) async {
    // Clamp the picker to muhasaba-date space: UTC midnights, no future.
    final picked = await showDatePicker(
      context: context,
      initialDate: DateTime(current.year, current.month, current.day),
      firstDate: DateTime(today.year - 5),
      lastDate: DateTime(today.year, today.month, today.day),
    );
    if (picked != null) {
      setState(() {
        _selected = DateTime.utc(picked.year, picked.month, picked.day);
      });
    }
  }

  Future<void> _setProgress(
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
        await ref.read(amalRepositoryProvider).removeFromTracking(row.amal.id);
        await ref.read(reminderSchedulerProvider).cancel(row.amal.id);
      case RemoveChoice.cancel:
        return;
    }
    ref.invalidate(todayRowsProvider(date));
    ref.invalidate(statsSnapshotProvider);
  }
}

/// Horizontal strip of the last 14 days ending at `today`. The selected day
/// is highlighted. Scroll position auto-anchors to the right (most recent).
class _DateStrip extends StatelessWidget {
  const _DateStrip({
    required this.selected,
    required this.today,
    required this.onSelected,
  });

  final DateTime selected;
  final DateTime today;
  final ValueChanged<DateTime> onSelected;

  static const _windowDays = 30;

  @override
  Widget build(BuildContext context) {
    final todayUtc = DateTime.utc(today.year, today.month, today.day);
    return SizedBox(
      height: 84,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        // Reverse so the newest days live on the right and the strip opens
        // anchored to `today` — same mental model as iOS Calendar's date row.
        reverse: true,
        itemCount: _windowDays,
        itemBuilder: (context, i) {
          // With reverse=true, index 0 is the rightmost (newest = today).
          final date = todayUtc.subtract(Duration(days: i));
          return _DateChip(
            date: date,
            selected: _sameDay(date, selected),
            isToday: _sameDay(date, today),
            onTap: () => onSelected(date),
          );
        },
      ),
    );
  }

  static bool _sameDay(DateTime a, DateTime b) =>
      a.year == b.year && a.month == b.month && a.day == b.day;
}

class _DateChip extends StatelessWidget {
  const _DateChip({
    required this.date,
    required this.selected,
    required this.isToday,
    required this.onTap,
  });

  final DateTime date;
  final bool selected;
  final bool isToday;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final bg = selected ? scheme.primary : scheme.surfaceContainerHighest;
    final fg = selected ? scheme.onPrimary : scheme.onSurface;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: InkWell(
        borderRadius: BorderRadius.circular(14),
        onTap: onTap,
        child: Container(
          width: 56,
          decoration: BoxDecoration(
            color: bg,
            borderRadius: BorderRadius.circular(14),
            border: isToday && !selected
                ? Border.all(color: scheme.primary, width: 1.5)
                : null,
          ),
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                DateFormat('EEE').format(date.toLocal()).toUpperCase(),
                style: theme.textTheme.labelSmall?.copyWith(
                  color: fg.withValues(alpha: 0.75),
                  letterSpacing: 0.6,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                DateFormat('d').format(date.toLocal()),
                style: theme.textTheme.titleMedium?.copyWith(
                  color: fg,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                DateFormat('MMM').format(date.toLocal()),
                style: theme.textTheme.labelSmall?.copyWith(
                  color: fg.withValues(alpha: 0.75),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _EmptyDay extends StatelessWidget {
  const _EmptyDay({required this.date});

  final DateTime date;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.history_toggle_off,
              size: 56,
              color: theme.colorScheme.outline,
            ),
            const SizedBox(height: 12),
            Text(
              'No amal tracked on ${DateFormat('EEEE, MMM d').format(date.toLocal())}',
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
