import 'package:flutter/material.dart';

import '../../domain/utils/localized_category.dart';
import '../../l10n/app_localizations.dart';
import 'amal_library.dart';

// Building blocks shared by the Amal Library and the Challenge Library, so the
// two read as one design.

class LibraryCategoryChips extends StatelessWidget {
  const LibraryCategoryChips({
    super.key,
    required this.selected,
    required this.onSelected,
  });

  final String? selected;
  final ValueChanged<String?> onSelected;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    return SizedBox(
      height: 52,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsetsDirectional.fromSTEB(12, 4, 12, 8),
        children: [
          ChoiceChip(
            label: Text(l.libraryAll),
            selected: selected == null,
            onSelected: (_) => onSelected(null),
          ),
          for (final c in kLibraryCategories) ...[
            const SizedBox(width: 8),
            ChoiceChip(
              avatar: Text(c.icon),
              label: Text(localizedCategoryName(c.name, l)),
              selected: selected == c.name,
              onSelected: (_) => onSelected(c.name),
            ),
          ],
        ],
      ),
    );
  }
}

class LibrarySectionHeader extends StatelessWidget {
  const LibrarySectionHeader({
    super.key,
    required this.icon,
    required this.name,
  });

  final String icon;
  final String name;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(8, 16, 8, 4),
      child: Text(
        '$icon  ${localizedCategoryName(name, AppLocalizations.of(context))}',
        style: theme.textTheme.titleSmall?.copyWith(
          color: theme.colorScheme.primary,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class LibraryRow extends StatelessWidget {
  const LibraryRow({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
    required this.trailing,
  });

  final String icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  final Widget trailing;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(8, 6, 4, 6),
        child: Row(
          children: [
            Container(
              width: 44,
              height: 44,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: theme.colorScheme.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(icon, style: const TextStyle(fontSize: 22)),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: theme.textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    subtitle,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            SizedBox(
              height: 48,
              child: Center(widthFactor: 1, child: trailing),
            ),
          ],
        ),
      ),
    );
  }
}

class LibraryCreateRow extends StatelessWidget {
  const LibraryCreateRow({super.key, required this.label, required this.onTap});

  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(8, 10, 8, 10),
        child: Row(
          children: [
            SizedBox(
              width: 44,
              height: 44,
              child: Icon(
                Icons.edit_outlined,
                color: theme.colorScheme.primary,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                label,
                style: theme.textTheme.bodyLarge?.copyWith(
                  color: theme.colorScheme.primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const Icon(Icons.chevron_right),
          ],
        ),
      ),
    );
  }
}

/// Tops a New form: offers the library until something is picked from it,
/// then says where the fields came from, with a way to pick again.
class LibraryPickBanner extends StatelessWidget {
  const LibraryPickBanner({
    super.key,
    required this.picked,
    required this.onTap,
    required this.title,
    required this.subtitle,
    required this.filledIn,
  });

  final bool picked;
  final VoidCallback onTap;
  final String title;
  final String subtitle;
  final String filledIn;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    if (picked) {
      return Row(
        children: [
          Icon(Icons.menu_book_outlined, size: 18, color: scheme.primary),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              filledIn,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: scheme.onSurfaceVariant,
              ),
            ),
          ),
          TextButton(
            onPressed: onTap,
            child: Text(AppLocalizations.of(context).libraryChange),
          ),
        ],
      );
    }
    return Material(
      color: scheme.secondaryContainer,
      borderRadius: BorderRadius.circular(12),
      clipBehavior: Clip.antiAlias,
      child: ListTile(
        onTap: onTap,
        iconColor: scheme.onSecondaryContainer,
        textColor: scheme.onSecondaryContainer,
        leading: const Icon(Icons.menu_book_outlined),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.chevron_right),
      ),
    );
  }
}

/// Lowercases and folds letter variants so a query typed without diacritics,
/// hamza or tashkeel still matches: "yasin" finds "Yâsîn", "اذكار" finds "أذكار".
String librarySearchKey(String s) {
  final out = StringBuffer();
  for (final r in s.toLowerCase().runes) {
    final isMark =
        (r >= 0x0300 && r <= 0x036F) ||
        (r >= 0x064B && r <= 0x065F) ||
        r == 0x0670 ||
        r == 0x0640;
    if (isMark) continue;
    out.write(_foldedLetters[r] ?? String.fromCharCode(r));
  }
  return out.toString();
}

const _foldedLetters = <int, String>{
  0x0622: 'ا',
  0x0623: 'ا',
  0x0625: 'ا',
  0x0671: 'ا',
  0x0624: 'و',
  0x0626: 'ي',
  0x0649: 'ي',
  0x06CC: 'ي',
  0x0629: 'ه',
  0x06A9: 'ك',
  0x00E0: 'a',
  0x00E1: 'a',
  0x00E2: 'a',
  0x00E3: 'a',
  0x00E4: 'a',
  0x00E5: 'a',
  0x0101: 'a',
  0x0103: 'a',
  0x0105: 'a',
  0x00E7: 'c',
  0x0107: 'c',
  0x010D: 'c',
  0x0111: 'd',
  0x0257: 'd',
  0x00E8: 'e',
  0x00E9: 'e',
  0x00EA: 'e',
  0x00EB: 'e',
  0x0113: 'e',
  0x0119: 'e',
  0x011B: 'e',
  0x0259: 'e',
  0x011F: 'g',
  0x00EC: 'i',
  0x00ED: 'i',
  0x00EE: 'i',
  0x00EF: 'i',
  0x012B: 'i',
  0x0131: 'i',
  0x00F1: 'n',
  0x0148: 'n',
  0x00F2: 'o',
  0x00F3: 'o',
  0x00F4: 'o',
  0x00F5: 'o',
  0x00F6: 'o',
  0x00F8: 'o',
  0x014D: 'o',
  0x015B: 's',
  0x015F: 's',
  0x0161: 's',
  0x00F9: 'u',
  0x00FA: 'u',
  0x00FB: 'u',
  0x00FC: 'u',
  0x016B: 'u',
  0x00FD: 'y',
  0x00FF: 'y',
  0x01B4: 'y',
  0x017A: 'z',
  0x017C: 'z',
  0x017E: 'z',
  0x0253: 'b',
  0x0199: 'k',
  0x2018: "'",
  0x2019: "'",
  0x02BB: "'",
  0x02BC: "'",
};
