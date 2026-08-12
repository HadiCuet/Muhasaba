import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app/providers.dart';
import '../../app/widgets/max_width_body.dart';
import '../../data/db/database.dart';
import '../../domain/utils/localized_amal_title.dart';
import '../../domain/utils/localized_number.dart';
import '../../l10n/app_localizations.dart';

/// Insights → Archive: the amal the user has stopped tracking. Their
/// completions were never deleted, so restoring one resumes the streaks and
/// stats it already had.
class ArchivedAmalScreen extends ConsumerWidget {
  const ArchivedAmalScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = AppLocalizations.of(context);
    final archivedAsync = ref.watch(archivedAmalsProvider);

    return archivedAsync.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, _) => Center(child: Text(l.errorGeneric(e.toString()))),
      data: (rows) {
        if (rows.isEmpty) {
          return MaxWidthBody(
            child: Center(
              child: Padding(
                padding: const EdgeInsetsDirectional.all(32),
                child: Text(
                  l.archivedEmpty,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                ),
              ),
            ),
          );
        }
        return MaxWidthBody(
          child: ListView.builder(
            padding: const EdgeInsets.fromLTRB(12, 12, 12, 16),
            itemCount: rows.length,
            itemBuilder: (context, i) => Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: _ArchivedTile(row: rows[i]),
            ),
          ),
        );
      },
    );
  }
}

class _ArchivedTile extends ConsumerStatefulWidget {
  const _ArchivedTile({required this.row});

  final AmalRow row;

  @override
  ConsumerState<_ArchivedTile> createState() => _ArchivedTileState();
}

class _ArchivedTileState extends ConsumerState<_ArchivedTile> {
  // The tile stays mounted until the stream re-emits, so a second tap would
  // restore twice and bump the row's order again.
  bool _restoring = false;

  /// [confirmation] arrives pre-built: `ref.read` and `context` both throw
  /// once this tile leaves the tree, and the restore suspends.
  Future<void> _restore(String title, String confirmation) async {
    if (_restoring) return;
    setState(() => _restoring = true);
    final row = widget.row;
    final messenger = ScaffoldMessenger.of(context);
    final repository = ref.read(amalRepositoryProvider);
    await repository.restoreToTracking(row.id, notificationTitle: title);
    FirebaseAnalytics.instance.logEvent(
      name: 'amal_restored',
      parameters: {'had_reminder': row.reminderTime != null ? 1 : 0},
    );
    messenger.showSnackBar(SnackBar(content: Text(confirmation)));
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l = AppLocalizations.of(context);
    final row = widget.row;
    final title = localizedAmalTitle(row.title, l);
    final stoppedAt = row.archivedAt;

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(12, 8, 8, 8),
        child: Row(
          children: [
            Text(row.icon, style: const TextStyle(fontSize: 22)),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: theme.textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  if (stoppedAt != null)
                    Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: Text(
                        l.archivedStoppedOn(
                          localizeDigits(
                            context,
                            safeDateFormat(
                              'yMMMd',
                              Localizations.localeOf(context).toString(),
                            ).format(stoppedAt.toLocal()),
                          ),
                        ),
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            TextButton(
              onPressed: _restoring
                  ? null
                  : () => _restore(title, l.archivedRestored(title)),
              child: Text(l.archivedRestore),
            ),
          ],
        ),
      ),
    );
  }
}
