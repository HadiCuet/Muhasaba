import '../../l10n/app_localizations.dart';

/// Maps the canonical English titles of seeded and template-created amal
/// (stored verbatim in the DB) to their localized display names.
///
/// The stored string doubles as the lookup key, so a title the user has
/// renamed no longer matches and falls through untouched — that's what keeps
/// this from clobbering their own wording. `isSeed` can't serve as the gate
/// here: it survives a rename, and template-created rows never set it.
String localizedAmalTitle(String dbTitle, AppLocalizations l) {
  return switch (dbTitle) {
    'Fajr' => l.amalFajr,
    'Dhuhr' => l.amalDhuhr,
    'Asr' => l.amalAsr,
    'Maghrib' => l.amalMaghrib,
    'Isha' => l.amalIsha,
    'Tahajjud' => l.amalTahajjud,
    'Duha' || 'Duha Prayer' => l.amalDuha,
    'Morning Adhkar' => l.amalMorningAdhkar,
    'Evening Adhkar' => l.amalEveningAdhkar,
    'Tilawah' => l.amalTilawah,
    'Surah Kahf' => l.amalSurahKahf,
    'Sadaqah' => l.amalSadaqah,
    'Tasbih 33x' => l.amalTasbih,
    'Istighfar 100x' => l.amalIstighfar,
    _ => dbTitle, // user-created or renamed titles stay as-is
  };
}
