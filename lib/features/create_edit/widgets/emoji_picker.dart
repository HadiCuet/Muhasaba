import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../app/providers.dart';
/// Curated emoji sections for amal icon selection.
/// Keys are English category names used for localized lookup.
const _sectionKeys = ['Salah', 'Dhikr', 'Quran', 'Charity'];
const _sectionEmojis = <String, List<String>>{
  'Salah': [
    '\u{1F54C}',
    '\u{1F9CE}',
    '\u{1F932}',
    '\u{1F64F}',
    '\u{262A}\u{FE0F}',
  ],
  'Dhikr': ['\u{1F4FF}', '\u{1F932}', '\u{1F54B}', '\u{2728}', '\u{1F4AB}'],
  'Quran': ['\u{1F4D6}', '\u{1F4DA}', '\u{1F4DC}', '\u{1F516}'],
  'Charity': ['\u{1F4B0}', '\u{1F381}', '\u{1F49D}', '\u{1F91D}'],
  'General': [
    '\u{1F319}',
    '\u{2600}\u{FE0F}',
    '\u{2B50}',
    '\u{1F31F}',
    '\u{1F48E}',
    '\u{1F56F}\u{FE0F}',
    '\u{1F3C3}',
    '\u{1F4AA}',
    '\u{1F9D8}',
    '\u{2764}\u{FE0F}',
    '\u{1FAC0}',
    '\u{1F33F}',
    '\u{1F343}',
  ],
};

/// Shows a modal bottom sheet for picking an emoji icon.
///
/// Returns the selected emoji string, an empty string to clear the current
/// icon (only when [allowNone] is true), or `null` if the sheet was dismissed
/// without a selection.
///
/// Pass [allowNone] = false when the caller requires a non-empty icon (e.g.
/// the amal form, since amals must always have an icon). The "None" button is
/// hidden in that case so the user cannot clear back to empty.
Future<String?> showEmojiPicker(
  BuildContext context,
  WidgetRef ref, {
  String? current,
  bool allowNone = true,
}) async {
  return showModalBottomSheet<String>(
    context: context,
    isScrollControlled: true,
    useSafeArea: true,
    builder: (_) =>
        _EmojiPickerSheet(current: current, ref: ref, allowNone: allowNone),
  );
}

class _EmojiPickerSheet extends StatelessWidget {
  const _EmojiPickerSheet({
    this.current,
    required this.ref,
    required this.allowNone,
  });

  final String? current;
  final WidgetRef ref;
  final bool allowNone;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l = AppLocalizations.of(context);
    final recentIcons = ref.watch(recentIconsProvider);

    return DraggableScrollableSheet(
      initialChildSize: 0.55,
      minChildSize: 0.3,
      maxChildSize: 0.85,
      expand: false,
      builder: (context, scrollController) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            controller: scrollController,
            slivers: [
              // Drag handle
              SliverToBoxAdapter(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 8),
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
                ),
              ),

              // Header row: title + (optional) "None" button
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Row(
                    children: [
                      Text(l.chooseIcon, style: theme.textTheme.titleMedium),
                      const Spacer(),
                      if (allowNone)
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(''),
                          child: Text(l.iconNone),
                        ),
                    ],
                  ),
                ),
              ),

              // Recently used row
              recentIcons.when(
                data: (icons) {
                  if (icons.isEmpty) return const SliverToBoxAdapter();
                  return SliverToBoxAdapter(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Text(
                            l.recentlyUsed,
                            style: theme.textTheme.labelMedium?.copyWith(
                              color: theme.colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 48,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: icons.length,
                            separatorBuilder: (_, _) =>
                                const SizedBox(width: 4),
                            itemBuilder: (context, index) => _EmojiChip(
                              emoji: icons[index],
                              isSelected: icons[index] == current,
                              onTap: () =>
                                  Navigator.of(context).pop(icons[index]),
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),
                      ],
                    ),
                  );
                },
                loading: () => const SliverToBoxAdapter(),
                error: (_, _) => const SliverToBoxAdapter(),
              ),

              // Curated sections
              for (final key in [..._sectionKeys, 'General']) ...[
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 8),
                    child: Text(
                      key == 'General' ? l.emojiSectionGeneral : key,
                      style: theme.textTheme.labelMedium?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ),
                ),
                SliverGrid.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 48,
                    mainAxisSpacing: 4,
                    crossAxisSpacing: 4,
                  ),
                  itemCount: _sectionEmojis[key]!.length,
                  itemBuilder: (context, index) => _EmojiChip(
                    emoji: _sectionEmojis[key]![index],
                    isSelected: _sectionEmojis[key]![index] == current,
                    onTap: () =>
                        Navigator.of(context).pop(_sectionEmojis[key]![index]),
                  ),
                ),
              ],

              // Bottom padding
              const SliverToBoxAdapter(child: SizedBox(height: 24)),
            ],
          ),
        );
      },
    );
  }
}

class _EmojiChip extends StatelessWidget {
  const _EmojiChip({
    required this.emoji,
    required this.isSelected,
    required this.onTap,
  });

  final String emoji;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: onTap,
      child: Container(
        width: 40,
        height: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: isSelected
              ? theme.colorScheme.primaryContainer
              : Colors.transparent,
        ),
        child: Text(emoji, style: const TextStyle(fontSize: 22)),
      ),
    );
  }
}
