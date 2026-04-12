import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../app/providers.dart';
import '../../../data/db/database.dart';

/// A chip-based category picker with an inline "+ New" creation flow.
///
/// Watches [categoriesProvider] and renders a [Wrap] of [InputChip]s.
/// Tapping a selected chip deselects it. Each chip has a small × button to
/// remove the category from the pick-list (existing amal keep their category).
/// The trailing [ActionChip] opens an inline text field for creating a new
/// category on the fly.
class CategoryPicker extends ConsumerStatefulWidget {
  const CategoryPicker({super.key, this.selected, required this.onChanged});

  /// The currently selected category name, or `null` if none is selected.
  final String? selected;

  /// Called when the selection changes. Receives `null` when deselected.
  final ValueChanged<String?> onChanged;

  @override
  ConsumerState<CategoryPicker> createState() => _CategoryPickerState();
}

class _CategoryPickerState extends ConsumerState<CategoryPicker> {
  bool _adding = false;
  final _controller = TextEditingController();
  final _focusNode = FocusNode();

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  Future<void> _submitNew() async {
    final name = _controller.text.trim();
    if (name.isEmpty) {
      setState(() => _adding = false);
      return;
    }

    await ref.read(categoryRepositoryProvider).create(name);
    ref.invalidate(categoriesProvider);

    _controller.clear();
    if (mounted) {
      setState(() => _adding = false);
      widget.onChanged(name);
    }
  }

  Future<void> _deleteCategory(String name) async {
    await ref.read(categoryRepositoryProvider).delete(name);
    ref.invalidate(categoriesProvider);

    // If the deleted category was selected, deselect it.
    if (widget.selected == name) {
      widget.onChanged(null);
    }
  }

  @override
  Widget build(BuildContext context) {
    final asyncCategories = ref.watch(categoriesProvider);

    return asyncCategories.when(
      data: (categories) => _buildChips(context, categories),
      loading: () => const SizedBox(
        height: 40,
        child: Center(child: CircularProgressIndicator(strokeWidth: 2)),
      ),
      error: (_, _) => const SizedBox.shrink(),
    );
  }

  Widget _buildChips(BuildContext context, List<CategoryRow> categories) {
    return Wrap(
      spacing: 10,
      runSpacing: 8,
      children: [
        for (final cat in categories)
          Stack(
            clipBehavior: Clip.none,
            children: [
              ChoiceChip(
                label: Text(cat.name),
                selected: cat.name == widget.selected,
                onSelected: (selected) {
                  if (selected) {
                    widget.onChanged(cat.name);
                  } else {
                    widget.onChanged(null);
                  }
                },
              ),
              Positioned(
                top: -4,
                right: -4,
                child: GestureDetector(
                  onTap: () => _deleteCategory(cat.name),
                  child: Container(
                    width: 16,
                    height: 16,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.outlineVariant,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.close,
                      size: 10,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ),
              ),
            ],
          ),
        if (_adding)
          SizedBox(
            width: 140,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    focusNode: _focusNode,
                    autofocus: true,
                    style: Theme.of(context).textTheme.bodySmall,
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 8,
                      ),
                      border: const OutlineInputBorder(),
                      hintText: AppLocalizations.of(context).categoryNameHint,
                    ),
                    onSubmitted: (_) => _submitNew(),
                  ),
                ),
                const SizedBox(width: 4),
                SizedBox(
                  width: 28,
                  height: 28,
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    iconSize: 18,
                    icon: const Icon(Icons.check),
                    onPressed: _submitNew,
                  ),
                ),
              ],
            ),
          )
        else
          ActionChip(
            label: Text(AppLocalizations.of(context).categoryNew),
            onPressed: () => setState(() => _adding = true),
          ),
      ],
    );
  }
}
