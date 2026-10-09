// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Pushto Pashto (`ps`).
class AppLocalizationsPs extends AppLocalizations {
  AppLocalizationsPs([String locale = 'ps']) : super(locale);

  @override
  String get repeatsOnDaysHint => 'په ټاکل شویو ورځو کې تکرار کېږي';

  @override
  String get newDayStarted => 'نوې ورځ پیل شوه';

  @override
  String get appTitle => 'محاسبه';

  @override
  String get tabToday => 'نن';

  @override
  String get tabStats => 'احصایې';

  @override
  String get tabHistory => 'تاریخچه';

  @override
  String get tabSettings => 'تنظیمات';

  @override
  String get tabChallenge => 'هدف';

  @override
  String get tabInsights => 'احصایې';

  @override
  String get insightsTitle => 'احصایې';

  @override
  String get insightsOverview => 'عمومي کتنه';

  @override
  String get insightsDaily => 'ورځنی';

  @override
  String get insightsArchive => 'آرشیف';

  @override
  String get archivedEmpty =>
      'دلته لا څه نشته. هغه عملونه چې له تعقیب څخه یې لرې کوئ، دلته ښکاره کېږي څو یې بېرته راوګرځوئ.';

  @override
  String archivedStoppedOn(String date) {
    return 'په $date لرې شو';
  }

  @override
  String get archivedRestore => 'بېرته راګرځول';

  @override
  String archivedRestored(String title) {
    return '«$title» بېرته ستاسو لیست ته راوګرځېد.';
  }

  @override
  String get newChallenge => 'نوی هدف';

  @override
  String get newAmal => 'نوی عمل';

  @override
  String get editAmal => 'عمل سمول';

  @override
  String get newAmalTitle => 'نوی عمل';

  @override
  String get save => 'خوندي کول';

  @override
  String get cancel => 'لغوه';

  @override
  String get ok => 'سمه ده';

  @override
  String get clear => 'پاکول';

  @override
  String get titleLabel => 'سرلیک';

  @override
  String get titleRequired => 'سرلیک اړین دی';

  @override
  String get titleTooLong => 'سرلیک ډېر اوږد دی';

  @override
  String get frequencyLabel => 'تکرار';

  @override
  String get frequencyDaily => 'ورځنی';

  @override
  String get frequencyWeekly => 'اونیز';

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
  String get categorySunnah => 'سنت';

  @override
  String get timesPerPeriod => 'په هره دوره کې څو ځله';

  @override
  String get custom => 'خپله خوښه';

  @override
  String get customTargetHint => 'لکه ۵۰';

  @override
  String get targetAny => 'هره اندازه';

  @override
  String get targetAnyHelp => 'موخه نشته — په هره اندازه بشپړ ګڼل کېږي';

  @override
  String get dayOfWeek => 'د اونۍ ورځ';

  @override
  String get anyDay => 'هره ورځ';

  @override
  String get anyDayHint => 'هره ورځ (نن ښکاره کېږي، سبا پټېږي)';

  @override
  String onlyDayHint(String day) {
    return 'یوازې $day';
  }

  @override
  String get dateOfMonth => 'د میاشتې نیټه';

  @override
  String get repeatMode => 'د تکرار ډول';

  @override
  String get onSetDays => 'په ټاکلو ورځو کې';

  @override
  String get onSetDates => 'په ټاکلو نیټو کې';

  @override
  String get anyDayMode => 'هره ورځ';

  @override
  String get datesOfMonth => 'نیټې';

  @override
  String get daysPerWeekQuestion => 'په اونۍ کې څو ورځې؟';

  @override
  String get daysPerMonthQuestion => 'په میاشت کې څو ورځې؟';

  @override
  String get pickAtLeastOneDay => 'لږ تر لږه یوه ورځ وټاکئ';

  @override
  String get pickAtLeastOneDate => 'لږ تر لږه یوه نیټه وټاکئ';

  @override
  String get previewDaily => 'هره ورځ تکرار کېږي';

  @override
  String previewWeeklyDays(String days) {
    return 'هره $days تکرار کېږي';
  }

  @override
  String previewWeeklyAny(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ورځې',
      one: 'یوه ورځ',
    );
    return 'په اونۍ کې په خوښه $_temp0 تکرارېږي';
  }

  @override
  String previewMonthlyDates(int count, String dates) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'د هرې میاشتې په $dates نیټو تکرارېږي',
      one: 'د هرې میاشتې په $dates نیټه تکرارېږي',
    );
    return '$_temp0';
  }

  @override
  String previewMonthlyAny(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ورځې',
      one: 'یوه ورځ',
    );
    return 'په میاشت کې په خوښه $_temp0 تکرارېږي';
  }

  @override
  String get anyDate => 'هره نیټه';

  @override
  String get anyDateHint => 'هره نیټه (نن ښکاره کېږي، سبا پټېږي)';

  @override
  String onlyDateHint(String date) {
    return 'یوازې په $date نیټه';
  }

  @override
  String get startPreChecked => 'په نښه شوي حالت پیل';

  @override
  String get startPreCheckedSubtitle =>
      'کله چې نوې دوره پیل شي، دا عمل په خپل سر بشپړ نښه کېږي، تر هغه چې تاسو یې نښه لرې کړئ.';

  @override
  String get reminder => 'یادونه';

  @override
  String get reminderNone => 'هېڅ';

  @override
  String reminderTime(String time) {
    return 'یادونه: $time';
  }

  @override
  String get reminderPermissionWarning =>
      'یادونه خوندي شوه، خو خبرتیاوو ته اجازه نشته. د خبرتیاوو د ترلاسه کولو لپاره یې د سیسټم په تنظیماتو کې فعالې کړئ.';

  @override
  String get settingsReminders => 'یادونې';

  @override
  String get dailyReminder => 'ورځنۍ یادونه';

  @override
  String get dailyReminderSubtitle =>
      'ستاسو د عملونو د تعقیب لپاره یوه نرمه یادونه';

  @override
  String get dailyReminderTimeLabel => 'د یادونې وخت';

  @override
  String get dailyReminderBody =>
      'د نن ورځې د عملونو د تعقیب لپاره یوه شېبه وباسئ.';

  @override
  String get groupByCategory => 'د کټګورۍ له مخې ګروپ کول';

  @override
  String get flatList => 'ساده لیست';

  @override
  String errorGeneric(String error) {
    return 'تېروتنه: $error';
  }

  @override
  String get todayEmptyHint => 'د خپل لومړي عمل د اضافه کولو لپاره + ټک وکړئ.';

  @override
  String get noteLabel => 'یادښت';

  @override
  String get noteHint => 'لکه په جومات کې مې لمونځ وکړ';

  @override
  String get completed => 'بشپړ شو';

  @override
  String get notCompleted => 'نه دی بشپړ شوی';

  @override
  String progressOf(String progress, String target) {
    return 'د $target څخه $progress بشپړ شوي';
  }

  @override
  String progressOpen(String count) {
    return '$count بشپړ شوي';
  }

  @override
  String get removeFromToday => 'د نن څخه لرې کول';

  @override
  String get removeFromTodaySubtitle =>
      'یوازې د نن لپاره پټول. سبا بېرته راځي.';

  @override
  String get removeFromTracking => 'د تعقیب څخه لرې کول';

  @override
  String get removeFromTrackingSubtitle =>
      'له خپل لیست څخه د تل لپاره لرې کول. تاریخچه خوندي پاتې کېږي.';

  @override
  String get chooseIcon => 'آیکن وټاکئ';

  @override
  String get iconNone => 'هېڅ';

  @override
  String get recentlyUsed => 'وروستي کارول شوي';

  @override
  String get emojiSectionGeneral => 'عمومي';

  @override
  String get categoryNameHint => 'نوم';

  @override
  String get categoryNew => '+ نوی';

  @override
  String get categoryNewSheetTitle => 'نوې کټګوري';

  @override
  String get categoryEditSheetTitle => 'کټګوري سمول';

  @override
  String get addAmal => 'عمل اضافه کول';

  @override
  String get customAmal => 'خپل عمل';

  @override
  String get amalTasbih => 'تسبیح ۳۳ ځله';

  @override
  String get amalIstighfar => 'استغفار';

  @override
  String get amalSurahKahf => 'سوره کهف';

  @override
  String get amalSadaqah => 'صدقه';

  @override
  String get amalTahajjud => 'تهجد';

  @override
  String get amalDuha => 'د چاشت لمونځ';

  @override
  String get amalFajr => 'فجر';

  @override
  String get amalDhuhr => 'ظهر';

  @override
  String get amalAsr => 'عصر';

  @override
  String get amalMaghrib => 'مغرب';

  @override
  String get amalIsha => 'عشاء';

  @override
  String get amalMorningAdhkar => 'د سهار اذکار';

  @override
  String get amalEveningAdhkar => 'د ماښام اذکار';

  @override
  String get amalTilawah => 'تلاوت';

  @override
  String get settingsTitle => 'تنظیمات';

  @override
  String settingsLoadError(String error) {
    return 'د تنظیماتو په راوړلو کې ستونزه رامنځته شوه:\n$error';
  }

  @override
  String get sectionDayBoundary => 'د ورځې حد';

  @override
  String get rolloverHour => 'د ورځې بدلون ساعت';

  @override
  String get rolloverAtMidnight => 'ورځ په نیمه شپه پای ته رسېږي.';

  @override
  String rolloverSubtitle(String time) {
    return 'د پرون عملونه تر $time پورې د سمون وړ وي.';
  }

  @override
  String get pickRolloverHour => 'هغه ساعت غوره کړئ چې ورځ پرې بدلېږي';

  @override
  String get sectionWeekMonth => 'اونۍ او میاشت';

  @override
  String get startOfWeek => 'د اونۍ پیل';

  @override
  String get startOfMonth => 'د میاشتې پیل';

  @override
  String get startOfMonthClamped =>
      'له ۲۸مې وروسته ورځې په لنډو میاشتو کې د میاشتې وروستۍ ورځې ته اوړي.';

  @override
  String get sectionAppearance => 'بڼه';

  @override
  String get theme => 'تیم';

  @override
  String get themeSystem => 'سیسټم';

  @override
  String get themeLight => 'روښانه';

  @override
  String get themeDark => 'تیاره';

  @override
  String get sectionLanguage => 'ژبه';

  @override
  String get language => 'ژبه';

  @override
  String get systemDefault => 'د سیسټم له مخې';

  @override
  String get aboutTitle => 'محاسبه';

  @override
  String get aboutSubtitle =>
      'په دیني چارو کې د ځان د محاسبې شخصي ډایري. ټول معلومات په همدې وسیله کې پاتې کېږي.';

  @override
  String get statsTitle => 'احصایې';

  @override
  String statsLoadError(String error) {
    return 'د احصایو په راوړلو کې ستونزه رامنځته شوه:\n$error';
  }

  @override
  String get perAmal => 'د هر عمل';

  @override
  String get thisWeek => 'دا اونۍ';

  @override
  String get thisMonth => 'دا میاشت';

  @override
  String get totalCompletions => 'ټولټال بشپړ شوي';

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
  String get frequencyBadgeWeekly => 'اونیز';

  @override
  String get frequencyBadgeMonthly => 'میاشتنی';

  @override
  String get statsEmpty =>
      'تر اوسه هېڅ عمل نشته. د تعقیب د پیل لپاره د «نن» په برخه کې یو عمل اضافه کړئ.';

  @override
  String get statsToday => 'نن';

  @override
  String get statsThisWeek => 'دا اونۍ';

  @override
  String get statsThisMonth => 'دا میاشت';

  @override
  String get statsAllTime => 'ټوله موده';

  @override
  String get statsCustomRange => 'ټاکلې موده';

  @override
  String get statsAllCategories => 'ټول';

  @override
  String get statsAllAmals => 'ټول';

  @override
  String get statsCompleted => 'بشپړ شوي';

  @override
  String get statsExpected => 'تمه شوي';

  @override
  String get statsVsPrevious => 'د تېرې مودې په پرتله';

  @override
  String get statsByCategory => 'د کټګورۍ له مخې';

  @override
  String get statsPerAmal => 'د هر عمل';

  @override
  String get statsTotalCaption => 'ټولټال';

  @override
  String statsDaysFraction(String done, String expectedText, num expected) {
    String _temp0 = intl.Intl.pluralLogic(
      expected,
      locale: localeName,
      other: 'ورځې',
      one: 'ورځ',
    );
    return '$done/$expectedText $_temp0';
  }

  @override
  String get statsCurrentStreak => 'اوسنۍ لړۍ';

  @override
  String get statsBestStreak => 'غوره لړۍ';

  @override
  String get statsTotalDays => 'ټولې ورځې';

  @override
  String get statsConsistency => 'دوام';

  @override
  String get statsLast5Weeks => 'وروستۍ ۵ اونۍ';

  @override
  String get statsDailyBreakdown => 'ورځنی تفصیل';

  @override
  String get statsCompletionRate => 'د بشپړتیا شرح';

  @override
  String get statsAmountPerDay => 'ورځنۍ اندازه';

  @override
  String statsCountTotal(String count) {
    return 'ټولټال $count';
  }

  @override
  String statsCountAvg(String amount) {
    return 'اوسط $amount/ورځ';
  }

  @override
  String statsCountBest(String count, String day) {
    return 'غوره $count – $day';
  }

  @override
  String get statsFilterTime => 'وخت';

  @override
  String get statsFilterCategory => 'کټګوري';

  @override
  String get statsFilterAmal => 'عمل';

  @override
  String get statsStreaks => 'لړۍ';

  @override
  String get statsSelectDateRange => 'د نیټو موده وټاکئ';

  @override
  String get historyTitle => 'تاریخچه';

  @override
  String get jumpToDate => 'نیټې ته ورتلل';

  @override
  String historyEmptyDay(String date) {
    return 'په $date هېڅ عمل نه دی ثبت شوی';
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
      '«الله تعالی ته تر ټولو خوښ عملونه هغه دي چې په دوام سره وشي، که څه هم لږ وي.»\n— بخاري او مسلم';

  @override
  String get hadith2 =>
      '«کله چې د آدم زوی مړ شي، عمل یې پرې کېږي پرته له دریو شیانو: صدقه جاریه، ګټور علم، یا نېک اولاد چې ورته دعا کوي.»\n— مسلم';

  @override
  String get hadith3 =>
      '«څوک چې دوه سړه لمونځونه (فجر او عصر) وکړي، جنت ته به ننوځي.»\n— بخاري';

  @override
  String get hadith4 =>
      '«الله ستاسو بڼه او شتمنۍ ته نه ګوري، بلکې ستاسو زړونو او عملونو ته ګوري.»\n— مسلم';

  @override
  String get hadith6 =>
      '«اسانی کوئ او سختي مه کوئ، زېری ورکوئ او خلک مه تښتوئ.»\n— بخاري';

  @override
  String get hadith7 =>
      '«څوک چې د علم په لټه کې په یوه لاره روان شي، الله به ورته د جنت لاره اسانه کړي.»\n— مسلم';

  @override
  String get hadith8 => '«صدقه مال نه کموي.»\n— مسلم';

  @override
  String get hadith9 =>
      '«قوي مؤمن له کمزوري مؤمن څخه غوره او الله ته ډېر خوښ دی، او په دواړو کې خیر شته.»\n— مسلم';

  @override
  String get hadith10 =>
      '«څوک چې په ورځ کې سل ځله «سبحان الله وبحمده» ووايي، ګناهونه یې بخښل کېږي که څه هم د سمندر د ځګ په اندازه وي.»\n— بخاري او مسلم';

  @override
  String get hadith12 =>
      '«څوک چې د هر فرض لمانځه وروسته آیت الکرسي ولولي، جنت ته د ننوتو مخه یې له مرګ پرته بل څه نه نیسي.»\n— نسائي';

  @override
  String get hadith13 => '«ښه خبره صدقه ده.»\n— بخاري او مسلم';

  @override
  String get hadith14 =>
      '«څوک چې پر الله او د آخرت پر ورځ ایمان لري، باید ښه خبره وکړي یا چوپ پاتې شي.»\n— بخاري او مسلم';

  @override
  String get hadith15 =>
      '«هغه څوک چې د کونډې او مسکین خیال ساتي، د الله په لاره کې د مجاهد په څېر دی.»\n— بخاري او مسلم';

  @override
  String get hadith16 =>
      '«د خپل ورور په مخ کې ستا موسکا تا ته صدقه ده.»\n— ترمذي';

  @override
  String get hadith17 =>
      '«په تاسو کې غوره هغه څوک دی چې قرآن زده کړي او نورو ته یې وښيي.»\n— بخاري';

  @override
  String get hadith18 =>
      '«هېچا تر هغه خوراک غوره خوراک نه دی خوړلی چې د خپل لاس په کار یې ګټلی وي.»\n— بخاري';

  @override
  String get hadith19 =>
      '«الله نرم دی او په هر کار کې نرمي خوښوي.»\n— بخاري او مسلم';

  @override
  String historyDayCompleted(String completed, String total) {
    return 'د $total څخه $completed بشپړ شوي';
  }

  @override
  String get settingsSchedule => 'مهالویش';

  @override
  String get settingsAppearance => 'بڼه';

  @override
  String get settingsAboutTagline => 'ستاسو ورځنی دیني ملګری';

  @override
  String get settingsRolloverSub => 'ورځ کله له سره پیلېږي';

  @override
  String get settingsAbout => 'د اپلیکیشن په اړه';

  @override
  String get settingsVersion => 'نسخه';

  @override
  String get settingsDeveloper => 'جوړونکی';

  @override
  String get settingsSupport => 'ملاتړ';

  @override
  String get settingsRate => 'اپلیکیشن ته نمره ورکړئ';

  @override
  String get settingsContact => 'له موږ سره اړیکه ونیسئ';

  @override
  String get settingsReportBug => 'د ستونزې راپور ورکړئ';

  @override
  String get settingsRequestFeature => 'د نوې ځانګړنې غوښتنه وکړئ';

  @override
  String settingsSupportFallback(String email) {
    return 'بریښنالیک پرانیستل نه شو. مهرباني وکړئ $email ته بریښنالیک ولېږئ.';
  }

  @override
  String get settingsPrivacyPolicy => 'د محرمیت تګلاره';

  @override
  String get settingsPrivacyOpenFailed => 'د محرمیت تګلاره نه شوه پرانیستل.';

  @override
  String get hadith20 =>
      '«څوک چې د ایمان او د ثواب په هیله د رمضان روژه ونیسي، مخکیني ګناهونه یې بخښل کېږي.»\n— بخاري او مسلم';

  @override
  String get hadith22 => '«د اذان او اقامت ترمنځ دعا رد نه کېږي.»\n— ابو داود';

  @override
  String get hadith23 =>
      '«هر څوک چې د الله لپاره جومات جوړ کړي، الله به ورته په جنت کې کور جوړ کړي.»\n— بخاري او مسلم';

  @override
  String get hadith24 =>
      '«د نارینه وو لپاره غوره صفونه لومړي صفونه دي، او د ښځو لپاره غوره صفونه وروستي صفونه دي.»\n— مسلم';

  @override
  String get hadith25 => '«روژه د دوزخ له اور څخه ډال دی.»\n— نسائي';

  @override
  String get hadith26 =>
      '«هر څوک چې دولس رکعته سنت لمونځ وکړي، ورته به په جنت کې کور جوړ شي.»\n— مسلم';

  @override
  String get hadith27 =>
      '«هغه څوک چې په قرآن کې ماهر وي، له عزتمنو او نېکو پرښتو سره به وي.»\n— بخاري او مسلم';

  @override
  String get hadith29 => '«تر ټولو غوره صدقه اوبه څښول دي.»\n— احمد';

  @override
  String get hadith30 =>
      '«څوک چې له مؤمن څخه یوه سختي لرې کړي، الله به د قیامت په ورځ له هغه څخه یوه سختي لرې کړي.»\n— مسلم';

  @override
  String get hadith32 => '«حیا د ایمان برخه ده.»\n— بخاري او مسلم';

  @override
  String get hadith34 =>
      '«هر څوک چې صبر وکړي، الله به ورته صبر ورکړي.»\n— بخاري او مسلم';

  @override
  String get hadith36 =>
      '«له تاسو څخه هېڅوک تر هغه پوره مؤمن نه شي، تر څو چې خپل ورور ته هغه څه خوښ نه کړي چې ځان ته یې خوښوي.»\n— بخاري او مسلم';

  @override
  String get hadith37 =>
      '«وږي ته خوراک ورکړئ، د ناروغ پوښتنه وکړئ، او بندیان آزاد کړئ.»\n— بخاري';

  @override
  String get hadith38 =>
      '«پیاوړی هغه نه دی چې په غېږ نیولو کې بل وغورځوي، بلکې پیاوړی هغه دی چې د غوسې پر مهال ځان کنټرول کړي.»\n— بخاري او مسلم';

  @override
  String get hadith40 =>
      '«د هر لمانځه وروسته درې دېرش ځله «سبحان الله»، «الحمد لله» او «الله اکبر» ووایئ.»\n— مسلم';

  @override
  String get hadith41 => '«غوره ذکر «لا اله الا الله» دی.»\n— ترمذي';

  @override
  String get hadith42 =>
      '«دوه نعمتونه شته چې ډېری خلک یې ضایع کوي: روغتیا او خالي وخت.»\n— بخاري';

  @override
  String get hadith43 =>
      '«پنځه شیان له پنځو مخکې غنیمت وګڼئ: ځواني له زوړتیا مخکې، روغتیا له ناروغۍ مخکې، شتمني له بې‌وزلۍ مخکې، وزګار وخت له بوختیا مخکې، او ژوند له مرګ مخکې.»\n— حاکم';

  @override
  String get hadith44 =>
      '«څوک چې سوره اخلاص لس ځله ولولي، الله به ورته په جنت کې کور جوړ کړي.»\n— احمد';

  @override
  String get hadith45 =>
      '«له فرض لمونځونو وروسته تر ټولو غوره لمونځ د شپې لمونځ دی.»\n— مسلم';

  @override
  String get hadith46 =>
      '«صدقه ګناهونه داسې مړ کوي لکه اوبه چې اور مړ کوي.»\n— ترمذي';

  @override
  String get hadith47 =>
      '«صله رحمي کوونکی هغه نه دی چې بدله ورکوي، بلکې هغه دی چې کله ترې خپلوي پرې شي، بیا یې هم پالي.»\n— بخاري';

  @override
  String get hadith49 =>
      '«څوک چې خوراک وخوري او ووايي: «ټوله ستاینه هغه الله ته ده چې دا خوراک یې راکړ او زما له ځواک او قوت پرته یې روزي کړ»، مخکیني ګناهونه یې بخښل کېږي.»\n— ترمذي';

  @override
  String get hadith53 =>
      '«هېڅ نېکي مه سپکه ګڼئ، که څه هم دا وي چې له خپل ورور سره په ورین تندي مخ شئ.»\n— مسلم';

  @override
  String get hadith54 =>
      '«ستاسو تر ټولو غوره هغه څوک دی چې له خپلې کورنۍ سره تر ټولو ښه وي.»\n— ترمذي';

  @override
  String get hadith55 =>
      '«څوک چې د شپې د سورة البقرة وروستي دوه آیتونه ولولي، هغه ورته بس دي.»\n— بخاري او مسلم';

  @override
  String get hadith56 =>
      '«دنیا متاع ده، او د دنیا تر ټولو غوره متاع نېکه ښځه ده.»\n— مسلم';

  @override
  String get hadith57 =>
      '«درې دعاګانې نه ردېږي: د روژه دار دعا، د عادل واکمن دعا، او د مظلوم دعا.»\n— ترمذي';

  @override
  String get hadith58 =>
      '«څوک چې پر ما یو ځل درود ووايي، الله به پرې لس ځله رحمت ولېږي.»\n— مسلم';

  @override
  String get hadith65 => '«مؤمن د مؤمن آینه دی.»\n— ابو داود';

  @override
  String get hadith66 =>
      '«رښتیا نېکۍ ته لار ښيي، او نېکي جنت ته لار ښيي.»\n— بخاري او مسلم';

  @override
  String get hadith67 =>
      '«امانت هغه چا ته وسپاره چې تا ته یې سپارلی دی، او له هغه چا سره خیانت مه کوه چې له تا سره یې خیانت کړی وي.»\n— ابو داود او ترمذي';

  @override
  String get hadith68 =>
      '«مسلمان ته هېڅ ستړیا، ناروغي، غم، خپګان، ازار او پرېشاني نه رسېږي، حتی د اغزي چوخېدل هم، مګر دا چې الله په هغې سره د هغه ځینې ګناهونه معاف کړي.»\n— بخاري او مسلم';

  @override
  String get hadith69 =>
      '«د خپل ورور په غیاب کې د مسلمان دعا د هغه لپاره قبلېږي.»\n— مسلم';

  @override
  String get hadith70 =>
      '«څوک چې له الله څخه درې ځله جنت وغواړي، جنت وايي: ای الله، دی جنت ته داخل کړه.»\n— ترمذي';

  @override
  String get hadith71 =>
      '«له رمضان وروسته تر ټولو غوره روژه د الله د میاشتې، محرم، روژه ده.»\n— مسلم';

  @override
  String get hadith72 =>
      '«څوک چې حج وکړي او بې‌حیايي او ګناه ونه کړي، هغه داسې بېرته راګرځي لکه هغه ورځ چې مور زېږولی و.»\n— بخاري او مسلم';

  @override
  String get hadith73 =>
      '«یوه عمره تر بلې عمرې پورې د دواړو ترمنځ ګناهونو کفاره ده.»\n— بخاري او مسلم';

  @override
  String get hadith74 =>
      '«مخکې له دې چې فتنې د تورې شپې د ټوټو په څېر راشي، په نېکو عملونو کې بیړه وکړئ.»\n— مسلم';

  @override
  String get hadith75 =>
      '«د فجر دوه رکعته له دنیا او هر هغه څه چې پکې دي غوره دي.»\n— مسلم';

  @override
  String get hadith77 =>
      '«که تاسو پر الله داسې توکل وکړئ لکه چې د توکل حق یې دی، نو تاسو ته به داسې روزي درکړي لکه مرغانو ته یې چې ورکوي.»\n— ترمذي';

  @override
  String get hadith78 =>
      '«څوک چې د ناروغ پوښتنې ته ورشي، تر بېرته راګرځېدو پورې د جنت د مېوو په ټولولو کې وي.»\n— مسلم';

  @override
  String get hadith79 =>
      '«سلام خپور کړئ، وږو ته خوراک ورکړئ، او د شپې لمونځ وکړئ کله چې خلک ویده وي — په سلامتۍ سره به جنت ته ننوځئ.»\n— ترمذي';

  @override
  String get hadith80 =>
      '«څوک چې د خلکو شکر نه باسي، د الله شکر هم نه باسي.»\n— ترمذي';

  @override
  String get hadith81 =>
      '«حسد یوازې په دوو حالتونو کې روا دی: هغه سړی چې الله ورته مال ورکړی وي او هغه یې په حقه لاره کې لګوي، او هغه سړی چې الله ورته حکمت ورکړی وي او هغه پرې فیصله کوي او نورو ته یې ښيي.»\n— بخاري او مسلم';

  @override
  String get hadith82 =>
      '«انسان د خپل نږدې ملګري پر دین وي، نو هر یو مو دې وګوري چې له چا سره ملګرتیا کوي.»\n— ابو داود او ترمذي';

  @override
  String get hadith85 =>
      '«څوک چې د الله لپاره یو شی پرېږدي، الله به یې ورته په غوره شي بدل کړي.»\n— احمد';

  @override
  String get hadith86 =>
      '«هر څوک چې د مسلمان عیبونه پټ کړي، الله به د قیامت په ورځ د هغه عیبونه پټ کړي.»\n— بخاري او مسلم';

  @override
  String get hadith87 => '«په دنیا کې داسې اوسه لکه پردی یا لاروی.»\n— بخاري';

  @override
  String get hadith88 =>
      '«څوک چې پر یوه کړېدلي اسانتیا وکړي، الله به پر هغه په دنیا او آخرت کې اسانتیا وکړي.»\n— مسلم';

  @override
  String get hadith89 => '«عملونه د نیتونو پورې تړلي دي.»\n— بخاري او مسلم';

  @override
  String get hadith90 =>
      '«له بدګمانۍ څخه ځان ساتئ، ځکه چې بدګماني تر ټولو دروغجنه خبره ده.»\n— بخاري او مسلم';

  @override
  String get hadith93 =>
      '«یوځای خوراک وکړئ او د الله نوم واخلئ، نو ستاسو لپاره به برکت وي.»\n— ابو داود';

  @override
  String get hadith94 =>
      '«هېڅ قوم د الله د ذکر لپاره نه کېني، مګر دا چې پرښتې یې راګیر کړي، رحمت یې ونغاړي، او سکینه پرې نازله شي.»\n— مسلم';

  @override
  String get hadith95 =>
      '«الله بنده ته د بخښنې له امله یوازې عزت ور زیاتوي.»\n— مسلم';

  @override
  String get hadith96 => '«خپل اوښ وتړه بیا په الله توکل وکړه.»\n— ترمذي';

  @override
  String get hadith97 => '«د مؤمن کار عجیب دی — هر څه ورته ښه دي.»\n— مسلم';

  @override
  String get hadith98 =>
      '«مسلمان د مسلمان ورور دی: نه پرې ظلم کوي، نه یې بې‌مرستې پرېږدي، او نه یې سپکوي.»\n— مسلم';

  @override
  String get delete => 'ړنګول';

  @override
  String get remove => 'لرې کول';

  @override
  String get deleteAmalConfirmTitle => 'له تعقیب څخه یې لرې کوئ؟';

  @override
  String deleteAmalConfirmBody(String title) {
    return '«$title» به ستاسو له لیست څخه پټ شي. ستاسو تاریخچه خوندي پاتې کېږي.';
  }

  @override
  String get genericError =>
      'یوه ستونزه رامنځ ته شوه. مهرباني وکړئ بیا هڅه وکړئ.';

  @override
  String get notificationChannelName => 'د عملونو یادونې';

  @override
  String get notificationChannelDescription =>
      'ستاسو د تعقیب شویو عملونو لپاره ورځنۍ یادونې.';

  @override
  String get invalidAmalId => 'د عمل پېژند ناسم دی';

  @override
  String get tutorialSettingsRow => 'محاسبه څنګه وکاروئ';

  @override
  String get tutorialSkip => 'پرېښودل';

  @override
  String get tutorialNext => 'بل';

  @override
  String get tutorialDone => 'بشپړ';

  @override
  String get tutorialTapTitle => 'د بشپړولو لپاره ټک وکړئ';

  @override
  String get tutorialTapBody =>
      'یو ټک عمل د نن لپاره بشپړ نښه کوي. د بېرته اخیستلو لپاره بیا ټک وکړئ.';

  @override
  String get tutorialEditTitle => 'د سمولو لپاره دوه ځله ټک وکړئ';

  @override
  String get tutorialEditBody =>
      'د سمون فورمه پرانیزي — نوم یې بدل کړئ، یا دا بدل کړئ چې څو ځله تکرارېږي.';

  @override
  String get tutorialReorderTitle => 'د ترتیب بدلولو لپاره ګوته پرې ونیسئ';

  @override
  String get tutorialReorderBody =>
      'یوه کرښه ونیسئ، بیا یې راکاږئ. ستاسو ترتیب خوندي کېږي.';

  @override
  String get tutorialRemoveTitle => 'د لرې کولو لپاره یې وښویوئ';

  @override
  String get tutorialRemoveBody =>
      'کرښه څنګ ته وښویوئ چې د نن لپاره پټه شي، یا یې تعقیب ودروئ.';

  @override
  String get tutorialCountTitle => 'د تکرارونو شمېرل';

  @override
  String get tutorialCountBody =>
      'د هغو عملونو لپاره چې موخه یې له یو څخه ډېره ده، د هر تکرار لپاره − او + وکاروئ.';

  @override
  String get tutorialViewTitle => 'ګروپ یا ساده لیست';

  @override
  String get tutorialViewBody =>
      'د کټګورۍ له مخې ګروپ کولو او یوه ساده لیست ترمنځ بدلون وکړئ.';

  @override
  String get tutorialLibraryTitle => 'چمتو عملونه اضافه کړئ';

  @override
  String get tutorialLibraryBody =>
      'د عملونو کتابتون د کټګوریو له مخې وګورئ، بیا یې نن ته د اضافه کولو لپاره + ټک وکړئ.';

  @override
  String get tutorialChallengeLogTitle => 'د نن ورځې د ثبتولو لپاره ټک وکړئ';

  @override
  String get tutorialChallengeLogBody =>
      'یو ټک نن ورځ ثبتوي. په شمېرنیز هدف کې هر ټک یو ګام زیاتوي.';

  @override
  String get tutorialChallengeOpenTitle => 'د پرانیستلو لپاره دوه ځله ټک وکړئ';

  @override
  String get tutorialChallengeOpenBody =>
      'هدف پرانیزي — هره ورځ وګورئ، پاتې شوې ورځ سمه کړئ، یا یې ړنګ کړئ.';

  @override
  String get tutorialChallengeDeleteBody =>
      'د هدف د ړنګولو لپاره کارت څنګ ته وښویوئ.';

  @override
  String get tutorialChallengeAmountTitle => 'د دقیقې اندازې ثبتول';

  @override
  String get tutorialChallengeAmountBody =>
      'د بدلون لپاره − او + وکاروئ، یا په شمېره ټک وکړئ او دقیقه اندازه ولیکئ.';

  @override
  String get challengeOpenDetailsAction => 'د هدف توضیحات پرانیستل';

  @override
  String get challengesActive => 'روان';

  @override
  String get challengesPast => 'پخواني';

  @override
  String challengeJustFinished(int count, String title) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count هدفونه پای ته ورسېدل — وروستی یې $title',
      one: '$title پای ته ورسېد',
    );
    return '$_temp0';
  }

  @override
  String get challengeSectionEnded => 'پای ته رسېدلي';

  @override
  String get challengesPastEmpty => 'تر اوسه څه نه دي پای ته رسېدلي.';

  @override
  String get challengesEmptyTitle => 'تر اوسه هېڅ هدف نشته';

  @override
  String get challengesEmptyBody =>
      'د ځان لپاره یو هدف وټاکئ — لکه په ۷ ورځو کې ۲۰ رکعته — او دلته یې تعقیب کړئ.';

  @override
  String get editChallenge => 'هدف سمول';

  @override
  String get deleteChallenge => 'هدف ړنګول';

  @override
  String get deleteChallengeConfirm =>
      'دا هدف او د هغه ټول ثبت شوی پرمختګ ړنګ کړئ؟';

  @override
  String get challengeShapeQuestion => 'دا څه ډول هدف دی؟';

  @override
  String get challengeShapeTotal => 'یوې ټولې اندازې ته رسېدل';

  @override
  String get challengeShapeTotalBody =>
      '۱۰۰۰ درود، ۳۰ جزء. اندازې ثبتوئ او مجموعه زیاتېږي.';

  @override
  String get challengeShapeStreak => 'ورځ په ورځ لړۍ';

  @override
  String get challengeShapeStreakBody =>
      'تهجد، د فجر لمونځ په جماعت. په ورځ کې یوه نښه، اندازه مهمه نه ده.';

  @override
  String get challengeTargetLabel => 'موخه';

  @override
  String get challengeTargetRequired => 'له صفر څخه لوړه موخه ولیکئ';

  @override
  String get challengeUnitLabel => 'واحد (اختیاري)';

  @override
  String get challengeUnitHint => 'رکعت، مخ، ځل';

  @override
  String get challengeOneTapAdds => 'یو ټک زیاتوي';

  @override
  String get challengeHowManyDays => 'څو ورځې؟';

  @override
  String get challengeReachHowMuch => 'څومره ته ورسېږئ؟';

  @override
  String get challengeSpreadOver => 'موده';

  @override
  String get challengeSpreadEveryDay => 'هره ورځ';

  @override
  String get challengeSpreadLonger => 'اوږده موده';

  @override
  String get challengeByWhen => 'تر کله؟';

  @override
  String get challengeWindowDuration => 'ټاکلې موده';

  @override
  String get challengeByDate => 'تر ټاکلې نیټې';

  @override
  String challengePlanRange(String start, String end) {
    return 'له $start څخه تر $end';
  }

  @override
  String challengePlanExact(String start, String end) {
    return 'له $start څخه تر $end – په ورځ کې یو، هره ورځ';
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
    return 'له $start څخه تر $end – له $window ورځو $target – $slack یې پرېښودلای شئ';
  }

  @override
  String challengePlanRate(String start, String end, String rate) {
    return 'له $start څخه تر $end – په ورځ کې نږدې $rate';
  }

  @override
  String challengePlanOpen(String start) {
    return 'پیل: $start – د وخت حد نشته';
  }

  @override
  String challengeTooTight(
    String target,
    String window,
    num targetCount,
    num windowCount,
  ) {
    return '$target ورځې په $window ورځو کې نه ځایېږي — لړۍ هره ورځ یوازې یوه شمېري.';
  }

  @override
  String challengeDurationLabel(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ورځې',
      one: 'یوه ورځ',
    );
    return '$_temp0';
  }

  @override
  String get challengeStartDate => 'پیل';

  @override
  String get challengeEndDate => 'پای';

  @override
  String challengeProgressCount(String done, String target, String unit) {
    return 'د $target $unit څخه $done';
  }

  @override
  String challengeProgressPlain(String done, String target) {
    return 'د $target څخه $done';
  }

  @override
  String challengeProgressDays(String done, String target) {
    return 'د $target ورځو څخه $done';
  }

  @override
  String challengeDaysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ورځې پاتې',
      one: 'یوه ورځ پاتې',
    );
    return '$_temp0';
  }

  @override
  String get challengeNoDeadline => 'د وخت حد نشته';

  @override
  String challengeOnTrack(String rate) {
    return 'سم روان – $rate/ورځ';
  }

  @override
  String challengeBehind(String rate) {
    return 'وروسته پاتې – د بشپړولو لپاره $rate/ورځ';
  }

  @override
  String challengeLastDay(String remaining) {
    return 'وروستۍ ورځ – $remaining پاتې';
  }

  @override
  String get challengeReached => 'موخه ترلاسه شوه';

  @override
  String get challengeCompleted => 'بشپړ';

  @override
  String challengeEnded(String done, String target) {
    return 'پای – $done/$target';
  }

  @override
  String get challengeExpiredTitle => 'هدف پای ته ورسېد';

  @override
  String challengeExpiredBody(String title, String done, String target) {
    return '$title پای ته ورسېد: له $target څخه $done.';
  }

  @override
  String get challengeExtend => 'وخت اوږدول';

  @override
  String get challengeRestart => 'بیا پیل کړئ';

  @override
  String get challengeArchive => 'آرشیف کول';

  @override
  String get challengeDailyBreakdown => 'ورځنی ریکارډ';

  @override
  String challengeNudgeBody(String title, String rate) {
    return '$title: د وخت په سر د بشپړولو لپاره په ورځ کې $rate.';
  }

  @override
  String challengeLastDayBody(String title, String remaining) {
    return '$title: وروستۍ ورځ – $remaining پاتې.';
  }

  @override
  String get challengeGroupGoal => 'هدف';

  @override
  String get challengeGroupShape => 'ډول';

  @override
  String get challengeGroupPlan => 'پلان';

  @override
  String get challengeGroupReminders => 'یادونې';

  @override
  String get challengeStartFromTemplate => 'له یوې بېلګې پیل وکړئ';

  @override
  String get challengeTemplateBlank => 'خالي';

  @override
  String get challengePreview => 'مخکتنه';

  @override
  String get challengeTmplTahajjud => '۴۰ شپې تهجد';

  @override
  String get challengeTmplSalawat => '۱۰۰۰ درود';

  @override
  String get challengeTmplKhatm => 'په ۳۰ ورځو کې د قرآن ختم';

  @override
  String get challengeTmplFajrJamaah => '۳۰ ورځې فجر په جماعت کې';

  @override
  String get challengeTmplSadaqah => '۳۰ ورځې صدقه';

  @override
  String get listSeparator => ' – ';

  @override
  String get tierRafiq => 'رفیق';

  @override
  String get tierNasir => 'ناصر';

  @override
  String get tierMuhsin => 'محسن';

  @override
  String get tierAnsar => 'انصار';

  @override
  String get tierRafiqMeaning => '';

  @override
  String get tierNasirMeaning => '';

  @override
  String get tierMuhsinMeaning => '';

  @override
  String get tierAnsarMeaning => '';

  @override
  String get supportCardBody =>
      'وړیا دی، نه اعلانونه لري او نه حساب ته اړتیا. که وغواړئ، د یوې ډالۍ په ورکولو سره یې د پراختیا ملاتړ کولی شئ — هره اندازه، هر وخت چې مو زړه وي.';

  @override
  String get supportCta => 'د محاسبه اپلیکیشن ملاتړ وکړئ';

  @override
  String get supportAgain => 'بیا ملاتړ وکړئ';

  @override
  String get supporterThanks =>
      'جزاکم الله خیراً — ان شاء الله محاسبه به وړیا او بې اعلانه پاتې شي.';

  @override
  String supporterSince(String tier, String month) {
    return 'له $month راهیسې $tier';
  }

  @override
  String get supportPromptTitle => 'د محاسبه اپلیکیشن ملاتړ وکړئ';

  @override
  String get supportPromptBody =>
      'محاسبه وړیا اپلیکیشن دی، نه اعلانونه لري او نه حساب ته اړتیا. که وغواړئ، د یوې ډالۍ په ورکولو سره یې د پراختیا ملاتړ کولی شئ — هره اندازه، هر وخت چې مو زړه وي. هېڅ شی د دې ملاتړ پورې تړلی نه دی.';

  @override
  String get supportPromptNow => 'اوس ملاتړ وکړئ';

  @override
  String get supportPromptLater => 'وروسته راته یادونه وکړئ';

  @override
  String get supportPromptNever => 'بیا مه پوښتئ';

  @override
  String get tipSheetTitle => 'د محاسبه اپلیکیشن ملاتړ وکړئ';

  @override
  String get tipSheetBody =>
      'هره اندازه چې غواړئ وټاکئ، هر څو ځله چې غواړئ. دا پیسې د اپلیکیشن په ساتنه لګېږي — ان شاء الله وړیا او بې اعلانه پاتې کېږي. د مننې په توګه، په تنظیماتو کې به د ملاتړي په توګه وښودل شئ.';

  @override
  String tipSheetSupporterLine(String tier) {
    return '$tier — جزاکم الله خیراً.';
  }

  @override
  String get tipSheetSupporterAgain => 'هر وخت چې وغواړئ بیا ملاتړ کولی شئ.';

  @override
  String tipSheetStoreNote(String store) {
    return 'تادیه د $store له لارې کېږي — موږ ستاسو د تادیې معلومات هېڅکله نه وینو.';
  }

  @override
  String get tipSheetOtherWays => 'داسې انتخاب نه وینئ چې تاسو ته مناسب وي؟';

  @override
  String get tipSheetWriteToUs => 'موږ ته ولیکئ';

  @override
  String get supportEmailBody =>
      'السلام علیکم،\n\nغواړم د محاسبه اپلیکیشن له پراختیا سره مستقیمه مرسته وکړم.\n\nهیواد:\nد لېږلو لاره:\nاندازه (اختیاري):';

  @override
  String tipBusy(String store) {
    return '$store پرانیستل کېږي…';
  }

  @override
  String get tipThanks => 'جزاکم الله خیراً — الله دې درنه قبوله کړي.';

  @override
  String get tipDone => 'بشپړ';

  @override
  String get tipFailed => 'پیرود بشپړ نه شو. هېڅ پیسې نه دي اخیستل شوې.';

  @override
  String tipPending(String store) {
    return 'ستاسو تادیه لا هم په $store کې د تایید په تمه ده — د تایید سره سم به ستاسو نښه ورزیاته شي.';
  }

  @override
  String get tipUnavailable => 'پیرود اوس مهال په دې وسیله کې شتون نه لري.';

  @override
  String get optionSetJamaa => 'جماعت';

  @override
  String get optionJamaaAlone => 'یوازې';

  @override
  String get optionJamaaHome => 'په کور کې جماعت';

  @override
  String get optionJamaaMasjid => 'په جومات کې جماعت';

  @override
  String get optionSetOnTime => 'په وخت';

  @override
  String get optionOnTimeOnTime => 'په خپل وخت';

  @override
  String get optionOnTimeLate => 'ناوخته';

  @override
  String get optionOnTimeQada => 'قضا';

  @override
  String get optionSetQuranSession => 'د قرآن ناسته';

  @override
  String get optionQuranRecited => 'تلاوت';

  @override
  String get optionQuranMemorised => 'حفظ';

  @override
  String get optionQuranMeaning => 'له ژباړې سره';

  @override
  String get optionQuranListened => 'اورېدل';

  @override
  String get optionSetSadaqahType => 'د صدقې ډول';

  @override
  String get optionSadaqahMoney => 'پیسې';

  @override
  String get optionSadaqahFood => 'خواړه';

  @override
  String get optionSadaqahTime => 'وخت';

  @override
  String get optionSadaqahOther => 'نور';

  @override
  String get optionSetIntensity => 'کچه';

  @override
  String get optionIntensityLight => 'سپک';

  @override
  String get optionIntensityModerate => 'منځنی';

  @override
  String get optionIntensityIntense => 'سخت';

  @override
  String get optionSetNewTitle => 'د انتخابونو نوې ټولګه';

  @override
  String get optionSetEditTitle => 'د انتخابونو ټولګه سمول';

  @override
  String get optionSetNameLabel => 'د ټولګې نوم';

  @override
  String get optionSetNameHint => 'لکه جماعت';

  @override
  String get optionsLabel => 'انتخابونه';

  @override
  String get optionAdd => 'انتخاب اضافه کول';

  @override
  String optionHint(int index) {
    return 'انتخاب $index';
  }

  @override
  String optionsMaxReached(int max) {
    return 'تر ټولو ډېر $max انتخابونه کېدای شي.';
  }

  @override
  String get optionSetPreviewLabel => 'مخکتنه — د نن کرښه';

  @override
  String optionSetKeptForHistory(String labels) {
    return 'د تاریخچې لپاره ساتل شوي: $labels';
  }

  @override
  String get optionSetDelete => 'ټولګه ړنګول';

  @override
  String get optionSetDeleteConfirm =>
      'هغه عملونه چې دا ټولګه کاروي، نور انتخابونه نه ښيي. هغه ورځې چې مخکې مو ثبت کړې، انتخاب یې ساتل کېږي.';

  @override
  String get optionSetNameRequired => 'ټولګې ته نوم ورکړئ';

  @override
  String get optionsMinRequired => 'لږ تر لږه دوه انتخابونه اضافه کړئ';

  @override
  String get optionSetNameTooLong => 'د ټولګې نوم ډېر اوږد دی';

  @override
  String optionTooLong(int index) {
    return 'انتخاب $index ډېر اوږد دی';
  }

  @override
  String get optionSetNone => 'هېڅ';

  @override
  String get optionSetNew => 'نوې ټولګه';

  @override
  String get requireChoiceLabel => 'انتخاب اړین دی';

  @override
  String get requireChoiceHelp => 'تر څو انتخاب ونه ټاکل شي، کرښه نه بشپړېږي';

  @override
  String get requireChoicePickSetFirst => 'لومړی یوه ټولګه وټاکئ';

  @override
  String get requireChoiceCountHelp =>
      'شمېرل کېدونکي عملونه په شمېرونکي بشپړېږي';

  @override
  String get optionPreviewCaption =>
      'هره ورځ به په «نن» کې له دې څخه یو وټاکئ:';

  @override
  String optionsUsedOf(int used, int max) {
    return 'له $max څخه $used انتخابونه کارول شوي.';
  }

  @override
  String get choiceNeeded => 'انتخاب اړین دی';

  @override
  String optionSelected(String label) {
    return '$label، ټاکل شوی';
  }

  @override
  String optionNotSelected(String label) {
    return '$label، نه دی ټاکل شوی';
  }

  @override
  String optionBreakdownTitle(String set) {
    return 'د انتخابونو ویش — $set';
  }

  @override
  String optionBreakdownCaption(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ځله',
      one: 'یو ځل',
    );
    return 'د هغو $_temp0 ونډه چې انتخاب پکې ثبت شوی';
  }

  @override
  String optionNoChoiceRecorded(int none, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other: '$total بشپړو ورځو',
      one: 'یوې بشپړې ورځې',
    );
    return 'انتخاب نه دی ثبت شوی — له $_temp0 څخه $none';
  }

  @override
  String get optionRemovedSuffix => 'لرې شوی';

  @override
  String get optionAllAmals => 'ټول';

  @override
  String optionScopedCaption(String amal, int count) {
    return '$amal – $count ثبت شوي';
  }

  @override
  String get optionBreakdownSectionTitle => 'د انتخابونو ویش';

  @override
  String optionBreakdownSwipeHint(int count) {
    return '$count ټولګې – وښویوئ';
  }

  @override
  String get optionDetailEmpty =>
      'د دې ټولګې لپاره تر اوسه هېڅ انتخاب نه دی ثبت شوی.';

  @override
  String get optionDetailTrendHeading => 'د وخت په تېرېدو سره بدلون';

  @override
  String optionDetailTrendReadout(String option, String from, String to) {
    return 'د $option ونډه د لومړۍ او وروستۍ اونۍ تر منځ له $from څخه $to ته ورسېده.';
  }

  @override
  String get optionDetailByAmalHeading => 'د عمل له مخې';

  @override
  String optionDetailByAmalReadout(
    String best,
    String bestShare,
    String worst,
    String worstShare,
  ) {
    return 'تر ټولو لوړه ونډه: $best ($bestShare)؛ تر ټولو ټیټه: $worst ($worstShare).';
  }

  @override
  String get optionDetailRecordsHeading => 'ریکارډونه';

  @override
  String get optionDetailLongestRun => 'تر ټولو اوږده لړۍ';

  @override
  String get optionDetailBestWeek => 'غوره اونۍ';

  @override
  String get optionDetailCurrentRun => 'اوسنۍ لړۍ';

  @override
  String get optionDetailRecordsCaption =>
      'د تېر یو کال پر بنسټ محاسبه شوي او له پورته ټاکل شوې مودې څخه خپلواک دي.';

  @override
  String get optionDetailRecentDaysHeading => 'وروستۍ ورځې';

  @override
  String optionDetailRecentDaysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'وروستۍ $count ورځې',
      one: 'وروستۍ یوه ورځ',
    );
    return '$_temp0';
  }

  @override
  String get amalFivePrayers => 'پنځه وخته لمونځ';

  @override
  String get amalJumuah => 'د جمعې لمونځ';

  @override
  String get amalWitr => 'وتر';

  @override
  String get amalQada => 'قضا لمونځونه';

  @override
  String get amalFajrSunnah => 'د فجر سنت';

  @override
  String get amalDhuhrSunnah => 'د ظهر سنت';

  @override
  String get amalAsrSunnah => 'د عصر سنت';

  @override
  String get amalMaghribSunnah => 'د مغرب سنت';

  @override
  String get amalIshaSunnah => 'د عشاء سنت';

  @override
  String get amalRawatib => 'مؤکده سنتونه';

  @override
  String get amalSiwak => 'مسواک';

  @override
  String get amalWuduSleep => 'له خوب مخکې اودس';

  @override
  String get amalFridayGhusl => 'د جمعې غسل';

  @override
  String get amalIshraq => 'د اشراق لمونځ';

  @override
  String get amalWuduPrayer => 'له اودس وروسته دوه رکعته';

  @override
  String get amalTahiyyah => 'تحیة المسجد';

  @override
  String get amalEarlyJumuah => 'جمعې ته وختي تلل';

  @override
  String get amalAfterSalah => 'له لمانځه وروسته اذکار';

  @override
  String get amalAfterFajr => 'له فجر وروسته اذکار';

  @override
  String get amalAfterDhuhr => 'له ظهر وروسته اذکار';

  @override
  String get amalAfterAsr => 'له عصر وروسته اذکار';

  @override
  String get amalAfterMaghrib => 'له مغرب وروسته اذکار';

  @override
  String get amalAfterIsha => 'له عشاء وروسته اذکار';

  @override
  String get amalAyatKursi => 'آیت الکرسي';

  @override
  String get amalKursiFajr => 'له فجر وروسته آیت الکرسي';

  @override
  String get amalKursiDhuhr => 'له ظهر وروسته آیت الکرسي';

  @override
  String get amalKursiAsr => 'له عصر وروسته آیت الکرسي';

  @override
  String get amalKursiMaghrib => 'له مغرب وروسته آیت الکرسي';

  @override
  String get amalKursiIsha => 'له عشاء وروسته آیت الکرسي';

  @override
  String get amalSayyidIstighfar => 'سید الاستغفار';

  @override
  String get amalSalawat => 'درود شریف';

  @override
  String get amalSubhanallah => 'سبحان الله وبحمده';

  @override
  String get amalTahlil => 'لا اله الا الله';

  @override
  String get amalBedtimeAdhkar => 'د خوب اذکار';

  @override
  String get amalFridaySalawat => 'د جمعې په ورځ درود';

  @override
  String get amalHawqala => 'لا حول ولا قوة الا بالله';

  @override
  String get amalTasbihFatimah => 'د فاطمې تسبیح';

  @override
  String get amalWakingAdhkar => 'د راویښېدو اذکار';

  @override
  String get amalDuaAdhan => 'له اذان وروسته دعا';

  @override
  String get amalDuaIqamah => 'د اذان او اقامت ترمنځ دعا';

  @override
  String get amalDuaSujood => 'په سجده کې دعا';

  @override
  String get amalDuaParents => 'د مور او پلار لپاره دعا';

  @override
  String get amalDuaOthers => 'د نورو لپاره دعا';

  @override
  String get amalFridayHour => 'د جمعې په وروستي ساعت کې دعا';

  @override
  String get amalLastThird => 'د شپې په وروستۍ برخه کې دعا';

  @override
  String get amalMulk => 'سوره ملک';

  @override
  String get amalBaqarahEnd => 'د سوره بقرې وروستي دوه آیتونه';

  @override
  String get amalSajdah => 'سوره سجده';

  @override
  String get amalQuls => 'درې قل';

  @override
  String get amalYasin => 'سوره یس';

  @override
  String get amalWaqiah => 'سوره واقعه';

  @override
  String get amalHifz => 'د قرآن حفظ';

  @override
  String get amalMurajaah => 'د حفظ تکرار';

  @override
  String get amalTafsir => 'تفسیر';

  @override
  String get amalListenQuran => 'قرآن اورېدل';

  @override
  String get amalTeachQuran => 'قرآن ښوول';

  @override
  String get amalMonThu => 'د دوشنبې او پنجشنبې روژه';

  @override
  String get amalThreeDays => 'په میاشت کې درې روژې';

  @override
  String get amalDailySadaqah => 'ورځنۍ صدقه';

  @override
  String get amalFeed => 'چا ته ډوډۍ ورکول';

  @override
  String get amalHelpNeed => 'له اړمن سره مرسته';

  @override
  String get amalOrphan => 'د یتیم پالنه';

  @override
  String get amalGiveWater => 'اوبه ورکول';

  @override
  String get amalLearnHadith => 'یو حدیث زده کول';

  @override
  String get amalReadBook => 'د اسلامي کتاب لوستل';

  @override
  String get amalSeerah => 'د سیرت مطالعه';

  @override
  String get amalClass => 'په درس کې ګډون';

  @override
  String get amalArabic => 'عربي زده کول';

  @override
  String get amalLearnDua => 'نوې دعا زده کول';

  @override
  String get amalShare => 'زده کړې نورو ته رسول';

  @override
  String get amalFiqh => 'د فقهې مطالعه';

  @override
  String get amalMuhasaba => 'د شپې محاسبه';

  @override
  String get amalSpeakGood => 'ښه ویل یا چوپ پاتې کېدل';

  @override
  String get amalNoBackbiting => 'له غیبت ډډه';

  @override
  String get amalAnger => 'د غوسې کنټرول';

  @override
  String get amalGaze => 'سترګې ټیټې ساتل';

  @override
  String get amalTruthful => 'رښتیا ویل';

  @override
  String get amalSmile => 'موسکا';

  @override
  String get amalSalam => 'سلام عامول';

  @override
  String get amalForgive => 'د نورو بخښل';

  @override
  String get amalGratitude => 'شکر';

  @override
  String get amalVisitSick => 'د ناروغ پوښتنه';

  @override
  String get amalNeighbours => 'له ګاونډیانو سره ښه چلند';

  @override
  String get amalRemoveHarm => 'له لارې ځورونکی شی لرې کول';

  @override
  String get amalParents => 'له مور او پلار سره نېکي';

  @override
  String get amalFamilyTies => 'صله رحمي';

  @override
  String get amalHelpHome => 'د کور په کارونو کې مرسته';

  @override
  String get amalTeachChildren => 'ماشومانو ته دین ښوول';

  @override
  String get amalSpouse => 'له ژوند ملګري سره ښه چلند';

  @override
  String get categoryDua => 'دعا';

  @override
  String get categoryFasting => 'روژه';

  @override
  String get categoryKnowledge => 'علم';

  @override
  String get categoryCharacter => 'اخلاق';

  @override
  String get categoryFamily => 'کورنۍ';

  @override
  String get libraryTitle => 'د عملونو کتابتون';

  @override
  String get librarySearchHint => 'عملونه ولټوئ';

  @override
  String get libraryAll => 'ټول';

  @override
  String get libraryAdded => 'نن ته اضافه شو';

  @override
  String libraryAddedShowsOn(String days) {
    return 'اضافه شو – په $days ښکاري';
  }

  @override
  String libraryNoMatch(String query) {
    return 'له «$query» سره سم عمل ونه موندل شو';
  }

  @override
  String libraryCreateNamed(String query) {
    return '«$query» جوړ کړئ';
  }

  @override
  String get libraryPickBanner => 'د عملونو له کتابتون څخه غوره کړئ';

  @override
  String libraryPickBannerSubtitle(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countText چمتو عملونه',
      one: '$countText چمتو عمل',
    );
    return '$_temp0';
  }

  @override
  String get libraryFilledIn => 'د عملونو له کتابتون څخه ډک شو';

  @override
  String get libraryChange => 'بدلول';

  @override
  String get libraryEditAction => 'سمول';

  @override
  String libraryWeeklyAny(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'په اونۍ کې $countText ورځې',
      one: 'په اونۍ کې یو ځل',
    );
    return '$_temp0';
  }

  @override
  String libraryMonthlyAny(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'په میاشت کې $countText ورځې',
      one: 'په میاشت کې یو ځل',
    );
    return '$_temp0';
  }

  @override
  String libraryTimes(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countText ځله',
    );
    return '$_temp0';
  }

  @override
  String get libraryAnyAmount => 'هره اندازه';

  @override
  String libraryAddTooltip(String title) {
    return '$title اضافه کړئ';
  }

  @override
  String get libraryOnList => 'ستاسو په لیست کې دی';

  @override
  String get todayEmptyBrowse => 'د عملونو کتابتون وګورئ';
}
