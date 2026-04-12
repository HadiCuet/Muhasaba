import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';

enum RemoveChoice { today, tracking, cancel }

/// Bottom sheet presented on long-press of a today row. Offers the two
/// removal modes per the spec: transient (just today) vs permanent.
Future<RemoveChoice> showRemoveSheet(
  BuildContext context, {
  required String amalTitle,
}) async {
  final l = AppLocalizations.of(context);
  final result = await showModalBottomSheet<RemoveChoice>(
    context: context,
    showDragHandle: true,
    builder: (ctx) {
      return SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
              child: Text(amalTitle, style: Theme.of(ctx).textTheme.titleLarge),
            ),
            ListTile(
              leading: const Icon(Icons.visibility_off_outlined),
              title: Text(l.removeFromToday),
              subtitle: Text(l.removeFromTodaySubtitle),
              onTap: () => Navigator.of(ctx).pop(RemoveChoice.today),
            ),
            ListTile(
              leading: const Icon(Icons.delete_outline),
              title: Text(l.removeFromTracking),
              subtitle: Text(l.removeFromTrackingSubtitle),
              onTap: () => Navigator.of(ctx).pop(RemoveChoice.tracking),
            ),
            const SizedBox(height: 8),
          ],
        ),
      );
    },
  );
  return result ?? RemoveChoice.cancel;
}
