// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kazakh (`kk`).
class AppLocalizationsKk extends AppLocalizations {
  AppLocalizationsKk([String locale = 'kk']) : super(locale);

  @override
  String get appTitle => 'Muhasaba';

  @override
  String get tabToday => 'Бүгін';

  @override
  String get tabStats => 'Статистика';

  @override
  String get tabHistory => 'Тарих';

  @override
  String get tabSettings => 'Баптаулар';

  @override
  String get newAmal => 'Жаңа амал';

  @override
  String get editAmal => 'Амалды өзгерту';

  @override
  String get newAmalTitle => 'Жаңа амал';

  @override
  String get save => 'Сақтау';

  @override
  String get cancel => 'Бас тарту';

  @override
  String get clear => 'Тазалау';

  @override
  String get titleLabel => 'Атауы';

  @override
  String get titleRequired => 'Атауы міндетті';

  @override
  String get titleTooLong => 'Атауы тым ұзын';

  @override
  String get frequencyLabel => 'Жиілік';

  @override
  String get frequencyDaily => 'Күнделікті';

  @override
  String get frequencyWeekly => 'Апта сайын';

  @override
  String get frequencyMonthly => 'Ай сайын';

  @override
  String get categoryLabel => 'Санат';

  @override
  String get categoryOther => 'Басқа';

  @override
  String get categorySalah => 'Намаз';

  @override
  String get categoryDhikr => 'Зікір';

  @override
  String get categoryQuran => 'Құран';

  @override
  String get categoryCharity => 'Қайырымдылық';

  @override
  String get timesPerPeriod => 'Кезең ішінде рет';

  @override
  String get custom => 'Басқа';

  @override
  String get customTargetHint => 'мыс. 50';

  @override
  String get dayOfWeek => 'Апта күні';

  @override
  String get anyDay => 'Кез келген';

  @override
  String get anyDayHint => 'Кез келген күн (бүгін көрінеді, ертең жасырылады)';

  @override
  String onlyDayHint(String day) {
    return 'Тек $day';
  }

  @override
  String get dateOfMonth => 'Ай күні';

  @override
  String get anyDate => 'Кез келген';

  @override
  String get anyDateHint => 'Кез келген күн (бүгін көрінеді, ертең жасырылады)';

  @override
  String onlyDateHint(String date) {
    return 'Тек $date-күні';
  }

  @override
  String get startPreChecked => 'Алдын ала белгіленген күйде бастау';

  @override
  String get startPreCheckedSubtitle =>
      'Жаңа кезең басталғанда бұл амал әдепкі бойынша орындалған деп белгіленеді, белгіні алып тастай аласыз.';

  @override
  String get reminder => 'Еске салу';

  @override
  String get reminderNone => 'Жоқ';

  @override
  String reminderTime(String time) {
    return 'Еске салу: $time';
  }

  @override
  String get reminderPermissionWarning =>
      'Еске салу сақталды, бірақ хабарландыруларға рұқсат берілмеген. Ескертулер алу үшін жүйе баптауларында қосыңыз.';

  @override
  String get groupByCategory => 'Санат бойынша топтау';

  @override
  String get flatList => 'Жай тізім';

  @override
  String errorGeneric(String error) {
    return 'Қате: $error';
  }

  @override
  String get todayEmptyHint =>
      'Бірінші амалыңызды қосу үшін + түймесін басыңыз.';

  @override
  String get noteLabel => 'Жазба';

  @override
  String get noteHint => 'мыс. Мешітте намаз оқыдым';

  @override
  String get completed => 'орындалды';

  @override
  String get notCompleted => 'орындалмады';

  @override
  String progressOf(int progress, int target) {
    return '$target ішінен $progress орындалды';
  }

  @override
  String get removeFromToday => 'Бүгіннен алып тастау';

  @override
  String get removeFromTodaySubtitle => 'Тек бүгін үшін жасыру. Ертең қайтады.';

  @override
  String get removeFromTracking => 'Бақылаудан алып тастау';

  @override
  String get removeFromTrackingSubtitle =>
      'Тізімнен біржола алып тастау. Тарих сақталады.';

  @override
  String get chooseIcon => 'Белгіше таңдау';

  @override
  String get iconNone => 'Жоқ';

  @override
  String get recentlyUsed => 'Жақында қолданылған';

  @override
  String get emojiSectionGeneral => 'Жалпы';

  @override
  String get categoryNameHint => 'Атауы';

  @override
  String get categoryNew => '+ Жаңа';

  @override
  String get addAmal => 'Амал қосу';

  @override
  String get customAmal => 'Арнайы амал';

  @override
  String get templateTasbih => 'Тасбих 33x';

  @override
  String get templateIstighfar => 'Истиғфар 100x';

  @override
  String get templateSurahKahf => 'Кәһф сүресі';

  @override
  String get templateSadaqah => 'Садақа';

  @override
  String get templateTahajjud => 'Тахажжуд';

  @override
  String get templateDuhaPrayer => 'Духа намазы';

  @override
  String get settingsTitle => 'Баптаулар';

  @override
  String settingsLoadError(String error) {
    return 'Баптауларды жүктеу сәтсіз:\n$error';
  }

  @override
  String get sectionDayBoundary => 'Күн шекарасы';

  @override
  String get rolloverHour => 'Ауысу сағаты';

  @override
  String get rolloverAtMidnight => 'Бүгін түн ортасында аяқталады.';

  @override
  String rolloverSubtitle(String time) {
    return 'Кешегі амалдар $time дейін өңделе алады.';
  }

  @override
  String get pickRolloverHour => 'Күн ауысатын сағатты таңдаңыз';

  @override
  String get sectionWeekMonth => 'Апта және ай';

  @override
  String get startOfWeek => 'Апта басы';

  @override
  String get startOfMonth => 'Ай басы';

  @override
  String get startOfMonthClamped =>
      '28-күннен кейінгі күндер қысқа айларда соңғы күнге бейімделеді.';

  @override
  String get sectionAppearance => 'Сыртқы түрі';

  @override
  String get theme => 'Тақырып';

  @override
  String get themeSystem => 'Жүйелік';

  @override
  String get themeLight => 'Жарық';

  @override
  String get themeDark => 'Қараңғы';

  @override
  String get sectionLanguage => 'Тіл';

  @override
  String get language => 'Тіл';

  @override
  String get systemDefault => 'Жүйе тілі';

  @override
  String get aboutTitle => 'Muhasaba';

  @override
  String get aboutSubtitle =>
      'Жеке діни есептілік журналы. Барлық деректер осы құрылғыда сақталады.';

  @override
  String get statsTitle => 'Статистика';

  @override
  String statsLoadError(String error) {
    return 'Статистиканы жүктеу сәтсіз:\n$error';
  }

  @override
  String get perAmal => 'Әр амал';

  @override
  String get thisWeek => 'Осы апта';

  @override
  String get thisMonth => 'Осы ай';

  @override
  String get totalCompletions => 'жалпы орындалғандар';

  @override
  String get streakCurrent => 'Ағымдағы';

  @override
  String get streakLongest => 'Ең ұзақ';

  @override
  String get ratioWeek => 'Апта';

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
      other: 'апта',
      one: 'апта',
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
  String get frequencyBadgeDaily => 'күнделікті';

  @override
  String get frequencyBadgeWeekly => 'апта сайын';

  @override
  String get frequencyBadgeMonthly => 'ай сайын';

  @override
  String get statsEmpty =>
      'Әлі амал жоқ. Бақылауды бастау үшін Бүгін бетінде амал қосыңыз.';

  @override
  String get statsToday => 'Бүгін';

  @override
  String get statsThisWeek => 'Осы апта';

  @override
  String get statsThisMonth => 'Осы ай';

  @override
  String get statsAllTime => 'Барлық уақыт';

  @override
  String get statsCustomRange => 'Таңдаулы кезең';

  @override
  String get statsAllCategories => 'Барлығы';

  @override
  String get statsAllAmals => 'Барлығы';

  @override
  String get statsCompleted => 'Орындалған';

  @override
  String get statsExpected => 'Күтілген';

  @override
  String get statsVsPrevious => 'Алдыңғымен салыстырғанда';

  @override
  String get statsByCategory => 'Санат бойынша';

  @override
  String get statsPerAmal => 'Әр амал';

  @override
  String get statsCurrentStreak => 'Ағымдағы серия';

  @override
  String get statsBestStreak => 'Ең жақсы серия';

  @override
  String get statsTotalDays => 'Жалпы күндер';

  @override
  String get statsConsistency => 'Тұрақтылық';

  @override
  String get statsLast5Weeks => 'Соңғы 5 апта';

  @override
  String get statsDailyBreakdown => 'Күнделікті талдау';

  @override
  String get statsCompletionRate => 'Орындалу деңгейі';

  @override
  String get statsFilterTime => 'Уақыт';

  @override
  String get statsFilterCategory => 'Санат';

  @override
  String get statsFilterAmal => 'Амал';

  @override
  String get statsStreaks => 'Сериялар';

  @override
  String get statsSelectDateRange => 'Күн аралығын таңдаңыз';

  @override
  String get historyTitle => 'Тарих';

  @override
  String get jumpToDate => 'Күнге өту';

  @override
  String historyEmptyDay(String date) {
    return '$date күні ешқандай амал бақыланбаған';
  }

  @override
  String get streakUnitD => 'к';

  @override
  String get streakUnitW => 'а';

  @override
  String get streakUnitM => 'а';

  @override
  String get mondayShort => 'Дүй';

  @override
  String get tuesdayShort => 'Сей';

  @override
  String get wednesdayShort => 'Сәр';

  @override
  String get thursdayShort => 'Бей';

  @override
  String get fridayShort => 'Жұм';

  @override
  String get saturdayShort => 'Сен';

  @override
  String get sundayShort => 'Жек';

  @override
  String get mondayFull => 'Дүйсенбі';

  @override
  String get tuesdayFull => 'Сейсенбі';

  @override
  String get wednesdayFull => 'Сәрсенбі';

  @override
  String get thursdayFull => 'Бейсенбі';

  @override
  String get fridayFull => 'Жұма';

  @override
  String get saturdayFull => 'Сенбі';

  @override
  String get sundayFull => 'Жексенбі';

  @override
  String get hadith0 =>
      '\"Аллаһ үшін ең сүйікті амалдар үнемі жасалатын амалдар, аз болса да.\"\n— Бұхари және Муслим';

  @override
  String get hadith1 =>
      '\"Жақсы амалдарды қолыңыздан келгенше жасаңыз, өйткені ең жақсы амалдар үнемі жасалатындар, аз болса да.\"\n— Ибн Мәжа';

  @override
  String get hadith2 =>
      '\"Адам баласы қайтыс болғанда, амалдары тоқтайды, тек үшеуін қоспағанда: үздіксіз садақа, пайдалы ілім немесе оған дұға ететін ізгілікті перзент.\"\n— Муслим';

  @override
  String get hadith3 =>
      '\"Кім екі салқын намазды (Таң және Аср) оқыса, жәннатқа кіреді.\"\n— Бұхари';

  @override
  String get hadith4 =>
      '\"Аллаһ сіздің сыртқы келбетіңізге және байлығыңызға қарамайды, бірақ жүректеріңізге және амалдарыңызға қарайды.\"\n— Муслим';

  @override
  String get hadith5 =>
      '\"Адамдардың ең жақсысы — адамдарға ең көп пайда әкелетін адам.\"\n— Дарақұтни';

  @override
  String get hadith6 =>
      '\"Істерді жеңілдетіңіз, қиындатпаңыз; қуанышты хабар беріңіз, адамдарды қорқытпаңыз.\"\n— Бұхари';

  @override
  String get hadith7 =>
      '\"Кім ілім іздеп жолға шықса, Аллаһ оған жәннатқа жолды жеңілдетеді.\"\n— Муслим';

  @override
  String get hadith8 => '\"Садақа малды азайтпайды.\"\n— Муслим';

  @override
  String get hadith9 =>
      '\"Күшті мүмін Аллаһ үшін әлсіз мүміннен жақсырақ және сүйіктірек, бірақ екеуінде де жақсылық бар.\"\n— Муслим';

  @override
  String historyDayCompleted(int completed, int total) {
    return '$total ішінен $completed орындалды';
  }
}
