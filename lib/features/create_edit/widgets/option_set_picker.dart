import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../app/providers.dart';
import '../../../data/db/database.dart';
import '../../../domain/models/seed_option_sets.dart';
import '../../../domain/utils/localized_option_label.dart';
import '../../../l10n/app_localizations.dart';
import 'option_set_editor_sheet.dart';

class OptionSetPicker extends ConsumerWidget {
  const OptionSetPicker({
    super.key,
    required this.selectedId,
    required this.amalCategory,
    required this.onChanged,
  });

  final int? selectedId;
  final String? amalCategory;
  final ValueChanged<int?> onChanged;

  /// Sets seeded for this amal's category come first; everything else keeps
  /// its stored order.
  List<OptionSetRow> _ordered(List<OptionSetRow> sets) {
    final affinity = <String, String?>{
      for (final s in kSeedOptionSets) s.seedKey: s.affinity,
    };
    final matches = <OptionSetRow>[];
    final rest = <OptionSetRow>[];
    for (final s in sets) {
      final a = s.seedKey == null ? null : affinity[s.seedKey];
      (a != null && a == amalCategory ? matches : rest).add(s);
    }
    return [...matches, ...rest];
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = AppLocalizations.of(context);
    final sets = ref.watch(optionSetsProvider).value ?? const <OptionSetRow>[];
    final ordered = _ordered(sets);

    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        ChoiceChip(
          label: Text(l.optionSetNone),
          selected: selectedId == null,
          onSelected: (_) => onChanged(null),
        ),
        for (final s in ordered)
          InputChip(
            label: Text(localizedOptionSetName(s.seedKey, s.name, l)),
            selected: selectedId == s.id,
            onSelected: (_) => onChanged(s.id),
            onDeleted: () async {
              final result = await showOptionSetEditorSheet(
                context,
                ref,
                setId: s.id,
              );
              if (result == -1 && selectedId == s.id) onChanged(null);
            },
            deleteIcon: const Icon(Icons.edit, size: 16),
          ),
        ActionChip(
          avatar: const Icon(Icons.add, size: 16),
          label: Text(l.optionSetNew),
          onPressed: () async {
            final id = await showOptionSetEditorSheet(context, ref);
            if (id != null && id > 0) {
              onChanged(id);
              FirebaseAnalytics.instance.logEvent(name: 'option_set_created');
            }
          },
        ),
      ],
    );
  }
}
