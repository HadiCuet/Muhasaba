import 'package:flutter/material.dart';

enum RemoveChoice { today, tracking, cancel }

/// Bottom sheet presented on long-press of a today row. Offers the two
/// removal modes per the spec: transient (just today) vs permanent.
Future<RemoveChoice> showRemoveSheet(
  BuildContext context, {
  required String amalTitle,
}) async {
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
              child: Text(
                amalTitle,
                style: Theme.of(ctx).textTheme.titleLarge,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.visibility_off_outlined),
              title: const Text('Remove from today'),
              subtitle:
                  const Text('Hide just for this day. It returns tomorrow.'),
              onTap: () => Navigator.of(ctx).pop(RemoveChoice.today),
            ),
            ListTile(
              leading: const Icon(Icons.delete_outline),
              title: const Text('Remove from tracking'),
              subtitle: const Text(
                  'Permanently remove from your list. History is kept.'),
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
