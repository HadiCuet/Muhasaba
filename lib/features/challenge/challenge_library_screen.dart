import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart' show toBeginningOfSentenceCase;

import '../../app/providers.dart';
import '../../app/widgets/max_width_body.dart';
import '../../data/db/database.dart';
import '../../domain/models/challenge.dart';
import '../../domain/utils/localized_challenge_title.dart';
import '../../domain/utils/localized_number.dart';
import '../../l10n/app_localizations.dart';
import '../library/amal_library.dart';
import '../library/library_widgets.dart';
import 'challenge_library.dart';
import 'challenge_providers.dart';

void openChallengeLibrary(BuildContext context, {required String source}) {
  FirebaseAnalytics.instance.logEvent(
    name: 'challenge_library_opened',
    parameters: {'source': source},
  );
  context.push('/challenge-library');
}

final _allChallengesProvider = StreamProvider.autoDispose<List<ChallengeRow>>((
  ref,
) {
  return ref.watch(challengeRepositoryProvider).watchAll();
});

/// The Challenge Library: ready-made challenges to start in one tap. With
/// [pick] set (opened from the New challenge form), tapping a row returns it
/// to the form instead of starting it.
class ChallengeLibraryScreen extends ConsumerStatefulWidget {
  const ChallengeLibraryScreen({super.key, this.pick = false});

  final bool pick;

  @override
  ConsumerState<ChallengeLibraryScreen> createState() =>
      _ChallengeLibraryScreenState();
}

class _ChallengeLibraryScreenState
    extends ConsumerState<ChallengeLibraryScreen> {
  final _search = TextEditingController();
  bool _searching = false;
  String? _category;

  // Held until the challenge stream shows it running: until then its row
  // still offers +, and a second tap would start a duplicate.
  final _busy = <LibraryChallenge>{};

  @override
  void dispose() {
    _search.dispose();
    super.dispose();
  }

  String get _query => _search.text.trim();

  Future<void> _start(LibraryChallenge challenge) async {
    if (!_busy.add(challenge)) return;
    setState(() {});
    final l = AppLocalizations.of(context);
    final messenger = ScaffoldMessenger.of(context);
    final router = GoRouter.of(context);
    final categories = ref.read(categoryRepositoryProvider);
    final challenges = ref.read(challengeRepositoryProvider);
    final today = ref.read(currentMuhasabaDateProvider);
    final days = challenge.durationDays;
    final endExclusive = days == null ? null : today.add(Duration(days: days));
    final message = endExclusive == null
        ? l.challengeLibraryStartedNoDeadline
        : l.challengeLibraryStarted(
            localizeDigits(
              context,
              safeDateFormat(
                'MMMEd',
                Localizations.localeOf(context).toString(),
              ).format(endExclusive.subtract(const Duration(days: 1))),
            ),
          );
    try {
      await categories.create(
        challenge.category,
        icon: libraryCategoryIcon(challenge.category),
      );
      final id = await challenges.create(
        title: challenge.title,
        notificationTitle: localizedChallengeTitle(challenge.title, l),
        icon: challenge.icon,
        mode: challenge.mode,
        target: challenge.target,
        stepSize: challenge.mode == ChallengeMode.days ? 1 : challenge.stepSize,
        unit: challenge.unit,
        category: challenge.category,
        startDate: today,
        endExclusive: endExclusive,
      );
      FirebaseAnalytics.instance.logEvent(
        name: 'challenge_library_started',
        parameters: {'key': challenge.key, 'category': challenge.category},
      );
      if (mounted) await refreshChallengeNudges(ref);
      messenger
        ..hideCurrentSnackBar()
        ..showSnackBar(
          SnackBar(
            content: Text(message),
            persist: false,
            action: SnackBarAction(
              label: l.libraryEditAction,
              onPressed: () => router.push('/challenge/$id/edit'),
            ),
          ),
        );
    } catch (_) {
      if (mounted) setState(() => _busy.remove(challenge));
      messenger.showSnackBar(SnackBar(content: Text(l.genericError)));
      rethrow;
    }
  }

  void _open(LibraryChallenge challenge, int? runningId) {
    if (widget.pick) {
      FirebaseAnalytics.instance.logEvent(
        name: 'challenge_library_picked',
        parameters: {'key': challenge.key},
      );
      context.pop(challenge);
    } else if (runningId != null) {
      context.push('/challenge/$runningId');
    } else {
      context.push('/challenge/new', extra: challenge);
    }
  }

  void _closeSearch() => setState(() {
    _searching = false;
    _search.clear();
  });

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    ref.listen(_allChallengesProvider, (_, next) {
      final rows = next.value;
      if (rows == null || _busy.isEmpty) return;
      final running = _runningIds(rows);
      if (_busy.any((c) => running.containsKey(c.title))) {
        setState(() => _busy.removeWhere((c) => running.containsKey(c.title)));
      }
    });
    final challenges = ref.watch(_allChallengesProvider);
    final running = _runningIds(challenges.value ?? const <ChallengeRow>[]);

    final query = librarySearchKey(_query);
    final shown = kChallengeLibrary.where((c) {
      if (_category != null && c.category != _category) return false;
      if (query.isEmpty) return true;
      return librarySearchKey(
            localizedChallengeTitle(c.title, l),
          ).contains(query) ||
          librarySearchKey(c.title).contains(query);
    }).toList();

    Widget row(LibraryChallenge c) => LibraryRow(
      icon: c.icon,
      title: localizedChallengeTitle(c.title, l),
      subtitle: _goal(context, c, l),
      onTap: () => _open(c, running[c.title]),
      trailing: challenges.hasValue
          ? _trailing(c, l, running)
          : const SizedBox.shrink(),
    );

    final children = <Widget>[];
    if (_category == null && query.isEmpty) {
      for (final category in kLibraryCategories) {
        final group = shown.where((c) => c.category == category.name).toList();
        if (group.isEmpty) continue;
        children
          ..add(LibrarySectionHeader(icon: category.icon, name: category.name))
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
              l.challengeLibraryNoMatch(_query),
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
            onTap: () => context.push('/challenge/new', extra: _query),
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
                  hintText: l.challengeLibrarySearchHint,
                  border: InputBorder.none,
                ),
                onChanged: (_) => setState(() {}),
              )
            : Text(l.challengeLibraryTitle),
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
              tooltip: l.challengeLibrarySearchHint,
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
    LibraryChallenge c,
    AppLocalizations l,
    Map<String, int> running,
  ) {
    final scheme = Theme.of(context).colorScheme;
    final isRunning = running.containsKey(c.title);
    if (widget.pick) {
      return isRunning
          ? Tooltip(
              message: l.challengeLibraryRunning,
              child: Icon(Icons.check_circle, color: scheme.primary),
            )
          : const SizedBox.shrink();
    }
    if (isRunning) {
      return Tooltip(
        message: l.challengeLibraryRunning,
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
    return IconButton.outlined(
      tooltip: l.challengeLibraryStartTooltip(
        localizedChallengeTitle(c.title, l),
      ),
      onPressed: _busy.contains(c) ? null : () => _start(c),
      icon: const Icon(Icons.add),
    );
  }
}

/// Title → id of every challenge still running.
Map<String, int> _runningIds(List<ChallengeRow> rows) => {
  for (final r in rows)
    if (r.status == ChallengeStatus.active) r.title: r.id,
};

/// One line under the title: what the challenge asks, and by when.
///
/// Sentence-cased because languages that put the noun before the number
/// (Hausa, Swahili) would otherwise open the line in lowercase.
String _goal(BuildContext context, LibraryChallenge c, AppLocalizations l) {
  String days(int n) => l.challengeLibraryDays(n, lnum(context, n));
  final goal = c.mode == ChallengeMode.days
      ? days(c.target)
      : l.challengeLibraryAmount(
          lnum(context, c.target),
          localizedChallengeUnit(c.unit ?? '', l),
        );
  final window = c.durationDays;
  final line = window == null
      ? l.challengeLibraryNoDeadlineGoal(goal)
      : c.mode == ChallengeMode.days && window == c.target
      ? l.challengeLibraryEveryDay(days(window))
      : l.challengeLibraryWithin(goal, days(window));
  return toBeginningOfSentenceCase(
    line,
    Localizations.localeOf(context).toString(),
  );
}
