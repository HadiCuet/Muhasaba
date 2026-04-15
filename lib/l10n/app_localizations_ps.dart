// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Pushto Pashto (`ps`).
class AppLocalizationsPs extends AppLocalizations {
  AppLocalizationsPs([String locale = 'ps']) : super(locale);

  @override
  String get appTitle => 'Muhasaba';

  @override
  String get tabToday => 'نن';

  @override
  String get tabStats => 'احصایې';

  @override
  String get tabHistory => 'تاریخچه';

  @override
  String get tabSettings => 'تنظیمات';

  @override
  String get newAmal => 'نوی عمل';

  @override
  String get editAmal => 'عمل سمول';

  @override
  String get newAmalTitle => 'نوی عمل';

  @override
  String get save => 'خوندی کول';

  @override
  String get cancel => 'لغوه';

  @override
  String get clear => 'پاکول';

  @override
  String get titleLabel => 'سرلیک';

  @override
  String get titleRequired => 'سرلیک اړین دی';

  @override
  String get titleTooLong => 'سرلیک ډیر اوږد دی';

  @override
  String get frequencyLabel => 'تکرار';

  @override
  String get frequencyDaily => 'ورځنی';

  @override
  String get frequencyWeekly => 'اونیزه';

  @override
  String get frequencyMonthly => 'میاشتنی';

  @override
  String get categoryLabel => 'کټګوري';

  @override
  String get categoryOther => 'نور';

  @override
  String get categorySalah => 'لمونځ';

  @override
  String get categoryDhikr => 'ذکر';

  @override
  String get categoryQuran => 'قرآن';

  @override
  String get categoryCharity => 'صدقه';

  @override
  String get timesPerPeriod => 'د دورې په هر ځل';

  @override
  String get custom => 'دلخواه';

  @override
  String get customTargetHint => 'لکه ۵۰';

  @override
  String get dayOfWeek => 'د اونۍ ورځ';

  @override
  String get anyDay => 'هره';

  @override
  String get anyDayHint => 'هره ورځ (نن ښکاره کیږي، سبا پټیږي)';

  @override
  String onlyDayHint(String day) {
    return 'یوازې $day';
  }

  @override
  String get dateOfMonth => 'د میاشتې نیټه';

  @override
  String get anyDate => 'هره';

  @override
  String get anyDateHint => 'هره نیټه (نن ښکاره کیږي، سبا پټیږي)';

  @override
  String onlyDateHint(String date) {
    return 'یوازې د $date نیټې';
  }

  @override
  String get startPreChecked => 'دمخه نښه شوی پیل';

  @override
  String get startPreCheckedSubtitle =>
      'کله چې نوې دوره پیل شي، دا عمل د تلواله بشپړ نښه شوی وي تر هغه چې تاسو یې لرې نه کړئ.';

  @override
  String get reminder => 'یادونه';

  @override
  String get reminderNone => 'هیڅ';

  @override
  String reminderTime(String time) {
    return 'یادونه: $time';
  }

  @override
  String get reminderPermissionWarning =>
      'یادونه خوندی شوه، خو خبرتیاوې اجازه نه لري. د هوښیارتیاوو لپاره یې د سیسټم تنظیماتو کې فعاله کړئ.';

  @override
  String get groupByCategory => 'د کټګورۍ له مخې ګروپ کول';

  @override
  String get flatList => 'ساده لیست';

  @override
  String errorGeneric(String error) {
    return 'تېروتنه: $error';
  }

  @override
  String get todayEmptyHint => 'د خپل لومړي عمل اضافه کولو لپاره + ټک وکړئ.';

  @override
  String get noteLabel => 'یادښت';

  @override
  String get noteHint => 'لکه په جومات کې مې لمونځ وکړ';

  @override
  String get completed => 'بشپړ شو';

  @override
  String get notCompleted => 'بشپړ نه دی شوی';

  @override
  String progressOf(int progress, int target) {
    return 'د $target څخه $progress بشپړ شوي';
  }

  @override
  String get removeFromToday => 'د نن څخه لرې کول';

  @override
  String get removeFromTodaySubtitle =>
      'یوازې د نن لپاره پټول. سبا بیرته راځي.';

  @override
  String get removeFromTracking => 'د تعقیب څخه لرې کول';

  @override
  String get removeFromTrackingSubtitle =>
      'د خپل لیست څخه تل لپاره لرې کول. تاریخچه ساتل کیږي.';

  @override
  String get chooseIcon => 'عکس غوره کړئ';

  @override
  String get iconNone => 'هیڅ';

  @override
  String get recentlyUsed => 'وروستی کارول شوی';

  @override
  String get emojiSectionGeneral => 'عمومي';

  @override
  String get categoryNameHint => 'نوم';

  @override
  String get categoryNew => '+ نوی';

  @override
  String get categoryNewSheetTitle => 'نوې کټګورۍ';

  @override
  String get categoryEditSheetTitle => 'کټګورۍ سمول';

  @override
  String get addAmal => 'عمل اضافه کول';

  @override
  String get customAmal => 'دلخواه عمل';

  @override
  String get templateTasbih => 'تسبیح ۳۳ ځله';

  @override
  String get templateIstighfar => 'استغفار ۱۰۰ ځله';

  @override
  String get templateSurahKahf => 'سوره کهف';

  @override
  String get templateSadaqah => 'صدقه';

  @override
  String get templateTahajjud => 'تهجد';

  @override
  String get templateDuhaPrayer => 'د چاشت لمونځ';

  @override
  String get settingsTitle => 'تنظیمات';

  @override
  String settingsLoadError(String error) {
    return 'تنظیمات پورته کول وناکامه شول:\n$error';
  }

  @override
  String get sectionDayBoundary => 'د ورځې حد';

  @override
  String get rolloverHour => 'د ورځې بدلون ساعت';

  @override
  String get rolloverAtMidnight => 'نن شپه نیمه پای ته رسیږي.';

  @override
  String rolloverSubtitle(String time) {
    return 'د پرون عملونه تر $time پورې د سمون وړ وي.';
  }

  @override
  String get pickRolloverHour => 'هغه ساعت غوره کړئ چې ورځ پرې بدلیږي';

  @override
  String get sectionWeekMonth => 'اونۍ او میاشت';

  @override
  String get startOfWeek => 'د اونۍ پیل';

  @override
  String get startOfMonth => 'د میاشتې پیل';

  @override
  String get startOfMonthClamped =>
      'د ۲۸مې نه وروسته ورځې د لنډو میاشتو وروستۍ ورځې ته محدودیږي.';

  @override
  String get sectionAppearance => 'بڼه';

  @override
  String get theme => 'تیمه';

  @override
  String get themeSystem => 'سیسټم';

  @override
  String get themeLight => 'رڼا';

  @override
  String get themeDark => 'تیاره';

  @override
  String get sectionLanguage => 'ژبه';

  @override
  String get language => 'ژبه';

  @override
  String get systemDefault => 'د سیسټم تلواله';

  @override
  String get aboutTitle => 'Muhasaba';

  @override
  String get aboutSubtitle =>
      'د شخصي دیني حساب ورکولو ډایري. ټول معلومات پدې وسیله کې پاتې کیږي.';

  @override
  String get statsTitle => 'احصایې';

  @override
  String statsLoadError(String error) {
    return 'احصایې پورته کول وناکامه شول:\n$error';
  }

  @override
  String get perAmal => 'د هر عمل';

  @override
  String get thisWeek => 'دا اونۍ';

  @override
  String get thisMonth => 'دا میاشت';

  @override
  String get totalCompletions => 'ټول بشپړتیاوې';

  @override
  String get streakCurrent => 'اوسنی';

  @override
  String get streakLongest => 'ترټولو اوږد';

  @override
  String get ratioWeek => 'اونۍ';

  @override
  String get ratioMonth => 'میاشت';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ورځې',
      one: 'ورځ',
    );
    return '$_temp0';
  }

  @override
  String streakWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'اونۍ',
      one: 'اونۍ',
    );
    return '$_temp0';
  }

  @override
  String streakMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'میاشتې',
      one: 'میاشت',
    );
    return '$_temp0';
  }

  @override
  String get frequencyBadgeDaily => 'ورځنی';

  @override
  String get frequencyBadgeWeekly => 'اونیزه';

  @override
  String get frequencyBadgeMonthly => 'میاشتنی';

  @override
  String get statsEmpty =>
      'تر اوسه هیڅ عمل نشته. د تعقیب پیل لپاره د نن په برخه کې یو اضافه کړئ.';

  @override
  String get statsToday => 'نن';

  @override
  String get statsThisWeek => 'دا اونۍ';

  @override
  String get statsThisMonth => 'دا میاشت';

  @override
  String get statsAllTime => 'ټول وختونه';

  @override
  String get statsCustomRange => 'دلخواه موده';

  @override
  String get statsAllCategories => 'ټول';

  @override
  String get statsAllAmals => 'ټول';

  @override
  String get statsCompleted => 'بشپړ شوي';

  @override
  String get statsExpected => 'تمه شوي';

  @override
  String get statsVsPrevious => 'د تیر په پرتله';

  @override
  String get statsByCategory => 'د کټګورۍ له مخې';

  @override
  String get statsPerAmal => 'د هر عمل';

  @override
  String get statsCurrentStreak => 'اوسنی لړۍ';

  @override
  String get statsBestStreak => 'غوره لړۍ';

  @override
  String get statsTotalDays => 'ټول ورځې';

  @override
  String get statsConsistency => 'دوام';

  @override
  String get statsLast5Weeks => 'وروستۍ ۵ اونۍ';

  @override
  String get statsDailyBreakdown => 'ورځنی تفصیل';

  @override
  String get statsCompletionRate => 'د بشپړتیا شرح';

  @override
  String get statsFilterTime => 'وخت';

  @override
  String get statsFilterCategory => 'کټګوري';

  @override
  String get statsFilterAmal => 'عمل';

  @override
  String get statsStreaks => 'لړۍ';

  @override
  String get statsSelectDateRange => 'د نیټې موده وټاکئ';

  @override
  String get historyTitle => 'تاریخچه';

  @override
  String get jumpToDate => 'نیټې ته ورتلل';

  @override
  String historyEmptyDay(String date) {
    return 'په $date هیڅ عمل تعقیب شوی نه دی';
  }

  @override
  String get streakUnitD => 'و';

  @override
  String get streakUnitW => 'ا';

  @override
  String get streakUnitM => 'م';

  @override
  String get mondayShort => 'دو';

  @override
  String get tuesdayShort => 'سه';

  @override
  String get wednesdayShort => 'چه';

  @override
  String get thursdayShort => 'پن';

  @override
  String get fridayShort => 'جم';

  @override
  String get saturdayShort => 'شن';

  @override
  String get sundayShort => 'یک';

  @override
  String get mondayFull => 'دوشنبه';

  @override
  String get tuesdayFull => 'سه‌شنبه';

  @override
  String get wednesdayFull => 'چهارشنبه';

  @override
  String get thursdayFull => 'پنجشنبه';

  @override
  String get fridayFull => 'جمعه';

  @override
  String get saturdayFull => 'شنبه';

  @override
  String get sundayFull => 'یکشنبه';

  @override
  String get hadith0 =>
      '\"د الله تعالی ته ترټولو خوښې عملونه هغه دي چې پرې دوام وشي، که لږ هم وي.\"\n— بخاري او مسلم';

  @override
  String get hadith2 =>
      '\"کله چې د آدم زوی مړ شي، عملونه یې ودریږي پرته له دریو: صدقه جاریه، ګټور علم، یا نیک اولاد چې د هغه لپاره دعا کوي.\"\n— مسلم';

  @override
  String get hadith3 =>
      '\"هر څوک چې دوه یخې لمونځونه (سهار او مازدیګر) وکړي، جنت ته به داخل شي.\"\n— بخاري';

  @override
  String get hadith4 =>
      '\"الله ستاسو بڼه او شتمنۍ ته نه ګوري، بلکې ستاسو زړونو او عملونو ته ګوري.\"\n— مسلم';

  @override
  String get hadith6 =>
      '\"کارونه اسانه کړئ او سخت یې مه کوئ، زېری ورکړئ او خلک مه ډارئ.\"\n— بخاري';

  @override
  String get hadith7 =>
      '\"هر څوک چې د علم په لټه کې لاره ووهي، الله به ورته جنت ته لاره اسانه کړي.\"\n— مسلم';

  @override
  String get hadith8 => '\"صدقه مال نه کموي.\"\n— مسلم';

  @override
  String get hadith9 =>
      '\"قوي مؤمن د الله سره غوره او ډیر خوښ دی د ضعیف مؤمن په پرتله، خو په دواړو کې خیر شته.\"\n— مسلم';

  @override
  String get hadith10 =>
      '\"هر څوک چې په ورځ کې سل ځله \'سبحان الله وبحمده\' ووایی، د هغه ګناهونه بخښل کیږی که چیرې د سمندر د ګاز په شان وی.\"\n— بخاري';

  @override
  String get hadith12 =>
      '\"هر څوک چې د هر فرض لمانځه وروسته آیت الکرسی ووایی، جنت ته د ننوتلو مخه یې یوازې مرګ نیسی.\"\n— نسائي';

  @override
  String get hadith13 => '\"ښه خبره صدقه ده.\"\n— بخاري او مسلم';

  @override
  String get hadith14 =>
      '\"هر څوک چې پر الله او وروستي ورځ ایمان لری، دی باید ښه خبره وکړی یا چوپ وی.\"\n— بخاري او مسلم';

  @override
  String get hadith15 =>
      '\"هغه څوک چې د کونډې او مسکین خیال ساتي د الله په لاره کې د مجاهد په شان دی.\"\n— بخاري';

  @override
  String get hadith16 => '\"د خپل ورور مخ ته خندل صدقه ده.\"\n— ترمذي';

  @override
  String get hadith17 =>
      '\"ستاسو تر ټولو غوره هغه دی چې قرآن زده کوی او ورته ښوونه ورکوی.\"\n— بخاري';

  @override
  String get hadith18 =>
      '\"هیچا چا د خپل لاس له کار نه ښه خواړه نه دي خوړلي.\"\n— بخاري';

  @override
  String get hadith19 =>
      '\"الله نرم دی او په هر کار کې نرمي خوښوي.\"\n— بخاري او مسلم';

  @override
  String historyDayCompleted(int completed, int total) {
    return '$total څخه $completed بشپړ شوي';
  }

  @override
  String get settingsSchedule => 'مهالویش';

  @override
  String get settingsAppearance => 'بڼه';

  @override
  String get settingsAboutTagline => 'ستاسو ورځنی دیني ملګری';

  @override
  String get settingsRolloverSub => 'ورځ کله بیا پیلیږي';

  @override
  String get settingsAbout => 'په اړه';

  @override
  String get settingsVersion => 'نسخه';

  @override
  String get settingsDeveloper => 'جوړونکی';

  @override
  String get settingsSupport => 'ملاتړ';

  @override
  String get settingsRate => 'اپلیکیشن ته درجه ورکړئ';

  @override
  String get settingsContact => 'موږ سره اړیکه ونیسئ';

  @override
  String get settingsReportBug => 'د ستونزې راپور ورکړئ';

  @override
  String get settingsRequestFeature => 'د ځانګړنې غوښتنه وکړئ';

  @override
  String settingsSupportFallback(String email) {
    return 'بریښنالیک نه خلاصیږي. مهرباني وکړئ $email ته بریښنالیک ولیږئ.';
  }

  @override
  String get settingsPrivacyPolicy => 'د محرمیت تګلاره';

  @override
  String get settingsPrivacyOpenFailed => 'د محرمیت تګلاره نه شوه پرانیستل.';

  @override
  String get hadith20 =>
      '\"هر څوک چې د ایمان او ثواب په نیت رمضان روژه ونیسي، د هغه تیرې ګناهونه بخښل کیږي.\"\n— بخاري او مسلم';

  @override
  String get hadith22 =>
      '\"د اذان او اقامت ترمنځ دعا رد نه کیږي.\"\n— ابو داود';

  @override
  String get hadith23 =>
      '\"هر څوک چې د الله لپاره جومات جوړ کړي، الله به ورته په جنت کې کور جوړ کړي.\"\n— بخاري او مسلم';

  @override
  String get hadith24 =>
      '\"د نارینه وو لپاره غوره صفونه لومړي صفونه دي، او د ښځو لپاره غوره صفونه وروستي صفونه دي.\"\n— مسلم';

  @override
  String get hadith25 => '\"روژه د دوزخ نه ساتنه ده.\"\n— نسائي';

  @override
  String get hadith26 =>
      '\"هر څوک چې دولس رکعته سنت لمونځ وکړي، ورته به په جنت کې کور جوړ شي.\"\n— مسلم';

  @override
  String get hadith27 =>
      '\"هغه څوک چې په قرآن کې ماهر وي، د عزتمنو پرښتو سره وي.\"\n— بخاري او مسلم';

  @override
  String get hadith29 => '\"غوره صدقه د اوبو ورکول دي.\"\n— احمد';

  @override
  String get hadith30 =>
      '\"هر څوک چې له مؤمن څخه سختي لرې کړي، الله به ورته د قیامت په ورځ سختي لرې کړي.\"\n— مسلم';

  @override
  String get hadith32 => '\"حیا د ایمان برخه ده.\"\n— بخاري او مسلم';

  @override
  String get hadith34 =>
      '\"هر څوک چې صبر وکړي، الله به ورته صبر ورکړي.\"\n— بخاري او مسلم';

  @override
  String get hadith36 =>
      '\"ستاسو هیڅ یو ریښتینی مؤمن نه دی تر هغه چې خپل ورور ته هغه خوښ نه کړي چې ځان ته یې خوښوي.\"\n— بخاري او مسلم';

  @override
  String get hadith37 =>
      '\"وږي خوراک ورکړئ، ناروغ یې ولیدئ، او بندیان آزاد کړئ.\"\n— بخاري';

  @override
  String get hadith38 =>
      '\"قوي سړی هغه نه دی چې لوبې کوي، بلکې هغه دی چې په غصه کې ځان کنترولوي.\"\n— بخاري او مسلم';

  @override
  String get hadith40 =>
      '\"د هر لمونځ وروسته درې دېرش ځله \'سبحان الله\'، \'الحمد لله\' او \'الله اکبر\' ووایئ.\"\n— مسلم';

  @override
  String get hadith41 => '\"غوره ذکر \'لا اله الا الله\' دی.\"\n— ترمذي';

  @override
  String get hadith42 =>
      '\"دوه نعمتونه شته چې ډیری خلک یې ضایع کوي: روغتیا او خالي وخت.\"\n— بخاري';

  @override
  String get hadith43 =>
      '\"پنځه شیان دمخه غنیمت وګڼئ: ځوانتوب دمخه له زوړتیا، روغتیا دمخه له ناروغۍ، شتمني دمخه له غربت، خالي وخت دمخه له بوختیا، او ژوند دمخه له مرګ.\"\n— حاکم';

  @override
  String get hadith44 =>
      '\"هر څوک چې سوره اخلاص لس ځله ووایی، الله به ورته په جنت کې کور جوړ کړي.\"\n— احمد';

  @override
  String get hadith45 =>
      '\"د فرض لمونځونو وروسته غوره لمونځ د شپې لمونځ دی.\"\n— مسلم';

  @override
  String get hadith46 => '\"صدقه ګناهونه هغسې ګل کوي لکه اوبه اور.\"\n— ترمذي';

  @override
  String get hadith47 =>
      '\"صله رحمي کوونکی هغه نه دی چې بدله کوي، بلکې هغه دی چې کله رابطه پرې کړل شي بیا هم یې ساتي.\"\n— بخاري';

  @override
  String get hadith49 =>
      '\"هر څوک چې خوراک وخوري او ووایي: \'الحمدلله چې ما ته یې دا خوراک ورکړ او بې له کومې ځواکې یا طاقتې زما ما ته رسولی دی،\' د هغه تېرې ګناهونه بخښل کیږي.\"\n— ترمذي';

  @override
  String get hadith53 =>
      '\"هېڅ نېکي مه حقیره ګڼئ، که څه هم دا وي چې خپل ورور ته په خندا مخ ووینئ.\"\n— مسلم';

  @override
  String get hadith54 =>
      '\"ستاسو تر ټولو غوره هغه دی چې د خپلې کورنۍ لپاره غوره وي.\"\n— ترمذي';

  @override
  String get hadith55 =>
      '\"هر څوک چې شپه د سورة البقرة وروستۍ دوه آیتونه ولولي، دا به ورته بسنه وي.\"\n— بخاري او مسلم';

  @override
  String get hadith56 =>
      '\"دنیا یو متاع دی، او د دې ترټولو غوره متاع نېکه ښځه ده.\"\n— مسلم';

  @override
  String get hadith57 =>
      '\"درې دعاوې رد نه کیږي: د روژه نیونکي دعا، د عادل حاکم دعا، او د مظلوم دعا.\"\n— ترمذي';

  @override
  String get hadith58 =>
      '\"هر څوک چې پر ما یو ځل درود واستوي، الله به پرې لس ځله رحمت واستوي.\"\n— مسلم';

  @override
  String get hadith65 => '\"مؤمن د مؤمن آینه دی.\"\n— ابو داود';

  @override
  String get hadith66 =>
      '\"ریښتینتوب نېکۍ ته رسوي، او نېکي جنت ته رسوي.\"\n— بخاري او مسلم';

  @override
  String get hadith67 =>
      '\"امانت هغه چا ته ورکړه چې تاته یې سپارلې ده، او هغه چا ته خیانت مه کوه چې تاته یې خیانت کړی وي.\"\n— ابو داود او ترمذي';

  @override
  String get hadith68 =>
      '\"هیڅ ستړتیا، ناروغي، غم، خپګان، تکلیف، یا پریشاني مسلمان ته نه رسیږي، حتی یوه اغزه هم، مګر الله د هغې په بدل کې د هغه ګناهونه معاف کوي.\"\n— بخاري او مسلم';

  @override
  String get hadith69 =>
      '\"د مسلمان دعا د خپل ورور لپاره چې حاضر نه وي تل قبلیږي.\"\n— مسلم';

  @override
  String get hadith70 =>
      '\"هر څوک چې له الله نه درې ځله جنت وغواړي، جنت وایي: الهي دا جنت ته داخل کړه.\"\n— ترمذي';

  @override
  String get hadith71 =>
      '\"د رمضان وروسته ترټولو غوره روژه د الله میاشت محرم ده.\"\n— مسلم';

  @override
  String get hadith72 =>
      '\"هر څوک چې حج وکړي او بده خبره او ګناه ونه کړي، هغه داسې راګرځي لکه هغه ورځ چې مور یې زیږولی وو.\"\n— بخاري او مسلم';

  @override
  String get hadith73 =>
      '\"عمره تر بلې عمرې د دواړو ترمنځ ګناهونو کفاره ده.\"\n— بخاري او مسلم';

  @override
  String get hadith74 =>
      '\"مخکې له دې چې فتنې د توره شپې د ټوټو په شان راشي، نېکو عملونو ته ولاړ شئ.\"\n— مسلم';

  @override
  String get hadith75 =>
      '\"د سهار دوه رکعتونه د دنیا او هرڅه چې پکې دي نه ښې دي.\"\n— مسلم';

  @override
  String get hadith77 =>
      '\"که تاسو په الله باندې داسې توکل کوئ لکه چې حق یې دی، نو هغه به تاسو ته داسې روزي درکوي لکه چې مرغیو ته ورکوي.\"\n— ترمذي';

  @override
  String get hadith78 =>
      '\"هرڅوک چې ناروغ ته ځي، تر بیرته راتلو پورې د جنت په باغ کې وي.\"\n— مسلم';

  @override
  String get hadith79 =>
      '\"سلام خپور کړئ، ډوډۍ ورکړئ، او شپه لمونځ وکړئ کله چې خلک ویده وي — تاسو به په سلامت سره جنت ته ننوځئ.\"\n— ترمذي';

  @override
  String get hadith80 =>
      '\"هر څوک چې د خلکو شکرګزار نه وي، د الله شکرګزار نه دی.\"\n— ترمذي';

  @override
  String get hadith81 =>
      '\"حسد یوازې په دوه حالتونو کې روا دی: هغه سړی چې الله ورته مال ورکړی او هغه یې په حق لاره خرڅ کوي، او هغه سړی چې الله ورته حکمت ورکړی او هغه ورسره فیصله کوي او ښوونه کوي.\"\n— بخاري او مسلم';

  @override
  String get hadith82 =>
      '\"انسان د خپل ملګري په دین باندې دی، نو هر یو ستاسو دې وګوري چې د چا سره ملګرتیا کوي.\"\n— ابوداود او ترمذي';

  @override
  String get hadith85 =>
      '\"هر څوک چې د الله لپاره یو شی پریږدي، الله به ورته غوره شی ورکړي.\"\n— احمد';

  @override
  String get hadith86 =>
      '\"هرڅوک چې د مسلمان عیبونه پټ کړي، الله به د قیامت په ورځ د هغه عیبونه پټ کړي.\"\n— بخاري او مسلم';

  @override
  String get hadith87 =>
      '\"په دنیا کې داسې اوسه لکه چې مسافر یې یا لاریون.\"\n— بخاري';

  @override
  String get hadith88 =>
      '\"هرڅوک چې د ستونزمن لپاره اسانتیا وکړي، الله به په دنیا او آخرت کې ورته اسانتیا وکړي.\"\n— مسلم';

  @override
  String get hadith89 => '\"عملونه د نیتونو پورې تړلي دي.\"\n— بخاري او مسلم';

  @override
  String get hadith90 =>
      '\"له بدګمانۍ څخه ځان ساتئ، ځکه چې بدګماني تر ټولو دروغجنه خبره ده.\"\n— بخاري او مسلم';

  @override
  String get hadith93 =>
      '\"یوځای خوراک وکړئ او د الله نوم واخلئ، نو ستاسو لپاره به برکت وي.\"\n— ابوداود';

  @override
  String get hadith94 => '\"غوره مجلس هغه دی چې تر ټولو پراخه وي.\"\n— ابوداود';

  @override
  String get hadith95 => '\"وبخښئ، نو تاسو هم بخښل کیږئ.\"\n— احمد';

  @override
  String get hadith96 => '\"خپل اوښ وتړه بیا په الله توکل وکړه.\"\n— ترمذي';

  @override
  String get hadith97 => '\"د مؤمن کار عجیب دی — هر څه ورته ښه دي.\"\n— مسلم';

  @override
  String get hadith98 =>
      '\"مسلمان د مسلمان ورور دی: نه پرې ظلم کوي، نه یې پریږدي، نه یې سپکوي.\"\n— مسلم';
}
