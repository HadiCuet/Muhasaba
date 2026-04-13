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
  String get hadith10 =>
      '\"Кім күніне жүз рет \'СубханАллаһи уа бихамдиһи\' десе, оның күнәлары кешіріледі, теңіздің көбігіндей болса да.\"\n— Бұхари';

  @override
  String get hadith11 =>
      '\"Ең жақсы дұға — Арафа күніндегі дұға, мен мен менен бұрынғы пайғамбарлар айтқан ең жақсы сөз: Лә иләһә илләллаһ.\"\n— Термизи';

  @override
  String get hadith12 =>
      '\"Кім әр парыз намаздан кейін Аятұл-Курси оқыса, оны жаннатқа кіруден тек өлім ғана тосады.\"\n— Нәсәи';

  @override
  String get hadith13 => '\"Жақсы сөз — садақа.\"\n— Бұхари және Муслим';

  @override
  String get hadith14 =>
      '\"Аллаһқа және ақырет күніне сенетін адам жақсы сөз айтсын немесе үндемесін.\"\n— Бұхари және Муслим';

  @override
  String get hadith15 =>
      '\"Жесір мен мискінге қамқор болған адам Аллаһ жолындағы мужаһид сияқты.\"\n— Бұхари';

  @override
  String get hadith16 => '\"Бауырыңа күлімсіреуің — садақа.\"\n— Термизи';

  @override
  String get hadith17 =>
      '\"Сендердің ең жақсысы Құранды үйренетін және үйрететін адам.\"\n— Бұхари';

  @override
  String get hadith18 =>
      '\"Ешкім өз қолының еңбегінен жақсырақ тамақ жеген жоқ.\"\n— Бұхари';

  @override
  String get hadith19 =>
      '\"Аллаһ жұмсақ және барлық істе жұмсақтықты жақсы көреді.\"\n— Бұхари және Муслим';

  @override
  String historyDayCompleted(int completed, int total) {
    return '$total ішінен $completed орындалды';
  }

  @override
  String get settingsSchedule => 'Кесте';

  @override
  String get settingsAppearance => 'Сыртқы түрі';

  @override
  String get settingsAboutTagline => 'Сіздің күнделікті дін серігіңіз';

  @override
  String get settingsRolloverSub => 'Күн қашан жаңарады';

  @override
  String get settingsAbout => 'Туралы';

  @override
  String get settingsVersion => 'Нұсқа';

  @override
  String get settingsDeveloper => 'Әзірлеуші';

  @override
  String get hadith20 =>
      '\"Кім Рамазанда иман мен сауап үмітімен ораза тұтса, оның өткен күнәлары кешіріледі.\"\n— Бұхари және Муслим';

  @override
  String get hadith21 => '\"Намаз — діннің тірегі.\"\n— Байхақи';

  @override
  String get hadith22 =>
      '\"Азан мен ықамат арасындағы дұға қабыл болмай қалмайды.\"\n— Абу Дауд';

  @override
  String get hadith23 =>
      '\"Кім Аллаһ үшін мешіт салса, Аллаһ оған жәннатта үй салады.\"\n— Бұхари және Муслим';

  @override
  String get hadith24 =>
      '\"Ер адамдар үшін ең жақсы сафтар — алдыңғы сафтар, әйелдер үшін ең жақсы сафтар — соңғы сафтар.\"\n— Муслим';

  @override
  String get hadith25 => '\"Ораза — тозақтан қалқан.\"\n— Нәсәи';

  @override
  String get hadith26 =>
      '\"Кім он екі рәкағат сүннет намаз оқыса, оған жәннатта үй салынады.\"\n— Муслим';

  @override
  String get hadith27 =>
      '\"Құранды жақсы білетін адам асыл періштелермен бірге болады.\"\n— Бұхари және Муслим';

  @override
  String get hadith28 => '\"Ілім іздеу — әрбір мұсылманға парыз.\"\n— Ибн Мәжа';

  @override
  String get hadith29 => '\"Ең жақсы садақа — су беру.\"\n— Ахмад';

  @override
  String get hadith30 =>
      '\"Кім мүміннен бір қиындықты жойса, Аллаһ Қиямет күні одан бір қиындықты жояды.\"\n— Муслим';

  @override
  String get hadith31 =>
      '\"Мейірімділерге Мейірімді Аллаһ мейірім көрсетеді.\"\n— Абу Дауд және Термизи';

  @override
  String get hadith32 => '\"Ұят — иманның бір бөлігі.\"\n— Бұхари және Муслим';

  @override
  String get hadith33 => '\"Тазалық — иманның жартысы.\"\n— Муслим';

  @override
  String get hadith34 =>
      '\"Кім сабыр етсе, Аллаһ оған сабыр береді.\"\n— Бұхари және Муслим';

  @override
  String get hadith35 =>
      '\"Ең жақсы байлық — Аллаһты еске алатын тіл.\"\n— Табарани';

  @override
  String get hadith36 =>
      '\"Сендердің ешқайсысы өзіне қалаған нәрсені бауырына да қаламайынша, шынайы мүмін болмайды.\"\n— Бұхари және Муслим';

  @override
  String get hadith37 =>
      '\"Аштарды тойғызыңдар, науқастарды жоқтаңдар және тұтқындарды босатыңдар.\"\n— Бұхари';

  @override
  String get hadith38 =>
      '\"Күшті адам — күресте жеңетін емес, ашуланғанда өзін ұстай алатын адам.\"\n— Бұхари және Муслим';

  @override
  String get hadith39 =>
      '\"Кім тілі мен ар-намысын сақтаса, мен оған жәннатты кепілдікке аламын.\"\n— Бұхари';

  @override
  String get hadith40 =>
      '\"Әр намаздан кейін отыз үш рет \'Субханаллаһ\', \'Әлхамдулиллаһ\' және \'Аллаһу Акбар\' деңдер.\"\n— Муслим';

  @override
  String get hadith41 => '\"Ең жақсы зікір — Лә иләһә илләллаһ.\"\n— Термизи';

  @override
  String get hadith42 =>
      '\"Екі нығмет бар, көп адамдар оларды жоғалтады: денсаулық пен бос уақыт.\"\n— Бұхари';

  @override
  String get hadith43 =>
      '\"Бесті бестің алдында бағала: жастықты қарттықтың, денсаулықты аурудың, байлықты кедейліктің, бос уақытты бос емес кездің және өмірді өлімнің алдында.\"\n— Хакім';

  @override
  String get hadith44 =>
      '\"Кім Ихлас сүресін он рет оқыса, Аллаһ оған жәннатта үй салады.\"\n— Ахмад';

  @override
  String get hadith45 =>
      '\"Парыз намаздардан кейінгі ең жақсы намаз — түнгі намаз.\"\n— Муслим';

  @override
  String get hadith46 =>
      '\"Садақа күнәларды су отты сөндіргендей сөндіреді.\"\n— Термизи';

  @override
  String get hadith47 =>
      '\"Туыстық байланысты сақтаушы — жауап қайтарушы емес, байланыс үзілсе де оны сақтаушы.\"\n— Бұхари';

  @override
  String get hadith48 => '\"Әрбір жақсы іс — садақа.\"\n— Бұхари және Муслим';

  @override
  String get hadith49 =>
      '\"Кім тамақ жеп, \'Әлхамдулиллаһ\' десе, оның өткен күнәлары кешіріледі.\"\n— Термизи';

  @override
  String get hadith50 =>
      '\"Аллаһқа ең сүйікті адамдар — басқаларға ең пайдалы адамдар.\"\n— Табарани';

  @override
  String get hadith51 =>
      '\"Кім ашуын басса, бірақ оны жүзеге асыра алатын болса, Аллаһ оны Қиямет күні барлық жаратылыстың алдында шақырып, сыйлығын таңдауын сұрайды.\"\n— Термизи';

  @override
  String get hadith52 =>
      '\"Садақа беруге асығыңыз, өйткені ол бәленің жолын кеседі.\"\n— Термизи';

  @override
  String get hadith53 =>
      '\"Еш жақсылықты кемсітпе, тіпті бауырыңды жылы шырай менен қарсы алу болса да.\"\n— Муслим';

  @override
  String get hadith54 =>
      '\"Сендердің ең жақсыларың — отбасына ең жақсы қарайтындарың.\"\n— Термизи';

  @override
  String get hadith55 =>
      '\"Кім түнде Бақара сүресінің соңғы екі аятын оқыса, ол оған жеткілікті.\"\n— Бұхари және Муслим';

  @override
  String get hadith56 =>
      '\"Дүние — пайда, ал ең жақсы пайда — салиха жұбай.\"\n— Муслим';

  @override
  String get hadith57 =>
      '\"Үш дұға қабыл болады: ораза ұстаған адамның дұғасы, әділ басшының дұғасы және мазалымның дұғасы.\"\n— Термизи';

  @override
  String get hadith58 =>
      '\"Кім маған бір рет салауат айтса, Аллаһ оған он рет рахмет жібереді.\"\n— Муслим';

  @override
  String get hadith59 => '\"Мешіт — әр тақуа адамның үйі.\"\n— Табарани';

  @override
  String get hadith60 =>
      '\"Кім \'Ла хауля уа ла құууата илла биллаһ\' десе — бұл тоқсан тоғыз ауру дертің дауасы, олардың ең жеңілі — алаңдаушылық.\"\n— Хаким';

  @override
  String get hadith61 =>
      '\"Аллаһ бірдеңе жасағанда оны жетік жасауды жақсы көреді.\"\n— Табарани';

  @override
  String get hadith62 => '\"Жәннат аналардың аяқтарының астында.\"\n— Насаи';

  @override
  String get hadith63 =>
      '\"Ата-анаға жақсылық — ең ұлы парыз амал.\"\n— Бұхари';

  @override
  String get hadith64 =>
      '\"Аз нәрсеге шүкір еткен көп нәрсеге ие болады.\"\n— Бәйхақи';

  @override
  String get hadith65 => '\"Мүмін мүміннің айнасы.\"\n— Абу Дауд';

  @override
  String get hadith66 =>
      '\"Шындық жақсылыққа жетелейді, ал жақсылық жәннатқа жетелейді.\"\n— Бұхари және Муслим';

  @override
  String get hadith67 =>
      '\"Аманатты сенген адамға қайтар, саған опасыздық жасағанға опасыздық жасама.\"\n— Абу Дауд және Термизи';

  @override
  String get hadith68 =>
      '\"Мұсылманға тиетін шаршау, ауру, қайғы, мұң, зиян немесе уайым, тіпті тікен батса да, Аллаһ оның кейбір күнәларын кешіреді.\"\n— Бұхари және Муслим';

  @override
  String get hadith69 =>
      '\"Мұсылманның бауырына ғайыбана жасаған дұғасы әрдайым қабыл болады.\"\n— Муслим';

  @override
  String get hadith70 =>
      '\"Кім Аллаһтан үш рет жәннат сұраса, жәннат айтады: Аллаһым, оны жәннатқа кіргіз.\"\n— Термизи';

  @override
  String get hadith71 =>
      '\"Рамазаннан кейінгі ең құнды ораза — Аллаһтың айы Мұхарремдегі ораза.\"\n— Муслим';

  @override
  String get hadith72 =>
      '\"Кім хаж жасап, жаман сөз айтпаса және күнә істемесе, анасы туған күніндегідей қайтады.\"\n— Бұхари және Муслим';

  @override
  String get hadith73 =>
      '\"Бір умра екінші умраға дейін арасындағы күнәлардың кәффараты.\"\n— Бұхари және Муслим';

  @override
  String get hadith74 => '\"Жақсы істерге жарысыңдар.\"\n— Муслим';

  @override
  String get hadith75 =>
      '\"Таң намазының екі рәкаты дүние мен оның ішіндегінің бәрінен артық.\"\n— Муслим';

  @override
  String get hadith76 =>
      '\"Кім үнемі истиғфар айтса, Алла оған әр қиындықтан шығар жол береді.\"\n— Әбу Дәуд';

  @override
  String get hadith77 =>
      '\"Егер сендер Аллаға лайықты түрде тәуекел етсеңдер, Ол сендерді құстарды ризықтандырғандай ризықтандырар еді.\"\n— Термези';

  @override
  String get hadith78 =>
      '\"Кім науқасты жоқтаса, қайтқанша жаннат бағында болады.\"\n— Муслим';

  @override
  String get hadith79 =>
      '\"Сәлемді жаңыртыңдар, ас беріңдер, адамдар ұйықтағанда түнгі намаз оқыңдар — жаннатқа аман-есен кіресіңдер.\"\n— Термези';

  @override
  String get hadith80 =>
      '\"Аллаға ең сүйікті амал — тұрақты жасалатыны, аз болса да.\"\n— Бұхари';

  @override
  String get hadith81 =>
      '\"Қызғаныш тек екі жағдайда жарамды: Алла байлық берген адам оны ақ жолға жұмсаса, және Алла хикмет берген адам онымен үкім шығарып, үйретсе.\"\n— Бұхари және Муслим';

  @override
  String get hadith82 =>
      '\"Адам досының дінінде болады, сондықтан әр біреуіңіз кіммен дос болып жатқаныңызға қараңыз.\"\n— Әбу Дәуд және Термези';

  @override
  String get hadith83 =>
      '\"Өлімді жиі еске алыңдар, өйткені ол жүректі тазартады.\"\n— Термези';

  @override
  String get hadith84 =>
      '\"Сендердің ең жақсыңдар — жүрегі ең жұмсағыңдар.\"\n— Табарани';

  @override
  String get hadith85 =>
      '\"Алла ешбір жанға күшінен артық жүк салмайды.\"\n— Құран 2:286';

  @override
  String get hadith86 =>
      '\"Кім мұсылманның кемшілігін жасырса, Алла Қиямет күні оның кемшілігін жасырады.\"\n— Бұхари және Муслим';

  @override
  String get hadith87 =>
      '\"Дүниеде бөтен адамдай немесе жолаушыдай бол.\"\n— Бұхари';

  @override
  String get hadith88 =>
      '\"Кім қиындықтағыға жеңілдік жасаса, Алла оған дүние мен ақиретте жеңілдік жасайды.\"\n— Муслим';

  @override
  String get hadith89 =>
      '\"Амалдар ниеттерге байланысты.\"\n— Бұхари және Муслим';

  @override
  String get hadith90 =>
      '\"Күдіктен сақтаныңдар, өйткені күдік ең жалған сөз.\"\n— Бұхари және Муслим';

  @override
  String get hadith91 =>
      '\"Кім Алла үшін өтірікті тастаса, тіпті әзілде де болса, мен оған жаннаттың шетінде сарай кепілдігін беремін.\"\n— Әбу Дәуд';

  @override
  String get hadith92 =>
      '\"Жақсылықтың есіктері көп: Алланы ұлықтау, Оны мадақтау, садақа, жақсылыққа бұйыру, жолдан зиянды алып тастау.\"\n— Муслим';

  @override
  String get hadith93 =>
      '\"Бірге тамақтаныңдар және Алланың атын атаңдар, сендерге берекелі болады.\"\n— Әбу Дәуд';

  @override
  String get hadith94 => '\"Ең жақсы мәжіліс — ең кең болғаны.\"\n— Әбу Дәуд';

  @override
  String get hadith95 => '\"Кешіріңдер, сендер де кешіріласіңдер.\"\n— Ахмад';

  @override
  String get hadith96 =>
      '\"Түйеңді байла, сонан соң Аллаға тәуекел ет.\"\n— Термези';

  @override
  String get hadith97 =>
      '\"Мұмінің ісі таңғажайып — бәрі оған жақсылық.\"\n— Муслим';

  @override
  String get hadith98 =>
      '\"Мұсылман мұсылманның бауыры: оған зұлым жасамайды, тастамайды, кемсітпейді.\"\n— Муслим';

  @override
  String get hadith99 =>
      '\"Аллаға ең сүйікті сөз: СубханАллахи уа бихамдихи, СубханАллахил Азим.\"\n— Бұхари және Муслим';
}
