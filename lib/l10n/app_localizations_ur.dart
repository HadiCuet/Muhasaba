// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Urdu (`ur`).
class AppLocalizationsUr extends AppLocalizations {
  AppLocalizationsUr([String locale = 'ur']) : super(locale);

  @override
  String get appTitle => 'Muhasaba';

  @override
  String get tabToday => 'آج';

  @override
  String get tabStats => 'اعداد و شمار';

  @override
  String get tabHistory => 'تاریخچہ';

  @override
  String get tabSettings => 'ترتیبات';

  @override
  String get newAmal => 'نیا عمل';

  @override
  String get editAmal => 'عمل میں ترمیم';

  @override
  String get newAmalTitle => 'نیا عمل';

  @override
  String get save => 'محفوظ کریں';

  @override
  String get cancel => 'منسوخ';

  @override
  String get clear => 'صاف کریں';

  @override
  String get titleLabel => 'عنوان';

  @override
  String get titleRequired => 'عنوان ضروری ہے';

  @override
  String get titleTooLong => 'عنوان بہت طویل ہے';

  @override
  String get frequencyLabel => 'تکرار';

  @override
  String get frequencyDaily => 'روزانہ';

  @override
  String get frequencyWeekly => 'ہفتہ وار';

  @override
  String get frequencyMonthly => 'ماہانہ';

  @override
  String get categoryLabel => 'زمرہ';

  @override
  String get categoryOther => 'دیگر';

  @override
  String get categorySalah => 'نماز';

  @override
  String get categoryDhikr => 'ذکر';

  @override
  String get categoryQuran => 'قرآن';

  @override
  String get categoryCharity => 'صدقہ';

  @override
  String get timesPerPeriod => 'مدت میں مرتبہ';

  @override
  String get custom => 'اپنی مرضی';

  @override
  String get customTargetHint => 'مثلاً 50';

  @override
  String get dayOfWeek => 'ہفتے کا دن';

  @override
  String get anyDay => 'کوئی بھی';

  @override
  String get anyDayHint => 'کوئی بھی دن (آج نظر آئے گا، اگلے دن چھپ جائے گا)';

  @override
  String onlyDayHint(String day) {
    return 'صرف $day';
  }

  @override
  String get dateOfMonth => 'مہینے کی تاریخ';

  @override
  String get anyDate => 'کوئی بھی';

  @override
  String get anyDateHint =>
      'کوئی بھی تاریخ (آج نظر آئے گی، اگلے دن چھپ جائے گی)';

  @override
  String onlyDateHint(String date) {
    return 'صرف $date کو';
  }

  @override
  String get startPreChecked => 'پہلے سے نشان زد';

  @override
  String get startPreCheckedSubtitle =>
      'جب نئی مدت شروع ہو تو یہ عمل بطور پیش فرض مکمل نشان زد ہوتا ہے جب تک آپ اسے غیر نشان زد نہ کریں۔';

  @override
  String get reminder => 'یاد دہانی';

  @override
  String get reminderNone => 'کوئی نہیں';

  @override
  String reminderTime(String time) {
    return 'یاد دہانی: $time';
  }

  @override
  String get reminderPermissionWarning =>
      'یاد دہانی محفوظ ہو گئی، لیکن اطلاعات کی اجازت نہیں ہے۔ الرٹ حاصل کرنے کے لیے سسٹم ترتیبات سے انہیں فعال کریں۔';

  @override
  String get groupByCategory => 'زمرے کے مطابق';

  @override
  String get flatList => 'سادہ فہرست';

  @override
  String errorGeneric(String error) {
    return 'خرابی: $error';
  }

  @override
  String get todayEmptyHint => 'اپنا پہلا عمل شامل کرنے کے لیے + دبائیں۔';

  @override
  String get noteLabel => 'نوٹ';

  @override
  String get noteHint => 'مثلاً مسجد میں نماز پڑھی';

  @override
  String get completed => 'مکمل';

  @override
  String get notCompleted => 'نامکمل';

  @override
  String progressOf(int progress, int target) {
    return '$target میں سے $progress مکمل';
  }

  @override
  String get removeFromToday => 'آج سے ہٹائیں';

  @override
  String get removeFromTodaySubtitle =>
      'صرف آج کے لیے چھپائیں۔ کل واپس آ جائے گا۔';

  @override
  String get removeFromTracking => 'ٹریکنگ سے ہٹائیں';

  @override
  String get removeFromTrackingSubtitle =>
      'اپنی فہرست سے مستقل طور پر ہٹائیں۔ تاریخچہ محفوظ رہے گا۔';

  @override
  String get chooseIcon => 'آئیکن منتخب کریں';

  @override
  String get iconNone => 'کوئی نہیں';

  @override
  String get recentlyUsed => 'حال ہی میں استعمال شدہ';

  @override
  String get emojiSectionGeneral => 'عمومی';

  @override
  String get categoryNameHint => 'نام';

  @override
  String get categoryNew => '+ نیا';

  @override
  String get categoryNewSheetTitle => 'نئی قسم';

  @override
  String get categoryEditSheetTitle => 'قسم میں ترمیم کریں';

  @override
  String get addAmal => 'عمل شامل کریں';

  @override
  String get customAmal => 'اپنی مرضی کا عمل';

  @override
  String get templateTasbih => 'تسبیح 33 مرتبہ';

  @override
  String get templateIstighfar => 'استغفار 100 مرتبہ';

  @override
  String get templateSurahKahf => 'سورۃ الکہف';

  @override
  String get templateSadaqah => 'صدقہ';

  @override
  String get templateTahajjud => 'تہجد';

  @override
  String get templateDuhaPrayer => 'نماز چاشت';

  @override
  String get settingsTitle => 'ترتیبات';

  @override
  String settingsLoadError(String error) {
    return 'ترتیبات لوڈ کرنے میں ناکامی:\n$error';
  }

  @override
  String get sectionDayBoundary => 'دن کی حد';

  @override
  String get rolloverHour => 'دن تبدیل ہونے کا وقت';

  @override
  String get rolloverAtMidnight => 'آج آدھی رات کو ختم ہوتا ہے۔';

  @override
  String rolloverSubtitle(String time) {
    return 'گزشتہ کل کے اعمال $time تک قابل ترمیم رہیں گے۔';
  }

  @override
  String get pickRolloverHour => 'دن تبدیل ہونے کا وقت منتخب کریں';

  @override
  String get sectionWeekMonth => 'ہفتہ اور مہینہ';

  @override
  String get startOfWeek => 'ہفتے کا آغاز';

  @override
  String get startOfMonth => 'مہینے کا آغاز';

  @override
  String get startOfMonthClamped =>
      '28 سے زیادہ کی تاریخیں چھوٹے مہینوں کے آخری دن پر محدود ہو جاتی ہیں۔';

  @override
  String get sectionAppearance => 'ظاہری شکل';

  @override
  String get theme => 'تھیم';

  @override
  String get themeSystem => 'سسٹم';

  @override
  String get themeLight => 'روشن';

  @override
  String get themeDark => 'تاریک';

  @override
  String get sectionLanguage => 'زبان';

  @override
  String get language => 'زبان';

  @override
  String get systemDefault => 'سسٹم کی طے شدہ';

  @override
  String get aboutTitle => 'Muhasaba';

  @override
  String get aboutSubtitle =>
      'ایک ذاتی دینی احتساب کی ڈائری۔ تمام ڈیٹا اس آلے پر محفوظ رہتا ہے۔';

  @override
  String get statsTitle => 'اعداد و شمار';

  @override
  String statsLoadError(String error) {
    return 'اعداد و شمار لوڈ کرنے میں ناکامی:\n$error';
  }

  @override
  String get perAmal => 'فی عمل';

  @override
  String get thisWeek => 'اس ہفتے';

  @override
  String get thisMonth => 'اس مہینے';

  @override
  String get totalCompletions => 'کل تکمیلات';

  @override
  String get streakCurrent => 'موجودہ';

  @override
  String get streakLongest => 'طویل ترین';

  @override
  String get ratioWeek => 'ہفتہ';

  @override
  String get ratioMonth => 'مہینہ';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'دن',
      one: 'دن',
    );
    return '$_temp0';
  }

  @override
  String streakWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ہفتے',
      one: 'ہفتہ',
    );
    return '$_temp0';
  }

  @override
  String streakMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'مہینے',
      one: 'مہینہ',
    );
    return '$_temp0';
  }

  @override
  String get frequencyBadgeDaily => 'روزانہ';

  @override
  String get frequencyBadgeWeekly => 'ہفتہ وار';

  @override
  String get frequencyBadgeMonthly => 'ماہانہ';

  @override
  String get statsEmpty =>
      'ابھی کوئی عمل نہیں۔ ٹریکنگ شروع کرنے کے لیے آج ٹیب سے ایک شامل کریں۔';

  @override
  String get statsToday => 'آج';

  @override
  String get statsThisWeek => 'اس ہفتے';

  @override
  String get statsThisMonth => 'اس مہینے';

  @override
  String get statsAllTime => 'ہمہ وقت';

  @override
  String get statsCustomRange => 'اپنی مرضی کی مدت';

  @override
  String get statsAllCategories => 'سب';

  @override
  String get statsAllAmals => 'سب';

  @override
  String get statsCompleted => 'مکمل';

  @override
  String get statsExpected => 'متوقع';

  @override
  String get statsVsPrevious => 'پچھلے کے مقابلے';

  @override
  String get statsByCategory => 'زمرے کے لحاظ سے';

  @override
  String get statsPerAmal => 'فی عمل';

  @override
  String get statsCurrentStreak => 'موجودہ سلسلہ';

  @override
  String get statsBestStreak => 'بہترین سلسلہ';

  @override
  String get statsTotalDays => 'کل دن';

  @override
  String get statsConsistency => 'استقامت';

  @override
  String get statsLast5Weeks => 'گزشتہ 5 ہفتے';

  @override
  String get statsDailyBreakdown => 'روزانہ تفصیل';

  @override
  String get statsCompletionRate => 'تکمیل کی شرح';

  @override
  String get statsFilterTime => 'وقت';

  @override
  String get statsFilterCategory => 'زمرہ';

  @override
  String get statsFilterAmal => 'عمل';

  @override
  String get statsStreaks => 'سلسلے';

  @override
  String get statsSelectDateRange => 'تاریخ کی مدت منتخب کریں';

  @override
  String get historyTitle => 'تاریخچہ';

  @override
  String get jumpToDate => 'تاریخ پر جائیں';

  @override
  String historyEmptyDay(String date) {
    return '$date کو کوئی عمل ریکارڈ نہیں ہوا';
  }

  @override
  String get streakUnitD => 'د';

  @override
  String get streakUnitW => 'ہ';

  @override
  String get streakUnitM => 'م';

  @override
  String get mondayShort => 'پیر';

  @override
  String get tuesdayShort => 'منگل';

  @override
  String get wednesdayShort => 'بدھ';

  @override
  String get thursdayShort => 'جمعرات';

  @override
  String get fridayShort => 'جمعہ';

  @override
  String get saturdayShort => 'ہفتہ';

  @override
  String get sundayShort => 'اتوار';

  @override
  String get mondayFull => 'پیر';

  @override
  String get tuesdayFull => 'منگل';

  @override
  String get wednesdayFull => 'بدھ';

  @override
  String get thursdayFull => 'جمعرات';

  @override
  String get fridayFull => 'جمعہ';

  @override
  String get saturdayFull => 'ہفتہ';

  @override
  String get sundayFull => 'اتوار';

  @override
  String get hadith0 =>
      '\"اللہ کے نزدیک سب سے محبوب عمل وہ ہے جو مسلسل کیا جائے، چاہے تھوڑا ہی ہو۔\"\n— بخاری و مسلم';

  @override
  String get hadith2 =>
      '\"جب ابن آدم فوت ہو جاتا ہے تو اس کے اعمال منقطع ہو جاتے ہیں سوائے تین کے: صدقہ جاریہ، علم نافع، یا نیک اولاد جو اس کے لیے دعا کرے۔\"\n— مسلم';

  @override
  String get hadith3 =>
      '\"جس نے دو ٹھنڈی نمازیں (فجر اور عصر) پڑھیں وہ جنت میں داخل ہو گا۔\"\n— بخاری';

  @override
  String get hadith4 =>
      '\"اللہ تمہاری صورتوں اور مالوں کو نہیں دیکھتا بلکہ تمہارے دلوں اور اعمال کو دیکھتا ہے۔\"\n— مسلم';

  @override
  String get hadith6 =>
      '\"آسانی کرو اور مشکل نہ بناؤ، خوشخبری دو اور لوگوں کو متنفر نہ کرو۔\"\n— بخاری';

  @override
  String get hadith7 =>
      '\"جو شخص علم کی تلاش میں راستہ چلے، اللہ اس کے لیے جنت کا راستہ آسان کر دیتا ہے۔\"\n— مسلم';

  @override
  String get hadith8 => '\"صدقہ مال کو کم نہیں کرتا۔\"\n— مسلم';

  @override
  String get hadith9 =>
      '\"طاقتور مومن اللہ کے نزدیک کمزور مومن سے بہتر اور زیادہ محبوب ہے، جبکہ دونوں میں خیر ہے۔\"\n— مسلم';

  @override
  String get hadith10 =>
      '\"جو شخص دن میں سو بار \'سبحان اللہ وبحمدہ\' کہے، اس کے گناہ معاف کر دیے جائیں گے چاہے سمندر کی جھاگ جتنے ہوں۔\"\n— بخاری';

  @override
  String get hadith12 =>
      '\"جو شخص ہر فرض نماز کے بعد آیۃ الکرسی پڑھے، جنت میں داخلے سے اسے صرف موت ہی روکتی ہے۔\"\n— نسائی';

  @override
  String get hadith13 => '\"اچھی بات صدقہ ہے۔\"\n— بخاری و مسلم';

  @override
  String get hadith14 =>
      '\"جو اللہ اور آخرت کے دن پر ایمان رکھتا ہے وہ اچھی بات کہے یا خاموش رہے۔\"\n— بخاری و مسلم';

  @override
  String get hadith15 =>
      '\"بیوہ اور مسکین کی دیکھ بھال کرنے والا اللہ کی راہ میں مجاہد کی طرح ہے۔\"\n— بخاری';

  @override
  String get hadith16 => '\"اپنے بھائی کے سامنے مسکرانا صدقہ ہے۔\"\n— ترمذی';

  @override
  String get hadith17 =>
      '\"تم میں سب سے بہتر وہ ہے جو قرآن سیکھے اور سکھائے۔\"\n— بخاری';

  @override
  String get hadith18 =>
      '\"کسی نے اپنے ہاتھ کی کمائی سے بہتر کھانا نہیں کھایا۔\"\n— بخاری';

  @override
  String get hadith19 =>
      '\"اللہ نرم ہے اور ہر معاملے میں نرمی پسند کرتا ہے۔\"\n— بخاری و مسلم';

  @override
  String historyDayCompleted(int completed, int total) {
    return '$total میں سے $completed مکمل';
  }

  @override
  String get settingsSchedule => 'شیڈول';

  @override
  String get settingsAppearance => 'ظاہری شکل';

  @override
  String get settingsAboutTagline => 'آپ کا روزانہ دین ساتھی';

  @override
  String get settingsRolloverSub => 'دن کب ری سیٹ ہوتا ہے';

  @override
  String get settingsAbout => 'معلومات';

  @override
  String get settingsVersion => 'ورژن';

  @override
  String get settingsDeveloper => 'ڈیولپر';

  @override
  String get settingsSupport => 'سپورٹ';

  @override
  String get settingsRate => 'ایپ کو ریٹ کریں';

  @override
  String get settingsContact => 'ہم سے رابطہ کریں';

  @override
  String get settingsReportBug => 'بگ کی اطلاع دیں';

  @override
  String get settingsRequestFeature => 'فیچر کی درخواست کریں';

  @override
  String settingsSupportFallback(String email) {
    return 'میل نہیں کھل سکی۔ براہ کرم $email پر ای میل کریں۔';
  }

  @override
  String get hadith20 =>
      '\"جو شخص ایمان اور ثواب کی نیت سے رمضان کے روزے رکھے، اس کے پچھلے گناہ معاف کر دیے جائیں گے۔\"\n— بخاری و مسلم';

  @override
  String get hadith22 =>
      '\"اذان اور اقامت کے درمیان کی دعا رد نہیں ہوتی۔\"\n— ابوداؤد';

  @override
  String get hadith23 =>
      '\"جس نے اللہ کے لیے مسجد بنائی، اللہ اس کے لیے جنت میں گھر بنائے گا۔\"\n— بخاری و مسلم';

  @override
  String get hadith24 =>
      '\"مردوں کی بہترین صفیں پہلی اور عورتوں کی بہترین صفیں آخری ہیں۔\"\n— مسلم';

  @override
  String get hadith25 => '\"روزہ جہنم کی آگ سے ڈھال ہے۔\"\n— نسائی';

  @override
  String get hadith26 =>
      '\"جو بارہ رکعت سنت پڑھے، اس کے لیے جنت میں گھر بنایا جائے گا۔\"\n— مسلم';

  @override
  String get hadith27 =>
      '\"قرآن میں ماہر معزز فرشتوں کے ساتھ ہوگا۔\"\n— بخاری و مسلم';

  @override
  String get hadith29 => '\"سب سے بہترین صدقہ پانی پلانا ہے۔\"\n— احمد';

  @override
  String get hadith30 =>
      '\"جو شخص کسی مومن سے ایک تکلیف دور کرے، اللہ قیامت کے دن اس سے ایک تکلیف دور فرمائے گا۔\"\n— مسلم';

  @override
  String get hadith32 => '\"حیا ایمان کا حصہ ہے۔\"\n— بخاری و مسلم';

  @override
  String get hadith34 =>
      '\"جو صبر کرے، اللہ اسے صبر عطا فرماتا ہے۔\"\n— بخاری و مسلم';

  @override
  String get hadith36 =>
      '\"تم میں سے کوئی اس وقت تک مومن نہیں ہو سکتا جب تک وہ اپنے بھائی کے لیے وہی پسند نہ کرے جو اپنے لیے کرتا ہے۔\"\n— بخاری و مسلم';

  @override
  String get hadith37 =>
      '\"بھوکوں کو کھانا کھلاؤ، بیماروں کی عیادت کرو اور قیدیوں کو آزاد کرو۔\"\n— بخاری';

  @override
  String get hadith38 =>
      '\"طاقتور وہ نہیں جو پہلوان ہو، بلکہ طاقتور وہ ہے جو غصے میں خود پر قابو رکھے۔\"\n— بخاری و مسلم';

  @override
  String get hadith40 =>
      '\"ہر نماز کے بعد تینتیس بار \'سبحان اللہ\'، \'الحمد للہ\' اور \'اللہ اکبر\' کہو۔\"\n— مسلم';

  @override
  String get hadith41 => '\"سب سے بہترین ذکر لا إله إلا الله ہے۔\"\n— ترمذی';

  @override
  String get hadith42 =>
      '\"دو نعمتیں ہیں جن میں بہت سے لوگ خسارے میں ہیں: صحت اور فراغت۔\"\n— بخاری';

  @override
  String get hadith43 =>
      '\"پانچ چیزوں کو پانچ سے پہلے غنیمت جانو: جوانی کو بڑھاپے سے پہلے، صحت کو بیماری سے پہلے، مالداری کو غربت سے پہلے، فراغت کو مشغولیت سے پہلے اور زندگی کو موت سے پہلے۔\"\n— حاکم';

  @override
  String get hadith44 =>
      '\"جو شخص سورۃ الاخلاص دس بار پڑھے، اللہ اس کے لیے جنت میں ایک گھر بنائے گا۔\"\n— احمد';

  @override
  String get hadith45 =>
      '\"فرض نمازوں کے بعد سب سے بہترین نماز رات کی نماز ہے۔\"\n— مسلم';

  @override
  String get hadith46 =>
      '\"صدقہ گناہوں کو اس طرح بجھا دیتا ہے جیسے پانی آگ کو بجھاتا ہے۔\"\n— ترمذی';

  @override
  String get hadith47 =>
      '\"صلہ رحمی کرنے والا وہ نہیں جو بدلہ دے، بلکہ وہ ہے جو قطع رحمی ہونے کے باوجود رشتے جوڑے۔\"\n— بخاری';

  @override
  String get hadith49 =>
      '\"جو شخص کھانا کھائے اور کہے: \'اللہ کا شکر ہے جس نے مجھے یہ کھلایا اور میری کسی طاقت اور قوت کے بغیر مہیا کیا\'، اس کے پچھلے گناہ معاف کر دیے جائیں گے۔\"\n— ترمذی';

  @override
  String get hadith53 =>
      '\"کسی بھی نیکی کو حقیر نہ سمجھو، چاہے وہ اپنے بھائی سے خندہ پیشانی سے ملنا ہی ہو۔\"\n— مسلم';

  @override
  String get hadith54 =>
      '\"تم میں سے بہترین وہ ہے جو اپنے گھر والوں کے لیے بہترین ہو۔\"\n— ترمذی';

  @override
  String get hadith55 =>
      '\"جو شخص رات کو سورۃ البقرہ کی آخری دو آیات پڑھے، وہ اس کے لیے کافی ہیں۔\"\n— بخاری و مسلم';

  @override
  String get hadith56 =>
      '\"دنیا ایک سامان ہے اور اس کا بہترین سامان نیک بیوی ہے۔\"\n— مسلم';

  @override
  String get hadith57 =>
      '\"تین دعائیں رد نہیں ہوتیں: روزے دار کی دعا، عادل حاکم کی دعا اور مظلوم کی دعا۔\"\n— ترمذی';

  @override
  String get hadith58 =>
      '\"جو مجھ پر ایک بار درود بھیجے، اللہ اس پر دس بار رحمت نازل فرماتا ہے۔\"\n— مسلم';

  @override
  String get hadith65 => '\"مومن مومن کا آئینہ ہے۔\"\n— ابو داؤد';

  @override
  String get hadith66 =>
      '\"سچائی نیکی کی طرف لے جاتی ہے اور نیکی جنت کی طرف لے جاتی ہے۔\"\n— بخاری و مسلم';

  @override
  String get hadith67 =>
      '\"امانت اس کو لوٹاؤ جس نے تمہیں امانت دی، اور جس نے تمہارے ساتھ خیانت کی اس سے خیانت نہ کرو۔\"\n— ابو داؤد و ترمذی';

  @override
  String get hadith68 =>
      '\"مسلمان کو جو بھی تھکان، بیماری، غم، دکھ، تکلیف یا پریشانی پہنچتی ہے، یہاں تک کہ ایک کانٹا بھی چبھ جائے، اللہ اس کے بدلے اس کے کچھ گناہ معاف فرما دیتا ہے۔\"\n— بخاری و مسلم';

  @override
  String get hadith69 =>
      '\"مسلمان کی اپنے بھائی کے لیے غیر حاضری میں دعا ہمیشہ قبول ہوتی ہے۔\"\n— مسلم';

  @override
  String get hadith70 =>
      '\"جو شخص اللہ سے تین بار جنت مانگے، جنت کہتی ہے: اے اللہ اسے جنت میں داخل فرما۔\"\n— ترمذی';

  @override
  String get hadith71 =>
      '\"رمضان کے بعد سب سے افضل روزہ اللہ کے مہینے محرم کا روزہ ہے۔\"\n— مسلم';

  @override
  String get hadith72 =>
      '\"جس نے حج کیا اور کوئی فحش بات یا گناہ نہ کیا، وہ ایسے لوٹتا ہے جیسے اس دن جب اس کی ماں نے اسے جنم دیا تھا۔\"\n— بخاری و مسلم';

  @override
  String get hadith73 =>
      '\"ایک عمرہ سے دوسرے عمرہ تک کا درمیانی وقت دونوں کے بیچ کے گناہوں کا کفارہ ہے۔\"\n— بخاری و مسلم';

  @override
  String get hadith74 =>
      '\"نیکیوں کی طرف جلدی کرو اس سے پہلے کہ اندھیری رات کے ٹکڑوں جیسے فتنے آ جائیں۔\"\n— مسلم';

  @override
  String get hadith75 =>
      '\"فجر کی دو رکعتیں دنیا اور اس کی ہر چیز سے بہتر ہیں۔\"\n— مسلم';

  @override
  String get hadith77 =>
      '\"اگر تم اللہ پر اس طرح توکل کرو جیسا کہ توکل کا حق ہے، تو وہ تمہیں اسی طرح رزق دے گا جیسا کہ پرندوں کو دیتا ہے۔\"\n— ترمذی';

  @override
  String get hadith78 =>
      '\"جو شخص کسی بیمار کی عیادت کرتا ہے، وہ واپس آنے تک جنت کے باغ میں رہتا ہے۔\"\n— مسلم';

  @override
  String get hadith79 =>
      '\"سلام پھیلاؤ، کھانا کھلاؤ، اور رات کو نماز پڑھو جب لوگ سوئے ہوں — تم سلامتی سے جنت میں داخل ہو جاؤ گے۔\"\n— ترمذی';

  @override
  String get hadith80 =>
      '\"جو لوگوں کا شکر نہیں کرتا وہ اللہ کا شکر نہیں کرتا۔\"\n— ترمذی';

  @override
  String get hadith81 =>
      '\"حسد صرف دو باتوں میں جائز ہے: وہ شخص جسے اللہ نے مال دیا اور وہ اسے حق کے راستے میں خرچ کرتا ہے، اور وہ شخص جسے اللہ نے حکمت دی اور وہ اس سے فیصلہ کرتا ہے اور سکھاتا ہے۔\"\n— بخاری و مسلم';

  @override
  String get hadith82 =>
      '\"انسان اپنے دوست کے دین پر ہوتا ہے، پس تم میں سے ہر ایک دیکھ لے کہ وہ کس سے دوستی کرتا ہے۔\"\n— ابوداؤد و ترمذی';

  @override
  String get hadith85 =>
      '\"جو شخص اللہ کی خاطر کوئی چیز چھوڑ دے، اللہ اسے اس سے بہتر چیز عطا فرمائے گا۔\"\n— احمد';

  @override
  String get hadith86 =>
      '\"جو شخص کسی مسلمان کے عیب چھپائے، اللہ قیامت کے دن اس کے عیب چھپائے گا۔\"\n— بخاری و مسلم';

  @override
  String get hadith87 =>
      '\"دنیا میں ایسے رہو جیسے تم اجنبی ہو یا مسافر۔\"\n— بخاری';

  @override
  String get hadith88 =>
      '\"جو شخص کسی مشکل میں مبتلا کے لیے آسانی کرے، اللہ دنیا اور آخرت میں اس کے لیے آسانی فرمائے گا۔\"\n— مسلم';

  @override
  String get hadith89 => '\"اعمال کا دارومدار نیتوں پر ہے۔\"\n— بخاری و مسلم';

  @override
  String get hadith90 =>
      '\"بدگمانی سے بچو کیونکہ بدگمانی سب سے جھوٹی بات ہے۔\"\n— بخاری و مسلم';

  @override
  String get hadith93 =>
      '\"اکٹھے کھاؤ اور اللہ کا نام لو، تمہارے لیے برکت ہوگی۔\"\n— ابوداؤد';

  @override
  String get hadith94 => '\"بہترین مجلس وہ ہے جو سب سے کشادہ ہو۔\"\n— ابوداؤد';

  @override
  String get hadith95 => '\"معاف کرو، تمہیں بھی معاف کیا جائے گا۔\"\n— احمد';

  @override
  String get hadith96 =>
      '\"اپنی اونٹنی باندھو اور پھر اللہ پر توکل کرو۔\"\n— ترمذی';

  @override
  String get hadith97 =>
      '\"مومن کا معاملہ عجیب ہے — اس کی ہر بات اس کے لیے خیر ہے۔\"\n— مسلم';

  @override
  String get hadith98 =>
      '\"مسلمان مسلمان کا بھائی ہے: وہ اس پر ظلم نہیں کرتا، نہ اسے چھوڑتا ہے، نہ اسے حقیر جانتا ہے۔\"\n— مسلم';
}
