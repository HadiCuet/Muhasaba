// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kazakh (`kk`).
class AppLocalizationsKk extends AppLocalizations {
  AppLocalizationsKk([String locale = 'kk']) : super(locale);

  @override
  String get repeatsOnDaysHint => 'Таңдалған күндері қайталанады';

  @override
  String get newDayStarted => 'Жаңа күн басталды';

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
  String get tabChallenge => 'Мақсат';

  @override
  String get tabInsights => 'Статистика';

  @override
  String get insightsTitle => 'Статистика';

  @override
  String get insightsOverview => 'Шолу';

  @override
  String get insightsDaily => 'Күнделікті';

  @override
  String get insightsArchive => 'Мұрағат';

  @override
  String get archivedEmpty =>
      'Мұнда әзірге ештеңе жоқ. Бақылаудан алып тастаған амалдарыңыз осында сақталады, оларды қайта қосуға болады.';

  @override
  String archivedStoppedOn(String date) {
    return '$date күні алып тасталды';
  }

  @override
  String get archivedRestore => 'Қайта қосу';

  @override
  String archivedRestored(String title) {
    return '«$title» тізіміңізге қайта қосылды.';
  }

  @override
  String get newChallenge => 'Жаңа мақсат';

  @override
  String get newAmal => 'Жаңа амал';

  @override
  String get editAmal => 'Амалды өңдеу';

  @override
  String get newAmalTitle => 'Жаңа амал';

  @override
  String get save => 'Сақтау';

  @override
  String get cancel => 'Бас тарту';

  @override
  String get ok => 'OK';

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
  String get categorySunnah => 'Сүннет';

  @override
  String get timesPerPeriod => 'Кезеңге неше рет';

  @override
  String get custom => 'Басқа';

  @override
  String get customTargetHint => 'мыс. 50';

  @override
  String get targetAny => 'Қалағанша';

  @override
  String get targetAnyHelp =>
      'Межесіз — кез келген мөлшер орындалды деп саналады';

  @override
  String get dayOfWeek => 'Апта күні';

  @override
  String get anyDay => 'Кез келген';

  @override
  String get anyDayHint => 'Кез келген күн (бүгін көрінеді, ертең жасырылады)';

  @override
  String onlyDayHint(String day) {
    return 'Тек $day күні';
  }

  @override
  String get dateOfMonth => 'Ай күні';

  @override
  String get repeatMode => 'Қайталану';

  @override
  String get onSetDays => 'Белгілі апта күндері';

  @override
  String get onSetDates => 'Белгілі ай күндері';

  @override
  String get anyDayMode => 'Кез келген күн';

  @override
  String get datesOfMonth => 'Айдың күндері';

  @override
  String get daysPerWeekQuestion => 'Аптасына неше күн?';

  @override
  String get daysPerMonthQuestion => 'Айына неше күн?';

  @override
  String get pickAtLeastOneDay => 'Кемінде бір күн таңдаңыз';

  @override
  String get pickAtLeastOneDate => 'Айдың кемінде бір күнін таңдаңыз';

  @override
  String get previewDaily => 'Күн сайын қайталанады';

  @override
  String previewWeeklyDays(String days) {
    return '$days күндері қайталанады';
  }

  @override
  String previewWeeklyAny(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count күн',
    );
    return 'Аптасына кез келген $_temp0 қайталанады';
  }

  @override
  String previewMonthlyDates(int count, String dates) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Әр айдың $dates күндері қайталанады',
      one: 'Әр айдың $dates күні қайталанады',
    );
    return '$_temp0';
  }

  @override
  String previewMonthlyAny(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count күн',
    );
    return 'Айына кез келген $_temp0 қайталанады';
  }

  @override
  String get anyDate => 'Кез келген';

  @override
  String get anyDateHint => 'Кез келген күн (бүгін көрінеді, ертең жасырылады)';

  @override
  String onlyDateHint(String date) {
    return 'Тек айдың $date күні';
  }

  @override
  String get startPreChecked => 'Белгіленген күйде бастау';

  @override
  String get startPreCheckedSubtitle =>
      'Жаңа кезең басталғанда бұл амал белгіні өзіңіз алып тастағанша орындалған болып тұрады.';

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
  String get settingsReminders => 'Еске салу';

  @override
  String get dailyReminder => 'Күнделікті еске салу';

  @override
  String get dailyReminderSubtitle =>
      'Амалдарыңызды белгілеуді еске салып отырады';

  @override
  String get dailyReminderTimeLabel => 'Еске салу уақыты';

  @override
  String get dailyReminderBody =>
      'Бір сәт бөліп, бүгінгі амалдарыңызды белгілеп қойыңыз.';

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
      'Алғашқы амалыңызды қосу үшін + түймесін басыңыз.';

  @override
  String get noteLabel => 'Жазба';

  @override
  String get noteHint => 'мыс. мешітте жамағатпен оқыдым';

  @override
  String get completed => 'орындалды';

  @override
  String get notCompleted => 'орындалмады';

  @override
  String progressOf(String progress, String target) {
    return '$target ішінен $progress орындалды';
  }

  @override
  String progressOpen(String count) {
    return '$count рет орындалды';
  }

  @override
  String get removeFromToday => 'Бүгіннен алып тастау';

  @override
  String get removeFromTodaySubtitle =>
      'Тек бүгінге жасырылады. Ертең қайта шығады.';

  @override
  String get removeFromTracking => 'Бақылаудан алып тастау';

  @override
  String get removeFromTrackingSubtitle =>
      'Тізімнен біржола алып тасталады. Тарихы сақталады.';

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
  String get categoryNewSheetTitle => 'Жаңа санат';

  @override
  String get categoryEditSheetTitle => 'Санатты өңдеу';

  @override
  String get addAmal => 'Амал қосу';

  @override
  String get customAmal => 'Жеке амал';

  @override
  String get amalTasbih => 'Тәсбих 33 рет';

  @override
  String get amalIstighfar => 'Истиғфар';

  @override
  String get amalSurahKahf => 'Кәһф сүресі';

  @override
  String get amalSadaqah => 'Садақа';

  @override
  String get amalTahajjud => 'Тәһажжуд';

  @override
  String get amalDuha => 'Дұха намазы';

  @override
  String get amalFajr => 'Таң';

  @override
  String get amalDhuhr => 'Бесін';

  @override
  String get amalAsr => 'Асыр';

  @override
  String get amalMaghrib => 'Ақшам';

  @override
  String get amalIsha => 'Құптан';

  @override
  String get amalMorningAdhkar => 'Таңғы зікірлер';

  @override
  String get amalEveningAdhkar => 'Кешкі зікірлер';

  @override
  String get amalTilawah => 'Тиләуат';

  @override
  String get settingsTitle => 'Баптаулар';

  @override
  String settingsLoadError(String error) {
    return 'Баптаулар жүктелмеді:\n$error';
  }

  @override
  String get sectionDayBoundary => 'Күн шекарасы';

  @override
  String get rolloverHour => 'Ауысу сағаты';

  @override
  String get rolloverAtMidnight => 'Бүгін түн ортасында аяқталады.';

  @override
  String rolloverSubtitle(String time) {
    return 'Кешегі амалдарды сағат $time болғанша өзгертуге болады.';
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
      'Қысқа айларда 28-нен кейінгі күндер айдың соңғы күніне ауысады.';

  @override
  String get sectionAppearance => 'Сыртқы түрі';

  @override
  String get theme => 'Тақырып';

  @override
  String get themeSystem => 'Жүйелік';

  @override
  String get themeLight => 'Ашық';

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
      'Амалдарыңызды өзіңіз есепке алатын жеке күнделік. Барлық дерек тек осы құрылғыда сақталады.';

  @override
  String get statsTitle => 'Статистика';

  @override
  String statsLoadError(String error) {
    return 'Статистика жүктелмеді:\n$error';
  }

  @override
  String get perAmal => 'Әр амал';

  @override
  String get thisWeek => 'Осы апта';

  @override
  String get thisMonth => 'Осы ай';

  @override
  String get totalCompletions => 'рет орындалды';

  @override
  String get streakCurrent => 'Қазіргі';

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
      'Әлі амал жоқ. Бақылауды бастау үшін «Бүгін» бетінде амал қосыңыз.';

  @override
  String get statsToday => 'Бүгін';

  @override
  String get statsThisWeek => 'Осы апта';

  @override
  String get statsThisMonth => 'Осы ай';

  @override
  String get statsAllTime => 'Барлық уақыт';

  @override
  String get statsCustomRange => 'Кезең таңдау';

  @override
  String get statsAllCategories => 'Барлығы';

  @override
  String get statsAllAmals => 'Барлығы';

  @override
  String get statsCompleted => 'Орындалған';

  @override
  String get statsExpected => 'Жоспарланған';

  @override
  String get statsVsPrevious => 'Алдыңғымен салыстырғанда';

  @override
  String get statsByCategory => 'Санат бойынша';

  @override
  String get statsPerAmal => 'Әр амал';

  @override
  String get statsTotalCaption => 'барлығы';

  @override
  String statsDaysFraction(String done, String expectedText, num expected) {
    String _temp0 = intl.Intl.pluralLogic(
      expected,
      locale: localeName,
      other: 'күн',
      one: 'күн',
    );
    return '$done/$expectedText $_temp0';
  }

  @override
  String get statsCurrentStreak => 'Қазіргі серия';

  @override
  String get statsBestStreak => 'Үздік серия';

  @override
  String get statsTotalDays => 'Барлық күн';

  @override
  String get statsConsistency => 'Тұрақтылық';

  @override
  String get statsLast5Weeks => 'Соңғы 5 апта';

  @override
  String get statsDailyBreakdown => 'Күндер бойынша';

  @override
  String get statsCompletionRate => 'Орындалу деңгейі';

  @override
  String get statsAmountPerDay => 'Күнделікті мөлшер';

  @override
  String statsCountTotal(String count) {
    return 'Барлығы $count';
  }

  @override
  String statsCountAvg(String amount) {
    return 'Күніне орташа $amount';
  }

  @override
  String statsCountBest(String count, String day) {
    return 'Ең көп $count · $day';
  }

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
    return '$date күні ешбір амал белгіленбеген';
  }

  @override
  String get streakUnitD => 'к';

  @override
  String get streakUnitW => 'а';

  @override
  String get streakUnitM => 'ай';

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
      '«Аллаһқа ең сүйікті амалдар — аз болса да, тұрақты жасалатын амалдар.»\n— Бұхари және Мүслим';

  @override
  String get hadith2 =>
      '«Адам баласы қайтыс болғанда, оның амалдары тоқтайды, тек үшеуі ғана қалады: садақа-жария, пайдалы ілім немесе оған дұға ететін салиқалы перзент.»\n— Мүслим';

  @override
  String get hadith3 =>
      '«Кім екі салқын намазды (таң мен асыр намазын) оқыса, жәннатқа кіреді.»\n— Бұхари';

  @override
  String get hadith4 =>
      '«Аллаһ сендердің сырт келбеттеріңе де, мал-мүліктеріңе де қарамайды, бірақ жүректеріңе және амалдарыңа қарайды.»\n— Мүслим';

  @override
  String get hadith6 =>
      '«Жеңілдетіңдер, қиындатпаңдар; сүйіншілеңдер, адамдарды үркітпеңдер.»\n— Бұхари';

  @override
  String get hadith7 =>
      '«Кім ілім іздеп жолға шықса, Аллаһ оған жәннатқа баратын жолды жеңілдетеді.»\n— Мүслим';

  @override
  String get hadith8 => '«Садақа малды азайтпайды.»\n— Мүслим';

  @override
  String get hadith9 =>
      '«Күшті мүмін Аллаһқа әлсіз мүміннен жақсырақ әрі сүйіктірек, алайда екеуінде де қайыр бар.»\n— Мүслим';

  @override
  String get hadith10 =>
      '«Кім күніне жүз рет „Субханаллаһи уа бихамдиһи“ десе, күнәлары теңіз көбігіндей болса да кешіріледі.»\n— Бұхари және Мүслим';

  @override
  String get hadith12 =>
      '«Кім әр парыз намаздан кейін Аятул-Күрсіні оқыса, оның жәннатқа кіруіне тек өлім ғана кедергі болады.»\n— Нәсаи';

  @override
  String get hadith13 => '«Жақсы сөз — садақа.»\n— Бұхари және Мүслим';

  @override
  String get hadith14 =>
      '«Аллаһқа және ақырет күніне иман келтірген адам не жақсы сөз айтсын, не үндемесін.»\n— Бұхари және Мүслим';

  @override
  String get hadith15 =>
      '«Жесірге немесе міскінге қамқорлық жасаған адам Аллаһ жолындағы мұжаһид сияқты.»\n— Бұхари және Мүслим';

  @override
  String get hadith16 => '«Бауырыңа күлімсіреп қарауың — садақа.»\n— Тирмизи';

  @override
  String get hadith17 =>
      '«Сендердің ең жақсыларың — Құранды үйреніп, оны үйреткендерің.»\n— Бұхари';

  @override
  String get hadith18 =>
      '«Ешкім өз қол еңбегімен тапқанынан артық тамақ жеген емес.»\n— Бұхари';

  @override
  String get hadith19 =>
      '«Аллаһ жұмсақ әрі әр істе жұмсақтықты жақсы көреді.»\n— Бұхари және Мүслим';

  @override
  String historyDayCompleted(String completed, String total) {
    return '$total ішінен $completed орындалды';
  }

  @override
  String get settingsSchedule => 'Кесте';

  @override
  String get settingsAppearance => 'Сыртқы түрі';

  @override
  String get settingsAboutTagline => 'Күнделікті діни серігіңіз';

  @override
  String get settingsRolloverSub => 'Күн қашан жаңарады';

  @override
  String get settingsAbout => 'Қолданба туралы';

  @override
  String get settingsVersion => 'Нұсқа';

  @override
  String get settingsDeveloper => 'Әзірлеуші';

  @override
  String get settingsSupport => 'Қолдау';

  @override
  String get settingsRate => 'Қолданбаны бағалау';

  @override
  String get settingsContact => 'Бізбен байланысу';

  @override
  String get settingsReportBug => 'Қате туралы хабарлау';

  @override
  String get settingsRequestFeature => 'Жаңа мүмкіндік ұсыну';

  @override
  String settingsSupportFallback(String email) {
    return 'Пошта қолданбасы ашылмады. $email мекенжайына хат жазыңыз.';
  }

  @override
  String get settingsPrivacyPolicy => 'Құпиялылық саясаты';

  @override
  String get settingsPrivacyOpenFailed =>
      'Құпиялылық саясатын ашу мүмкін болмады.';

  @override
  String get hadith20 =>
      '«Кім Рамазанда иман етіп, сауабын үміт етіп ораза ұстаса, оның өткен күнәлары кешіріледі.»\n— Бұхари және Мүслим';

  @override
  String get hadith22 =>
      '«Азан мен қамат арасындағы дұға қайтарылмайды.»\n— Әбу Дәуд';

  @override
  String get hadith23 =>
      '«Кім Аллаһ үшін мешіт салса, Аллаһ оған жәннатта үй салады.»\n— Бұхари және Мүслим';

  @override
  String get hadith24 =>
      '«Ерлер үшін ең жақсы саф — алдыңғы саф, ал әйелдер үшін ең жақсы саф — соңғы саф.»\n— Мүслим';

  @override
  String get hadith25 => '«Ораза — тозақтан қалқан.»\n— Нәсаи';

  @override
  String get hadith26 =>
      '«Кім он екі рәкағат сүннет намаз оқыса, оған жәннатта үй салынады.»\n— Мүслим';

  @override
  String get hadith27 =>
      '«Құранды жетік оқитын адам асыл періштелермен бірге болады.»\n— Бұхари және Мүслим';

  @override
  String get hadith29 => '«Ең жақсы садақа — су беру.»\n— Ахмад';

  @override
  String get hadith30 =>
      '«Кім мүміннің бір қиындығын кетірсе, Аллаһ Қиямет күні оның бір қиындығын кетіреді.»\n— Мүслим';

  @override
  String get hadith32 => '«Ұят — иманның бір бөлігі.»\n— Бұхари және Мүслим';

  @override
  String get hadith34 =>
      '«Кім сабыр етсе, Аллаһ оған сабыр береді.»\n— Бұхари және Мүслим';

  @override
  String get hadith36 =>
      '«Сендердің ешқайсың өзіне қалағанды бауырына да қаламайынша, шынайы мүмін бола алмайды.»\n— Бұхари және Мүслим';

  @override
  String get hadith37 =>
      '«Аштарды тамақтандырыңдар, науқастың көңілін сұраңдар және тұтқындарды азат етіңдер.»\n— Бұхари';

  @override
  String get hadith38 =>
      '«Күшті адам — күресте жығатын емес, ашуланғанда өзін ұстай алатын адам.»\n— Бұхари және Мүслим';

  @override
  String get hadith40 =>
      '«Әр намаздан кейін „Субханаллаһ“, „Әлхамдулиллаһ“ және „Аллаһу әкбар“ деп отыз үш реттен айтыңдар.»\n— Мүслим';

  @override
  String get hadith41 => '«Ең абзал зікір — „Лә иләһә иллаллаһ“.»\n— Тирмизи';

  @override
  String get hadith42 =>
      '«Екі нығмет бар, көп адам олардың қадірін білмей, зая етеді: денсаулық пен бос уақыт.»\n— Бұхари';

  @override
  String get hadith43 =>
      '«Бес нәрседен бұрын бес нәрсенің қадірін біл: қарттықтан бұрын жастықтың, ауырудан бұрын денсаулықтың, кедейліктен бұрын байлықтың, қолың тимейтін кезден бұрын бос уақыттың және өлімнен бұрын өмірдің.»\n— Хаким';

  @override
  String get hadith44 =>
      '«Кім Ихлас сүресін он рет оқыса, Аллаһ оған жәннатта үй салады.»\n— Ахмад';

  @override
  String get hadith45 =>
      '«Парыз намаздан кейінгі ең абзал намаз — түнгі намаз.»\n— Мүслим';

  @override
  String get hadith46 =>
      '«Су отты сөндіргендей, садақа күнәларды сөндіреді.»\n— Тирмизи';

  @override
  String get hadith47 =>
      '«Туыстық қатынасты сақтаушы — жақсылыққа жақсылық қайтарушы емес, байланыс үзілгенде де оны жалғаушы.»\n— Бұхари';

  @override
  String get hadith49 =>
      '«Кім тамақ жеп болып: „Маған осыны жегізіп, менің ешбір күш-қуатымсыз нәсіп еткен Аллаһқа мадақ болсын“, — десе, оның өткен күнәлары кешіріледі.»\n— Тирмизи';

  @override
  String get hadith53 =>
      '«Ешбір жақсылықты кішсінбе, тіпті ол бауырыңды жайдары жүзбен қарсы алу болса да.»\n— Мүслим';

  @override
  String get hadith54 =>
      '«Сендердің ең жақсыларың — отбасына ең жақсы болғандарың.»\n— Тирмизи';

  @override
  String get hadith55 =>
      '«Кім түнде Бақара сүресінің соңғы екі аятын оқыса, сол екеуі оған жеткілікті болады.»\n— Бұхари және Мүслим';

  @override
  String get hadith56 =>
      '«Дүние — уақытша игілік, ал оның ең жақсы игілігі — салиха әйел.»\n— Мүслим';

  @override
  String get hadith57 =>
      '«Үш дұға қайтарылмайды: ораза ұстаған адамның, әділ басшының және жәбір көрген адамның дұғасы.»\n— Тирмизи';

  @override
  String get hadith58 =>
      '«Кім маған бір рет салауат айтса, Аллаһ оған он есе рахмет етеді.»\n— Мүслим';

  @override
  String get hadith65 => '«Мүмін — мүміннің айнасы.»\n— Әбу Дәуд';

  @override
  String get hadith66 =>
      '«Шыншылдық ізгілікке жетелейді, ал ізгілік жәннатқа жетелейді.»\n— Бұхари және Мүслим';

  @override
  String get hadith67 =>
      '«Саған аманат тапсырған адамға аманатын қайтар, саған қиянат жасағанға қиянат жасама.»\n— Әбу Дәуд және Тирмизи';

  @override
  String get hadith68 =>
      '«Мұсылманға шаршау, ауру, уайым, қайғы, азап не мұң тисе, тіпті тікен кірсе де, Аллаһ сол арқылы оның кейбір күнәларын кешіреді.»\n— Бұхари және Мүслим';

  @override
  String get hadith69 =>
      '«Мұсылманның бауырына сырттай жасаған дұғасы әрдайым қабыл болады.»\n— Мүслим';

  @override
  String get hadith70 =>
      '«Кім Аллаһтан үш рет жәннат сұраса, жәннат: „Аллаһым, оны жәннатқа кіргізе гөр“, — дейді.»\n— Тирмизи';

  @override
  String get hadith71 =>
      '«Рамазаннан кейінгі ең абзал ораза — Аллаһтың айы мұхаррамда ұсталған ораза.»\n— Мүслим';

  @override
  String get hadith72 =>
      '«Кім қажылық жасап, бейәдеп сөз айтпай, күнә істемесе, анасынан туған күндегідей болып қайтады.»\n— Бұхари және Мүслим';

  @override
  String get hadith73 =>
      '«Бір ұмра келесі ұмраға дейінгі аралықтағы күнәларға кәффарат болады.»\n— Бұхари және Мүслим';

  @override
  String get hadith74 =>
      '«Қараңғы түннің бөліктеріндей бүліктер келмей тұрып, ізгі амалдарға асығыңдар.»\n— Мүслим';

  @override
  String get hadith75 =>
      '«Таң намазының екі рәкағаты дүние мен ондағы барлық нәрседен қайырлы.»\n— Мүслим';

  @override
  String get hadith77 =>
      '«Егер сендер Аллаһқа лайықты түрде тәуекел етсеңдер, Ол құстарды ризықтандырғандай сендерді де ризықтандырар еді.»\n— Тирмизи';

  @override
  String get hadith78 =>
      '«Кім науқастың көңілін сұраса, қайтып оралғанша жәннаттың жемісін теруде болады.»\n— Мүслим';

  @override
  String get hadith79 =>
      '«Сәлемді таратыңдар, тамақ беріңдер, адамдар ұйықтап жатқанда түнде намаз оқыңдар — жәннатқа аман-есен кіресіңдер.»\n— Тирмизи';

  @override
  String get hadith80 =>
      '«Адамдарға алғыс айтпаған адам Аллаһқа да шүкір етпейді.»\n— Тирмизи';

  @override
  String get hadith81 =>
      '«Тек екі адамға ғана қызығуға болады: Аллаһ мал беріп, оны ақ жолға жұмсап жүрген адамға және Аллаһ даналық беріп, сонымен үкім шығарып, оны үйретіп жүрген адамға.»\n— Бұхари және Мүслим';

  @override
  String get hadith82 =>
      '«Адам досының дінінде болады. Сондықтан әрқайсың кімді дос тұтатыныңа қара.»\n— Әбу Дәуд және Тирмизи';

  @override
  String get hadith85 =>
      '«Кім Аллаһ үшін бір нәрседен бас тартса, Аллаһ оның орнына одан жақсысын береді.»\n— Ахмад';

  @override
  String get hadith86 =>
      '«Кім мұсылманның айыбын жасырса, Аллаһ Қиямет күні оның айыбын жасырады.»\n— Бұхари және Мүслим';

  @override
  String get hadith87 =>
      '«Дүниеде бейне бір мүсәпір не жолаушы сияқты бол.»\n— Бұхари';

  @override
  String get hadith88 =>
      '«Кім қиналған адамға жеңілдік жасаса, Аллаһ оған дүние мен ақыретте жеңілдік береді.»\n— Мүслим';

  @override
  String get hadith89 => '«Амалдар ниетке байланысты.»\n— Бұхари және Мүслим';

  @override
  String get hadith90 =>
      '«Күдіктен сақтаныңдар, өйткені күдік — сөздің ең өтірігі.»\n— Бұхари және Мүслим';

  @override
  String get hadith93 =>
      '«Бірге тамақтаныңдар және Аллаһтың атын атаңдар, сонда тамақтарың берекелі болады.»\n— Әбу Дәуд';

  @override
  String get hadith94 =>
      '«Аллаһты зікір етіп отырған қай қауымды да періштелер қоршап алады, оларды рахмет басады және оларға тыныштық түседі.»\n— Мүслим';

  @override
  String get hadith95 =>
      '«Кешірімді болған құлдың Аллаһ тек абыройын арттырады.»\n— Мүслим';

  @override
  String get hadith96 =>
      '«Түйеңді байла, сосын Аллаһқа тәуекел ет.»\n— Тирмизи';

  @override
  String get hadith97 =>
      '«Мүміннің ісі қандай ғажап — оның бәрі өзі үшін жақсылық.»\n— Мүслим';

  @override
  String get hadith98 =>
      '«Мұсылман — мұсылманның бауыры: оған зұлымдық жасамайды, оны жәрдемсіз қалдырмайды, оны кемсітпейді.»\n— Мүслим';

  @override
  String get delete => 'Жою';

  @override
  String get remove => 'Алып тастау';

  @override
  String get deleteAmalConfirmTitle => 'Бақылаудан алып тастайсыз ба?';

  @override
  String deleteAmalConfirmBody(String title) {
    return '«$title» тізімнен жасырылады. Тарихыңыз сақталады.';
  }

  @override
  String get genericError => 'Қате орын алды. Қайталап көріңіз.';

  @override
  String get notificationChannelName => 'Амалдар туралы еске салу';

  @override
  String get notificationChannelDescription =>
      'Бақылаудағы амалдарыңыз туралы күнделікті еске салулар.';

  @override
  String get invalidAmalId => 'Жарамсыз амал идентификаторы';

  @override
  String get tutorialSettingsRow => 'Muhasaba қалай қолданылады';

  @override
  String get tutorialSkip => 'Өткізіп жіберу';

  @override
  String get tutorialNext => 'Келесі';

  @override
  String get tutorialDone => 'Дайын';

  @override
  String get tutorialTapTitle => 'Орындау үшін түртіңіз';

  @override
  String get tutorialTapBody =>
      'Бір түртсеңіз, амал бүгінге орындалды деп белгіленеді. Болдырмау үшін тағы түртіңіз.';

  @override
  String get tutorialEditTitle => 'Өңдеу үшін екі рет түртіңіз';

  @override
  String get tutorialEditBody =>
      'Өңдеу пішіні ашылады — атауын немесе қайталану жиілігін өзгертуге болады.';

  @override
  String get tutorialReorderTitle => 'Ретін өзгерту үшін басып тұрыңыз';

  @override
  String get tutorialReorderBody =>
      'Жолды басып тұрып, сүйреңіз. Жаңа рет сақталады.';

  @override
  String get tutorialRemoveTitle => 'Алып тастау үшін сырғытыңыз';

  @override
  String get tutorialRemoveBody =>
      'Жолды шетке сырғытып, оны бүгінге жасыруға немесе бақылауды тоқтатуға болады.';

  @override
  String get tutorialCountTitle => 'Қайталауларды санау';

  @override
  String get tutorialCountBody =>
      'Межесі бірден көп амалдарда әр қайталау үшін − және + түймелерін басыңыз.';

  @override
  String get tutorialViewTitle => 'Топтау немесе жай тізім';

  @override
  String get tutorialViewBody =>
      'Санат бойынша топтау мен жай тізім арасында ауысыңыз.';

  @override
  String get tutorialChallengeLogTitle => 'Бүгінді белгілеу үшін түртіңіз';

  @override
  String get tutorialChallengeLogBody =>
      'Бір түрту бүгінді белгілейді. Саналатын мақсатта әр түрту бір қадам қосады.';

  @override
  String get tutorialChallengeOpenTitle => 'Ашу үшін екі рет түртіңіз';

  @override
  String get tutorialChallengeOpenBody =>
      'Мақсат ашылады — әр күнді көріп, өткізіп алған күнді түзетуге немесе мақсатты жоюға болады.';

  @override
  String get tutorialChallengeDeleteBody =>
      'Мақсатты жою үшін карточканы шетке сырғытыңыз.';

  @override
  String get tutorialChallengeAmountTitle => 'Нақты мөлшерді жазу';

  @override
  String get tutorialChallengeAmountBody =>
      'Бір-бірлеп өзгерту үшін − және + басыңыз немесе нақты мөлшерді енгізу үшін санды түртіңіз.';

  @override
  String get challengeOpenDetailsAction => 'Мақсат мәліметтерін ашу';

  @override
  String get challengesActive => 'Белсенді';

  @override
  String get challengesPast => 'Өткен';

  @override
  String challengeJustFinished(int count, String title) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count мақсат аяқталды — соңғысы «$title»',
      one: '«$title» аяқталды',
    );
    return '$_temp0';
  }

  @override
  String get challengeSectionEnded => 'Мерзімі өтті';

  @override
  String get challengesPastEmpty => 'Әзірге аяқталған ештеңе жоқ.';

  @override
  String get challengesEmptyTitle => 'Әзірге мақсат жоқ';

  @override
  String get challengesEmptyBody =>
      'Өзіңізге мақсат қойыңыз — мысалы, 7 күнде 20 рәкағат — және оны осында бақылаңыз.';

  @override
  String get editChallenge => 'Мақсатты өңдеу';

  @override
  String get deleteChallenge => 'Мақсатты жою';

  @override
  String get deleteChallengeConfirm =>
      'Бұл мақсат пен оның барлық белгіленген нәтижесі жойылсын ба?';

  @override
  String get challengeShapeQuestion => 'Бұл қандай мақсат?';

  @override
  String get challengeShapeTotal => 'Жалпы санға жету';

  @override
  String get challengeShapeTotalBody =>
      '1000 салауат, 30 пара. Мөлшерін жазып отырасыз, жалпы сан өсе береді.';

  @override
  String get challengeShapeStreak => 'Күн сайын үзбей орындау';

  @override
  String get challengeShapeStreakBody =>
      'Тәһажжуд, таң намазын жамағатпен оқу. Күніне бір белгі, мөлшері маңызды емес.';

  @override
  String get challengeTargetLabel => 'Межелі сан';

  @override
  String get challengeTargetRequired => 'Нөлден үлкен сан енгізіңіз';

  @override
  String get challengeUnitLabel => 'Бірлік (міндетті емес)';

  @override
  String get challengeUnitHint => 'рәкағат, бет, рет';

  @override
  String get challengeOneTapAdds => 'Бір түрткенде қосылады';

  @override
  String get challengeHowManyDays => 'Қанша күн?';

  @override
  String get challengeReachHowMuch => 'Қанша жинау керек?';

  @override
  String get challengeSpreadOver => 'Мерзімі';

  @override
  String get challengeSpreadEveryDay => 'Күн сайын';

  @override
  String get challengeSpreadLonger => 'Ұзағырақ мерзім';

  @override
  String get challengeByWhen => 'Қашанға дейін?';

  @override
  String get challengeWindowDuration => 'Неше күнде';

  @override
  String get challengeByDate => 'Белгілі күнге дейін';

  @override
  String challengePlanRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String challengePlanExact(String start, String end) {
    return '$start – $end · күніне бір, күн сайын';
  }

  @override
  String challengePlanSlack(
    String start,
    String end,
    String target,
    String window,
    String slack,
  ) {
    return '$start – $end · $window күннің $target күні — $slack күн өткізіп алуға болады';
  }

  @override
  String challengePlanRate(String start, String end, String rate) {
    return '$start – $end · күніне шамамен $rate';
  }

  @override
  String challengePlanOpen(String start) {
    return 'Басталуы: $start · мерзімсіз';
  }

  @override
  String challengeTooTight(String target, String window) {
    return '$target күн $window күнге сыймайды — үзбей орындауда күніне бір күн ғана саналады.';
  }

  @override
  String challengeDurationLabel(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count күн',
    );
    return '$_temp0';
  }

  @override
  String get challengeStartDate => 'Басталуы';

  @override
  String get challengeEndDate => 'Аяқталуы';

  @override
  String challengeProgressCount(String done, String target, String unit) {
    return '$target $unit ішінен $done';
  }

  @override
  String challengeProgressPlain(String done, String target) {
    return '$target ішінен $done';
  }

  @override
  String challengeProgressDays(String done, String target) {
    return '$target күннен $done';
  }

  @override
  String challengeDaysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count күн қалды',
    );
    return '$_temp0';
  }

  @override
  String get challengeNoDeadline => 'Мерзімсіз';

  @override
  String challengeOnTrack(String rate) {
    return 'Жоспар бойынша · күніне $rate';
  }

  @override
  String challengeBehind(String rate) {
    return 'Артта қалды · күніне $rate керек';
  }

  @override
  String challengeLastDay(String remaining) {
    return 'Соңғы күн · $remaining қалды';
  }

  @override
  String get challengeReached => 'Межеге жетті';

  @override
  String get challengeCompleted => 'Аяқталды';

  @override
  String challengeEnded(String done, String target) {
    return 'Мерзімі өтті · $done/$target';
  }

  @override
  String get challengeExpiredTitle => 'Мақсат мерзімі өтті';

  @override
  String challengeExpiredBody(String title, String done, String target) {
    return '«$title» $done/$target нәтижемен аяқталды.';
  }

  @override
  String get challengeExtend => 'Ұзарту';

  @override
  String get challengeRestart => 'Қайта бастау';

  @override
  String get challengeArchive => 'Мұрағатқа салу';

  @override
  String get challengeDailyBreakdown => 'Күндер бойынша';

  @override
  String challengeNudgeBody(String title, String rate) {
    return '$title: уақытында аяқтау үшін күніне $rate керек.';
  }

  @override
  String challengeLastDayBody(String title, String remaining) {
    return '$title: соңғы күн — $remaining қалды.';
  }

  @override
  String get challengeGroupGoal => 'Мақсат';

  @override
  String get challengeGroupShape => 'Түрі';

  @override
  String get challengeGroupPlan => 'Жоспар';

  @override
  String get challengeGroupReminders => 'Еске салу';

  @override
  String get challengeStartFromTemplate => 'Үлгіден бастау';

  @override
  String get challengeTemplateBlank => 'Бос';

  @override
  String get challengePreview => 'Алдын ала қарау';

  @override
  String get challengeTmplTahajjud => '40 түн тәһажжуд';

  @override
  String get challengeTmplSalawat => '1000 салауат';

  @override
  String get challengeTmplKhatm => '30 күнде Құран хатымы';

  @override
  String get challengeTmplFajrJamaah => '30 күн жамағатпен таң намазы';

  @override
  String get challengeTmplSadaqah => '30 күн садақа';

  @override
  String get listSeparator => ' · ';

  @override
  String get tierRafiq => 'Рафиқ';

  @override
  String get tierNasir => 'Насыр';

  @override
  String get tierMuhsin => 'Мұхсин';

  @override
  String get tierAnsar => 'Ансар';

  @override
  String get tierRafiqMeaning => 'серік';

  @override
  String get tierNasirMeaning => 'қолдаушы';

  @override
  String get tierMuhsinMeaning => 'жақсылық жасаушы';

  @override
  String get tierAnsarMeaning => 'көмекші';

  @override
  String get supportCardBody =>
      'Тегін, жарнамасыз, тіркелгі қажет емес. Қаласаңыз, қолданбаның дамуына үлес қоса аласыз — кез келген сомамен, кез келген уақытта.';

  @override
  String get supportCta => 'Muhasaba-ны қолдау';

  @override
  String get supportAgain => 'Қайта қолдау';

  @override
  String get supporterThanks =>
      'Аллаһ разы болсын — иншаАллаһ, Muhasaba тегін әрі жарнамасыз болып қала береді.';

  @override
  String supporterSince(String tier, String month) {
    return '$month айынан бері $tier';
  }

  @override
  String get supportPromptTitle => 'Muhasaba-ны қолдаңыз';

  @override
  String get supportPromptBody =>
      'Muhasaba тегін, жарнамасыз, тіркелгі қажет емес. Қаласаңыз, қолданбаның дамуына үлес қоса аласыз — кез келген сомамен, кез келген уақытта. Бұған қарамастан барлық мүмкіндік ашық.';

  @override
  String get supportPromptNow => 'Қазір қолдау';

  @override
  String get supportPromptLater => 'Кейінірек еске салу';

  @override
  String get supportPromptNever => 'Қайта сұрамау';

  @override
  String get tipSheetTitle => 'Muhasaba-ны қолдау';

  @override
  String get tipSheetBody =>
      'Кез келген соманы қалағаныңызша жиі таңдай аласыз. Бұл қаражат қолданбаны күтіп-ұстауға жұмсалады — иншаАллаһ, ол тегін әрі жарнамасыз болып қала береді. Алғыс ретінде Баптауларда қолдаушы ретінде белгіленесіз.';

  @override
  String tipSheetSupporterLine(String tier) {
    return '$tier — Аллаһ разы болсын.';
  }

  @override
  String get tipSheetSupporterAgain => 'Қалаған уақытта қайта қолдай аласыз.';

  @override
  String tipSheetStoreNote(String store) {
    return 'Төлем $store арқылы жүзеге асады — төлем деректеріңізді біз ешқашан көрмейміз.';
  }

  @override
  String get tipSheetOtherWays => 'Өзіңізге қолайлы нұсқаны таппадыңыз ба?';

  @override
  String get tipSheetWriteToUs => 'Бізге жазыңыз';

  @override
  String get supportEmailBody =>
      'Ассалаумағалейкум,\n\nMuhasaba жобасының дамуына тікелей үлес қосқым келеді.\n\nЕл:\nЖіберу тәсілі:\nСома (міндетті емес):';

  @override
  String tipBusy(String store) {
    return '$store ашылуда…';
  }

  @override
  String get tipThanks => 'Аллаһ разы болсын, қабыл етсін!';

  @override
  String get tipDone => 'Дайын';

  @override
  String get tipFailed => 'Төлем өтпеді. Ешқандай ақша алынбады.';

  @override
  String tipPending(String store) {
    return 'Үлесіңіз $store тарапынан расталуды күтуде — расталған соң қолдаушы белгісі қосылады.';
  }

  @override
  String get tipUnavailable => 'Қазір бұл құрылғыда сатып алу мүмкін емес.';

  @override
  String get optionSetJamaa => 'Жамағат';

  @override
  String get optionJamaaAlone => 'Жеке';

  @override
  String get optionJamaaHome => 'Үйде жамағатпен';

  @override
  String get optionJamaaMasjid => 'Мешітте жамағатпен';

  @override
  String get optionSetOnTime => 'Оқылу уақыты';

  @override
  String get optionOnTimeOnTime => 'Уақтылы';

  @override
  String get optionOnTimeLate => 'Кешігіп';

  @override
  String get optionOnTimeQada => 'Қаза';

  @override
  String get optionSetQuranSession => 'Құран оқу';

  @override
  String get optionQuranRecited => 'Оқылды';

  @override
  String get optionQuranMemorised => 'Жатталды';

  @override
  String get optionQuranMeaning => 'Мағынасымен';

  @override
  String get optionQuranListened => 'Тыңдалды';

  @override
  String get optionSetSadaqahType => 'Садақа түрі';

  @override
  String get optionSadaqahMoney => 'Ақша';

  @override
  String get optionSadaqahFood => 'Тамақ';

  @override
  String get optionSadaqahTime => 'Уақыт';

  @override
  String get optionSadaqahOther => 'Басқа';

  @override
  String get optionSetIntensity => 'Қарқын';

  @override
  String get optionIntensityLight => 'Жеңіл';

  @override
  String get optionIntensityModerate => 'Орташа';

  @override
  String get optionIntensityIntense => 'Қарқынды';

  @override
  String get optionSetNewTitle => 'Жаңа нұсқалар жиынтығы';

  @override
  String get optionSetEditTitle => 'Нұсқалар жиынтығын өңдеу';

  @override
  String get optionSetNameLabel => 'Жиынтық атауы';

  @override
  String get optionSetNameHint => 'мыс. Жамағат';

  @override
  String get optionsLabel => 'Нұсқалар';

  @override
  String get optionAdd => 'Нұсқа қосу';

  @override
  String optionHint(int index) {
    return 'Нұсқа $index';
  }

  @override
  String optionsMaxReached(int max) {
    return 'Ең көбі $max нұсқа.';
  }

  @override
  String get optionSetPreviewLabel => 'Алдын ала қарау — «Бүгін» жолы';

  @override
  String optionSetKeptForHistory(String labels) {
    return 'Тарих үшін сақталды: $labels';
  }

  @override
  String get optionSetDelete => 'Жиынтықты жою';

  @override
  String get optionSetDeleteConfirm =>
      'Бұл жиынтықты пайдаланатын амалдарда нұсқалар көрсетілмейді. Бұрын белгіленген күндер өз таңдауын сақтайды.';

  @override
  String get optionSetNameRequired => 'Жиынтыққа атау беріңіз';

  @override
  String get optionsMinRequired => 'Кемінде екі нұсқа қосыңыз';

  @override
  String get optionSetNameTooLong => 'Жиынтық атауы тым ұзын';

  @override
  String optionTooLong(int index) {
    return 'Нұсқа $index тым ұзын';
  }

  @override
  String get optionSetNone => 'Жоқ';

  @override
  String get optionSetNew => 'Жаңа жиынтық';

  @override
  String get requireChoiceLabel => 'Таңдауды міндеттеу';

  @override
  String get requireChoiceHelp => 'Нұсқа таңдалмайынша жол белгіленбейді';

  @override
  String get requireChoicePickSetFirst => 'Алдымен жиынтықты таңдаңыз';

  @override
  String get requireChoiceCountHelp =>
      'Саналатын амалдар − және + арқылы белгіленеді';

  @override
  String optionsUsedOf(int used, int max) {
    return '$max нұсқадан $used пайдаланылды.';
  }

  @override
  String get choiceNeeded => 'Таңдау қажет';

  @override
  String optionSelected(String label) {
    return '$label, таңдалды';
  }

  @override
  String optionNotSelected(String label) {
    return '$label, таңдалмаған';
  }

  @override
  String optionBreakdownTitle(String set) {
    return 'Нұсқалар бойынша — $set';
  }

  @override
  String optionBreakdownCaption(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count орындалу',
      one: '1 орындалу',
    );
    return 'Таңдау белгіленген $_temp0 ішіндегі үлесі';
  }

  @override
  String optionNoChoiceRecorded(int none, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other: '$total күннің',
      one: '1 күннің',
    );
    return 'Таңдау белгіленбеген: орындалған $_temp0 $none күні';
  }

  @override
  String get optionRemovedSuffix => 'алып тасталған';

  @override
  String get optionAllAmals => 'Барлығы';

  @override
  String optionScopedCaption(String amal, int count) {
    return '$amal · $count рет белгіленді';
  }

  @override
  String get optionBreakdownSectionTitle => 'Нұсқалар бойынша';

  @override
  String optionBreakdownSwipeHint(int count) {
    return '$count жиынтық · сырғытыңыз';
  }

  @override
  String get optionDetailEmpty =>
      'Бұл жиынтық үшін әзірге таңдау белгіленбеген.';

  @override
  String get optionDetailTrendHeading => 'Қалай өзгерді';

  @override
  String optionDetailTrendReadout(String option, String from, String to) {
    return '$option үлесі бірінші аптада $from, соңғы аптада $to болды.';
  }

  @override
  String get optionDetailByAmalHeading => 'Амал бойынша';

  @override
  String optionDetailByAmalReadout(
    String best,
    String bestShare,
    String worst,
    String worstShare,
  ) {
    return 'Ең жоғары: $best ($bestShare); ең төмен: $worst ($worstShare).';
  }

  @override
  String get optionDetailRecordsHeading => 'Рекордтар';

  @override
  String get optionDetailLongestRun => 'Ең ұзақ серия';

  @override
  String get optionDetailBestWeek => 'Үздік апта';

  @override
  String get optionDetailCurrentRun => 'Қазіргі серия';

  @override
  String get optionDetailRecordsCaption =>
      'Соңғы бір жыл негізінде есептеледі; жоғарыдағы кезең сүзгісіне тәуелсіз.';

  @override
  String get optionDetailRecentDaysHeading => 'Соңғы күндер';

  @override
  String optionDetailRecentDaysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Соңғы $count күн',
      one: 'Соңғы 1 күн',
    );
    return '$_temp0';
  }

  @override
  String get amalFivePrayers => 'Бес уақыт намаз';

  @override
  String get amalJumuah => 'Жұма намазы';

  @override
  String get amalWitr => 'Үтір намазы';

  @override
  String get amalQada => 'Қаза намаздары';

  @override
  String get amalFajrSunnah => 'Таң намазының сүннеті';

  @override
  String get amalDhuhrSunnah => 'Бесін намазының сүннеті';

  @override
  String get amalAsrSunnah => 'Асыр намазының сүннеті';

  @override
  String get amalMaghribSunnah => 'Ақшам намазының сүннеті';

  @override
  String get amalIshaSunnah => 'Құптан намазының сүннеті';

  @override
  String get amalRawatib => 'Мүәккада сүннеттер';

  @override
  String get amalSiwak => 'Мисуак';

  @override
  String get amalWuduSleep => 'Ұйқы алдында дәрет';

  @override
  String get amalFridayGhusl => 'Жұма ғұсылы';

  @override
  String get amalIshraq => 'Ишрақ намазы';

  @override
  String get amalWuduPrayer => 'Дәреттен кейінгі екі рәкағат';

  @override
  String get amalTahiyyah => 'Тахиятул-мәсжид';

  @override
  String get amalEarlyJumuah => 'Жұмаға ерте бару';

  @override
  String get amalAfterSalah => 'Намаздан кейінгі зікірлер';

  @override
  String get amalAfterFajr => 'Таң намазынан кейінгі зікірлер';

  @override
  String get amalAfterDhuhr => 'Бесін намазынан кейінгі зікірлер';

  @override
  String get amalAfterAsr => 'Асыр намазынан кейінгі зікірлер';

  @override
  String get amalAfterMaghrib => 'Ақшам намазынан кейінгі зікірлер';

  @override
  String get amalAfterIsha => 'Құптан намазынан кейінгі зікірлер';

  @override
  String get amalAyatKursi => 'Аятул-Күрсі';

  @override
  String get amalKursiFajr => 'Таң намазынан кейін Аятул-Күрсі';

  @override
  String get amalKursiDhuhr => 'Бесін намазынан кейін Аятул-Күрсі';

  @override
  String get amalKursiAsr => 'Асыр намазынан кейін Аятул-Күрсі';

  @override
  String get amalKursiMaghrib => 'Ақшам намазынан кейін Аятул-Күрсі';

  @override
  String get amalKursiIsha => 'Құптан намазынан кейін Аятул-Күрсі';

  @override
  String get amalSayyidIstighfar => 'Сәйидул-истиғфар';

  @override
  String get amalSalawat => 'Салауат';

  @override
  String get amalSubhanallah => 'Субханаллаһи уа бихамдиһи';

  @override
  String get amalTahlil => 'Лә иләһә иллаллаһ';

  @override
  String get amalBedtimeAdhkar => 'Ұйқы алдындағы зікірлер';

  @override
  String get amalFridaySalawat => 'Жұма күнгі салауат';

  @override
  String get amalHawqala => 'Лә хәулә уә лә құууәтә';

  @override
  String get amalTasbihFatimah => 'Фатима тәсбихы';

  @override
  String get amalWakingAdhkar => 'Оянғандағы зікірлер';

  @override
  String get amalDuaAdhan => 'Азаннан кейінгі дұға';

  @override
  String get amalDuaIqamah => 'Азан мен қамат арасындағы дұға';

  @override
  String get amalDuaSujood => 'Сәждедегі дұға';

  @override
  String get amalDuaParents => 'Ата-ана үшін дұға';

  @override
  String get amalDuaOthers => 'Өзгелер үшін дұға';

  @override
  String get amalFridayHour => 'Жұманың соңғы сағатындағы дұға';

  @override
  String get amalLastThird => 'Түннің соңғы үштен біріндегі дұға';

  @override
  String get amalMulk => 'Мүлік сүресі';

  @override
  String get amalBaqarahEnd => 'Бақараның соңғы екі аяты';

  @override
  String get amalSajdah => 'Сәжде сүресі';

  @override
  String get amalQuls => 'Ихлас, Фәлақ және Нас';

  @override
  String get amalYasin => 'Ясин сүресі';

  @override
  String get amalWaqiah => 'Уақиға сүресі';

  @override
  String get amalHifz => 'Құран жаттау';

  @override
  String get amalMurajaah => 'Жаттағанды қайталау';

  @override
  String get amalTafsir => 'Тәпсір';

  @override
  String get amalListenQuran => 'Құран тыңдау';

  @override
  String get amalTeachQuran => 'Құран үйрету';

  @override
  String get amalMonThu => 'Дүйсенбі мен бейсенбі оразасы';

  @override
  String get amalThreeDays => 'Айына үш күн ораза';

  @override
  String get amalDailySadaqah => 'Күнделікті садақа';

  @override
  String get amalFeed => 'Біреуді тамақтандыру';

  @override
  String get amalHelpNeed => 'Мұқтажға көмек';

  @override
  String get amalOrphan => 'Жетімге қамқорлық';

  @override
  String get amalGiveWater => 'Су беру';

  @override
  String get amalLearnHadith => 'Бір хадис үйрену';

  @override
  String get amalReadBook => 'Исламдық кітап оқу';

  @override
  String get amalSeerah => 'Сира оқу';

  @override
  String get amalClass => 'Дәріске қатысу';

  @override
  String get amalArabic => 'Араб тілін үйрену';

  @override
  String get amalLearnDua => 'Жаңа дұға үйрену';

  @override
  String get amalShare => 'Үйренгеніңізбен бөлісу';

  @override
  String get amalFiqh => 'Фиқһ оқу';

  @override
  String get amalMuhasaba => 'Түнгі мұхасаба';

  @override
  String get amalSpeakGood => 'Жақсы сөйлеу не үндемеу';

  @override
  String get amalNoBackbiting => 'Ғайбаттан сақтану';

  @override
  String get amalAnger => 'Ашуды тежеу';

  @override
  String get amalGaze => 'Көзді харамнан сақтау';

  @override
  String get amalTruthful => 'Шыншылдық';

  @override
  String get amalSmile => 'Күлімсіреу';

  @override
  String get amalSalam => 'Сәлем беру';

  @override
  String get amalForgive => 'Өзгелерді кешіру';

  @override
  String get amalGratitude => 'Шүкір';

  @override
  String get amalVisitSick => 'Науқастың көңілін сұрау';

  @override
  String get amalNeighbours => 'Көршіге жақсылық';

  @override
  String get amalRemoveHarm => 'Жолдан зиянды нәрсені алып тастау';

  @override
  String get amalParents => 'Ата-анаға жақсылық';

  @override
  String get amalFamilyTies => 'Туыстық байланысты сақтау';

  @override
  String get amalHelpHome => 'Үй шаруасына көмек';

  @override
  String get amalTeachChildren => 'Балаларға дін үйрету';

  @override
  String get amalSpouse => 'Жарға жақсылық';

  @override
  String get categoryDua => 'Дұға';

  @override
  String get categoryFasting => 'Ораза';

  @override
  String get categoryKnowledge => 'Ілім';

  @override
  String get categoryCharacter => 'Мінез-құлық';

  @override
  String get categoryFamily => 'Отбасы';

  @override
  String get libraryTitle => 'Амалдар кітапханасы';

  @override
  String get librarySearchHint => 'Амал іздеу';

  @override
  String get libraryAll => 'Барлығы';

  @override
  String get libraryAdded => 'Бүгінге қосылды';

  @override
  String libraryAddedShowsOn(String days) {
    return 'Қосылды · көрсетілетін күндер: $days';
  }

  @override
  String libraryNoMatch(String query) {
    return '«$query» бойынша амал табылмады';
  }

  @override
  String libraryCreateNamed(String query) {
    return '«$query» жасау';
  }

  @override
  String get libraryPickBanner => 'Амалдар кітапханасынан таңдаңыз';

  @override
  String libraryPickBannerSubtitle(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countText дайын амал',
      one: '$countText дайын амал',
    );
    return '$_temp0';
  }

  @override
  String get libraryFilledIn => 'Амалдар кітапханасынан толтырылды';

  @override
  String get libraryChange => 'Өзгерту';

  @override
  String get libraryEditAction => 'Өңдеу';

  @override
  String libraryWeeklyAny(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Аптасына $countText күн',
      one: 'Аптасына бір рет',
    );
    return '$_temp0';
  }

  @override
  String libraryMonthlyAny(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Айына $countText күн',
      one: 'Айына бір рет',
    );
    return '$_temp0';
  }

  @override
  String libraryTimes(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countText рет',
    );
    return '$_temp0';
  }

  @override
  String get libraryAnyAmount => 'Кез келген мөлшер';

  @override
  String libraryAddTooltip(String title) {
    return 'Қосу: $title';
  }

  @override
  String get libraryOnList => 'Тізіміңізде бар';

  @override
  String get todayEmptyBrowse => 'Амалдар кітапханасын ашу';
}
