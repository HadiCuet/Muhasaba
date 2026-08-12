import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/providers.dart';
import '../../app/widgets/max_width_body.dart';
import '../../domain/models/challenge.dart';
import '../../domain/utils/localized_number.dart';
import '../../l10n/app_localizations.dart';
import 'challenge_providers.dart';
import 'widgets/challenge_stepper.dart';

class ChallengeDetailScreen extends ConsumerStatefulWidget {
  const ChallengeDetailScreen({super.key, required this.challengeId});

  final int challengeId;

  @override
  ConsumerState<ChallengeDetailScreen> createState() =>
      _ChallengeDetailScreenState();
}

class _ChallengeDetailScreenState extends ConsumerState<ChallengeDetailScreen> {
  int get challengeId => widget.challengeId;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    return ref
        .watch(challengeViewsProvider)
        .when(
          loading: () => Scaffold(
            appBar: AppBar(),
            body: const Center(child: CircularProgressIndicator()),
          ),
          error: (e, _) => Scaffold(
            appBar: AppBar(),
            body: Center(child: Text(l.errorGeneric(e.toString()))),
          ),
          data: (views) {
            final matches = views
                .where((v) => v.row.id == challengeId)
                .toList();
            if (matches.isEmpty) {
              return Scaffold(appBar: AppBar(), body: const SizedBox.shrink());
            }
            return _buildLoaded(context, l, matches.first);
          },
        );
  }

  Widget _buildLoaded(
    BuildContext context,
    AppLocalizations l,
    ChallengeView view,
  ) {
    final theme = Theme.of(context);
    final entriesAsync = ref.watch(challengeEntriesProvider(challengeId));
    final fraction = view.row.target == 0
        ? 0.0
        : (view.progress / view.row.target).clamp(0.0, 1.0);
    final locale = Localizations.localeOf(context).toString();

    return Scaffold(
      appBar: AppBar(
        title: Text(view.row.title),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit_outlined),
            onPressed: () => context.push('/challenge/$challengeId/edit'),
          ),
          IconButton(
            icon: const Icon(Icons.delete_outline),
            onPressed: () => _confirmDelete(context, l),
          ),
        ],
      ),
      body: MaxWidthBody(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
              sliver: SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Center(
                      child: SizedBox(
                        width: 140,
                        height: 140,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            SizedBox.expand(
                              child: CircularProgressIndicator(
                                value: fraction,
                                strokeWidth: 10,
                                backgroundColor:
                                    theme.colorScheme.surfaceContainerHighest,
                              ),
                            ),
                            Text(
                              lpct(context, (fraction * 100).round()),
                              style: theme.textTheme.headlineSmall,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Center(
                      child: Text(
                        _progressLabel(context, l, view),
                        style: theme.textTheme.titleMedium?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      l.challengeDailyBreakdown.toUpperCase(),
                      style: theme.textTheme.labelMedium?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                        letterSpacing: 1.1,
                      ),
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              ),
            ),
            ...entriesAsync.when(
              loading: () => const <Widget>[
                SliverPadding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 16),
                  sliver: SliverToBoxAdapter(child: LinearProgressIndicator()),
                ),
              ],
              error: (e, _) => <Widget>[
                SliverPadding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 16),
                  sliver: SliverToBoxAdapter(
                    child: Text(l.errorGeneric(e.toString())),
                  ),
                ),
              ],
              data: (entries) {
                final amounts = {
                  for (final e in entries) _dateKey(e.muhasabaDate): e.amount,
                };
                final today = ref.watch(currentMuhasabaDateProvider);
                final days = _logDays(
                  startDate: view.row.startDate,
                  endExclusive: view.row.endExclusive,
                  today: today,
                );
                return <Widget>[
                  SliverPadding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                      16,
                      0,
                      16,
                      16,
                    ),
                    sliver: SliverList.builder(
                      itemCount: days.length,
                      itemBuilder: (context, index) {
                        final day = days[index];
                        return _DayRow(
                          key: ValueKey(day),
                          day: day,
                          amount: amounts[_dateKey(day)] ?? 0,
                          isToday: day == today,
                          mode: view.row.mode,
                          stepSize: view.row.stepSize,
                          locale: locale,
                          onChanged: (v) => _setDay(view, day, v),
                        );
                      },
                    ),
                  ),
                ];
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _setDay(ChallengeView view, DateTime day, int amount) async {
    await ref
        .read(challengeRepositoryProvider)
        .setDayAmount(
          challenge: view.row,
          muhasabaDate: day,
          amount: amount < 0 ? 0 : amount,
        );
    await refreshChallengeNudges(ref);
  }

  String _progressLabel(
    BuildContext context,
    AppLocalizations l,
    ChallengeView view,
  ) {
    final done = lnum(context, view.progress);
    final target = lnum(context, view.row.target);
    return switch (view.row.mode) {
      ChallengeMode.days => l.challengeProgressDays(done, target),
      ChallengeMode.count =>
        (view.row.unit?.isNotEmpty ?? false)
            ? l.challengeProgressCount(done, target, view.row.unit!)
            : l.challengeProgressPlain(done, target),
    };
  }

  Future<void> _confirmDelete(BuildContext context, AppLocalizations l) async {
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l.deleteChallenge),
        content: Text(l.deleteChallengeConfirm),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: Text(l.cancel),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(ctx, true),
            child: Text(l.delete),
          ),
        ],
      ),
    );
    if (ok != true || !context.mounted) return;
    await ref.read(challengeRepositoryProvider).remove(challengeId);
    if (context.mounted) context.pop();
  }
}

class _DayRow extends StatelessWidget {
  const _DayRow({
    super.key,
    required this.day,
    required this.amount,
    required this.isToday,
    required this.mode,
    required this.stepSize,
    required this.locale,
    required this.onChanged,
  });

  final DateTime day;
  final int amount;
  final bool isToday;
  final ChallengeMode mode;
  final int stepSize;
  final String locale;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final label = localizeDigits(
      context,
      safeDateFormat('EEEE, MMM d', locale).format(day),
    );

    final trailing = mode == ChallengeMode.days
        ? IconButton(
            iconSize: 30,
            icon: Icon(
              amount > 0 ? Icons.check_circle : Icons.circle_outlined,
              color: amount > 0 ? theme.colorScheme.primary : null,
            ),
            onPressed: () => onChanged(amount > 0 ? 0 : 1),
          )
        : ChallengeStepper(
            todayAmount: amount,
            stepSize: stepSize,
            onChanged: onChanged,
          );

    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(vertical: 2),
      child: Row(
        children: [
          Expanded(
            child: Text(
              label,
              style: isToday
                  ? theme.textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: theme.colorScheme.primary,
                    )
                  : theme.textTheme.bodyLarge,
            ),
          ),
          trailing,
        ],
      ),
    );
  }
}

/// Days the log offers, newest first: the challenge's window bounded by today.
///
/// `endExclusive - 1 day` is the window's final day, so an ended challenge
/// stops there rather than at today — a closed window cannot be extended by
/// logging into it later.
List<DateTime> _logDays({
  required DateTime startDate,
  required DateTime? endExclusive,
  required DateTime today,
}) {
  var last = today;
  if (endExclusive != null) {
    final windowLast = endExclusive.subtract(const Duration(days: 1));
    if (windowLast.isBefore(last)) last = windowLast;
  }
  final days = <DateTime>[];
  for (
    var d = last;
    !d.isBefore(startDate);
    d = d.subtract(const Duration(days: 1))
  ) {
    days.add(d);
  }
  return days;
}

/// Normalises a stored `muhasabaDate` to the UTC-midnight key the day list
/// uses. Drift stores these as UTC ISO-8601 text; converting back to UTC
/// before taking the date parts recovers the stored day whatever local
/// representation drift hands back.
DateTime _dateKey(DateTime t) {
  final u = t.isUtc ? t : t.toUtc();
  return DateTime.utc(u.year, u.month, u.day);
}
