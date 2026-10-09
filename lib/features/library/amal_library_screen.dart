import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/providers.dart';
import '../../app/widgets/max_width_body.dart';
import '../../data/db/database.dart';
import '../../domain/models/amal_goal.dart';
import '../../domain/models/frequency.dart';
import '../../domain/utils/localized_amal_title.dart';
import '../../domain/utils/localized_number.dart';
import '../../domain/utils/weekly_days.dart';
import '../../l10n/app_localizations.dart';
import 'amal_library.dart';
import 'library_widgets.dart';

void openAmalLibrary(BuildContext context, {required String source}) {
  FirebaseAnalytics.instance.logEvent(
    name: 'library_opened',
    parameters: {'source': source},
  );
  context.push('/library');
}

final _allAmalsProvider = StreamProvider.autoDispose<List<AmalRow>>((ref) {
  return ref.watch(appDatabaseProvider).amalDao.watchAll();
});

/// The Amal Library: ready-made amals to add to Today in one tap. With [pick]
/// set (opened from the New amal form), tapping a row returns it to the form
/// instead of adding it.
class AmalLibraryScreen extends ConsumerStatefulWidget {
  const AmalLibraryScreen({super.key, this.pick = false});

  final bool pick;

  @override
  ConsumerState<AmalLibraryScreen> createState() => _AmalLibraryScreenState();
}

class _AmalLibraryScreenState extends ConsumerState<AmalLibraryScreen> {
  final _search = TextEditingController();
  bool _searching = false;
  String? _category;

  // Held until the amal stream shows the amal as tracked: until then its row
  // still offers + or Restore, and a second tap would add a duplicate.
  final _busy = <LibraryAmal>{};

  @override
  void dispose() {
    _search.dispose();
    super.dispose();
  }

  String get _query => _search.text.trim();

  Future<void> _add(LibraryAmal amal) async {
    if (!_busy.add(amal)) return;
    setState(() {});
    final l = AppLocalizations.of(context);
    final messenger = ScaffoldMessenger.of(context);
    final router = GoRouter.of(context);
    final amalRepository = ref.read(amalRepositoryProvider);
    final categoryRepository = ref.read(categoryRepositoryProvider);
    final today = ref.read(currentMuhasabaDateProvider);
    final dueToday =
        amal.weeklyDays.isEmpty || amal.weeklyDays.contains(today.weekday);
    final message = dueToday
        ? l.libraryAdded
        : l.libraryAddedShowsOn(
            _weekdays(amal.weeklyDays, l, Directionality.of(context)),
          );
    try {
      await categoryRepository.create(
        amal.category,
        icon: libraryCategoryIcon(amal.category),
      );
      final sortOrder = await amalRepository.nextSortOrder();
      final id = await amalRepository.create(
        title: amal.title,
        notificationTitle: localizedAmalTitle(amal.title, l),
        frequency: amal.frequency,
        target: amal.target,
        weeklyDays: formatWeeklyDays(amal.weeklyDays),
        periodTarget: amal.periodTarget,
        sortOrder: sortOrder,
        icon: amal.icon,
        category: amal.category,
      );
      FirebaseAnalytics.instance.logEvent(
        name: 'library_amal_added',
        parameters: {'key': amal.key, 'category': amal.category},
      );
      messenger
        ..hideCurrentSnackBar()
        ..showSnackBar(
          SnackBar(
            content: Text(message),
            persist: false,
            action: SnackBarAction(
              label: l.libraryEditAction,
              onPressed: () => router.push('/amal/$id'),
            ),
          ),
        );
    } catch (_) {
      if (mounted) setState(() => _busy.remove(amal));
      messenger.showSnackBar(SnackBar(content: Text(l.genericError)));
      rethrow;
    }
  }

  Future<void> _restore(LibraryAmal amal, AmalRow row) async {
    if (!_busy.add(amal)) return;
    setState(() {});
    final l = AppLocalizations.of(context);
    final messenger = ScaffoldMessenger.of(context);
    final router = GoRouter.of(context);
    final title = localizedAmalTitle(row.title, l);
    try {
      await ref
          .read(amalRepositoryProvider)
          .restoreToTracking(row.id, notificationTitle: title);
      FirebaseAnalytics.instance.logEvent(
        name: 'library_amal_restored',
        parameters: {'key': amal.key},
      );
      messenger
        ..hideCurrentSnackBar()
        ..showSnackBar(
          SnackBar(
            content: Text(l.archivedRestored(title)),
            persist: false,
            action: SnackBarAction(
              label: l.libraryEditAction,
              onPressed: () => router.push('/amal/${row.id}'),
            ),
          ),
        );
    } catch (_) {
      if (mounted) setState(() => _busy.remove(amal));
      messenger.showSnackBar(SnackBar(content: Text(l.genericError)));
      rethrow;
    }
  }

  void _open(LibraryAmal amal, int? trackedId) {
    if (widget.pick) {
      FirebaseAnalytics.instance.logEvent(
        name: 'library_amal_picked',
        parameters: {'key': amal.key},
      );
      context.pop(amal);
    } else if (trackedId != null) {
      context.push('/amal/$trackedId');
    } else {
      context.push('/amal/new', extra: amal);
    }
  }

  void _closeSearch() => setState(() {
    _searching = false;
    _search.clear();
  });

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    ref.listen(_allAmalsProvider, (_, next) {
      final rows = next.value;
      if (rows == null || _busy.isEmpty) return;
      final tracked = {
        for (final r in rows)
          if (r.archivedAt == null) r.title,
      };
      if (_busy.any((a) => tracked.contains(a.title))) {
        setState(() => _busy.removeWhere((a) => tracked.contains(a.title)));
      }
    });
    final amals = ref.watch(_allAmalsProvider);
    final rows = amals.value ?? const <AmalRow>[];
    final tracked = <String, int>{
      for (final r in rows)
        if (r.archivedAt == null) r.title: r.id,
    };
    final archived = <String, AmalRow>{};
    for (final r in rows) {
      if (r.archivedAt == null || tracked.containsKey(r.title)) continue;
      final seen = archived[r.title];
      if (seen == null || r.archivedAt!.isAfter(seen.archivedAt!)) {
        archived[r.title] = r;
      }
    }

    final query = librarySearchKey(_query);
    final shown = kAmalLibrary.where((a) {
      if (_category != null && a.category != _category) return false;
      if (query.isEmpty) return true;
      return librarySearchKey(localizedAmalTitle(a.title, l)).contains(query) ||
          librarySearchKey(a.title).contains(query);
    }).toList();

    Widget row(LibraryAmal a) => LibraryRow(
      icon: a.icon,
      title: localizedAmalTitle(a.title, l),
      subtitle: _schedule(context, a, l),
      onTap: () => _open(a, tracked[a.title]),
      trailing: amals.hasValue
          ? _trailing(a, l, tracked, archived)
          : const SizedBox.shrink(),
    );

    final children = <Widget>[];
    if (_category == null && query.isEmpty) {
      for (final c in kLibraryCategories) {
        final group = shown.where((a) => a.category == c.name).toList();
        if (group.isEmpty) continue;
        children
          ..add(LibrarySectionHeader(icon: c.icon, name: c.name))
          ..addAll(group.map(row));
      }
    } else {
      children.addAll(shown.map(row));
    }
    if (query.isNotEmpty) {
      if (shown.isEmpty) {
        children.add(
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(8, 16, 8, 8),
            child: Text(
              l.libraryNoMatch(_query),
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
          ),
        );
      }
      if (!widget.pick) {
        children.add(
          LibraryCreateRow(
            label: l.libraryCreateNamed(_query),
            onTap: () => context.push('/amal/new', extra: _query),
          ),
        );
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: _searching
            ? TextField(
                controller: _search,
                autofocus: true,
                autocorrect: false,
                enableSuggestions: false,
                textInputAction: TextInputAction.search,
                decoration: InputDecoration(
                  hintText: l.librarySearchHint,
                  border: InputBorder.none,
                ),
                onChanged: (_) => setState(() {}),
              )
            : Text(l.libraryTitle),
        actions: [
          if (_searching)
            IconButton(
              icon: const Icon(Icons.close),
              tooltip: MaterialLocalizations.of(context).closeButtonTooltip,
              onPressed: _closeSearch,
            )
          else
            IconButton(
              icon: const Icon(Icons.search),
              tooltip: l.librarySearchHint,
              onPressed: () => setState(() => _searching = true),
            ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(52),
          child: LibraryCategoryChips(
            selected: _category,
            onSelected: (c) => setState(() => _category = c),
          ),
        ),
      ),
      body: MaxWidthBody(
        child: ListView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          padding: EdgeInsetsDirectional.fromSTEB(
            8,
            4,
            8,
            24 + MediaQuery.paddingOf(context).bottom,
          ),
          children: children,
        ),
      ),
    );
  }

  Widget _trailing(
    LibraryAmal a,
    AppLocalizations l,
    Map<String, int> tracked,
    Map<String, AmalRow> archived,
  ) {
    final scheme = Theme.of(context).colorScheme;
    final isTracked = tracked.containsKey(a.title);
    if (widget.pick) {
      return isTracked
          ? Tooltip(
              message: l.libraryOnList,
              child: Icon(Icons.check_circle, color: scheme.primary),
            )
          : const SizedBox.shrink();
    }
    if (isTracked) {
      return Tooltip(
        message: l.libraryOnList,
        child: CircleAvatar(
          radius: 18,
          backgroundColor: scheme.secondaryContainer,
          child: Icon(
            Icons.check,
            size: 20,
            color: scheme.onSecondaryContainer,
          ),
        ),
      );
    }
    final busy = _busy.contains(a);
    final archivedRow = archived[a.title];
    if (archivedRow != null) {
      return TextButton(
        onPressed: busy ? null : () => _restore(a, archivedRow),
        child: Text(l.archivedRestore),
      );
    }
    return IconButton.outlined(
      tooltip: l.libraryAddTooltip(localizedAmalTitle(a.title, l)),
      onPressed: busy ? null : () => _add(a),
      icon: const Icon(Icons.add),
    );
  }
}

String _schedule(BuildContext context, LibraryAmal a, AppLocalizations l) {
  final parts = <String>[
    switch (a.frequency) {
      Frequency.daily => l.frequencyDaily,
      Frequency.weekly =>
        a.weeklyDays.isNotEmpty
            ? '${l.frequencyWeekly}${l.listSeparator}'
                  '${_weekdays(a.weeklyDays, l, Directionality.of(context))}'
            : l.libraryWeeklyAny(a.periodTarget, lnum(context, a.periodTarget)),
      Frequency.monthly => l.libraryMonthlyAny(
        a.periodTarget,
        lnum(context, a.periodTarget),
      ),
    },
    if (a.target == kOpenEndedTarget) l.libraryAnyAmount,
    if (a.target > 1) l.libraryTimes(a.target, lnum(context, a.target)),
  ];
  return parts.join(l.listSeparator);
}

String _weekdays(Set<int> days, AppLocalizations l, TextDirection direction) =>
    (days.toList()..sort())
        .map((d) => _weekdayName(d, l))
        .join(direction == TextDirection.rtl ? '، ' : ', ');

String _weekdayName(int d, AppLocalizations l) => switch (d) {
  DateTime.monday => l.mondayFull,
  DateTime.tuesday => l.tuesdayFull,
  DateTime.wednesday => l.wednesdayFull,
  DateTime.thursday => l.thursdayFull,
  DateTime.friday => l.fridayFull,
  DateTime.saturday => l.saturdayFull,
  DateTime.sunday => l.sundayFull,
  _ => '',
};
