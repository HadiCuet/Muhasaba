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
  String get categoryNewSheetTitle => 'Жаңы категория';

  @override
  String get categoryEditSheetTitle => 'Категорияны өзгөртүү';

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
  String get hadith2 =>
      '\"Адам баласы каза болгондо, амалдары токтойт, үчөөнү кошпогондо: үзгүлтүксүз садака, пайдалуу илим же ага дуба кылуучу ак ниет перзент.\"\n— Муслим';

  @override
  String get hadith3 =>
      '\"Ким эки салкын намазды (Багымдат жана Аср) окуса, бейишке кирет.\"\n— Бухари';

  @override
  String get hadith4 =>
      '\"Аллах силердин сырткы көрүнүшүңөргө жана байлыгыңарга карабайт, бирок жүрөктөрүңөргө жана амалдарыңарга карайт.\"\n— Муслим';

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
  String get hadith10 =>
      '\"Ким күнүнө жүз жолу \'СубханАллахи ва бихамдихи\' десе, анын күнөөлөрү кечирилет, деңиздин көбүгүндөй болсо да.\"\n— Бухари';

  @override
  String get hadith12 =>
      '\"Ким ар парз намаздан кийин Аятул-Курси окуса, аны бейишке кирүүдөн өлүм гана тосот.\"\n— Насаи';

  @override
  String get hadith13 => '\"Жакшы сөз — садака.\"\n— Бухари жана Муслим';

  @override
  String get hadith14 =>
      '\"Аллахка жана акырет күнүнө ишенген адам жакшы сөз айтсын же унчуксун.\"\n— Бухари жана Муслим';

  @override
  String get hadith15 =>
      '\"Жесир жана мискинге камкордук кылган адам Аллах жолундагы мужахид сыяктуу.\"\n— Бухари';

  @override
  String get hadith16 => '\"Бир тууганыңа жылмаюуң — садака.\"\n— Термизи';

  @override
  String get hadith17 =>
      '\"Силердин эң жакшыңар Куранды үйрөнгөн жана үйрөткөн адам.\"\n— Бухари';

  @override
  String get hadith18 =>
      '\"Эч ким өз колунун эмгегинен жакшыраак тамак жеген эмес.\"\n— Бухари';

  @override
  String get hadith19 =>
      '\"Аллах жумшак жана бардык иштерде жумшактыкты жакшы көрөт.\"\n— Бухари жана Муслим';

  @override
  String historyDayCompleted(int completed, int total) {
    return '$total ичинен $completed аткарылды';
  }

  @override
  String get settingsSchedule => 'График';

  @override
  String get settingsAppearance => 'Көрүнүш';

  @override
  String get settingsAboutTagline => 'Күнүмдүк дин жолдошуңуз';

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
  String get settingsRequestFeature => 'Функция суроо';

  @override
  String settingsSupportFallback(String email) {
    return 'Поштаны ачуу мүмкүн болбоду. $email дарегине жазыңыз.';
  }

  @override
  String get hadith20 =>
      '\"Ким Рамазанда ыйман жана сооп үмүтү менен орозо тутса, анын өткөн күнөөлөрү кечирилет.\"\n— Бухари жана Муслим';

  @override
  String get hadith22 =>
      '\"Азан менен икамат ортосундагы дуба четке кагылбайт.\"\n— Абу Давуд';

  @override
  String get hadith23 =>
      '\"Ким Аллах үчүн мечит курса, Аллах ага бейишде үй курат.\"\n— Бухари жана Муслим';

  @override
  String get hadith24 =>
      '\"Эркектер үчүн эң жакшы саптар — алдыңкы саптар, аялдар үчүн эң жакшы саптар — арткы саптар.\"\n— Муслим';

  @override
  String get hadith25 => '\"Орозо — тозоктон калкан.\"\n— Насаи';

  @override
  String get hadith26 =>
      '\"Ким он эки ракаат сүннөт намаз окуса, ага бейишде үй курулат.\"\n— Муслим';

  @override
  String get hadith27 =>
      '\"Куранды жакшы билген адам асыл периштелер менен бирге болот.\"\n— Бухари жана Муслим';

  @override
  String get hadith29 => '\"Садаканын эң жакшысы — суу берүү.\"\n— Ахмад';

  @override
  String get hadith30 =>
      '\"Ким момундан бир кыйынчылыкты жойсо, Аллах Кыямат күнү андан бир кыйынчылыкты жоёт.\"\n— Муслим';

  @override
  String get hadith32 => '\"Уят — ыймандын бир бөлүгү.\"\n— Бухари жана Муслим';

  @override
  String get hadith34 =>
      '\"Ким сабыр кылса, Аллах ага сабыр берет.\"\n— Бухари жана Муслим';

  @override
  String get hadith36 =>
      '\"Силердин бириңер өзүнө каалаган нерсени бир тууганына да каалабаганча, чыныгы момун болбойт.\"\n— Бухари жана Муслим';

  @override
  String get hadith37 =>
      '\"Ачтарды тойгузгула, ооруларды жоктогула жана туткундарды бошоткула.\"\n— Бухари';

  @override
  String get hadith38 =>
      '\"Күчтүү адам — күрөштө жеңген эмес, ачуусун басып, өзүн кармай алган адам.\"\n— Бухари жана Муслим';

  @override
  String get hadith40 =>
      '\"Ар намаздан кийин отуз үч жолу \'СубханАллах\', \'Алхамдулиллах\' жана \'Аллаху Акбар\' деңиз.\"\n— Муслим';

  @override
  String get hadith41 => '\"Эң жакшы зикир — Ла илаха иллаллах.\"\n— Термизи';

  @override
  String get hadith42 =>
      '\"Эки ниемет бар, көп адамдар аларды текке кетирет: ден-соолук жана бош убакыт.\"\n— Бухари';

  @override
  String get hadith43 =>
      '\"Бешти бештин алдында баалагыла: жаштыкты карылыктын, ден-соолукту оорунун, байлыкты жакырчылыктын, бош убакытты бош эместиктин жана өмүрдү өлүмдүн алдында.\"\n— Хаким';

  @override
  String get hadith44 =>
      '\"Ким Ихлас сүрөсүн он жолу окуса, Аллах ага бейишде үй курат.\"\n— Ахмад';

  @override
  String get hadith45 =>
      '\"Парз намаздардан кийинки эң жакшы намаз — түнкү намаз.\"\n— Муслим';

  @override
  String get hadith46 =>
      '\"Садака күнөөлөрдү суу отту өчүргөндөй өчүрөт.\"\n— Термизи';

  @override
  String get hadith47 =>
      '\"Туугандык байланышты сактоочу — жооп кайтаруучу эмес, байланыш үзүлсө да аны сактоочу.\"\n— Бухари';

  @override
  String get hadith49 =>
      '\"Ким тамак жеп: \'Мага муну жедирген жана менин эч кандай күчүм жана кубатымсыз мага мүмкүнчүлүк берген Аллахка алкыш\' десе, анын өткөн күнөөлөрү кечирилет.\"\n— Термизи';

  @override
  String get hadith53 =>
      '\"Эч бир жакшылыкты жеп-жеңил көрбө, бир тууганыңды жылмая карап тосуу болсо да.\"\n— Муслим';

  @override
  String get hadith54 =>
      '\"Силердин эң жакшыңар — үй-бүлөсүнө эң жакшы мамиле кылганыңар.\"\n— Тирмизи';

  @override
  String get hadith55 =>
      '\"Ким түнкүсүн Бакара сүрөсүнүн акыркы эки аятын окуса, ал ага жетиштүү.\"\n— Бухари жана Муслим';

  @override
  String get hadith56 =>
      '\"Дүнүйө — пайда, ал эң жакшы пайда — салиха жубай.\"\n— Муслим';

  @override
  String get hadith57 =>
      '\"Үч дуба кабыл болот: орозо тутуучунун дубасы, адил башчынын дубасы жана мазалымдын дубасы.\"\n— Тирмизи';

  @override
  String get hadith58 =>
      '\"Ким мага бир жолу салават айтса, Аллах ага он жолу рахмат жиберет.\"\n— Муслим';

  @override
  String get hadith65 => '\"Момүн момүндүн күзгүсү.\"\n— Абу Дауд';

  @override
  String get hadith66 =>
      '\"Чынчылдык жакшылыкка алып барат, ал жакшылык бейишке алып барат.\"\n— Бухари жана Муслим';

  @override
  String get hadith67 =>
      '\"Аманатты сага ишенген адамга кайтар, сага чыккынчылык кылганга чыккынчылык кылба.\"\n— Абу Дауд жана Тирмизи';

  @override
  String get hadith68 =>
      '\"Мусулманга тийген чарчоо, оору, кайгы, муң, зыян же тынчсыздык, тикен кирип кетсе да, Аллах анын айрым күнөөлөрүн кечирет.\"\n— Бухари жана Муслим';

  @override
  String get hadith69 =>
      '\"Мусулмандын бир тууганына анын жок кезинде кылган дубасы дайыма кабыл болот.\"\n— Муслим';

  @override
  String get hadith70 =>
      '\"Ким Аллахтан үч жолу бейиш сураса, бейиш айтат: Аллахым, аны бейишке киргиз.\"\n— Тирмизи';

  @override
  String get hadith71 =>
      '\"Рамазандан кийинки эң баалуу орозо — Аллахтын айы Мухаррамдагы орозо.\"\n— Муслим';

  @override
  String get hadith72 =>
      '\"Ким ажылык кылып, жаман сөз айтпаса жана күнөө кылбаса, энеси төрөгөн күнүндөгүдөй кайтып келет.\"\n— Бухари жана Муслим';

  @override
  String get hadith73 =>
      '\"Бир умра экинчи умрага чейин арасындагы күнөөлөрдүн каффараты.\"\n— Бухари жана Муслим';

  @override
  String get hadith74 =>
      '\"Караңгы түндүн кесимдеріндей сыноолор келе электе, жакшы иштерге ашыгыңар.\"\n— Муслим';

  @override
  String get hadith75 =>
      '\"Таң намаздын эки ракааты дүйнө жана андагынын баарынан жакшы.\"\n— Муслим';

  @override
  String get hadith77 =>
      '\"Эгер силер Аллага чыныгы таваккул кылсаңар, Ал силерди куштарды ризыктандыргандай ризыктандырмак.\"\n— Термизи';

  @override
  String get hadith78 =>
      '\"Ким ооруканды барып көрсө, кайтмайынча бейиш бактарында болот.\"\n— Муслим';

  @override
  String get hadith79 =>
      '\"Саламды жайыңар, тамак бергиле, адамдар уктаганда түнкү намаз окугула — бейишке тынчтык менен кирерсиңер.\"\n— Термизи';

  @override
  String get hadith80 =>
      '\"Адамдарга ыраазычылык билдирбеген Аллахка да ыраазычылык билдирбейт.\"\n— Термизи';

  @override
  String get hadith81 =>
      '\"Кызгануу эки гана учурда уруксат: Алла мал берген адам аны ак жолго жумшаса, жана Алла акылмандык берген адам аны менен чечим чыгарып, үйрөтсө.\"\n— Бухари жана Муслим';

  @override
  String get hadith82 =>
      '\"Адам досунун дининде болот, ошондуктан ар бириңер ким менен достошкондугуна караңыз.\"\n— Абу Дауд жана Термизи';

  @override
  String get hadith85 =>
      '\"Ким Аллах үчүн бир нерседен баш тартса, Аллах ага андан жакшысын берет.\"\n— Ахмад';

  @override
  String get hadith86 =>
      '\"Ким мусулмандын кемчилигин жашырса, Алла Кыямат күнү анын кемчилигин жашырат.\"\n— Бухари жана Муслим';

  @override
  String get hadith87 =>
      '\"Дүйнөдө бөтөн адамдай же жолоочудай бол.\"\n— Бухари';

  @override
  String get hadith88 =>
      '\"Ким кыйынчылыктагыга жеңилдик кылса, Алла ага дүйнөдө жана акыретте жеңилдик кылат.\"\n— Муслим';

  @override
  String get hadith89 =>
      '\"Амалдар ниеттерге байланыштуу.\"\n— Бухари жана Муслим';

  @override
  String get hadith90 =>
      '\"Шектенүүдөн сактаныңар, анткени шектенүү эң жалган сөз.\"\n— Бухари жана Муслим';

  @override
  String get hadith93 =>
      '\"Чогуу тамактангыла жана Алланын атын атагыла, силерге берекелүү болот.\"\n— Абу Дауд';

  @override
  String get hadith94 => '\"Эң жакшы мажилис — эң кеңи.\"\n— Абу Дауд';

  @override
  String get hadith95 => '\"Кечиргиле, силер да кечирилесиңер.\"\n— Ахмад';

  @override
  String get hadith96 =>
      '\"Төөңдү байла, анан Аллага таваккул кыл.\"\n— Термизи';

  @override
  String get hadith97 =>
      '\"Момундун иши укмуштуу — бардыгы ага жакшылык.\"\n— Муслим';

  @override
  String get hadith98 =>
      '\"Мусулман мусулмандын бир тууганы: ага зулум кылбайт, таштабайт, кемсинтпейт.\"\n— Муслим';
}
