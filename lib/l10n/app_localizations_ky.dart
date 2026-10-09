// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kirghiz Kyrgyz (`ky`).
class AppLocalizationsKy extends AppLocalizations {
  AppLocalizationsKy([String locale = 'ky']) : super(locale);

  @override
  String get repeatsOnDaysHint => 'Тандалган күндөрү кайталанат';

  @override
  String get newDayStarted => 'Жаңы күн башталды';

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
  String get tabChallenge => 'Максат';

  @override
  String get tabInsights => 'Статистика';

  @override
  String get insightsTitle => 'Статистика';

  @override
  String get insightsOverview => 'Жалпы';

  @override
  String get insightsDaily => 'Күн боюнча';

  @override
  String get insightsArchive => 'Архив';

  @override
  String get archivedEmpty =>
      'Бул жерде азырынча эч нерсе жок. Көзөмөлдөн алып салган амалдарыңыз ушул жерде сакталат, аларды кайра кошсоңуз болот.';

  @override
  String archivedStoppedOn(String date) {
    return '$date күнү алып салынды';
  }

  @override
  String get archivedRestore => 'Кайра кошуу';

  @override
  String archivedRestored(String title) {
    return '«$title» тизмеңизге кайра кошулду.';
  }

  @override
  String get newChallenge => 'Жаңы максат';

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
  String get ok => 'OK';

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
  String get frequencyWeekly => 'Апта сайын';

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
  String get categorySunnah => 'Сүннөт';

  @override
  String get timesPerPeriod => 'Мезгил ичинде жолу';

  @override
  String get custom => 'Башка';

  @override
  String get customTargetHint => 'мис. 50';

  @override
  String get targetAny => 'Каалаганча';

  @override
  String get targetAnyHelp =>
      'Белгилүү сан жок — канча болсо да аткарылды деп эсептелет';

  @override
  String get dayOfWeek => 'Аптанын күнү';

  @override
  String get anyDay => 'Каалаган';

  @override
  String get anyDayHint =>
      'Каалаган күн (бүгүн көрүнүп турат, кийинки күнү жашырылат)';

  @override
  String onlyDayHint(String day) {
    return '$day гана';
  }

  @override
  String get dateOfMonth => 'Айдын күнү';

  @override
  String get repeatMode => 'Кайталануу';

  @override
  String get onSetDays => 'Белгиленген күндөрү';

  @override
  String get onSetDates => 'Белгиленген даталарда';

  @override
  String get anyDayMode => 'Каалаган күн';

  @override
  String get datesOfMonth => 'Айдын күндөрү';

  @override
  String get daysPerWeekQuestion => 'Аптасына канча күн?';

  @override
  String get daysPerMonthQuestion => 'Айына канча күн?';

  @override
  String get pickAtLeastOneDay => 'Жок дегенде бир күн тандаңыз';

  @override
  String get pickAtLeastOneDate => 'Айдын жок дегенде бир күнүн тандаңыз';

  @override
  String get previewDaily => 'Күн сайын кайталанат';

  @override
  String previewWeeklyDays(String days) {
    return '$days күндөрү кайталанат';
  }

  @override
  String previewWeeklyAny(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count күнү',
    );
    return 'Аптасына каалаган $_temp0 кайталанат';
  }

  @override
  String previewMonthlyDates(int count, String dates) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ар айдын $dates күндөрү кайталанат',
      one: 'Ар айдын $dates күнү кайталанат',
    );
    return '$_temp0';
  }

  @override
  String previewMonthlyAny(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count күнү',
    );
    return 'Айына каалаган $_temp0 кайталанат';
  }

  @override
  String get anyDate => 'Каалаган';

  @override
  String get anyDateHint =>
      'Каалаган күн (бүгүн көрүнүп турат, кийинки күнү жашырылат)';

  @override
  String onlyDateHint(String date) {
    return 'Айдын $date күнү гана';
  }

  @override
  String get startPreChecked => 'Белгиленген бойдон баштоо';

  @override
  String get startPreCheckedSubtitle =>
      'Жаңы мезгил башталганда бул амал, белгисин алып салмайынча, аткарылды деп белгиленип турат.';

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
  String get settingsReminders => 'Эскертмелер';

  @override
  String get dailyReminder => 'Күнүмдүк эскертме';

  @override
  String get dailyReminderSubtitle =>
      'Амалдарыңызды белгилөөнү эсиңизге салып турат';

  @override
  String get dailyReminderTimeLabel => 'Эскертме убактысы';

  @override
  String get dailyReminderBody =>
      'Бүгүнкү амалдарыңызды белгилөөгө бир аз убакыт бөлүңүз.';

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
  String progressOf(String progress, String target) {
    return '$target ичинен $progress аткарылды';
  }

  @override
  String progressOpen(String count) {
    return '$count аткарылды';
  }

  @override
  String get removeFromToday => 'Бүгүндөн алып салуу';

  @override
  String get removeFromTodaySubtitle =>
      'Бүгүнкү күнгө гана жашырылат. Эртең кайра чыгат.';

  @override
  String get removeFromTracking => 'Көзөмөлдөн алып салуу';

  @override
  String get removeFromTrackingSubtitle =>
      'Тизмеңизден биротоло алып салуу. Тарыхы сакталат.';

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
  String get categoryNewSheetTitle => 'Жаңы категория';

  @override
  String get categoryEditSheetTitle => 'Категорияны өзгөртүү';

  @override
  String get addAmal => 'Амал кошуу';

  @override
  String get customAmal => 'Өз амалыңыз';

  @override
  String get amalTasbih => 'Тасбих 33 жолу';

  @override
  String get amalIstighfar => 'Истигфар';

  @override
  String get amalSurahKahf => 'Кахф сүрөсү';

  @override
  String get amalSadaqah => 'Садака';

  @override
  String get amalTahajjud => 'Тахажжуд';

  @override
  String get amalDuha => 'Духа намазы';

  @override
  String get amalFajr => 'Багымдат';

  @override
  String get amalDhuhr => 'Бешим';

  @override
  String get amalAsr => 'Асыр';

  @override
  String get amalMaghrib => 'Шам';

  @override
  String get amalIsha => 'Куптан';

  @override
  String get amalMorningAdhkar => 'Эртең мененки зикирлер';

  @override
  String get amalEveningAdhkar => 'Кечки зикирлер';

  @override
  String get amalTilawah => 'Тилават';

  @override
  String get settingsTitle => 'Жөндөөлөр';

  @override
  String settingsLoadError(String error) {
    return 'Жөндөөлөрдү жүктөөдө ката:\n$error';
  }

  @override
  String get sectionDayBoundary => 'Күн чеги';

  @override
  String get rolloverHour => 'Күн алмашуучу саат';

  @override
  String get rolloverAtMidnight => 'Бүгүн түн ортосунда аяктайт.';

  @override
  String rolloverSubtitle(String time) {
    return 'Кечээки амалдарды $time болгонго чейин өзгөртсөңүз болот.';
  }

  @override
  String get pickRolloverHour => 'Күн алмаша турган саатты тандаңыз';

  @override
  String get sectionWeekMonth => 'Апта жана ай';

  @override
  String get startOfWeek => 'Аптанын башы';

  @override
  String get startOfMonth => 'Айдын башы';

  @override
  String get startOfMonthClamped =>
      '28-күндөн кийинки күндөр кыска айларда айдын акыркы күнүнө жылдырылат.';

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
      'Диний амалдарыңыздын жеке эсеп күндөлүгү. Бардык маалымат ушул түзмөктө гана сакталат.';

  @override
  String get statsTitle => 'Статистика';

  @override
  String statsLoadError(String error) {
    return 'Статистиканы жүктөөдө ката:\n$error';
  }

  @override
  String get perAmal => 'Ар бир амал';

  @override
  String get thisWeek => 'Бул апта';

  @override
  String get thisMonth => 'Бул ай';

  @override
  String get totalCompletions => 'жолу аткарылды';

  @override
  String get streakCurrent => 'Учурдагы';

  @override
  String get streakLongest => 'Эң узун';

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
  String get frequencyBadgeDaily => 'күн сайын';

  @override
  String get frequencyBadgeWeekly => 'апта сайын';

  @override
  String get frequencyBadgeMonthly => 'ай сайын';

  @override
  String get statsEmpty =>
      'Азырынча амал жок. Көзөмөлдөөнү баштоо үчүн Бүгүн бетинде амал кошуңуз.';

  @override
  String get statsToday => 'Бүгүн';

  @override
  String get statsThisWeek => 'Бул апта';

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
  String get statsTotalCaption => 'жалпы';

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
  String get statsCurrentStreak => 'Учурдагы серия';

  @override
  String get statsBestStreak => 'Эң жакшы серия';

  @override
  String get statsTotalDays => 'Жалпы күндөр';

  @override
  String get statsConsistency => 'Туруктуулук';

  @override
  String get statsLast5Weeks => 'Акыркы 5 апта';

  @override
  String get statsDailyBreakdown => 'Күндөр боюнча';

  @override
  String get statsCompletionRate => 'Аткаруу көрсөткүчү';

  @override
  String get statsAmountPerDay => 'Күнүмдүк өлчөм';

  @override
  String statsCountTotal(String count) {
    return 'Жалпы: $count';
  }

  @override
  String statsCountAvg(String amount) {
    return 'Орточо: күнүнө $amount';
  }

  @override
  String statsCountBest(String count, String day) {
    return 'Эң көп $count · $day';
  }

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
    return '$date күнү эч бир амал белгиленген эмес';
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
      '«Аллага эң сүйүктүү амалдар — аз болсо да, туруктуу жасалганы.»\n— Бухари жана Муслим';

  @override
  String get hadith2 =>
      '«Адам баласы дүйнөдөн өткөндө, анын амалдары үзүлөт, үчөөнөн башкасы: садака-жария, пайдалуу илим же ага дуба кылган салих перзент.»\n— Муслим';

  @override
  String get hadith3 =>
      '«Ким эки салкын намазды (багымдат менен асырды) окуса, бейишке кирет.»\n— Бухари';

  @override
  String get hadith4 =>
      '«Алла силердин түр-түсүңөргө да, мал-мүлкүңөргө да карабайт, бирок жүрөктөрүңөргө жана амалдарыңарга карайт.»\n— Муслим';

  @override
  String get hadith6 =>
      '«Жеңилдеткиле, кыйындатпагыла; сүйүнчү кабар бергиле, адамдарды үркүтпөгүлө.»\n— Бухари';

  @override
  String get hadith7 =>
      '«Ким илим издеп жолго чыкса, Алла ага бейишке баруучу жолду жеңилдетет.»\n— Муслим';

  @override
  String get hadith8 => '«Садака малды азайтпайт.»\n— Муслим';

  @override
  String get hadith9 =>
      '«Күчтүү момун Аллага алсыз момундан жакшыраак жана сүйүктүүрөөк, бирок экөөндө тең жакшылык бар.»\n— Муслим';

  @override
  String get hadith10 =>
      '«Ким күнүнө жүз жолу „Субханаллахи ва бихамдихи“ десе, анын күнөөлөрү деңиздин көбүгүндөй болсо да кечирилет.»\n— Бухари жана Муслим';

  @override
  String get hadith12 =>
      '«Ким ар бир парз намаздан кийин Аятул-Курсини окуса, аны бейишке кирүүдөн өлүмдөн башка эч нерсе тоспойт.»\n— Насаи';

  @override
  String get hadith13 => '«Жакшы сөз — садака.»\n— Бухари жана Муслим';

  @override
  String get hadith14 =>
      '«Аллага жана акырет күнүнө ишенген адам жакшы сөз айтсын же унчукпасын.»\n— Бухари жана Муслим';

  @override
  String get hadith15 =>
      '«Жесирге же мискинге камкордук кылган адам Алланын жолундагы мужахид сыяктуу.»\n— Бухари жана Муслим';

  @override
  String get hadith16 => '«Бир тууганыңа жылмайып коюшуң — садака.»\n— Тирмизи';

  @override
  String get hadith17 =>
      '«Силердин эң жакшыңар — Куранды үйрөнүп, аны башкаларга үйрөткөнүңөр.»\n— Бухари';

  @override
  String get hadith18 =>
      '«Эч ким өз колунун эмгеги менен тапканынан жакшыраак тамак жеген эмес.»\n— Бухари';

  @override
  String get hadith19 =>
      '«Алла жумшак жана бардык иште жумшактыкты жакшы көрөт.»\n— Бухари жана Муслим';

  @override
  String historyDayCompleted(String completed, String total) {
    return '$total ичинен $completed аткарылды';
  }

  @override
  String get settingsSchedule => 'График';

  @override
  String get settingsAppearance => 'Көрүнүш';

  @override
  String get settingsAboutTagline => 'Күнүмдүк диний жолдошуңуз';

  @override
  String get settingsRolloverSub => 'Күн качан жаңыланат';

  @override
  String get settingsAbout => 'Жөнүндө';

  @override
  String get settingsVersion => 'Версия';

  @override
  String get settingsDeveloper => 'Иштеп чыгуучу';

  @override
  String get settingsSupport => 'Колдоо';

  @override
  String get settingsRate => 'Колдонмону баалоо';

  @override
  String get settingsContact => 'Биз менен байланышуу';

  @override
  String get settingsReportBug => 'Ката жөнүндө билдирүү';

  @override
  String get settingsRequestFeature => 'Жаңы мүмкүнчүлүк сунуштоо';

  @override
  String settingsSupportFallback(String email) {
    return 'Поштаны ачуу мүмкүн болбоду. $email дарегине жазыңыз.';
  }

  @override
  String get settingsPrivacyPolicy => 'Купуялык саясаты';

  @override
  String get settingsPrivacyOpenFailed =>
      'Купуялык саясатын ачуу мүмкүн болгон жок.';

  @override
  String get hadith20 =>
      '«Ким Рамазанда ыйман жана сооп үмүтү менен орозо кармаса, анын өткөн күнөөлөрү кечирилет.»\n— Бухари жана Муслим';

  @override
  String get hadith22 =>
      '«Азан менен икамат ортосундагы дуба четке кагылбайт.»\n— Абу Дауд';

  @override
  String get hadith23 =>
      '«Ким Алла үчүн мечит курса, Алла ага бейиште үй курат.»\n— Бухари жана Муслим';

  @override
  String get hadith24 =>
      '«Эркектер үчүн эң жакшы саптар — алдыңкы саптар, аялдар үчүн эң жакшы саптар — арткы саптар.»\n— Муслим';

  @override
  String get hadith25 => '«Орозо — тозоктон калкан.»\n— Насаи';

  @override
  String get hadith26 =>
      '«Ким он эки рекет сүннөт намаз окуса, ага бейиште үй курулат.»\n— Муслим';

  @override
  String get hadith27 =>
      '«Куранды жакшы билген адам асыл периштелер менен бирге болот.»\n— Бухари жана Муслим';

  @override
  String get hadith29 => '«Садаканын эң жакшысы — суу берүү.»\n— Ахмад';

  @override
  String get hadith30 =>
      '«Ким момундун бир кыйынчылыгын кетирсе, Алла Кыямат күнү анын бир кыйынчылыгын кетирет.»\n— Муслим';

  @override
  String get hadith32 => '«Уят — ыймандын бир бөлүгү.»\n— Бухари жана Муслим';

  @override
  String get hadith34 =>
      '«Ким сабыр кылса, Алла ага сабыр берет.»\n— Бухари жана Муслим';

  @override
  String get hadith36 =>
      '«Силердин бириңер өзүнө каалаган нерсени бир тууганына да каалабаганча, чыныгы момун болбойт.»\n— Бухари жана Муслим';

  @override
  String get hadith37 =>
      '«Ачтарды тойгузгула, оорулуулардын көңүлүн сурагыла жана туткундарды бошоткула.»\n— Бухари';

  @override
  String get hadith38 =>
      '«Күчтүү адам — күрөштө жеңген эмес, ачуусун басып, өзүн кармай алган адам.»\n— Бухари жана Муслим';

  @override
  String get hadith40 =>
      '«Ар бир намаздан кийин „Субханаллах“, „Алхамдулиллах“ жана „Аллаху акбар“ деп отуз үчтөн жолу айткыла.»\n— Муслим';

  @override
  String get hadith41 => '«Эң жакшы зикир — Ла илаха иллаллах.»\n— Тирмизи';

  @override
  String get hadith42 =>
      '«Эки нээмат бар, адамдардын көбү аларды текке кетирет: ден соолук жана бош убакыт.»\n— Бухари';

  @override
  String get hadith43 =>
      '«Бешти беш нерседен мурун баалагыла: жаштыкты карылыктан мурун, ден соолукту оорудан мурун, байлыкты жакырчылыктан мурун, бош убакытты алектиктен мурун жана өмүрдү өлүмдөн мурун.»\n— Хаким';

  @override
  String get hadith44 =>
      '«Ким Ихлас сүрөсүн он жолу окуса, Алла ага бейиште үй курат.»\n— Ахмад';

  @override
  String get hadith45 =>
      '«Парз намаздардан кийинки эң жакшы намаз — түнкү намаз.»\n— Муслим';

  @override
  String get hadith46 =>
      '«Садака күнөөлөрдү суу отту өчүргөндөй өчүрөт.»\n— Тирмизи';

  @override
  String get hadith47 =>
      '«Туугандык байланышты сактоочу — жооп кайтаруучу эмес, байланыш үзүлсө да аны сактоочу.»\n— Бухари';

  @override
  String get hadith49 =>
      '«Ким тамак жегенден кийин: „Мага муну жедирген жана менин эч бир күч-кубатымсыз ырыскы кылып берген Аллага мактоо болсун“, — десе, анын өткөн күнөөлөрү кечирилет.»\n— Тирмизи';

  @override
  String get hadith53 =>
      '«Эч бир жакшылыкты кичине көрбө, бир тууганыңды жайдары жүз менен тосуу болсо да.»\n— Муслим';

  @override
  String get hadith54 =>
      '«Силердин эң жакшыңар — үй-бүлөсүнө эң жакшы мамиле кылганыңар.»\n— Тирмизи';

  @override
  String get hadith55 =>
      '«Ким түндө Бакара сүрөсүнүн акыркы эки аятын окуса, ошол экөө ага жетиштүү болот.»\n— Бухари жана Муслим';

  @override
  String get hadith56 =>
      '«Дүйнө — пайдалана турган нерсе, ал эми анын эң жакшысы — салиха аял.»\n— Муслим';

  @override
  String get hadith57 =>
      '«Үч дуба четке кагылбайт: орозо кармаган адамдын дубасы, адилеттүү башкаруучунун дубасы жана мазлумдун дубасы.»\n— Тирмизи';

  @override
  String get hadith58 =>
      '«Ким мага бир жолу салават айтса, Алла ага он эсе ырайым кылат.»\n— Муслим';

  @override
  String get hadith65 => '«Момун — момундун күзгүсү.»\n— Абу Дауд';

  @override
  String get hadith66 =>
      '«Чынчылдык жакшылыкка алып барат, ал эми жакшылык бейишке алып барат.»\n— Бухари жана Муслим';

  @override
  String get hadith67 =>
      '«Аманатты сага ишенген адамга кайтар, сага чыккынчылык кылганга чыккынчылык кылба.»\n— Абу Дауд жана Тирмизи';

  @override
  String get hadith68 =>
      '«Мусулманга жеткен ар бир чарчоо, оору, кайгы, муң, азап же түйшүк үчүн, атүгүл тикен сайылса да, Алла анын айрым күнөөлөрүн кечирет.»\n— Бухари жана Муслим';

  @override
  String get hadith69 =>
      '«Мусулмандын бир тууганына анын жок кезинде кылган дубасы дайыма кабыл болот.»\n— Муслим';

  @override
  String get hadith70 =>
      '«Ким Алладан үч жолу бейиш сураса, бейиш: „Оо, Алла, аны бейишке киргиз“, — дейт.»\n— Тирмизи';

  @override
  String get hadith71 =>
      '«Рамазандан кийинки эң артыкча орозо — Алланын айы Мухаррамдагы орозо.»\n— Муслим';

  @override
  String get hadith72 =>
      '«Ким ажылык кылып, бузуку сөз сүйлөбөсө жана күнөө кылбаса, энесинен төрөлгөн күнүндөй болуп кайтат.»\n— Бухари жана Муслим';

  @override
  String get hadith73 =>
      '«Бир умра кийинки умрага чейинки күнөөлөргө каффарат болот.»\n— Бухари жана Муслим';

  @override
  String get hadith74 =>
      '«Караңгы түндүн бөлүктөрүндөй сыноолор келгенге чейин жакшы амалдарга шашылгыла.»\n— Муслим';

  @override
  String get hadith75 =>
      '«Багымдаттын эки рекети дүйнөдөн жана андагы бардык нерседен жакшы.»\n— Муслим';

  @override
  String get hadith77 =>
      '«Эгер Аллага чындап тобокел кылсаңар, Ал куштарды ырыскылантканындай силерди да ырыскылантмак.»\n— Тирмизи';

  @override
  String get hadith78 =>
      '«Ким оорулуунун көңүлүн сураса, кайтып келгенге чейин бейиштин бактарында болот.»\n— Муслим';

  @override
  String get hadith79 =>
      '«Саламды жайылткыла, ачтарды тамактандыргыла, адамдар уктап жатканда түнкү намаз окугула — бейишке тынчтык менен киресиңер.»\n— Тирмизи';

  @override
  String get hadith80 =>
      '«Адамдарга ыраазычылык билдирбеген Аллага да ыраазычылык билдирбейт.»\n— Тирмизи';

  @override
  String get hadith81 =>
      '«Эки гана учурда көз артууга болот: Алла мал берип, аны акыйкат жолго жумшаган адамга жана Алла даанышмандык берип, ал аны менен өкүм чыгарып, башкаларга үйрөткөн адамга.»\n— Бухари жана Муслим';

  @override
  String get hadith82 =>
      '«Адам досунун дининде болот, ошондуктан ар бириңер ким менен дос болуп жатканын карасын.»\n— Абу Дауд жана Тирмизи';

  @override
  String get hadith85 =>
      '«Ким Алла үчүн бир нерседен баш тартса, Алла ага андан жакшысын берет.»\n— Ахмад';

  @override
  String get hadith86 =>
      '«Ким мусулмандын кемчилигин жашырса, Алла Кыямат күнү анын кемчилигин жашырат.»\n— Бухари жана Муслим';

  @override
  String get hadith87 => '«Дүйнөдө бөтөн адамдай же жолоочудай бол.»\n— Бухари';

  @override
  String get hadith88 =>
      '«Ким кыйынчылыктагыга жеңилдик кылса, Алла ага дүйнөдө жана акыретте жеңилдик кылат.»\n— Муслим';

  @override
  String get hadith89 => '«Амалдар ниетке жараша.»\n— Бухари жана Муслим';

  @override
  String get hadith90 =>
      '«Шектенүүдөн сактангыла, анткени шектенүү — сөздүн эң жалганы.»\n— Бухари жана Муслим';

  @override
  String get hadith93 =>
      '«Чогуу тамактангыла жана Алланын атын атагыла, силерге берекелүү болот.»\n— Абу Дауд';

  @override
  String get hadith94 =>
      '«Кайсы бир жамаат Алланы зикир кылып отурса, сөзсүз периштелер аларды курчап алат, ырайым аларды каптайт жана аларга бейпилдик түшөт.»\n— Муслим';

  @override
  String get hadith95 =>
      '«Пенде кечиримдүү болгону үчүн Алла анын кадырын гана арттырат.»\n— Муслим';

  @override
  String get hadith96 => '«Төөңдү байла, анан Аллага тобокел кыл.»\n— Тирмизи';

  @override
  String get hadith97 =>
      '«Момундун иши кандай гана ажайып — анын бардык иши ал үчүн жакшылык.»\n— Муслим';

  @override
  String get hadith98 =>
      '«Мусулман мусулмандын бир тууганы: ага зулум кылбайт, таштабайт, кемсинтпейт.»\n— Муслим';

  @override
  String get delete => 'Өчүрүү';

  @override
  String get remove => 'Алып салуу';

  @override
  String get deleteAmalConfirmTitle => 'Көзөмөлдөн алып саласызбы?';

  @override
  String deleteAmalConfirmBody(String title) {
    return '«$title» тизмеңизден жашырылат. Тарыхыңыз сакталат.';
  }

  @override
  String get genericError => 'Бир ката кетти. Кайра аракет кылыңыз.';

  @override
  String get notificationChannelName => 'Амал эскертмелери';

  @override
  String get notificationChannelDescription =>
      'Көзөмөлдөгөн амалдарыңыз боюнча күнүмдүк эскертмелер.';

  @override
  String get invalidAmalId => 'Жараксыз амал идентификатору';

  @override
  String get tutorialSettingsRow => 'Muhasaba кантип колдонулат';

  @override
  String get tutorialSkip => 'Өткөрүп жиберүү';

  @override
  String get tutorialNext => 'Кийинки';

  @override
  String get tutorialDone => 'Даяр';

  @override
  String get tutorialTapTitle => 'Аткаруу үчүн басыңыз';

  @override
  String get tutorialTapBody =>
      'Бир басканда амал бүгүн аткарылды деп белгиленет. Жокко чыгаруу үчүн кайра басыңыз.';

  @override
  String get tutorialEditTitle => 'Өзгөртүү үчүн эки жолу басыңыз';

  @override
  String get tutorialEditBody =>
      'Түзөтүү формасы ачылат — атын же кайталануу жыштыгын өзгөртө аласыз.';

  @override
  String get tutorialReorderTitle => 'Иретин өзгөртүү үчүн басып туруңуз';

  @override
  String get tutorialReorderBody =>
      'Сапты басып туруп, сүйрөңүз. Иретиңиз сакталат.';

  @override
  String get tutorialRemoveTitle => 'Алып салуу үчүн жылдырыңыз';

  @override
  String get tutorialRemoveBody =>
      'Сапты четке жылдырып, бүгүнгө жашырыңыз же көзөмөлдөн алып салыңыз.';

  @override
  String get tutorialCountTitle => 'Кайталоолорду эсептөө';

  @override
  String get tutorialCountBody =>
      'Бир нече жолу аткарылуучу амалдарда ар бир кайталоо үчүн − жана + баскычтарын колдонуңуз.';

  @override
  String get tutorialViewTitle => 'Топтоо же жөнөкөй тизме';

  @override
  String get tutorialViewBody =>
      'Категория боюнча топтолгон тизме менен жөнөкөй тизменин ортосунда которулуңуз.';

  @override
  String get tutorialChallengeLogTitle => 'Бүгүнкүнү белгилөө үчүн басыңыз';

  @override
  String get tutorialChallengeLogBody =>
      'Бир басканда бүгүнкү күн белгиленет. Сан менен эсептелген максатта ар бир басуу бирди кошот.';

  @override
  String get tutorialChallengeOpenTitle => 'Ачуу үчүн эки жолу басыңыз';

  @override
  String get tutorialChallengeOpenBody =>
      'Максат ачылат — ар бир күндү көрүп, өткөрүп жиберген күндү оңдой же максатты өчүрө аласыз.';

  @override
  String get tutorialChallengeDeleteBody =>
      'Максатты өчүрүү үчүн картаны четке жылдырыңыз.';

  @override
  String get tutorialChallengeAmountTitle => 'Так өлчөмдү жазуу';

  @override
  String get tutorialChallengeAmountBody =>
      'Бирден өзгөртүү үчүн − жана + колдонуңуз же так санды жазуу үчүн санды басыңыз.';

  @override
  String get challengeOpenDetailsAction => 'Максаттын чоо-жайын ачуу';

  @override
  String get challengesActive => 'Учурдагы';

  @override
  String get challengesPast => 'Өткөн';

  @override
  String challengeJustFinished(int count, String title) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count максат аяктады — акыркысы: $title',
      one: '$title аяктады',
    );
    return '$_temp0';
  }

  @override
  String get challengeSectionEnded => 'Мөөнөтү бүттү';

  @override
  String get challengesPastEmpty => 'Азырынча аяктаган эч нерсе жок.';

  @override
  String get challengesEmptyTitle => 'Азырынча максат жок';

  @override
  String get challengesEmptyBody =>
      'Өзүңүзгө максат коюңуз — мисалы, 7 күндө 20 рекет — жана аны ушул жерден көзөмөлдөңүз.';

  @override
  String get editChallenge => 'Максатты өзгөртүү';

  @override
  String get deleteChallenge => 'Максатты өчүрүү';

  @override
  String get deleteChallengeConfirm =>
      'Бул максатты жана анын бардык жазууларын өчүрөсүзбү?';

  @override
  String get challengeShapeQuestion => 'Бул кандай максат?';

  @override
  String get challengeShapeTotal => 'Жалпы санга жетүү';

  @override
  String get challengeShapeTotalBody =>
      '1000 салават, 30 пара. Санын жазып турасыз, ал кошулуп барат.';

  @override
  String get challengeShapeStreak => 'Күн сайын улантуу';

  @override
  String get challengeShapeStreakBody =>
      'Тахажжуд, жамаат менен багымдат. Күнүнө бир белги, саны маанилүү эмес.';

  @override
  String get challengeTargetLabel => 'Көздөгөн сан';

  @override
  String get challengeTargetRequired => 'Нөлдөн чоң сан киргизиңиз';

  @override
  String get challengeUnitLabel => 'Бирдик (милдеттүү эмес)';

  @override
  String get challengeUnitHint => 'рекет, бет, жолу';

  @override
  String get challengeOneTapAdds => 'Бир басканда кошулат';

  @override
  String get challengeHowManyDays => 'Канча күн?';

  @override
  String get challengeReachHowMuch => 'Канчага жетүү керек?';

  @override
  String get challengeSpreadOver => 'Мөөнөтү';

  @override
  String get challengeSpreadEveryDay => 'Күн сайын';

  @override
  String get challengeSpreadLonger => 'Узунураак мөөнөт';

  @override
  String get challengeByWhen => 'Качанга чейин?';

  @override
  String get challengeWindowDuration => 'Канча күндө';

  @override
  String get challengeByDate => 'Белгилүү күнгө чейин';

  @override
  String challengePlanRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String challengePlanExact(String start, String end) {
    return '$start – $end · күнүнө бир, күн сайын';
  }

  @override
  String challengePlanSlack(
    String start,
    String end,
    String target,
    String window,
    String slack,
    num targetCount,
    num windowCount,
  ) {
    return '$start – $end · $window күндүн $target күнү — $slack күн өткөрүп жиберсеңиз болот';
  }

  @override
  String challengePlanRate(String start, String end, String rate) {
    return '$start – $end · күнүнө болжол менен $rate';
  }

  @override
  String challengePlanOpen(String start) {
    return 'Башталышы: $start · мөөнөтсүз';
  }

  @override
  String challengeTooTight(
    String target,
    String window,
    num targetCount,
    num windowCount,
  ) {
    return '$target күн $window күнгө батпайт — бул түрдө күнүнө бир гана белги саналат.';
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
  String get challengeStartDate => 'Башталышы';

  @override
  String get challengeEndDate => 'Аякташы';

  @override
  String challengeProgressCount(String done, String target, String unit) {
    return '$target $unit ичинен $done';
  }

  @override
  String challengeProgressPlain(String done, String target) {
    return '$target ичинен $done';
  }

  @override
  String challengeProgressDays(String done, String target) {
    return '$target күндөн $done';
  }

  @override
  String challengeDaysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count күн калды',
    );
    return '$_temp0';
  }

  @override
  String get challengeNoDeadline => 'Мөөнөтсүз';

  @override
  String challengeOnTrack(String rate) {
    return 'Пландагыдай · $rate/күн';
  }

  @override
  String challengeBehind(String rate) {
    return 'Артта калды · бүтүрүү үчүн $rate/күн';
  }

  @override
  String challengeLastDay(String remaining) {
    return 'Акыркы күн · $remaining калды';
  }

  @override
  String get challengeReached => 'Максатка жетти';

  @override
  String get challengeCompleted => 'Аткарылды';

  @override
  String challengeEnded(String done, String target) {
    return 'Мөөнөтү бүттү · $done/$target';
  }

  @override
  String get challengeExpiredTitle => 'Максаттын мөөнөтү бүттү';

  @override
  String challengeExpiredBody(String title, String done, String target) {
    return '$title: мөөнөтү бүттү, жыйынтык $done/$target.';
  }

  @override
  String get challengeExtend => 'Узартуу';

  @override
  String get challengeRestart => 'Кайра баштоо';

  @override
  String get challengeArchive => 'Архивдөө';

  @override
  String get challengeDailyBreakdown => 'Күн боюнча жазуулар';

  @override
  String challengeNudgeBody(String title, String rate) {
    return '$title: убагында бүтүрүү үчүн күнүнө $rate керек.';
  }

  @override
  String challengeLastDayBody(String title, String remaining) {
    return '$title: акыркы күн — $remaining калды.';
  }

  @override
  String get challengeGroupGoal => 'Максат';

  @override
  String get challengeGroupShape => 'Түрү';

  @override
  String get challengeGroupPlan => 'План';

  @override
  String get challengeGroupReminders => 'Эскертмелер';

  @override
  String get challengeStartFromTemplate => 'Үлгүдөн баштоо';

  @override
  String get challengeTemplateBlank => 'Бош';

  @override
  String get challengePreview => 'Алдын ала көрүү';

  @override
  String get challengeTmplTahajjud => '40 түн тахажжуд';

  @override
  String get challengeTmplSalawat => '1000 салават';

  @override
  String get challengeTmplKhatm => '30 күндө Куран хатымы';

  @override
  String get challengeTmplFajrJamaah => '30 күн жамаат менен багымдат';

  @override
  String get challengeTmplSadaqah => '30 күн садака';

  @override
  String get listSeparator => ' · ';

  @override
  String get tierRafiq => 'Рафик';

  @override
  String get tierNasir => 'Насир';

  @override
  String get tierMuhsin => 'Мухсин';

  @override
  String get tierAnsar => 'Ансар';

  @override
  String get tierRafiqMeaning => 'жолдош';

  @override
  String get tierNasirMeaning => 'колдоочу';

  @override
  String get tierMuhsinMeaning => 'жакшылык кылуучу';

  @override
  String get tierAnsarMeaning => 'жардамчы';

  @override
  String get supportCardBody =>
      'Акысыз, жарнамасыз жана каттоосуз. Кааласаңыз, кичине салым менен анын өнүгүшүнө колдоо көрсөтө аласыз — каалаган суммада, каалаган убакта.';

  @override
  String get supportCta => 'Muhasaba колдонмосун колдоо';

  @override
  String get supportAgain => 'Кайра колдоо';

  @override
  String get supporterThanks =>
      'Алла ыраазы болсун — иншаалла, Muhasaba акысыз жана жарнамасыз бойдон калат.';

  @override
  String supporterSince(String tier, String month) {
    return '$tier · $month айынан бери';
  }

  @override
  String get supportPromptTitle => 'Muhasaba колдонмосун колдоңуз';

  @override
  String get supportPromptBody =>
      'Muhasaba акысыз, жарнамасыз жана каттоосуз. Кааласаңыз, кичине салым менен анын өнүгүшүнө колдоо көрсөтө аласыз — каалаган суммада, каалаган убакта. Колдонмонун бардык мүмкүнчүлүктөрү баары бир ачык.';

  @override
  String get supportPromptNow => 'Азыр колдоо';

  @override
  String get supportPromptLater => 'Кийинчерээк эскертүү';

  @override
  String get supportPromptNever => 'Кайра сурабоо';

  @override
  String get tipSheetTitle => 'Muhasaba колдонмосун колдоо';

  @override
  String get tipSheetBody =>
      'Каалаган сумманы, каалаганча тандаңыз. Салымдар колдонмону тейлөөгө жумшалат — иншаалла, ал акысыз жана жарнамасыз бойдон калат. Ыраазычылык катары Жөндөөлөрдө колдоочу деп белгиленесиз.';

  @override
  String tipSheetSupporterLine(String tier) {
    return '$tier — Алла ыраазы болсун.';
  }

  @override
  String get tipSheetSupporterAgain => 'Каалаган убакта кайра колдой аласыз.';

  @override
  String tipSheetStoreNote(String store) {
    return 'Төлөм $store аркылуу жүргүзүлөт — төлөм маалыматыңызды биз эч качан көрбөйбүз.';
  }

  @override
  String get tipSheetOtherWays => 'Сизге ылайыктуу вариант табылган жокпу?';

  @override
  String get tipSheetWriteToUs => 'Бизге жазыңыз';

  @override
  String get supportEmailBody =>
      'Ассаламу алейкум,\n\nMuhasaba колдонмосунун өнүгүшүнө түздөн-түз салым кошкум келет.\n\nӨлкө:\nКантип жөнөткүм келет:\nСумма (милдеттүү эмес):';

  @override
  String tipBusy(String store) {
    return '$store ачылууда…';
  }

  @override
  String get tipThanks => 'Алла ыраазы болсун — Алла сизден кабыл кылсын.';

  @override
  String get tipDone => 'Даяр';

  @override
  String get tipFailed => 'Төлөм өткөн жок. Акча кармалган жок.';

  @override
  String tipPending(String store) {
    return 'Салымыңыз $store тарабынан ырасталышын күтүүдө — ырасталгандан кийин белгиңиз кошулат.';
  }

  @override
  String get tipUnavailable => 'Азыр бул түзмөктө сатып алуу мүмкүн эмес.';

  @override
  String get optionSetJamaa => 'Жамаат';

  @override
  String get optionJamaaAlone => 'Жалгыз';

  @override
  String get optionJamaaHome => 'Үйдө жамаат';

  @override
  String get optionJamaaMasjid => 'Мечитте жамаат';

  @override
  String get optionSetOnTime => 'Өз убагында';

  @override
  String get optionOnTimeOnTime => 'Өз убагында';

  @override
  String get optionOnTimeLate => 'Кечиккен';

  @override
  String get optionOnTimeQada => 'Каза';

  @override
  String get optionSetQuranSession => 'Куран окуу';

  @override
  String get optionQuranRecited => 'Окулду';

  @override
  String get optionQuranMemorised => 'Жатталды';

  @override
  String get optionQuranMeaning => 'Мааниси менен';

  @override
  String get optionQuranListened => 'Угулду';

  @override
  String get optionSetSadaqahType => 'Садаканын түрү';

  @override
  String get optionSadaqahMoney => 'Акча';

  @override
  String get optionSadaqahFood => 'Тамак';

  @override
  String get optionSadaqahTime => 'Убакыт';

  @override
  String get optionSadaqahOther => 'Башка';

  @override
  String get optionSetIntensity => 'Деңгээл';

  @override
  String get optionIntensityLight => 'Жеңил';

  @override
  String get optionIntensityModerate => 'Орто';

  @override
  String get optionIntensityIntense => 'Күчтүү';

  @override
  String get optionSetNewTitle => 'Жаңы варианттар топтому';

  @override
  String get optionSetEditTitle => 'Варианттар топтомун түзөтүү';

  @override
  String get optionSetNameLabel => 'Топтомдун аты';

  @override
  String get optionSetNameHint => 'мис. Жамаат';

  @override
  String get optionsLabel => 'Варианттар';

  @override
  String get optionAdd => 'Вариант кошуу';

  @override
  String optionHint(int index) {
    return 'Вариант $index';
  }

  @override
  String optionsMaxReached(int max) {
    return 'Эң көбү $max вариант.';
  }

  @override
  String get optionSetPreviewLabel =>
      'Алдын ала көрүү — «Бүгүн» тизмесиндеги сап';

  @override
  String optionSetKeptForHistory(String labels) {
    return 'Тарых үчүн сакталды: $labels';
  }

  @override
  String get optionSetDelete => 'Топтомду өчүрүү';

  @override
  String get optionSetDeleteConfirm =>
      'Бул топтомду колдонгон амалдарда варианттар көрсөтүлбөйт. Мурда белгиленген күндөр тандоосун сактайт.';

  @override
  String get optionSetNameRequired => 'Топтомго ат бериңиз';

  @override
  String get optionsMinRequired => 'Жок дегенде эки вариант кошуңуз';

  @override
  String get optionSetNameTooLong => 'Топтомдун аты өтө узун';

  @override
  String optionTooLong(int index) {
    return '$index-вариант өтө узун';
  }

  @override
  String get optionSetNone => 'Жок';

  @override
  String get optionSetNew => 'Жаңы топтом';

  @override
  String get requireChoiceLabel => 'Тандоону талап кылуу';

  @override
  String get requireChoiceHelp => 'Вариант тандалмайынча сап белгиленбейт';

  @override
  String get requireChoicePickSetFirst => 'Алгач топтомду тандаңыз';

  @override
  String get requireChoiceCountHelp =>
      'Саналуучу амалдар − жана + аркылуу аткарылат';

  @override
  String optionsUsedOf(int used, int max) {
    return '$max варианттан $used колдонулду.';
  }

  @override
  String get choiceNeeded => 'Тандоо керек';

  @override
  String optionSelected(String label) {
    return '$label, тандалды';
  }

  @override
  String optionNotSelected(String label) {
    return '$label, тандалган эмес';
  }

  @override
  String optionBreakdownTitle(String set) {
    return 'Варианттардын бөлүнүшү — $set';
  }

  @override
  String optionBreakdownCaption(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count аткаруунун',
    );
    return '$_temp0 ичинен тандоо белгиленгендердин үлүшү';
  }

  @override
  String optionNoChoiceRecorded(int none, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other: 'аткарылган $total күндүн',
    );
    return 'Тандоо белгиленген эмес — $_temp0 $none күнүндө';
  }

  @override
  String get optionRemovedSuffix => 'алынып салынган';

  @override
  String get optionAllAmals => 'Баары';

  @override
  String optionScopedCaption(String amal, int count) {
    return '$amal · $count белгиленген';
  }

  @override
  String get optionBreakdownSectionTitle => 'Варианттардын бөлүнүшү';

  @override
  String optionBreakdownSwipeHint(int count) {
    return '$count топтом · жылдырыңыз';
  }

  @override
  String get optionDetailEmpty =>
      'Бул топтом үчүн азырынча тандоо белгиленген эмес.';

  @override
  String get optionDetailTrendHeading => 'Кантип өзгөрдү';

  @override
  String optionDetailTrendReadout(String option, String from, String to) {
    return '$option: биринчи аптада $from, акыркы аптада $to болду.';
  }

  @override
  String get optionDetailByAmalHeading => 'Амал боюнча';

  @override
  String optionDetailByAmalReadout(
    String best,
    String bestShare,
    String worst,
    String worstShare,
  ) {
    return 'Эң жогорку: $best ($bestShare); эң төмөнкү: $worst ($worstShare).';
  }

  @override
  String get optionDetailRecordsHeading => 'Рекорддор';

  @override
  String get optionDetailLongestRun => 'Эң узун серия';

  @override
  String get optionDetailBestWeek => 'Эң жакшы апта';

  @override
  String get optionDetailCurrentRun => 'Учурдагы серия';

  @override
  String get optionDetailRecordsCaption =>
      'Акыркы бир жылдын негизинде эсептелет; жогорудагы мезгил чыпкасына көз каранды эмес.';

  @override
  String get optionDetailRecentDaysHeading => 'Акыркы күндөр';

  @override
  String optionDetailRecentDaysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Акыркы $count күн',
      one: 'Акыркы 1 күн',
    );
    return '$_temp0';
  }

  @override
  String get amalFivePrayers => 'Беш убак намаз';

  @override
  String get amalJumuah => 'Жума намазы';

  @override
  String get amalWitr => 'Витр намазы';

  @override
  String get amalQada => 'Каза намаздар';

  @override
  String get amalFajrSunnah => 'Багымдаттын сүннөтү';

  @override
  String get amalDhuhrSunnah => 'Бешимдин сүннөтү';

  @override
  String get amalAsrSunnah => 'Асырдын сүннөтү';

  @override
  String get amalMaghribSunnah => 'Шамдын сүннөтү';

  @override
  String get amalIshaSunnah => 'Куптандын сүннөтү';

  @override
  String get amalRawatib => 'Муаккада сүннөттөр';

  @override
  String get amalSiwak => 'Мисвак';

  @override
  String get amalWuduSleep => 'Уктаар алдында даарат';

  @override
  String get amalFridayGhusl => 'Жума күнкү гусул';

  @override
  String get amalIshraq => 'Ишрак намазы';

  @override
  String get amalWuduPrayer => 'Даараттан кийинки эки рекет';

  @override
  String get amalTahiyyah => 'Тахиятул-масжид';

  @override
  String get amalEarlyJumuah => 'Жумага эрте баруу';

  @override
  String get amalAfterSalah => 'Намаздан кийинки зикирлер';

  @override
  String get amalAfterFajr => 'Багымдаттан кийинки зикирлер';

  @override
  String get amalAfterDhuhr => 'Бешимден кийинки зикирлер';

  @override
  String get amalAfterAsr => 'Асырдан кийинки зикирлер';

  @override
  String get amalAfterMaghrib => 'Шамдан кийинки зикирлер';

  @override
  String get amalAfterIsha => 'Куптандан кийинки зикирлер';

  @override
  String get amalAyatKursi => 'Аятул-Курси';

  @override
  String get amalKursiFajr => 'Багымдаттан кийин Аятул-Курси';

  @override
  String get amalKursiDhuhr => 'Бешимден кийин Аятул-Курси';

  @override
  String get amalKursiAsr => 'Асырдан кийин Аятул-Курси';

  @override
  String get amalKursiMaghrib => 'Шамдан кийин Аятул-Курси';

  @override
  String get amalKursiIsha => 'Куптандан кийин Аятул-Курси';

  @override
  String get amalSayyidIstighfar => 'Сайидул-истигфар';

  @override
  String get amalSalawat => 'Салават';

  @override
  String get amalSubhanallah => 'Субханаллахи ва бихамдихи';

  @override
  String get amalTahlil => 'Ла илаха иллаллах';

  @override
  String get amalBedtimeAdhkar => 'Уктаар алдындагы зикирлер';

  @override
  String get amalFridaySalawat => 'Жума күнкү салават';

  @override
  String get amalHawqala => 'Ла хавла ва ла куввата';

  @override
  String get amalTasbihFatimah => 'Фатиманын тасбихи';

  @override
  String get amalWakingAdhkar => 'Ойгонгондогу зикирлер';

  @override
  String get amalDuaAdhan => 'Азандан кийинки дуба';

  @override
  String get amalDuaIqamah => 'Азан менен икамат арасындагы дуба';

  @override
  String get amalDuaSujood => 'Сеждедеги дуба';

  @override
  String get amalDuaParents => 'Ата-эне үчүн дуба';

  @override
  String get amalDuaOthers => 'Башкалар үчүн дуба';

  @override
  String get amalFridayHour => 'Жума күнүнүн акыркы саатындагы дуба';

  @override
  String get amalLastThird => 'Түнкү дуба (акыркы үчтөн бири)';

  @override
  String get amalMulk => 'Мулк сүрөсү';

  @override
  String get amalBaqarahEnd => 'Бакаранын акыркы эки аяты';

  @override
  String get amalSajdah => 'Сажда сүрөсү';

  @override
  String get amalQuls => 'Ихлас, Фалак жана Нас';

  @override
  String get amalYasin => 'Ясин сүрөсү';

  @override
  String get amalWaqiah => 'Вакиа сүрөсү';

  @override
  String get amalHifz => 'Куран жаттоо';

  @override
  String get amalMurajaah => 'Жаттаганды кайталоо';

  @override
  String get amalTafsir => 'Тафсир';

  @override
  String get amalListenQuran => 'Куран угуу';

  @override
  String get amalTeachQuran => 'Куран үйрөтүү';

  @override
  String get amalMonThu => 'Дүйшөмбү жана бейшемби орозосу';

  @override
  String get amalThreeDays => 'Айына үч күн орозо';

  @override
  String get amalDailySadaqah => 'Күнүмдүк садака';

  @override
  String get amalFeed => 'Бирөөнү тамактандыруу';

  @override
  String get amalHelpNeed => 'Муктаж адамга жардам';

  @override
  String get amalOrphan => 'Жетимге камкордук';

  @override
  String get amalGiveWater => 'Суу берүү';

  @override
  String get amalLearnHadith => 'Бир хадис үйрөнүү';

  @override
  String get amalReadBook => 'Диний китеп окуу';

  @override
  String get amalSeerah => 'Сийраны окуу';

  @override
  String get amalClass => 'Сабакка катышуу';

  @override
  String get amalArabic => 'Араб тилин үйрөнүү';

  @override
  String get amalLearnDua => 'Жаңы дуба үйрөнүү';

  @override
  String get amalShare => 'Үйрөнгөндү бөлүшүү';

  @override
  String get amalFiqh => 'Фикх окуу';

  @override
  String get amalMuhasaba => 'Түнкү мухасаба';

  @override
  String get amalSpeakGood => 'Же жакшы сүйлө, же унчукпа';

  @override
  String get amalNoBackbiting => 'Гыйбаттан сактануу';

  @override
  String get amalAnger => 'Ачууну басуу';

  @override
  String get amalGaze => 'Көздү харамдан тыюу';

  @override
  String get amalTruthful => 'Чынчылдык';

  @override
  String get amalSmile => 'Жылмаюу';

  @override
  String get amalSalam => 'Саламды жайылтуу';

  @override
  String get amalForgive => 'Башкаларды кечирүү';

  @override
  String get amalGratitude => 'Шүгүр';

  @override
  String get amalVisitSick => 'Оорулуунун көңүлүн суроо';

  @override
  String get amalNeighbours => 'Кошунага жакшылык';

  @override
  String get amalRemoveHarm => 'Жолдон зыяндуу нерсени алып салуу';

  @override
  String get amalParents => 'Ата-энеге жакшылык';

  @override
  String get amalFamilyTies => 'Тууганчылыкты сактоо';

  @override
  String get amalHelpHome => 'Үй жумуштарына жардам';

  @override
  String get amalTeachChildren => 'Балдарга дин үйрөтүү';

  @override
  String get amalSpouse => 'Жубайга жакшы мамиле';

  @override
  String get categoryDua => 'Дуба';

  @override
  String get categoryFasting => 'Орозо';

  @override
  String get categoryKnowledge => 'Илим';

  @override
  String get categoryCharacter => 'Адеп-ахлак';

  @override
  String get categoryFamily => 'Үй-бүлө';

  @override
  String get libraryTitle => 'Амалдар китепканасы';

  @override
  String get librarySearchHint => 'Амал издөө';

  @override
  String get libraryAll => 'Баары';

  @override
  String get libraryAdded => '«Бүгүн» тизмесине кошулду';

  @override
  String libraryAddedShowsOn(String days) {
    return 'Кошулду · көрүнө турган күндөр: $days';
  }

  @override
  String libraryNoMatch(String query) {
    return '«$query» боюнча амал табылган жок';
  }

  @override
  String libraryCreateNamed(String query) {
    return '«$query» түзүү';
  }

  @override
  String get libraryPickBanner => 'Амалдар китепканасынан тандаңыз';

  @override
  String libraryPickBannerSubtitle(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countText даяр амал',
      one: '$countText даяр амал',
    );
    return '$_temp0';
  }

  @override
  String get libraryFilledIn => 'Амалдар китепканасынан толтурулду';

  @override
  String get libraryChange => 'Өзгөртүү';

  @override
  String get libraryEditAction => 'Түзөтүү';

  @override
  String libraryWeeklyAny(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Аптасына $countText күн',
      one: 'Аптасына бир жолу',
    );
    return '$_temp0';
  }

  @override
  String libraryMonthlyAny(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Айына $countText күн',
      one: 'Айына бир жолу',
    );
    return '$_temp0';
  }

  @override
  String libraryTimes(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countText жолу',
    );
    return '$_temp0';
  }

  @override
  String get libraryAnyAmount => 'Каалаган сан';

  @override
  String libraryAddTooltip(String title) {
    return 'Кошуу: $title';
  }

  @override
  String get libraryOnList => 'Тизмеңизде бар';

  @override
  String get todayEmptyBrowse => 'Амалдар китепканасын ачуу';
}
