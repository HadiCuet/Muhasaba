import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../app/providers.dart';
import '../../../data/db/database.dart';
import '../../../l10n/app_localizations.dart';
import 'category_editor_sheet.dart';

/// A chip-based category picker.
///
/// Watches [categoriesProvider] and renders a [Wrap] of [ChoiceChip]s, with
/// each chip showing the category's icon (if any) in the avatar slot. Tapping
/// a selected chip deselects it. Each chip has a small × button to remove the
/// category from the pick-list (existing amals keep their category text).
/// Long-pressing a chip opens the editor sheet to change the icon.
/// The trailing [ActionChip] opens the editor sheet to create a new category.
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
  Future<void> _deleteCategory(String name) async {
    await ref.read(categoryRepositoryProvider).delete(name);
    ref.invalidate(categoriesProvider);

    FirebaseAnalytics.instance.logEvent(
      name: 'category_deleted',
      parameters: {'category': name},
    );

    // If the deleted category was selected, deselect it.
    if (widget.selected == name) {
      widget.onChanged(null);
    }
  }

  Future<void> _openCreateSheet() async {
    final createdName = await showCategoryEditorSheet(context, ref);
    if (createdName != null && mounted) {
      widget.onChanged(createdName);
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
              GestureDetector(
                onLongPress: () =>
                    showCategoryEditorSheet(context, ref, existing: cat),
                child: ChoiceChip(
                  avatar: cat.icon != null
                      ? Text(cat.icon!, style: const TextStyle(fontSize: 16))
                      : null,
                  label: Text(cat.name),
                  selected: cat.name == widget.selected,
                  showCheckmark: false,
                  onSelected: (selected) {
                    if (selected) {
                      widget.onChanged(cat.name);
                      FirebaseAnalytics.instance.logEvent(
                        name: 'category_selected',
                        parameters: {'category': cat.name},
                      );
                    } else {
                      widget.onChanged(null);
                    }
                  },
                ),
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
        ActionChip(
          label: Text(AppLocalizations.of(context).categoryNew),
          onPressed: _openCreateSheet,
        ),
      ],
    );
  }
}
