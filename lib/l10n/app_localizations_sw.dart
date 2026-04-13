// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swahili (`sw`).
class AppLocalizationsSw extends AppLocalizations {
  AppLocalizationsSw([String locale = 'sw']) : super(locale);

  @override
  String get appTitle => 'Muhasaba';

  @override
  String get tabToday => 'Leo';

  @override
  String get tabStats => 'Takwimu';

  @override
  String get tabHistory => 'Historia';

  @override
  String get tabSettings => 'Mipangilio';

  @override
  String get newAmal => 'Amali mpya';

  @override
  String get editAmal => 'Hariri amali';

  @override
  String get newAmalTitle => 'Amali mpya';

  @override
  String get save => 'Hifadhi';

  @override
  String get cancel => 'Ghairi';

  @override
  String get clear => 'Futa';

  @override
  String get titleLabel => 'Kichwa';

  @override
  String get titleRequired => 'Kichwa kinahitajika';

  @override
  String get titleTooLong => 'Kichwa ni kirefu sana';

  @override
  String get frequencyLabel => 'Mzunguko';

  @override
  String get frequencyDaily => 'Kila siku';

  @override
  String get frequencyWeekly => 'Kila wiki';

  @override
  String get frequencyMonthly => 'Kila mwezi';

  @override
  String get categoryLabel => 'Aina';

  @override
  String get categoryOther => 'Nyingine';

  @override
  String get categorySalah => 'Swala';

  @override
  String get categoryDhikr => 'Dhikri';

  @override
  String get categoryQuran => 'Qurani';

  @override
  String get categoryCharity => 'Sadaka';

  @override
  String get timesPerPeriod => 'Mara kwa kipindi';

  @override
  String get custom => 'Maalum';

  @override
  String get customTargetHint => 'mf. 50';

  @override
  String get dayOfWeek => 'Siku ya wiki';

  @override
  String get anyDay => 'Yoyote';

  @override
  String get anyDayHint => 'Siku yoyote (inaonekana leo, inafichwa kesho)';

  @override
  String onlyDayHint(String day) {
    return '$day pekee';
  }

  @override
  String get dateOfMonth => 'Tarehe ya mwezi';

  @override
  String get anyDate => 'Yoyote';

  @override
  String get anyDateHint => 'Tarehe yoyote (inaonekana leo, inafichwa kesho)';

  @override
  String onlyDateHint(String date) {
    return 'Tarehe $date pekee';
  }

  @override
  String get startPreChecked => 'Anza ikitiwa alama';

  @override
  String get startPreCheckedSubtitle =>
      'Kipindi kipya kinapoanza, amali hii inawekwa alama ya kukamilika kwa chaguo-msingi hadi uitoe alama.';

  @override
  String get reminder => 'Kikumbusho';

  @override
  String get reminderNone => 'Hakuna';

  @override
  String reminderTime(String time) {
    return 'Kikumbusho: $time';
  }

  @override
  String get reminderPermissionWarning =>
      'Kikumbusho kimehifadhiwa, lakini arifa hazijaruhusiwa. Ziruhusu kwenye mipangilio ya mfumo ili kupata tahadhari.';

  @override
  String get groupByCategory => 'Pangilia kwa aina';

  @override
  String get flatList => 'Orodha tambarare';

  @override
  String errorGeneric(String error) {
    return 'Hitilafu: $error';
  }

  @override
  String get todayEmptyHint => 'Bonyeza + kuongeza amali yako ya kwanza.';

  @override
  String get noteLabel => 'Dokezo';

  @override
  String get noteHint => 'mf. Niliswali msikitini';

  @override
  String get completed => 'imekamilika';

  @override
  String get notCompleted => 'haijakamilika';

  @override
  String progressOf(int progress, int target) {
    return '$progress kati ya $target zimekamilika';
  }

  @override
  String get removeFromToday => 'Ondoa leo';

  @override
  String get removeFromTodaySubtitle => 'Ficha kwa siku hii tu. Inarudi kesho.';

  @override
  String get removeFromTracking => 'Ondoa kutoka ufuatiliaji';

  @override
  String get removeFromTrackingSubtitle =>
      'Ondoa kabisa kutoka orodha yako. Historia inabaki.';

  @override
  String get chooseIcon => 'Chagua ikoni';

  @override
  String get iconNone => 'Hakuna';

  @override
  String get recentlyUsed => 'Zilizotumika hivi karibuni';

  @override
  String get emojiSectionGeneral => 'Kwa ujumla';

  @override
  String get categoryNameHint => 'Jina';

  @override
  String get categoryNew => '+ Mpya';

  @override
  String get addAmal => 'Ongeza Amali';

  @override
  String get customAmal => 'Amali Maalum';

  @override
  String get templateTasbih => 'Tasbihi 33x';

  @override
  String get templateIstighfar => 'Istighfari 100x';

  @override
  String get templateSurahKahf => 'Suratul Kahf';

  @override
  String get templateSadaqah => 'Sadaka';

  @override
  String get templateTahajjud => 'Tahajudi';

  @override
  String get templateDuhaPrayer => 'Swala ya Dhuha';

  @override
  String get settingsTitle => 'Mipangilio';

  @override
  String settingsLoadError(String error) {
    return 'Imeshindwa kupakia mipangilio:\n$error';
  }

  @override
  String get sectionDayBoundary => 'Mpaka wa siku';

  @override
  String get rolloverHour => 'Saa ya mabadiliko';

  @override
  String get rolloverAtMidnight => 'Leo inaisha usiku wa manane.';

  @override
  String rolloverSubtitle(String time) {
    return 'Amali za jana zinabaki zikiweza kuhaririwa hadi $time.';
  }

  @override
  String get pickRolloverHour => 'Chagua saa ambayo siku inabadilika';

  @override
  String get sectionWeekMonth => 'Wiki na mwezi';

  @override
  String get startOfWeek => 'Mwanzo wa wiki';

  @override
  String get startOfMonth => 'Mwanzo wa mwezi';

  @override
  String get startOfMonthClamped =>
      'Siku baada ya 28 zinabadilishwa kuwa siku ya mwisho ya miezi mifupi.';

  @override
  String get sectionAppearance => 'Muonekano';

  @override
  String get theme => 'Mandhari';

  @override
  String get themeSystem => 'Mfumo';

  @override
  String get themeLight => 'Mwanga';

  @override
  String get themeDark => 'Giza';

  @override
  String get sectionLanguage => 'Lugha';

  @override
  String get language => 'Lugha';

  @override
  String get systemDefault => 'Chaguo-msingi la mfumo';

  @override
  String get aboutTitle => 'Muhasaba';

  @override
  String get aboutSubtitle =>
      'Jarida la kibinafsi la uwajibikaji wa dini. Data yote inabaki kwenye kifaa hiki.';

  @override
  String get statsTitle => 'Takwimu';

  @override
  String statsLoadError(String error) {
    return 'Imeshindwa kupakia takwimu:\n$error';
  }

  @override
  String get perAmal => 'Kwa kila amali';

  @override
  String get thisWeek => 'Wiki hii';

  @override
  String get thisMonth => 'Mwezi huu';

  @override
  String get totalCompletions => 'jumla ya kukamilika';

  @override
  String get streakCurrent => 'Sasa hivi';

  @override
  String get streakLongest => 'Ndefu zaidi';

  @override
  String get ratioWeek => 'Wiki';

  @override
  String get ratioMonth => 'Mwezi';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'siku',
      one: 'siku',
    );
    return '$_temp0';
  }

  @override
  String streakWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'wiki',
      one: 'wiki',
    );
    return '$_temp0';
  }

  @override
  String streakMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'miezi',
      one: 'mwezi',
    );
    return '$_temp0';
  }

  @override
  String get frequencyBadgeDaily => 'kila siku';

  @override
  String get frequencyBadgeWeekly => 'kila wiki';

  @override
  String get frequencyBadgeMonthly => 'kila mwezi';

  @override
  String get statsEmpty =>
      'Hakuna amali bado. Ongeza moja kwenye Leo ili kuanza kufuatilia.';

  @override
  String get statsToday => 'Leo';

  @override
  String get statsThisWeek => 'Wiki hii';

  @override
  String get statsThisMonth => 'Mwezi huu';

  @override
  String get statsAllTime => 'Wakati wote';

  @override
  String get statsCustomRange => 'Kipindi maalum';

  @override
  String get statsAllCategories => 'Zote';

  @override
  String get statsAllAmals => 'Zote';

  @override
  String get statsCompleted => 'Imekamilika';

  @override
  String get statsExpected => 'Inayotarajiwa';

  @override
  String get statsVsPrevious => 'dhidi ya Awali';

  @override
  String get statsByCategory => 'Kwa Aina';

  @override
  String get statsPerAmal => 'Kwa kila Amali';

  @override
  String get statsCurrentStreak => 'Mfululizo wa sasa';

  @override
  String get statsBestStreak => 'Mfululizo bora';

  @override
  String get statsTotalDays => 'Jumla ya siku';

  @override
  String get statsConsistency => 'Uthabiti';

  @override
  String get statsLast5Weeks => 'Wiki 5 zilizopita';

  @override
  String get statsDailyBreakdown => 'Uchambuzi wa kila siku';

  @override
  String get statsCompletionRate => 'Kiwango cha kukamilika';

  @override
  String get statsFilterTime => 'Wakati';

  @override
  String get statsFilterCategory => 'Aina';

  @override
  String get statsFilterAmal => 'Amali';

  @override
  String get statsStreaks => 'Mifululizo';

  @override
  String get statsSelectDateRange => 'Chagua kipindi cha tarehe';

  @override
  String get historyTitle => 'Historia';

  @override
  String get jumpToDate => 'Ruka hadi tarehe';

  @override
  String historyEmptyDay(String date) {
    return 'Hakuna amali iliyofuatiliwa tarehe $date';
  }

  @override
  String get streakUnitD => 's';

  @override
  String get streakUnitW => 'w';

  @override
  String get streakUnitM => 'm';

  @override
  String get mondayShort => 'Jtt';

  @override
  String get tuesdayShort => 'Jnn';

  @override
  String get wednesdayShort => 'Jtn';

  @override
  String get thursdayShort => 'Alh';

  @override
  String get fridayShort => 'Iju';

  @override
  String get saturdayShort => 'Jms';

  @override
  String get sundayShort => 'Jpi';

  @override
  String get mondayFull => 'Jumatatu';

  @override
  String get tuesdayFull => 'Jumanne';

  @override
  String get wednesdayFull => 'Jumatano';

  @override
  String get thursdayFull => 'Alhamisi';

  @override
  String get fridayFull => 'Ijumaa';

  @override
  String get saturdayFull => 'Jumamosi';

  @override
  String get sundayFull => 'Jumapili';

  @override
  String get hadith0 =>
      '\"Amali zinazopendwa zaidi na Mwenyezi Mungu ni zile zinazofanywa kwa uthabiti, hata zikiwa ndogo.\"\n— Bukhari na Muslim';

  @override
  String get hadith1 =>
      '\"Fanyeni amali njema kadri mnavyoweza, kwani amali bora ni zile zinazofanywa kwa uthabiti hata zikiwa chache.\"\n— Ibn Majah';

  @override
  String get hadith2 =>
      '\"Mwanaadamu anapokufa, amali zake zinakoma isipokuwa tatu: sadaka jariya, elimu yenye manufaa, au mtoto mwema anayemuombea dua.\"\n— Muslim';

  @override
  String get hadith3 =>
      '\"Anayeswali swala mbili za baridi (Alfajiri na Alasiri) ataingia Peponi.\"\n— Bukhari';

  @override
  String get hadith4 =>
      '\"Mwenyezi Mungu haangalii sura zenu wala mali zenu, bali anaangalia nyoyo zenu na amali zenu.\"\n— Muslim';

  @override
  String get hadith5 =>
      '\"Watu bora ni wale wanaowafaa zaidi watu wengine.\"\n— Daraqutni';

  @override
  String get hadith6 =>
      '\"Rahisisheni mambo wala msiyafanye kuwa magumu; peeni habari njema wala msiwaogoneshe watu.\"\n— Bukhari';

  @override
  String get hadith7 =>
      '\"Anayepita njia kutafuta elimu, Mwenyezi Mungu atamrahisishia njia ya Peponi.\"\n— Muslim';

  @override
  String get hadith8 => '\"Sadaka haipunguzi mali.\"\n— Muslim';

  @override
  String get hadith9 =>
      '\"Muumini mwenye nguvu ni bora na mpendwa zaidi kwa Mwenyezi Mungu kuliko muumini dhaifu, ingawa wote wana kheri.\"\n— Muslim';

  @override
  String historyDayCompleted(int completed, int total) {
    return '$completed kati ya $total yamekamilika';
  }

  @override
  String get settingsSchedule => 'Ratiba';

  @override
  String get settingsAppearance => 'Mwonekano';

  @override
  String get settingsAboutTagline => 'Mwenzi wako wa kila siku wa dini';

  @override
  String get settingsRolloverSub => 'Siku inaposeti lini';
}
