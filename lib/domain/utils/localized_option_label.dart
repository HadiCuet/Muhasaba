import '../../l10n/app_localizations.dart';

/// Seeded sets store canonical English and carry a `seedKey`; display resolves
/// the key. Renaming clears the key, so the user's own wording survives in
/// every language — the same rule as `localizedAmalTitle`.
String localizedOptionSetName(
  String? seedKey,
  String name,
  AppLocalizations l,
) {
  return switch (seedKey) {
    'jamaa' => l.optionSetJamaa,
    'ontime' => l.optionSetOnTime,
    'quranSession' => l.optionSetQuranSession,
    'sadaqahType' => l.optionSetSadaqahType,
    'intensity' => l.optionSetIntensity,
    _ => name,
  };
}

String localizedOptionLabel(String? seedKey, String label, AppLocalizations l) {
  return switch (seedKey) {
    'jamaa.alone' => l.optionJamaaAlone,
    'jamaa.home' => l.optionJamaaHome,
    'jamaa.masjid' => l.optionJamaaMasjid,
    'ontime.onTime' => l.optionOnTimeOnTime,
    'ontime.late' => l.optionOnTimeLate,
    'ontime.qada' => l.optionOnTimeQada,
    'quranSession.recited' => l.optionQuranRecited,
    'quranSession.memorised' => l.optionQuranMemorised,
    'quranSession.meaning' => l.optionQuranMeaning,
    'quranSession.listened' => l.optionQuranListened,
    'sadaqahType.money' => l.optionSadaqahMoney,
    'sadaqahType.food' => l.optionSadaqahFood,
    'sadaqahType.time' => l.optionSadaqahTime,
    'sadaqahType.other' => l.optionSadaqahOther,
    'intensity.light' => l.optionIntensityLight,
    'intensity.moderate' => l.optionIntensityModerate,
    'intensity.intense' => l.optionIntensityIntense,
    _ => label,
  };
}
