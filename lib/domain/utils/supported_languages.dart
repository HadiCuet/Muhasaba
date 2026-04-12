/// All languages supported by the app, with their native display names.
/// Used by the language picker in Settings.
class SupportedLanguage {
  const SupportedLanguage(this.code, this.nativeName);

  /// BCP-47 language tag (e.g. "ar", "bn").
  final String code;

  /// The language name in its own script (e.g. "العربية").
  final String nativeName;
}

const kSupportedLanguages = <SupportedLanguage>[
  SupportedLanguage('en', 'English'),
  SupportedLanguage('ar', 'العربية'),
  SupportedLanguage('bn', 'বাংলা'),
  SupportedLanguage('ur', 'اردو'),
  SupportedLanguage('id', 'Bahasa Indonesia'),
  SupportedLanguage('tr', 'Türkçe'),
  SupportedLanguage('fa', 'فارسی'),
  SupportedLanguage('ms', 'Bahasa Melayu'),
  SupportedLanguage('fr', 'Français'),
  SupportedLanguage('ps', 'پښتو'),
  SupportedLanguage('uz', 'Oʻzbek'),
  SupportedLanguage('kk', 'Қазақша'),
  SupportedLanguage('ky', 'Кыргызча'),
  SupportedLanguage('tk', 'Türkmen'),
  SupportedLanguage('tg', 'Тоҷикӣ'),
  SupportedLanguage('az', 'Azərbaycanca'),
  SupportedLanguage('sq', 'Shqip'),
  SupportedLanguage('bs', 'Bosanski'),
  SupportedLanguage('so', 'Soomaali'),
  SupportedLanguage('sw', 'Kiswahili'),
  SupportedLanguage('ha', 'Hausa'),
  SupportedLanguage('ku', 'Kurdî'),
  SupportedLanguage('hi', 'हिन्दी'),
];
