import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/providers.dart';
import '../../app/widgets/max_width_body.dart';
import '../../domain/models/challenge.dart';
import '../../domain/utils/localized_number.dart';
import '../../l10n/app_localizations.dart';
import 'challenge_providers.dart';

class ChallengeDetailScreen extends ConsumerWidget {
  const ChallengeDetailScreen({super.key, required this.challengeId});

  final int challengeId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
            return _buildLoaded(context, ref, l, matches.first);
          },
        );
  }

  Widget _buildLoaded(
    BuildContext context,
    WidgetRef ref,
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
            onPressed: () => _confirmDelete(context, ref, l),
          ),
        ],
      ),
      body: MaxWidthBody(
        child: ListView(
          padding: const EdgeInsetsDirectional.all(16),
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
            ...entriesAsync.when(
              loading: () => const <Widget>[LinearProgressIndicator()],
              error: (e, _) => <Widget>[Text(l.errorGeneric(e.toString()))],
              data: (entries) => <Widget>[
                for (final e in entries)
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      localizeDigits(
                        context,
                        safeDateFormat(
                          'EEEE, MMM d',
                          locale,
                        ).format(e.muhasabaDate),
                      ),
                    ),
                    trailing: Text(lnum(context, e.amount)),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
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

  Future<void> _confirmDelete(
    BuildContext context,
    WidgetRef ref,
    AppLocalizations l,
  ) async {
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
