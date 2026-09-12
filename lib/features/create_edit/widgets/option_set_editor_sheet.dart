import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../app/providers.dart';
import '../../../data/db/database.dart';
import '../../../domain/utils/localized_option_label.dart';
import '../../../l10n/app_localizations.dart';

const int kMaxOptionsPerSet = 6;

/// Returns the saved set id, `-1` if the set was deleted, or `null` on cancel.
Future<int?> showOptionSetEditorSheet(
  BuildContext context,
  WidgetRef ref, {
  int? setId,
}) {
  return showModalBottomSheet<int>(
    context: context,
    isScrollControlled: true,
    builder: (_) => Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: _OptionSetEditorSheet(setId: setId),
    ),
  );
}

class _OptionSetEditorSheet extends ConsumerStatefulWidget {
  const _OptionSetEditorSheet({this.setId});

  final int? setId;

  @override
  ConsumerState<_OptionSetEditorSheet> createState() =>
      _OptionSetEditorSheetState();
}

class _DraftItem {
  _DraftItem({
    this.id,
    this.seedKey,
    required this.originalLabel,
    required String display,
  }) : controller = TextEditingController(text: display);

  final int? id;
  String? seedKey;
  final String originalLabel;
  final TextEditingController controller;
}

class _OptionSetEditorSheetState extends ConsumerState<_OptionSetEditorSheet> {
  final _nameController = TextEditingController();
  final _items = <_DraftItem>[];

  OptionSetRow? _existing;
  String? _setSeedKey;
  String _originalName = '';
  // Latches once hydration completes so a later provider emission never
  // overwrites edits the user has already started typing.
  bool _hydrated = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    if (widget.setId == null) {
      _items.addAll([
        _DraftItem(originalLabel: '', display: ''),
        _DraftItem(originalLabel: '', display: ''),
      ]);
      _hydrated = true;
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    for (final i in _items) {
      i.controller.dispose();
    }
    super.dispose();
  }

  /// Seeded rows are prefilled with their localized rendering. Text the user
  /// never touched must round-trip to the canonical English, or merely opening
  /// the sheet and saving would freeze a translation into the database.
  ({String label, String? seedKey}) _canonical(_DraftItem item) {
    final l = AppLocalizations.of(context);
    final typed = item.controller.text.trim();
    if (item.seedKey != null &&
        typed == localizedOptionLabel(item.seedKey, item.originalLabel, l)) {
      return (label: item.originalLabel, seedKey: item.seedKey);
    }
    return (label: typed, seedKey: null);
  }

  ({String name, String? seedKey}) _canonicalName() {
    final l = AppLocalizations.of(context);
    final typed = _nameController.text.trim();
    if (_setSeedKey != null &&
        typed == localizedOptionSetName(_setSeedKey, _originalName, l)) {
      return (name: _originalName, seedKey: _setSeedKey);
    }
    return (name: typed, seedKey: null);
  }

  Future<void> _save() async {
    _error = null;
    final l = AppLocalizations.of(context);
    final name = _canonicalName();
    final items = <({int? id, String label, String? seedKey})>[];
    for (final draft in _items) {
      final c = _canonical(draft);
      if (c.label.isEmpty) continue;
      items.add((id: draft.id, label: c.label, seedKey: c.seedKey));
    }

    if (name.name.isEmpty) {
      setState(() => _error = l.optionSetNameRequired);
      return;
    }
    if (items.length < 2) {
      setState(() => _error = l.optionsMinRequired);
      return;
    }

    final saved = await ref
        .read(optionSetRepositoryProvider)
        .upsertSet(
          id: _existing?.id,
          name: name.name,
          seedKey: name.seedKey,
          items: items,
        );
    if (mounted) Navigator.of(context).pop(saved);
  }

  Future<void> _delete() async {
    final l = AppLocalizations.of(context);
    final ok = await showDialog<bool>(
      context: context,
      builder: (c) => AlertDialog(
        title: Text(l.optionSetDelete),
        content: Text(l.optionSetDeleteConfirm),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(c, false),
            child: Text(l.cancel),
          ),
          TextButton(
            onPressed: () => Navigator.pop(c, true),
            child: Text(l.optionSetDelete),
          ),
        ],
      ),
    );
    if (ok != true || _existing == null) return;
    await ref.read(optionSetRepositoryProvider).deleteSet(_existing!.id);
    FirebaseAnalytics.instance.logEvent(name: 'option_set_deleted');
    if (mounted) Navigator.of(context).pop(-1);
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final sets = ref.watch(optionSetsProvider).value;
    final items = ref.watch(optionSetItemsProvider).value;

    if (widget.setId != null && !_hydrated) {
      if (sets == null || items == null) {
        return const SafeArea(
          child: Padding(
            padding: EdgeInsetsDirectional.all(32),
            child: Center(child: CircularProgressIndicator()),
          ),
        );
      }
      _hydrated = true;
      _existing = sets.where((s) => s.id == widget.setId).firstOrNull;
      if (_existing != null) {
        _setSeedKey = _existing!.seedKey;
        _originalName = _existing!.name;
        _nameController.text = localizedOptionSetName(
          _existing!.seedKey,
          _existing!.name,
          l,
        );
        for (final i in items.where(
          (i) => i.setId == widget.setId && i.archivedAt == null,
        )) {
          _items.add(
            _DraftItem(
              id: i.id,
              seedKey: i.seedKey,
              originalLabel: i.label,
              display: localizedOptionLabel(i.seedKey, i.label, l),
            ),
          );
        }
      }
    }

    final archived = (items ?? const <OptionSetItemRow>[])
        .where((i) => i.setId == widget.setId && i.archivedAt != null)
        .map((i) => localizedOptionLabel(i.seedKey, i.label, l))
        .toList();

    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsetsDirectional.fromSTEB(18, 12, 18, 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              _existing == null ? l.optionSetNewTitle : l.optionSetEditTitle,
              style: theme.textTheme.titleMedium,
            ),
            const SizedBox(height: 14),
            TextField(
              controller: _nameController,
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                labelText: l.optionSetNameLabel,
                hintText: l.optionSetNameHint,
                border: const OutlineInputBorder(),
                isDense: true,
              ),
            ),
            const SizedBox(height: 18),
            Text(l.optionsLabel, style: theme.textTheme.labelLarge),
            const SizedBox(height: 8),
            for (var i = 0; i < _items.length; i++)
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _items[i].controller,
                        textCapitalization: TextCapitalization.sentences,
                        onChanged: (_) => setState(() {}),
                        decoration: InputDecoration(
                          hintText: l.optionHint(i + 1),
                          border: const OutlineInputBorder(),
                          isDense: true,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: _items.length <= 2
                          ? null
                          : () => setState(() {
                              _items.removeAt(i).controller.dispose();
                            }),
                    ),
                  ],
                ),
              ),
            if (_items.length < kMaxOptionsPerSet)
              TextButton.icon(
                onPressed: () => setState(
                  () => _items.add(_DraftItem(originalLabel: '', display: '')),
                ),
                icon: const Icon(Icons.add),
                label: Text(l.optionAdd),
              )
            else
              Text(
                l.optionsMaxReached(kMaxOptionsPerSet),
                style: theme.textTheme.bodySmall,
              ),
            if (archived.isNotEmpty) ...[
              const SizedBox(height: 6),
              Text(
                l.optionSetKeptForHistory(archived.join(', ')),
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.outline,
                ),
              ),
            ],
            const SizedBox(height: 16),
            _Preview(
              labels: _items
                  .map((i) => i.controller.text.trim())
                  .where((s) => s.isNotEmpty)
                  .toList(),
            ),
            if (_error != null) ...[
              const SizedBox(height: 10),
              Text(_error!, style: TextStyle(color: theme.colorScheme.error)),
            ],
            const SizedBox(height: 16),
            Row(
              children: [
                if (_existing != null)
                  TextButton(
                    onPressed: _delete,
                    style: TextButton.styleFrom(
                      foregroundColor: theme.colorScheme.error,
                    ),
                    child: Text(l.optionSetDelete),
                  ),
                const Spacer(),
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text(l.cancel),
                ),
                const SizedBox(width: 8),
                FilledButton(onPressed: _save, child: Text(l.save)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _Preview extends StatelessWidget {
  const _Preview({required this.labels});

  final List<String> labels;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l = AppLocalizations.of(context);
    return Container(
      width: double.infinity,
      padding: const EdgeInsetsDirectional.fromSTEB(12, 10, 12, 12),
      decoration: BoxDecoration(
        border: Border.all(color: theme.colorScheme.outlineVariant),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l.optionSetPreviewLabel,
            style: theme.textTheme.labelSmall?.copyWith(
              color: theme.colorScheme.outline,
            ),
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 6,
            runSpacing: 6,
            children: [
              for (final label in labels)
                ChoiceChip(
                  label: Text(label),
                  selected: false,
                  onSelected: (_) {},
                ),
            ],
          ),
        ],
      ),
    );
  }
}
