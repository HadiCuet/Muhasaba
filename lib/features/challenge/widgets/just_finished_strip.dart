import 'package:flutter/material.dart';

import '../../../domain/utils/localized_number.dart';
import '../../../l10n/app_localizations.dart';

/// Announces challenges that just moved to Past. Shown on the Active tab
/// until the user looks at Past, which is what dismisses it — there is no
/// close control by design.
class JustFinishedStrip extends StatelessWidget {
  const JustFinishedStrip({
    super.key,
    required this.count,
    required this.mostRecentTitle,
    required this.onTap,
  });

  final int count;
  final String mostRecentTitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final scheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(12, 0, 12, 8),
      child: Material(
        color: scheme.primaryContainer,
        borderRadius: BorderRadius.circular(12),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsetsDirectional.all(12),
            child: Row(
              children: [
                const Text('🎉', style: TextStyle(fontSize: 18)),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    localizeDigits(
                      context,
                      l.challengeJustFinished(count, mostRecentTitle),
                    ),
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: scheme.onPrimaryContainer,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Icon(Icons.chevron_right, color: scheme.onPrimaryContainer),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
