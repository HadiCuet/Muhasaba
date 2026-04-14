import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../app/providers.dart';
import '../../../data/db/database.dart';
import '../../../l10n/app_localizations.dart';
import 'emoji_picker.dart';

/// Shows a modal bottom sheet to create a new category (when [existing] is
/// null) or to edit an existing category's icon (when [existing] is provided).
///
/// Rename is intentionally out of scope — existing amals store category as a
/// text string, so renaming would need cascading updates. In edit mode the
/// name is rendered as a read-only label.
///
/// Returns the saved category name (same as [existing.name] in edit mode,
/// the trimmed user input in create mode), or `null` if the sheet was
/// dismissed without saving.
Future<String?> showCategoryEditorSheet(
  BuildContext context,
  WidgetRef ref, {
  CategoryRow? existing,
}) {
  return showModalBottomSheet<String>(
    context: context,
    isScrollControlled: true,
    useSafeArea: true,
    builder: (_) => _CategoryEditorSheet(existing: existing),
  );
}

class _CategoryEditorSheet extends ConsumerStatefulWidget {
  const _CategoryEditorSheet({this.existing});

  final CategoryRow? existing;

  @override
  ConsumerState<_CategoryEditorSheet> createState() =>
      _CategoryEditorSheetState();
}

class _CategoryEditorSheetState extends ConsumerState<_CategoryEditorSheet> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();

  String? _icon;
  bool _saving = false;

  bool get _isEdit => widget.existing != null;

  @override
  void initState() {
    super.initState();
    if (_isEdit) {
      _nameController.text = widget.existing!.name;
      _icon = widget.existing!.icon;
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  Future<void> _pickIcon() async {
    final picked = await showEmojiPicker(context, ref, current: _icon);
    if (picked != null) {
      setState(() => _icon = picked.isEmpty ? null : picked);
    }
  }

  Future<void> _save() async {
    if (_saving) return;
    if (!_isEdit && !_formKey.currentState!.validate()) return;
    setState(() => _saving = true);

    final repo = ref.read(categoryRepositoryProvider);
    final String savedName;
    if (_isEdit) {
      savedName = widget.existing!.name;
      await repo.updateIcon(savedName, _icon);
      FirebaseAnalytics.instance.logEvent(
        name: 'category_edited',
        parameters: {'category': savedName},
      );
    } else {
      savedName = _nameController.text.trim();
      await repo.create(savedName, icon: _icon);
      FirebaseAnalytics.instance.logEvent(
        name: 'category_created',
        parameters: {'category': savedName},
      );
    }
    ref.invalidate(categoriesProvider);

    if (!mounted) return;
    Navigator.of(context).pop(savedName);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l = AppLocalizations.of(context);
    final title = _isEdit ? l.categoryEditSheetTitle : l.categoryNewSheetTitle;

    return Padding(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        top: 12,
        bottom: MediaQuery.of(context).viewInsets.bottom + 16,
      ),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Drag handle
            Center(
              child: Container(
                width: 32,
                height: 4,
                decoration: BoxDecoration(
                  color: theme.colorScheme.onSurfaceVariant.withValues(
                    alpha: 0.4,
                  ),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Sheet title
            Text(title, style: theme.textTheme.titleMedium),
            const SizedBox(height: 16),

            // Icon tile + name field row
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: _saving ? null : _pickIcon,
                  child: Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.surfaceContainerHighest,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    alignment: Alignment.center,
                    child: _icon != null
                        ? Text(_icon!, style: const TextStyle(fontSize: 28))
                        : Icon(
                            Icons.add_reaction_outlined,
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _isEdit
                      ? Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Text(
                            widget.existing!.name,
                            style: theme.textTheme.titleMedium,
                          ),
                        )
                      : TextFormField(
                          controller: _nameController,
                          autofocus: true,
                          decoration: InputDecoration(
                            labelText: l.categoryNameHint,
                            border: const OutlineInputBorder(),
                          ),
                          validator: (v) {
                            final s = v?.trim() ?? '';
                            if (s.isEmpty) return l.titleRequired;
                            if (s.length > 120) return l.titleTooLong;
                            return null;
                          },
                          onFieldSubmitted: (_) => _save(),
                        ),
                ),
              ],
            ),
            const SizedBox(height: 24),

            // Action row
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: _saving ? null : () => Navigator.of(context).pop(),
                  child: Text(l.cancel),
                ),
                const SizedBox(width: 8),
                FilledButton(
                  onPressed: _saving ? null : _save,
                  child: Text(l.save),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
