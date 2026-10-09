import '../../l10n/app_localizations.dart';

/// Maps the canonical English titles of library challenges (stored verbatim
/// in the DB) to their localized display names.
///
/// The stored string doubles as the lookup key, so a title the user has
/// renamed no longer matches and falls through untouched.
String localizedChallengeTitle(String dbTitle, AppLocalizations l) {
  return switch (dbTitle) {
    '40 days, all prayers in jamaah' => l.challengeTmplJamaah40,
    '30 days Fajr in jamaah' => l.challengeTmplFajrJamaah,
    '30 days, all five on time' => l.challengeTmplOnTime,
    '40 nights Tahajjud' => l.challengeTmplTahajjud,
    "30 days of the 12 Sunnah rak'ahs" => l.challengeTmplRawatib,
    'Taraweeh every night of Ramadan' => l.challengeTmplTaraweeh,
    'Qiyam in the last ten nights' => l.challengeTmplLastTenQiyam,
    '1000 Salawat' => l.challengeTmplSalawat,
    '30 days of istighfar' => l.challengeTmplIstighfar,
    '40 days of morning & evening adhkar' => l.challengeTmplAdhkar,
    'Learn 30 duas' => l.challengeTmplLearnDuas,
    'Khatm in 30 days' => l.challengeTmplKhatm,
    'Khatm in a year' => l.challengeTmplKhatmYear,
    'Memorise Surah al-Mulk' => l.challengeTmplMulk,
    "Memorise Juz 'Amma" => l.challengeTmplJuzAmma,
    '40 days with the Quran' => l.challengeTmplQuran40,
    'Fast all of Ramadan' => l.challengeTmplRamadan,
    'Six days of Shawwal' => l.challengeTmplShawwal,
    'First nine days of Dhul Hijjah' => l.challengeTmplDhulHijjah,
    'Make up missed fasts' => l.challengeTmplMakeUpFasts,
    'Sadaqah 30 days' => l.challengeTmplSadaqah,
    'Sadaqah on the last ten nights' => l.challengeTmplLastTenSadaqah,
    "Memorise an-Nawawi's 40 Hadith" => l.challengeTmplNawawi,
    'Learn the 99 Names of Allah' => l.challengeTmplNames99,
    '30 days without backbiting' => l.challengeTmplBackbiting,
    '30 nights of Muhasaba' => l.challengeTmplMuhasaba,
    'Call your parents for 30 days' => l.challengeTmplCallParents,
    _ => dbTitle,
  };
}

/// The same for the units library challenges count in. A unit the user typed
/// falls through as typed.
String localizedChallengeUnit(String dbUnit, AppLocalizations l) {
  return switch (dbUnit) {
    'juz' => l.challengeUnitJuz,
    'salawat' => l.challengeUnitSalawat,
    'pages' => l.challengeUnitPages,
    'ayat' => l.challengeUnitAyat,
    'surahs' => l.challengeUnitSurahs,
    'duas' => l.challengeUnitDuas,
    'hadith' => l.challengeUnitHadith,
    'names' => l.challengeUnitNames,
    _ => dbUnit,
  };
}
