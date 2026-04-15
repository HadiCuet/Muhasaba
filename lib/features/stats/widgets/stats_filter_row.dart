import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../stats_filter.dart';
import '../stats_providers.dart';
import '../../../l10n/app_localizations.dart';

class StatsFilterRow extends ConsumerWidget {
  const StatsFilterRow({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = AppLocalizations.of(context);
    final filter = ref.watch(statsFilterProvider);
    final locale = Localizations.localeOf(context).toString();

    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
      child: Row(
        children: [
          Expanded(
            child: _FilterDropdown(
              label: l.statsFilterTime,
              value: _periodLabel(l, filter, locale),
              onSelected: (context) =>
                  _showTimePicker(context, ref, filter, l),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: _CategoryDropdown(
              label: l.statsFilterCategory,
              filter: filter,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: _AmalDropdown(
              label: l.statsFilterAmal,
              filter: filter,
            ),
          ),
        ],
      ),
    );
  }

  String _periodLabel(
    AppLocalizations l,
    StatsFilter filter,
    String locale,
  ) {
    return switch (filter.period) {
      StatsPeriod.today => l.statsToday,
      StatsPeriod.thisWeek => l.statsThisWeek,
      StatsPeriod.thisMonth => l.statsThisMonth,
      StatsPeriod.allTime => l.statsAllTime,
      StatsPeriod.custom =>
        (filter.customStart != null && filter.customEnd != null)
            ? _formatCompactRange(
                filter.customStart!,
                filter.customEnd!,
                locale,
              )
            : l.statsCustomRange,
    };
  }

  void _showTimePicker(
    BuildContext context,
    WidgetRef ref,
    StatsFilter filter,
    AppLocalizations l,
  ) {
    final entries = <PopupMenuEntry<StatsPeriod>>[
      PopupMenuItem(value: StatsPeriod.today, child: Text(l.statsToday)),
      PopupMenuItem(value: StatsPeriod.thisWeek, child: Text(l.statsThisWeek)),
      PopupMenuItem(
          value: StatsPeriod.thisMonth, child: Text(l.statsThisMonth)),
      PopupMenuItem(value: StatsPeriod.allTime, child: Text(l.statsAllTime)),
      PopupMenuItem(
          value: StatsPeriod.custom, child: Text(l.statsCustomRange)),
    ];

    final button = context.findRenderObject() as RenderBox;
    final overlay =
        Navigator.of(context).overlay!.context.findRenderObject() as RenderBox;
    final position = RelativeRect.fromRect(
      Rect.fromPoints(
        button.localToGlobal(Offset.zero, ancestor: overlay),
        button.localToGlobal(button.size.bottomLeft(Offset.zero),
            ancestor: overlay),
      ),
      Offset.zero & overlay.size,
    );

    showMenu<StatsPeriod>(
      context: context,
      position: position,
      items: entries,
      initialValue: filter.period,
    ).then((value) async {
      if (value == null) return;
      if (value == StatsPeriod.custom) {
        if (!context.mounted) return;
        final range = await showDateRangePicker(
          context: context,
          firstDate: DateTime(2020),
          lastDate: DateTime.now(),
          initialDateRange: filter.customStart != null && filter.customEnd != null
              ? DateTimeRange(
                  start: filter.customStart!, end: filter.customEnd!)
              : null,
        );
        if (range != null) {
          ref.read(statsFilterProvider.notifier).update(filter.copyWith(
            period: StatsPeriod.custom,
            customStart: () => range.start,
            customEnd: () => range.end,
          ));
          FirebaseAnalytics.instance.logEvent(
            name: 'stats_period_changed',
            parameters: {'period': 'custom'},
          );
        }
      } else {
        ref.read(statsFilterProvider.notifier).update(
            filter.copyWith(period: value));
        FirebaseAnalytics.instance.logEvent(
          name: 'stats_period_changed',
          parameters: {'period': value.name},
        );
      }
    });
  }
}

class _FilterDropdown extends StatelessWidget {
  const _FilterDropdown({
    required this.label,
    required this.value,
    required this.onSelected,
  });

  final String label;
  final String value;
  final void Function(BuildContext context) onSelected;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: () => onSelected(context),
      child: Container(
        padding: const EdgeInsetsDirectional.fromSTEB(10, 8, 6, 8),
        decoration: BoxDecoration(
          color: theme.colorScheme.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    label,
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(height: 1),
                  FittedBox(
                    // Shrinks the value text down if the compact date range
                    // (or long category / amal name) can't fit in the 1/3
                    // column — keeps it single-line and readable instead of
                    // ellipsing mid-word.
                    fit: BoxFit.scaleDown,
                    alignment: AlignmentDirectional.centerStart,
                    child: Text(
                      value,
                      style: theme.textTheme.bodySmall?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                      maxLines: 1,
                      softWrap: false,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.arrow_drop_down,
              size: 18,
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ],
        ),
      ),
    );
  }
}

class _CategoryDropdown extends ConsumerWidget {
  const _CategoryDropdown({
    required this.label,
    required this.filter,
  });

  final String label;
  final StatsFilter filter;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = AppLocalizations.of(context);
    final categoriesAsync = ref.watch(allCategoriesProvider);
    final displayValue = filter.category ?? l.statsAllCategories;

    return _FilterDropdown(
      label: label,
      value: displayValue,
      onSelected: (ctx) {
        final categories = categoriesAsync.value ?? [];
        // Use '' as sentinel for "All" since null means menu dismissed.
        final entries = <PopupMenuEntry<String>>[
          PopupMenuItem<String>(
            value: '',
            child: Text(l.statsAllCategories),
          ),
          for (final cat in categories)
            PopupMenuItem<String>(value: cat, child: Text(cat)),
        ];

        final button = ctx.findRenderObject() as RenderBox;
        final overlay = Navigator.of(ctx)
            .overlay!
            .context
            .findRenderObject() as RenderBox;
        final position = RelativeRect.fromRect(
          Rect.fromPoints(
            button.localToGlobal(Offset.zero, ancestor: overlay),
            button.localToGlobal(button.size.bottomLeft(Offset.zero),
                ancestor: overlay),
          ),
          Offset.zero & overlay.size,
        );

        showMenu<String>(
          context: ctx,
          position: position,
          items: entries,
        ).then((value) {
          if (value == null) return; // dismissed
          final newCategory = value.isEmpty ? null : value;
          ref.read(statsFilterProvider.notifier).update(filter.copyWith(
            category: () => newCategory,
          ));
          FirebaseAnalytics.instance.logEvent(
            name: 'stats_category_filter_changed',
            parameters: {'active': newCategory != null ? 1 : 0},
          );
        });
      },
    );
  }
}

class _AmalDropdown extends ConsumerWidget {
  const _AmalDropdown({
    required this.label,
    required this.filter,
  });

  final String label;
  final StatsFilter filter;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = AppLocalizations.of(context);
    final amalsAsync = ref.watch(allActiveAmalsProvider);
    final amals = amalsAsync.value ?? [];
    final selected = filter.amalId != null
        ? amals.where((a) => a.id == filter.amalId).firstOrNull?.title
        : null;
    final displayValue = selected ?? l.statsAllAmals;

    return _FilterDropdown(
      label: label,
      value: displayValue,
      onSelected: (ctx) {
        // Use -1 as sentinel for "All" since null means menu dismissed.
        final entries = <PopupMenuEntry<int>>[
          PopupMenuItem<int>(
            value: -1,
            child: Text(l.statsAllAmals),
          ),
          for (final amal in amals)
            PopupMenuItem<int>(
              value: amal.id,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(amal.icon),
                  const SizedBox(width: 8),
                  Flexible(
                    child: Text(
                      amal.title,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
        ];

        final button = ctx.findRenderObject() as RenderBox;
        final overlay = Navigator.of(ctx)
            .overlay!
            .context
            .findRenderObject() as RenderBox;
        final position = RelativeRect.fromRect(
          Rect.fromPoints(
            button.localToGlobal(Offset.zero, ancestor: overlay),
            button.localToGlobal(button.size.bottomLeft(Offset.zero),
                ancestor: overlay),
          ),
          Offset.zero & overlay.size,
        );

        showMenu<int>(
          context: ctx,
          position: position,
          items: entries,
        ).then((value) {
          if (value == null) return; // dismissed
          final newAmalId = value == -1 ? null : value;
          ref.read(statsFilterProvider.notifier).update(filter.copyWith(
            amalId: () => newAmalId,
          ));
          FirebaseAnalytics.instance.logEvent(
            name: 'stats_amal_filter_changed',
            parameters: {'active': newAmalId != null ? 1 : 0},
          );
        });
      },
    );
  }
}

/// Context-aware compact date-range formatting for the Time filter's closed
/// state. Collapses redundant month/year repetition so short ranges stay
/// readable in ~80 px of text width:
///
///  * same day              → "Apr 1"
///  * same month + year     → "Apr 1 – 15"
///  * same year, diff month → "Apr 1 – May 15"
///  * cross-year            → "Dec 15, 24 – Jan 5, 25"
///
/// Month names come from `intl`'s locale-aware `DateFormat`, so Bangla / Arabic
/// / etc. render in-locale. The ASCII pattern `MMM d, yy` is deliberate — the
/// two-digit year is kept ASCII regardless of locale so the output never blows
/// up into "Dec 15, 2024" which won't fit. `FittedBox(scaleDown)` in
/// `_FilterDropdown` is the final backstop if even this format overflows.
String _formatCompactRange(DateTime start, DateTime end, String locale) {
  final mmmD = DateFormat.MMMd(locale);
  final mmmDyy = DateFormat('MMM d, yy', locale);

  final sameDay = start.year == end.year &&
      start.month == end.month &&
      start.day == end.day;
  if (sameDay) return mmmD.format(start);

  final sameYear = start.year == end.year;
  final sameMonth = sameYear && start.month == end.month;

  if (sameMonth) {
    return '${mmmD.format(start)} – ${DateFormat.d(locale).format(end)}';
  }
  if (sameYear) {
    return '${mmmD.format(start)} – ${mmmD.format(end)}';
  }
  return '${mmmDyy.format(start)} – ${mmmDyy.format(end)}';
}
