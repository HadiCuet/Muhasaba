// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kirghiz Kyrgyz (`ky`).
class AppLocalizationsKy extends AppLocalizations {
  AppLocalizationsKy([String locale = 'ky']) : super(locale);

  @override
  String get appTitle => 'Muhasaba';

  @override
  String get tabToday => 'Бүгүн';

  @override
  String get tabStats => 'Статистика';

  @override
  String get tabHistory => 'Тарых';

  @override
  String get tabSettings => 'Жөндөөлөр';

  @override
  String get newAmal => 'Жаңы амал';

  @override
  String get editAmal => 'Амалды өзгөртүү';

  @override
  String get newAmalTitle => 'Жаңы амал';

  @override
  String get save => 'Сактоо';

  @override
  String get cancel => 'Жокко чыгаруу';

  @override
  String get clear => 'Тазалоо';

  @override
  String get titleLabel => 'Аталышы';

  @override
  String get titleRequired => 'Аталышы милдеттүү';

  @override
  String get titleTooLong => 'Аталышы өтө узун';

  @override
  String get frequencyLabel => 'Жыштык';

  @override
  String get frequencyDaily => 'Күн сайын';

  @override
  String get frequencyWeekly => 'Жума сайын';

  @override
  String get frequencyMonthly => 'Ай сайын';

  @override
  String get categoryLabel => 'Категория';

  @override
  String get categoryOther => 'Башка';

  @override
  String get categorySalah => 'Намаз';

  @override
  String get categoryDhikr => 'Зикир';

  @override
  String get categoryQuran => 'Куран';

  @override
  String get categoryCharity => 'Кайрымдуулук';

  @override
  String get timesPerPeriod => 'Мезгил ичинде жолу';

  @override
  String get custom => 'Башка';

  @override
  String get customTargetHint => 'мис. 50';

  @override
  String get dayOfWeek => 'Жума күнү';

  @override
  String get anyDay => 'Каалаган';

  @override
  String get anyDayHint => 'Каалаган күн (бүгүн көрүнөт, эртең жашырылат)';

  @override
  String onlyDayHint(String day) {
    return 'Жалгыз $day';
  }

  @override
  String get dateOfMonth => 'Айдын күнү';

  @override
  String get anyDate => 'Каалаган';

  @override
  String get anyDateHint => 'Каалаган күн (бүгүн көрүнөт, эртең жашырылат)';

  @override
  String onlyDateHint(String date) {
    return 'Жалгыз $date-күнү';
  }

  @override
  String get startPreChecked => 'Алдын ала белгиленген абалда баштоо';

  @override
  String get startPreCheckedSubtitle =>
      'Жаңы мезгил башталганда бул амал демейки боюнча аткарылган деп белгиленет, белгини алып салсаңыз болот.';

  @override
  String get reminder => 'Эскертме';

  @override
  String get reminderNone => 'Жок';

  @override
  String reminderTime(String time) {
    return 'Эскертме: $time';
  }

  @override
  String get reminderPermissionWarning =>
      'Эскертме сакталды, бирок билдирмелерге уруксат берилген эмес. Эскертүүлөрдү алуу үчүн тутум жөндөөлөрүндө иштетиңиз.';

  @override
  String get groupByCategory => 'Категория боюнча топтоо';

  @override
  String get flatList => 'Жөнөкөй тизме';

  @override
  String errorGeneric(String error) {
    return 'Ката: $error';
  }

  @override
  String get todayEmptyHint =>
      'Биринчи амалыңызды кошуу үчүн + баскычын басыңыз.';

  @override
  String get noteLabel => 'Жазуу';

  @override
  String get noteHint => 'мис. Мечитте намаз окудум';

  @override
  String get completed => 'аткарылды';

  @override
  String get notCompleted => 'аткарылган жок';

  @override
  String progressOf(int progress, int target) {
    return '$target ичинен $progress аткарылды';
  }

  @override
  String get removeFromToday => 'Бүгүндөн алып салуу';

  @override
  String get removeFromTodaySubtitle =>
      'Жалгыз бүгүн үчүн жашыруу. Эртең кайтып келет.';

  @override
  String get removeFromTracking => 'Көзөмөлдөн алып салуу';

  @override
  String get removeFromTrackingSubtitle =>
      'Тизмеден биротоло алып салуу. Тарых сакталат.';

  @override
  String get chooseIcon => 'Белги тандоо';

  @override
  String get iconNone => 'Жок';

  @override
  String get recentlyUsed => 'Жакында колдонулган';

  @override
  String get emojiSectionGeneral => 'Жалпы';

  @override
  String get categoryNameHint => 'Аты';

  @override
  String get categoryNew => '+ Жаңы';

  @override
  String get addAmal => 'Амал кошуу';

  @override
  String get customAmal => 'Өзгөчө амал';

  @override
  String get templateTasbih => 'Тасбих 33x';

  @override
  String get templateIstighfar => 'Истигфар 100x';

  @override
  String get templateSurahKahf => 'Кахф сүрөсү';

  @override
  String get templateSadaqah => 'Садака';

  @override
  String get templateTahajjud => 'Тахажжуд';

  @override
  String get templateDuhaPrayer => 'Духа намазы';

  @override
  String get settingsTitle => 'Жөндөөлөр';

  @override
  String settingsLoadError(String error) {
    return 'Жөндөөлөрдү жүктөөдө ката:\n$error';
  }

  @override
  String get sectionDayBoundary => 'Күн чеги';

  @override
  String get rolloverHour => 'Которулуу сааты';

  @override
  String get rolloverAtMidnight => 'Бүгүн түн ортосунда аяктайт.';

  @override
  String rolloverSubtitle(String time) {
    return 'Кечээки амалдар $time чейин өзгөртүлө алат.';
  }

  @override
  String get pickRolloverHour => 'Күн которулуучу саатты тандаңыз';

  @override
  String get sectionWeekMonth => 'Жума жана ай';

  @override
  String get startOfWeek => 'Жума башы';

  @override
  String get startOfMonth => 'Ай башы';

  @override
  String get startOfMonthClamped =>
      '28-күндөн кийинки күндөр кыска айларда акыркы күнгө ылайыкталат.';

  @override
  String get sectionAppearance => 'Сырткы көрүнүш';

  @override
  String get theme => 'Тема';

  @override
  String get themeSystem => 'Тутум';

  @override
  String get themeLight => 'Жарык';

  @override
  String get themeDark => 'Караңгы';

  @override
  String get sectionLanguage => 'Тил';

  @override
  String get language => 'Тил';

  @override
  String get systemDefault => 'Тутум тили';

  @override
  String get aboutTitle => 'Muhasaba';

  @override
  String get aboutSubtitle =>
      'Жеке диний эсеп журналы. Бардык маалыматтар бул түзмөктө сакталат.';

  @override
  String get statsTitle => 'Статистика';

  @override
  String statsLoadError(String error) {
    return 'Статистиканы жүктөөдө ката:\n$error';
  }

  @override
  String get perAmal => 'Ар бир амал';

  @override
  String get thisWeek => 'Бул жума';

  @override
  String get thisMonth => 'Бул ай';

  @override
  String get totalCompletions => 'жалпы аткарылгандар';

  @override
  String get streakCurrent => 'Учурдагы';

  @override
  String get streakLongest => 'Эң узун';

  @override
  String get ratioWeek => 'Жума';

  @override
  String get ratioMonth => 'Ай';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'күн',
      one: 'күн',
    );
    return '$_temp0';
  }

  @override
  String streakWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'жума',
      one: 'жума',
    );
    return '$_temp0';
  }

  @override
  String streakMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ай',
      one: 'ай',
    );
    return '$_temp0';
  }

  @override
  String get frequencyBadgeDaily => 'күн сайын';

  @override
  String get frequencyBadgeWeekly => 'жума сайын';

  @override
  String get frequencyBadgeMonthly => 'ай сайын';

  @override
  String get statsEmpty =>
      'Азырынча амал жок. Көзөмөлдөөнү баштоо үчүн Бүгүн бетинде амал кошуңуз.';

  @override
  String get statsToday => 'Бүгүн';

  @override
  String get statsThisWeek => 'Бул жума';

  @override
  String get statsThisMonth => 'Бул ай';

  @override
  String get statsAllTime => 'Бардык убакыт';

  @override
  String get statsCustomRange => 'Тандалган мезгил';

  @override
  String get statsAllCategories => 'Баары';

  @override
  String get statsAllAmals => 'Баары';

  @override
  String get statsCompleted => 'Аткарылган';

  @override
  String get statsExpected => 'Күтүлгөн';

  @override
  String get statsVsPrevious => 'Мурдагыга салыштырмалуу';

  @override
  String get statsByCategory => 'Категория боюнча';

  @override
  String get statsPerAmal => 'Ар бир амал';

  @override
  String get statsCurrentStreak => 'Учурдагы серия';

  @override
  String get statsBestStreak => 'Эң жакшы серия';

  @override
  String get statsTotalDays => 'Жалпы күндөр';

  @override
  String get statsConsistency => 'Туруктуулук';

  @override
  String get statsLast5Weeks => 'Акыркы 5 жума';

  @override
  String get statsDailyBreakdown => 'Күндөлүк талдоо';

  @override
  String get statsCompletionRate => 'Аткаруу деңгээли';

  @override
  String get statsFilterTime => 'Убакыт';

  @override
  String get statsFilterCategory => 'Категория';

  @override
  String get statsFilterAmal => 'Амал';

  @override
  String get statsStreaks => 'Сериялар';

  @override
  String get statsSelectDateRange => 'Күн аралыгын тандаңыз';

  @override
  String get historyTitle => 'Тарых';

  @override
  String get jumpToDate => 'Күнгө өтүү';

  @override
  String historyEmptyDay(String date) {
    return '$date күнү эч кандай амал көзөмөлдөнгөн эмес';
  }

  @override
  String get streakUnitD => 'к';

  @override
  String get streakUnitW => 'ж';

  @override
  String get streakUnitM => 'а';

  @override
  String get mondayShort => 'Дүй';

  @override
  String get tuesdayShort => 'Шей';

  @override
  String get wednesdayShort => 'Шар';

  @override
  String get thursdayShort => 'Бей';

  @override
  String get fridayShort => 'Жум';

  @override
  String get saturdayShort => 'Ише';

  @override
  String get sundayShort => 'Жек';

  @override
  String get mondayFull => 'Дүйшөмбү';

  @override
  String get tuesdayFull => 'Шейшемби';

  @override
  String get wednesdayFull => 'Шаршемби';

  @override
  String get thursdayFull => 'Бейшемби';

  @override
  String get fridayFull => 'Жума';

  @override
  String get saturdayFull => 'Ишемби';

  @override
  String get sundayFull => 'Жекшемби';

  @override
  String get hadith0 =>
      '\"Аллах үчүн эң сүйүктүү амалдар дайыма жасалуучу амалдар, аз болсо да.\"\n— Бухари жана Муслим';

  @override
  String get hadith1 =>
      '\"Жакшы амалдарды колуңуздан келгенче жасаңыз, анткени эң жакшы амалдар дайыма жасалгандар, аз болсо да.\"\n— Ибн Мажа';

  @override
  String get hadith2 =>
      '\"Адам баласы каза болгондо, амалдары токтойт, үчөөнү кошпогондо: үзгүлтүксүз садака, пайдалуу илим же ага дуба кылуучу ак ниет перзент.\"\n— Муслим';

  @override
  String get hadith3 =>
      '\"Ким эки салкын намазды (Багымдат жана Аср) окуса, бейишке кирет.\"\n— Бухари';

  @override
  String get hadith4 =>
      '\"Аллах силердин сырткы көрүнүшүңөргө жана байлыгыңарга карабайт, бирок жүрөктөрүңөргө жана амалдарыңарга карайт.\"\n— Муслим';

  @override
  String get hadith5 =>
      '\"Адамдардын эң жакшысы — адамдарга эң көп пайда алып келүүчү адам.\"\n— Даракутни';

  @override
  String get hadith6 =>
      '\"Иштерди жеңилдетиңиз, кыйындатпаңыз; кубанычтуу кабар бериңиз, адамдарды коркутпаңыз.\"\n— Бухари';

  @override
  String get hadith7 =>
      '\"Ким илим издеп жолго чыкса, Аллах ага бейишке жолду жеңилдетет.\"\n— Муслим';

  @override
  String get hadith8 => '\"Садака малды азайтпайт.\"\n— Муслим';

  @override
  String get hadith9 =>
      '\"Күчтүү момун Аллах үчүн алсыз момундан жакшыраак жана сүйүктүүрөөк, бирок экөөндө тең жакшылык бар.\"\n— Муслим';

  @override
  String historyDayCompleted(int completed, int total) {
    return '$total ичинен $completed аткарылды';
  }
}
