import '../../l10n/app_localizations.dart';

/// Maps seed and library category names (stored as English keys in the DB) to
/// their localized display names. User-created categories pass through as-is.
String localizedCategoryName(String dbName, AppLocalizations l) {
  return switch (dbName) {
    'Salah' => l.categorySalah,
    'Sunnah' => l.categorySunnah,
    'Dhikr' => l.categoryDhikr,
    'Quran' => l.categoryQuran,
    'Charity' => l.categoryCharity,
    'Dua' => l.categoryDua,
    'Fasting' => l.categoryFasting,
    'Knowledge' => l.categoryKnowledge,
    'Character' => l.categoryCharacter,
    'Family' => l.categoryFamily,
    _ => dbName, // user-created categories stay as-is
  };
}
