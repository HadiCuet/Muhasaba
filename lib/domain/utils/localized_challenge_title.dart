import '../../l10n/app_localizations.dart';

/// Maps the canonical English titles of template-created challenges (stored
/// verbatim in the DB) to their localized display names.
///
/// The stored string doubles as the lookup key, so a title the user has
/// renamed no longer matches and falls through untouched.
String localizedChallengeTitle(String dbTitle, AppLocalizations l) {
  return switch (dbTitle) {
    '40 nights Tahajjud' => l.challengeTmplTahajjud,
    '1000 Salawat' => l.challengeTmplSalawat,
    'Khatm in 30 days' => l.challengeTmplKhatm,
    '30 days Fajr in jamaah' => l.challengeTmplFajrJamaah,
    'Sadaqah 30 days' => l.challengeTmplSadaqah,
    _ => dbTitle,
  };
}
