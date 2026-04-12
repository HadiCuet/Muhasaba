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
  String get hadith1 =>
      '\"نیک اعمال اتنے ہی اختیار کرو جتنے تم سے ہو سکیں، کیونکہ بہترین اعمال وہ ہیں جو مسلسل کیے جائیں چاہے تھوڑے ہوں۔\"\n— ابن ماجہ';

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
  String get hadith5 =>
      '\"لوگوں میں سب سے بہتر وہ ہے جو لوگوں کے لیے سب سے زیادہ فائدہ مند ہو۔\"\n— دارقطنی';

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
}
