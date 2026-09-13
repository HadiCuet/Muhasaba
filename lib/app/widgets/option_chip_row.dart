import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/db/database.dart';
import '../../domain/utils/localized_option_label.dart';
import '../../l10n/app_localizations.dart';
import '../providers.dart';

/// The options for one amal on one day. A `Wrap` of `ChoiceChip` rather than
/// `SegmentedButton`, which cannot wrap — long labels have to fall to a second
/// line instead of shrinking out of legibility.
class OptionChipRow extends ConsumerWidget {
  const OptionChipRow({
    super.key,
    required this.setId,
    required this.selectedItemId,
    required this.onChanged,
  });

  final int setId;
  final int? selectedItemId;
  final ValueChanged<int?> onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = AppLocalizations.of(context);
    final all =
        ref.watch(optionSetItemsProvider).value ?? const <OptionSetItemRow>[];
    final mine = all.where((i) => i.setId == setId).toList();
    final visible = [
      ...mine.where((i) => i.archivedAt == null),
      // An archived item stays visible on the one day that recorded it, so
      // history reads truthfully and the user can move off it.
      ...mine.where((i) => i.archivedAt != null && i.id == selectedItemId),
    ];
    if (visible.isEmpty) return const SizedBox.shrink();

    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(12, 0, 12, 10),
      child: Wrap(
        spacing: 6,
        runSpacing: 6,
        children: [
          for (final item in visible)
            Semantics(
              selected: item.id == selectedItemId,
              label: item.id == selectedItemId
                  ? l.optionSelected(
                      localizedOptionLabel(item.seedKey, item.label, l),
                    )
                  : l.optionNotSelected(
                      localizedOptionLabel(item.seedKey, item.label, l),
                    ),
              child: ChoiceChip(
                label: Text(localizedOptionLabel(item.seedKey, item.label, l)),
                selected: item.id == selectedItemId,
                showCheckmark: false,
                visualDensity: VisualDensity.compact,
                onSelected: (_) =>
                    onChanged(item.id == selectedItemId ? null : item.id),
              ),
            ),
        ],
      ),
    );
  }
}
