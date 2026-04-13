// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hausa (`ha`).
class AppLocalizationsHa extends AppLocalizations {
  AppLocalizationsHa([String locale = 'ha']) : super(locale);

  @override
  String get appTitle => 'Muhasaba';

  @override
  String get tabToday => 'Yau';

  @override
  String get tabStats => 'Kididdiga';

  @override
  String get tabHistory => 'Tarihi';

  @override
  String get tabSettings => 'Saituna';

  @override
  String get newAmal => 'Sabon amali';

  @override
  String get editAmal => 'Gyara amali';

  @override
  String get newAmalTitle => 'Sabon amali';

  @override
  String get save => 'Ajiye';

  @override
  String get cancel => 'Soke';

  @override
  String get clear => 'Share';

  @override
  String get titleLabel => 'Take';

  @override
  String get titleRequired => 'Ana bukatar take';

  @override
  String get titleTooLong => 'Take ya yi tsawo';

  @override
  String get frequencyLabel => 'Yawan lokaci';

  @override
  String get frequencyDaily => 'Kowace rana';

  @override
  String get frequencyWeekly => 'Kowace mako';

  @override
  String get frequencyMonthly => 'Kowace wata';

  @override
  String get categoryLabel => 'Nau\'i';

  @override
  String get categoryOther => 'Wansu';

  @override
  String get categorySalah => 'Sallah';

  @override
  String get categoryDhikr => 'Zikiri';

  @override
  String get categoryQuran => 'Alqur\'ani';

  @override
  String get categoryCharity => 'Sadaka';

  @override
  String get timesPerPeriod => 'Sau a kowane lokaci';

  @override
  String get custom => 'Na musamman';

  @override
  String get customTargetHint => 'misali 50';

  @override
  String get dayOfWeek => 'Ranar mako';

  @override
  String get anyDay => 'Kowace';

  @override
  String get anyDayHint => 'Kowace rana (ana ganinta yau, ta boye gobe)';

  @override
  String onlyDayHint(String day) {
    return '$day kadai';
  }

  @override
  String get dateOfMonth => 'Kwanan wata';

  @override
  String get anyDate => 'Kowace';

  @override
  String get anyDateHint => 'Kowace kwana (ana ganinta yau, ta boye gobe)';

  @override
  String onlyDateHint(String date) {
    return 'Kawai ranar $date';
  }

  @override
  String get startPreChecked => 'Fara an yi masa alama';

  @override
  String get startPreCheckedSubtitle =>
      'Lokacin da sabon lokaci ya fara, wannan amalin yana da alamar kammala ta asali har sai ka cire shi.';

  @override
  String get reminder => 'Tunatar da kai';

  @override
  String get reminderNone => 'Babu';

  @override
  String reminderTime(String time) {
    return 'Tunatar da kai: $time';
  }

  @override
  String get reminderPermissionWarning =>
      'An ajiye tunatar da kai, amma ba a ba da izinin sanarwa ba. Ka kunna su a saituna na tsarin don samun fadar.';

  @override
  String get groupByCategory => 'Tsara ta nau\'i';

  @override
  String get flatList => 'Jerin shimfida';

  @override
  String errorGeneric(String error) {
    return 'Kuskure: $error';
  }

  @override
  String get todayEmptyHint => 'Danna + don kara amalin ka na farko.';

  @override
  String get noteLabel => 'Bayani';

  @override
  String get noteHint => 'misali Na yi sallah a masallaci';

  @override
  String get completed => 'an kammala';

  @override
  String get notCompleted => 'ba a kammala ba';

  @override
  String progressOf(int progress, int target) {
    return '$progress daga cikin $target an kammala';
  }

  @override
  String get removeFromToday => 'Cire daga yau';

  @override
  String get removeFromTodaySubtitle =>
      'Boye kawai a wannan rana. Zai dawo gobe.';

  @override
  String get removeFromTracking => 'Cire daga bin diddigin';

  @override
  String get removeFromTrackingSubtitle =>
      'Cire gaba daya daga jerin ka. Ana adana tarihi.';

  @override
  String get chooseIcon => 'Zabi gunki';

  @override
  String get iconNone => 'Babu';

  @override
  String get recentlyUsed => 'An yi amfani da su kwanan nan';

  @override
  String get emojiSectionGeneral => 'Na gaba daya';

  @override
  String get categoryNameHint => 'Suna';

  @override
  String get categoryNew => '+ Sabo';

  @override
  String get addAmal => 'Kara Amali';

  @override
  String get customAmal => 'Amali Na Musamman';

  @override
  String get templateTasbih => 'Tasbihi 33x';

  @override
  String get templateIstighfar => 'Istigfari 100x';

  @override
  String get templateSurahKahf => 'Suratul Kahfi';

  @override
  String get templateSadaqah => 'Sadaka';

  @override
  String get templateTahajjud => 'Tahajjud';

  @override
  String get templateDuhaPrayer => 'Sallar Duha';

  @override
  String get settingsTitle => 'Saituna';

  @override
  String settingsLoadError(String error) {
    return 'Ba a iya loda saituna ba:\n$error';
  }

  @override
  String get sectionDayBoundary => 'Iyakar rana';

  @override
  String get rolloverHour => 'Sa\'ar mika mulki';

  @override
  String get rolloverAtMidnight => 'Yau yana karewa da tsakar dare.';

  @override
  String rolloverSubtitle(String time) {
    return 'Amalin jiya suna ci gaba da gyarawa har $time.';
  }

  @override
  String get pickRolloverHour => 'Zabi sa\'ar da rana ke canjawa';

  @override
  String get sectionWeekMonth => 'Mako da wata';

  @override
  String get startOfWeek => 'Farkon mako';

  @override
  String get startOfMonth => 'Farkon wata';

  @override
  String get startOfMonthClamped =>
      'Ranaku bayan 28 ana rage su zuwa ranar karshe ta watannin da suka fi gajarta.';

  @override
  String get sectionAppearance => 'Bayyanar fuska';

  @override
  String get theme => 'Jigo';

  @override
  String get themeSystem => 'Na tsarin';

  @override
  String get themeLight => 'Haske';

  @override
  String get themeDark => 'Duhu';

  @override
  String get sectionLanguage => 'Harshe';

  @override
  String get language => 'Harshe';

  @override
  String get systemDefault => 'Na tsarin asali';

  @override
  String get aboutTitle => 'Muhasaba';

  @override
  String get aboutSubtitle =>
      'Littafin lissafin addini na sirri. Duk bayanan suna nan a wannan na\'ura.';

  @override
  String get statsTitle => 'Kididdiga';

  @override
  String statsLoadError(String error) {
    return 'Ba a iya loda kididdiga ba:\n$error';
  }

  @override
  String get perAmal => 'Kowane amali';

  @override
  String get thisWeek => 'Wannan makon';

  @override
  String get thisMonth => 'Wannan watan';

  @override
  String get totalCompletions => 'jimlar kammalawa';

  @override
  String get streakCurrent => 'Na yanzu';

  @override
  String get streakLongest => 'Mafi tsawo';

  @override
  String get ratioWeek => 'Mako';

  @override
  String get ratioMonth => 'Wata';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ranaku',
      one: 'rana',
    );
    return '$_temp0';
  }

  @override
  String streakWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'makwanni',
      one: 'mako',
    );
    return '$_temp0';
  }

  @override
  String streakMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'watanni',
      one: 'wata',
    );
    return '$_temp0';
  }

  @override
  String get frequencyBadgeDaily => 'kowace rana';

  @override
  String get frequencyBadgeWeekly => 'kowace mako';

  @override
  String get frequencyBadgeMonthly => 'kowace wata';

  @override
  String get statsEmpty =>
      'Babu amali tukuna. Ka kara daya a Yau don fara bin diddigi.';

  @override
  String get statsToday => 'Yau';

  @override
  String get statsThisWeek => 'Wannan makon';

  @override
  String get statsThisMonth => 'Wannan watan';

  @override
  String get statsAllTime => 'Dukkan lokaci';

  @override
  String get statsCustomRange => 'Zabin lokaci';

  @override
  String get statsAllCategories => 'Duka';

  @override
  String get statsAllAmals => 'Duka';

  @override
  String get statsCompleted => 'An kammala';

  @override
  String get statsExpected => 'Ana sa ran';

  @override
  String get statsVsPrevious => 'Idan aka kwatanta da na baya';

  @override
  String get statsByCategory => 'Ta nau\'i';

  @override
  String get statsPerAmal => 'Kowane amali';

  @override
  String get statsCurrentStreak => 'Jerin yanzu';

  @override
  String get statsBestStreak => 'Mafi kyawun jeri';

  @override
  String get statsTotalDays => 'Jimlar ranaku';

  @override
  String get statsConsistency => 'Daidaituwa';

  @override
  String get statsLast5Weeks => 'Makwanni 5 da suka gabata';

  @override
  String get statsDailyBreakdown => 'Rarraba na kowace rana';

  @override
  String get statsCompletionRate => 'Adadin kammalawa';

  @override
  String get statsFilterTime => 'Lokaci';

  @override
  String get statsFilterCategory => 'Nau\'i';

  @override
  String get statsFilterAmal => 'Amali';

  @override
  String get statsStreaks => 'Jerurruka';

  @override
  String get statsSelectDateRange => 'Zabi kewayon kwanakin';

  @override
  String get historyTitle => 'Tarihi';

  @override
  String get jumpToDate => 'Je zuwa kwanan wata';

  @override
  String historyEmptyDay(String date) {
    return 'Babu amali da aka bi diddigin a ranar $date';
  }

  @override
  String get streakUnitD => 'r';

  @override
  String get streakUnitW => 'm';

  @override
  String get streakUnitM => 'w';

  @override
  String get mondayShort => 'Lit';

  @override
  String get tuesdayShort => 'Tal';

  @override
  String get wednesdayShort => 'Lar';

  @override
  String get thursdayShort => 'Alh';

  @override
  String get fridayShort => 'Jum';

  @override
  String get saturdayShort => 'Asa';

  @override
  String get sundayShort => 'Lah';

  @override
  String get mondayFull => 'Litinin';

  @override
  String get tuesdayFull => 'Talata';

  @override
  String get wednesdayFull => 'Laraba';

  @override
  String get thursdayFull => 'Alhamis';

  @override
  String get fridayFull => 'Juma\'a';

  @override
  String get saturdayFull => 'Asabar';

  @override
  String get sundayFull => 'Lahadi';

  @override
  String get hadith0 =>
      '\"Ayyukan da Allah ya fi so su ne wadanda ake yi a kai a kai, ko da kanana ne.\"\n— Bukhari da Muslim';

  @override
  String get hadith1 =>
      '\"Ku dauki ayyuka na alheri gwargwadon iyawar ku, domin mafi kyawun ayyuka su ne wadanda ake yi a kai a kai ko da kadan ne.\"\n— Ibn Majah';

  @override
  String get hadith2 =>
      '\"Idan dan Adam ya mutu, ayyukansa sun yanke sai uku: sadaka mai gudana, ilmi mai amfani, ko da mai alheri da yake masa addu\'a.\"\n— Muslim';

  @override
  String get hadith3 =>
      '\"Duk wanda ya yi sallolin sanyi biyu (Asuba da La\'asar) zai shiga Aljanna.\"\n— Bukhari';

  @override
  String get hadith4 =>
      '\"Allah ba ya duba kamanninku ko dukiyoyinku, amma yana duba zukatanku da ayyukanku.\"\n— Muslim';

  @override
  String get hadith5 =>
      '\"Mafi alherin mutane su ne wadanda suka fi amfanar mutane.\"\n— Daraqutni';

  @override
  String get hadith6 =>
      '\"Ku saukaka al\'amura kada ku yi su da wuya; ku ba da bushara kada ku kore mutane.\"\n— Bukhari';

  @override
  String get hadith7 =>
      '\"Duk wanda ya bi hanya don neman ilmi, Allah zai saukake masa hanyar Aljanna.\"\n— Muslim';

  @override
  String get hadith8 => '\"Sadaka ba ta rage dukiya ba.\"\n— Muslim';

  @override
  String get hadith9 =>
      '\"Mumini mai karfi ya fi dacewa kuma ya fi soyuwa ga Allah fiye da mumini mai rauni, alhali akwai alheri a cikin dukkansu.\"\n— Muslim';

  @override
  String get hadith10 =>
      '\"Duk wanda ya ce \'SubhanAllahi wa bihamdihi\' sau ɗari a rana, za a gafarta masa zunubansa ko da sun kasance kamar kumfar teku.\"\n— Bukhari';

  @override
  String get hadith11 =>
      '\"Mafi kyawun addu\'a shi ne addu\'ar ranar Arafa, kuma mafi kyawun abin da na faɗa da Annabawan da suka gabace ni shi ne: La ilaha illallah.\"\n— Tirmizi';

  @override
  String get hadith12 =>
      '\"Duk wanda ya karanta Ayatul Kursi bayan kowace salla ta farilla, babu abin da zai hana shi shiga Aljanna sai mutuwa.\"\n— Nasa\'i';

  @override
  String get hadith13 => '\"Magana mai kyau sadaka ce.\"\n— Bukhari & Muslim';

  @override
  String get hadith14 =>
      '\"Duk wanda ya yi imani da Allah da Ranar Lahira, to ya faɗi alheri ko ya yi shiru.\"\n— Bukhari & Muslim';

  @override
  String get hadith15 =>
      '\"Mai kula da gwauruwa da miskini kamar mai jihadi a tafarkin Allah ne.\"\n— Bukhari';

  @override
  String get hadith16 => '\"Murmushinka ga ɗan\'uwanka sadaka ce.\"\n— Tirmizi';

  @override
  String get hadith17 =>
      '\"Mafi alherinku shi ne wanda ya koyi Alƙur\'ani kuma ya koyar.\"\n— Bukhari';

  @override
  String get hadith18 =>
      '\"Ba wanda ya ci abinci mafi kyau fiye da wanda ya samu daga aikin hannayensa.\"\n— Bukhari';

  @override
  String get hadith19 =>
      '\"Allah Mai tausayi ne, kuma Yana son tausayi a cikin komai.\"\n— Bukhari & Muslim';

  @override
  String historyDayCompleted(int completed, int total) {
    return '$completed daga $total an kammala';
  }

  @override
  String get settingsSchedule => 'Jadawalin';

  @override
  String get settingsAppearance => 'Bayyanar';

  @override
  String get settingsAboutTagline => 'Abokin addininku na yau da kullun';

  @override
  String get settingsRolloverSub => 'Yaushe ranar take fara';

  @override
  String get settingsAbout => 'Game da';

  @override
  String get settingsVersion => 'Sigar';

  @override
  String get settingsDeveloper => 'Mai haɓaka';
}
