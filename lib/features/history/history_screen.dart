import 'dart:math' as math;

import 'package:flutter/material.dart';
import '../../l10n/app_localizations.dart';
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
    final streaksAsync = ref.watch(currentStreaksProvider);
    final streaks = streaksAsync.value ?? const {};

    final l = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(l.historyTitle),
        actions: [
          IconButton(
            tooltip: l.jumpToDate,
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
              error: (e, _) =>
                  Center(child: Text(l.errorGeneric(e.toString()))),
              data: (rows) {
                if (rows.isEmpty) {
                  return _EmptyDay(date: selected);
                }
                return ListView.builder(
                  padding: const EdgeInsets.fromLTRB(12, 8, 12, 16),
                  // +1 for the day summary header
                  itemCount: rows.length + 1,
                  itemBuilder: (context, i) {
                    if (i == 0) {
                      return _DaySummary(
                        date: selected,
                        rows: rows,
                      );
                    }
                    final row = rows[i - 1];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: AmalRowTile(
                        row: row,
                        streak: streaks[row.amal.id],
                        onProgressChanged: (progress) =>
                            _setProgress(row, selected, progress),
                        onRemove: () =>
                            _openRemoveSheet(context, row, selected),
                        onEdit: () => context.push('/amal/${row.amal.id}'),
                        onNoteChanged: (note) => _setNote(row, selected, note),
                      ),
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

  Future<void> _setNote(TodayRow row, DateTime date, String? note) async {
    await ref
        .read(completionRepositoryProvider)
        .setNote(amalId: row.amal.id, muhasabaDate: date, note: note);
    ref.invalidate(todayRowsProvider(date));
  }

  Future<void> _setProgress(TodayRow row, DateTime date, int progress) async {
    await ref
        .read(completionRepositoryProvider)
        .setProgress(
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
    ref.invalidate(currentStreaksProvider);
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
      height: 78,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
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
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                DateFormat(
                  'EEE',
                  Localizations.localeOf(context).toString(),
                ).format(date.toLocal()).toUpperCase(),
                style: theme.textTheme.labelSmall?.copyWith(
                  color: fg.withValues(alpha: 0.75),
                  letterSpacing: 0.6,
                  fontSize: 9,
                  height: 1,
                ),
              ),
              const SizedBox(height: 3),
              Text(
                DateFormat(
                  'd',
                  Localizations.localeOf(context).toString(),
                ).format(date.toLocal()),
                style: theme.textTheme.titleMedium?.copyWith(
                  color: fg,
                  fontWeight: FontWeight.w600,
                  height: 1,
                ),
              ),
              const SizedBox(height: 3),
              Text(
                DateFormat(
                  'MMM',
                  Localizations.localeOf(context).toString(),
                ).format(date.toLocal()),
                style: theme.textTheme.labelSmall?.copyWith(
                  color: fg.withValues(alpha: 0.75),
                  fontSize: 9,
                  height: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Day summary header with completion ring
// ---------------------------------------------------------------------------

class _DaySummary extends StatelessWidget {
  const _DaySummary({required this.date, required this.rows});

  final DateTime date;
  final List<TodayRow> rows;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l = AppLocalizations.of(context);
    final locale = Localizations.localeOf(context).toString();

    final completed = rows.where((r) => r.isCompleted).length;
    final total = rows.length;
    final rate = total > 0 ? completed / total : 0.0;

    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 8, 4, 8),
      child: Row(
        children: [
          // Mini completion ring.
          SizedBox(
            width: 44,
            height: 44,
            child: CustomPaint(
              painter: _MiniRingPainter(
                rate: rate,
                fillColor: theme.colorScheme.primary,
                backgroundColor: theme.colorScheme.surfaceContainerHighest,
              ),
              child: Center(
                child: Text(
                  '${(rate * 100).round()}%',
                  style: theme.textTheme.labelSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: theme.colorScheme.onSurface,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  DateFormat('EEEE, MMM d', locale).format(date.toLocal()),
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  l.historyDayCompleted(completed, total),
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _MiniRingPainter extends CustomPainter {
  _MiniRingPainter({
    required this.rate,
    required this.fillColor,
    required this.backgroundColor,
  });

  final double rate;
  final Color fillColor;
  final Color backgroundColor;

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = (size.shortestSide / 2) - 3;
    const strokeWidth = 4.0;

    // Background track.
    canvas.drawCircle(
      center,
      radius,
      Paint()
        ..color = backgroundColor
        ..style = PaintingStyle.stroke
        ..strokeWidth = strokeWidth,
    );

    // Filled arc.
    if (rate > 0) {
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        -math.pi / 2,
        2 * math.pi * rate.clamp(0.0, 1.0),
        false,
        Paint()
          ..color = fillColor
          ..style = PaintingStyle.stroke
          ..strokeWidth = strokeWidth
          ..strokeCap = StrokeCap.round,
      );
    }
  }

  @override
  bool shouldRepaint(_MiniRingPainter oldDelegate) =>
      rate != oldDelegate.rate ||
      fillColor != oldDelegate.fillColor ||
      backgroundColor != oldDelegate.backgroundColor;
}

// ---------------------------------------------------------------------------
// Empty day — motivational hadith
// ---------------------------------------------------------------------------

List<String> _hadiths(AppLocalizations l) => [
  l.hadith0, l.hadith1, l.hadith2, l.hadith3, l.hadith4,
  l.hadith5, l.hadith6, l.hadith7, l.hadith8, l.hadith9,
  l.hadith10, l.hadith11, l.hadith12, l.hadith13, l.hadith14,
  l.hadith15, l.hadith16, l.hadith17, l.hadith18, l.hadith19,
  l.hadith20, l.hadith21, l.hadith22, l.hadith23, l.hadith24,
  l.hadith25, l.hadith26, l.hadith27, l.hadith28, l.hadith29,
  l.hadith30, l.hadith31, l.hadith32, l.hadith33, l.hadith34,
  l.hadith35, l.hadith36, l.hadith37, l.hadith38, l.hadith39,
  l.hadith40, l.hadith41, l.hadith42, l.hadith43, l.hadith44,
  l.hadith45, l.hadith46, l.hadith47, l.hadith48, l.hadith49,
  l.hadith50, l.hadith51, l.hadith52, l.hadith53, l.hadith54,
  l.hadith55, l.hadith56, l.hadith57, l.hadith58, l.hadith59,
  l.hadith60, l.hadith61, l.hadith62, l.hadith63, l.hadith64,
  l.hadith65, l.hadith66, l.hadith67, l.hadith68, l.hadith69,
  l.hadith70, l.hadith71, l.hadith72, l.hadith73, l.hadith74,
  l.hadith75, l.hadith76, l.hadith77, l.hadith78, l.hadith79,
  l.hadith80, l.hadith81, l.hadith82, l.hadith83, l.hadith84,
  l.hadith85, l.hadith86, l.hadith87, l.hadith88, l.hadith89,
  l.hadith90, l.hadith91, l.hadith92, l.hadith93, l.hadith94,
  l.hadith95, l.hadith96, l.hadith97, l.hadith98, l.hadith99,
];

class _EmptyDay extends StatelessWidget {
  const _EmptyDay({required this.date});

  final DateTime date;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l = AppLocalizations.of(context);
    final locale = Localizations.localeOf(context).toString();
    final dayOfYear = date.difference(DateTime(date.year)).inDays;
    final quotes = _hadiths(l);
    final hadith = quotes[dayOfYear % quotes.length];

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.history_toggle_off,
              size: 48,
              color: theme.colorScheme.primary.withValues(alpha: 0.5),
            ),
            const SizedBox(height: 16),
            Text(
              l.historyEmptyDay(
                DateFormat('EEEE, MMM d', locale).format(date.toLocal()),
              ),
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium,
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
          ],
        ),
      ),
    );
  }
}
