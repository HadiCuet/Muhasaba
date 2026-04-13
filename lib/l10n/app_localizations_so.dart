// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Somali (`so`).
class AppLocalizationsSo extends AppLocalizations {
  AppLocalizationsSo([String locale = 'so']) : super(locale);

  @override
  String get appTitle => 'Muhasaba';

  @override
  String get tabToday => 'Maanta';

  @override
  String get tabStats => 'Tirakoob';

  @override
  String get tabHistory => 'Taariikhda';

  @override
  String get tabSettings => 'Dejinta';

  @override
  String get newAmal => 'Camal cusub';

  @override
  String get editAmal => 'Wax ka beddel camasha';

  @override
  String get newAmalTitle => 'Camal cusub';

  @override
  String get save => 'Kaydi';

  @override
  String get cancel => 'Ka noqo';

  @override
  String get clear => 'Nadiifi';

  @override
  String get titleLabel => 'Cinwaan';

  @override
  String get titleRequired => 'Cinwaanka waa lagama maari karo';

  @override
  String get titleTooLong => 'Cinwaanka aad buu u dheer yahay';

  @override
  String get frequencyLabel => 'Inta jeer';

  @override
  String get frequencyDaily => 'Maalin walba';

  @override
  String get frequencyWeekly => 'Toddobaad walba';

  @override
  String get frequencyMonthly => 'Bil walba';

  @override
  String get categoryLabel => 'Qaybta';

  @override
  String get categoryOther => 'Kuwo kale';

  @override
  String get categorySalah => 'Salaadda';

  @override
  String get categoryDhikr => 'Xasuus';

  @override
  String get categoryQuran => 'Quraanka';

  @override
  String get categoryCharity => 'Sadaqo';

  @override
  String get timesPerPeriod => 'Tirada muddo walba';

  @override
  String get custom => 'Gaar ah';

  @override
  String get customTargetHint => 'tus. 50';

  @override
  String get dayOfWeek => 'Maalinta toddobaadka';

  @override
  String get anyDay => 'Maalin kasta';

  @override
  String get anyDayHint =>
      'Maalin kasta (waa la arkaa maanta, berri way qarinaysaa)';

  @override
  String onlyDayHint(String day) {
    return 'Kaliya $day';
  }

  @override
  String get dateOfMonth => 'Taariikhda bisha';

  @override
  String get anyDate => 'Taariikh kasta';

  @override
  String get anyDateHint =>
      'Taariikh kasta (waa la arkaa maanta, berri way qarinaysaa)';

  @override
  String onlyDateHint(String date) {
    return 'Kaliya $date';
  }

  @override
  String get startPreChecked => 'Ku bilow iyada oo calaamaysan';

  @override
  String get startPreCheckedSubtitle =>
      'Marka muddo cusub bilaabato, camalkan wuxuu noqdaa mid dhammaystiran ilaa aad ka saarto calaamadda.';

  @override
  String get reminder => 'Xusuusin';

  @override
  String get reminderNone => 'Midna';

  @override
  String reminderTime(String time) {
    return 'Xusuusin: $time';
  }

  @override
  String get reminderPermissionWarning =>
      'Xusuusinta waa la kaydiyay, laakiin ogeysiisyada lama ogola. Ka fur dejinta nidaamka si aad u hesho digniinadda.';

  @override
  String get groupByCategory => 'U koobi qaybaha';

  @override
  String get flatList => 'Liis fudud';

  @override
  String errorGeneric(String error) {
    return 'Khalad: $error';
  }

  @override
  String get todayEmptyHint =>
      'Riix + si aad u ku darto camalkaaga ugu horreeya.';

  @override
  String get noteLabel => 'Qoraal';

  @override
  String get noteHint => 'tus. Masjidka ayaan ku tukaday';

  @override
  String get completed => 'la dhammeeyay';

  @override
  String get notCompleted => 'lama dhammeeyo';

  @override
  String progressOf(int progress, int target) {
    return '$progress ka mid ah $target oo la dhammeeyay';
  }

  @override
  String get removeFromToday => 'Ka saar maanta';

  @override
  String get removeFromTodaySubtitle =>
      'Qari maanta kaliya. Berri way soo noqonaysaa.';

  @override
  String get removeFromTracking => 'Ka saar raadraaca';

  @override
  String get removeFromTrackingSubtitle =>
      'Si joogto ah uga saar liiskaaga. Taariikhda waa la haynayaa.';

  @override
  String get chooseIcon => 'Dooro astaanta';

  @override
  String get iconNone => 'Midna';

  @override
  String get recentlyUsed => 'Dhawaan la isticmaalay';

  @override
  String get emojiSectionGeneral => 'Guud';

  @override
  String get categoryNameHint => 'Magaca';

  @override
  String get categoryNew => '+ Cusub';

  @override
  String get addAmal => 'Ku dar camal';

  @override
  String get customAmal => 'Camal gaarka ah';

  @override
  String get templateTasbih => 'Tasbiix 33x';

  @override
  String get templateIstighfar => 'Istigfaar 100x';

  @override
  String get templateSurahKahf => 'Suuradda Al-Kahf';

  @override
  String get templateSadaqah => 'Sadaqo';

  @override
  String get templateTahajjud => 'Tahajjud';

  @override
  String get templateDuhaPrayer => 'Salaadda Duxa';

  @override
  String get settingsTitle => 'Dejinta';

  @override
  String settingsLoadError(String error) {
    return 'Waa la guul darreystay soo dejinta dejinta:\n$error';
  }

  @override
  String get sectionDayBoundary => 'Xadka maalinta';

  @override
  String get rolloverHour => 'Saacadda wareegga';

  @override
  String get rolloverAtMidnight => 'Maanta waxay dhammaataa habeenbadhka.';

  @override
  String rolloverSubtitle(String time) {
    return 'Camalka shalay wuxuu wax laga beddeli karaa ilaa $time.';
  }

  @override
  String get pickRolloverHour => 'Dooro saacadda maalinta wareegto';

  @override
  String get sectionWeekMonth => 'Toddobaadka & bisha';

  @override
  String get startOfWeek => 'Bilowga toddobaadka';

  @override
  String get startOfMonth => 'Bilowga bisha';

  @override
  String get startOfMonthClamped =>
      'Maalaha ka dambeeya 28-ka waxaa lagu xaddidaa maalinta ugu dambeysa ee bilaha gaagaaban.';

  @override
  String get sectionAppearance => 'Muuqaalka';

  @override
  String get theme => 'Muuqaalka';

  @override
  String get themeSystem => 'Nidaamka';

  @override
  String get themeLight => 'Iftiinka';

  @override
  String get themeDark => 'Mugdiga';

  @override
  String get sectionLanguage => 'Luuqadda';

  @override
  String get language => 'Luuqadda';

  @override
  String get systemDefault => 'Caadiga nidaamka';

  @override
  String get aboutTitle => 'Muhasaba';

  @override
  String get aboutSubtitle =>
      'Buug-gacmeedka xisaabtanka diinta ee gaarka ah. Dhammaan xogta waxay ku hadhaysaa qalabkan.';

  @override
  String get statsTitle => 'Tirakoob';

  @override
  String statsLoadError(String error) {
    return 'Waa la guul darreystay soo dejinta tirakoobka:\n$error';
  }

  @override
  String get perAmal => 'Camal walba';

  @override
  String get thisWeek => 'Toddobaadkan';

  @override
  String get thisMonth => 'Bishan';

  @override
  String get totalCompletions => 'wadarta la dhammeeyay';

  @override
  String get streakCurrent => 'Hadda';

  @override
  String get streakLongest => 'Ugu dheeraa';

  @override
  String get ratioWeek => 'Toddobaad';

  @override
  String get ratioMonth => 'Bil';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'maalmood',
      one: 'maalin',
    );
    return '$_temp0';
  }

  @override
  String streakWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'toddobaad',
      one: 'toddobaad',
    );
    return '$_temp0';
  }

  @override
  String streakMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'bilood',
      one: 'bil',
    );
    return '$_temp0';
  }

  @override
  String get frequencyBadgeDaily => 'maalinlaha';

  @override
  String get frequencyBadgeWeekly => 'toddobaadlaha';

  @override
  String get frequencyBadgeMonthly => 'bishiiba';

  @override
  String get statsEmpty =>
      'Wali camal ma jiro. Ku dar mid Maanta si aad u bilowdo raadraaca.';

  @override
  String get statsToday => 'Maanta';

  @override
  String get statsThisWeek => 'Toddobaadkan';

  @override
  String get statsThisMonth => 'Bishan';

  @override
  String get statsAllTime => 'Wakhti oo dhan';

  @override
  String get statsCustomRange => 'Muddo gaarka ah';

  @override
  String get statsAllCategories => 'Dhammaan';

  @override
  String get statsAllAmals => 'Dhammaan';

  @override
  String get statsCompleted => 'La dhammeeyay';

  @override
  String get statsExpected => 'La filayay';

  @override
  String get statsVsPrevious => 'Marka loo barbardhigo kii hore';

  @override
  String get statsByCategory => 'Qaybaha';

  @override
  String get statsPerAmal => 'Camal walba';

  @override
  String get statsCurrentStreak => 'Taxanaha hadda';

  @override
  String get statsBestStreak => 'Taxanaha ugu fiican';

  @override
  String get statsTotalDays => 'Wadarta maalmaha';

  @override
  String get statsConsistency => 'Joogteynta';

  @override
  String get statsLast5Weeks => '5-dii toddobaad ee ugu dambeeyay';

  @override
  String get statsDailyBreakdown => 'Faahfaahin maalinle ah';

  @override
  String get statsCompletionRate => 'Heerka dhammaystirka';

  @override
  String get statsFilterTime => 'Waqtiga';

  @override
  String get statsFilterCategory => 'Qaybta';

  @override
  String get statsFilterAmal => 'Camasha';

  @override
  String get statsStreaks => 'Taxanayaal';

  @override
  String get statsSelectDateRange => 'Dooro muddada taariikhda';

  @override
  String get historyTitle => 'Taariikhda';

  @override
  String get jumpToDate => 'U bood taariikhda';

  @override
  String historyEmptyDay(String date) {
    return 'Camal lama raadraacin $date';
  }

  @override
  String get streakUnitD => 'm';

  @override
  String get streakUnitW => 't';

  @override
  String get streakUnitM => 'b';

  @override
  String get mondayShort => 'Isn';

  @override
  String get tuesdayShort => 'Tal';

  @override
  String get wednesdayShort => 'Arb';

  @override
  String get thursdayShort => 'Kha';

  @override
  String get fridayShort => 'Jim';

  @override
  String get saturdayShort => 'Sab';

  @override
  String get sundayShort => 'Axd';

  @override
  String get mondayFull => 'Isniin';

  @override
  String get tuesdayFull => 'Talaado';

  @override
  String get wednesdayFull => 'Arbaco';

  @override
  String get thursdayFull => 'Khamiis';

  @override
  String get fridayFull => 'Jimce';

  @override
  String get saturdayFull => 'Sabti';

  @override
  String get sundayFull => 'Axad';

  @override
  String get hadith0 =>
      '\"Camalada Alle ugu jecel waa kuwa si joogto ah loo sameeyo, xitaa hadday yar yihiin.\"\n— Bukhaari & Muslim';

  @override
  String get hadith1 =>
      '\"Ku qaata camalo wanaagsan intaad awoodo, waayo camalada ugu wanaagsan waa kuwa si joogto ah loo sameeyo xitaa hadday yar yihiin.\"\n— Ibn Maajah';

  @override
  String get hadith2 =>
      '\"Marka uu dhinto wiilka Aadam, camalladiisu way joogsataa marka laga reebo saddex: sadaqo socota, cilmi anfaca, ama ilmo fiican oo u duceeya.\"\n— Muslim';

  @override
  String get hadith3 =>
      '\"Qofkii tukada labada salaadood ee qabow (Fajriga iyo Casriga) wuxuu gali doonaa Jannada.\"\n— Bukhaari';

  @override
  String get hadith4 =>
      '\"Allaahu ma eego muuqaalkaaga ama hantidaada, laakiin wuxuu eegaa qalbiyadaada iyo camalladaada.\"\n— Muslim';

  @override
  String get hadith5 =>
      '\"Dadka ugu fiican waa kuwa ugu anfaca dadka.\"\n— Daaraqudni';

  @override
  String get hadith6 =>
      '\"Fududeeya hana adkeeynina; u bishaareya hana ka cabsiiynina dadka.\"\n— Bukhaari';

  @override
  String get hadith7 =>
      '\"Qofkii jid u mara raadinta cilmiga, Allaahu wuxuu uga fududeeyaa jidka Jannada.\"\n— Muslim';

  @override
  String get hadith8 => '\"Sadaqadu hantida ma yareeyo.\"\n— Muslim';

  @override
  String get hadith9 =>
      '\"Mu\'minka xoogga badan waa ka fiican yahay oo Alle ka jecel yahay mu\'minka daciifka ah, laakiin labadaba wanaag way ku jirtaa.\"\n— Muslim';

  @override
  String historyDayCompleted(int completed, int total) {
    return '$completed ka mid ah $total la dhammeeyey';
  }
}
