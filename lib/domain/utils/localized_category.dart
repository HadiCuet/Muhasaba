import '../../l10n/app_localizations.dart';

/// Maps seed category names (stored as English keys in the DB) to their
/// localized display names. User-created categories pass through as-is.
String localizedCategoryName(String dbName, AppLocalizations l) {
  return switch (dbName) {
    'Salah' => l.categorySalah,
    'Dhikr' => l.categoryDhikr,
    'Quran' => l.categoryQuran,
    'Charity' => l.categoryCharity,
    _ => dbName, // user-created categories stay as-is
  };
}
