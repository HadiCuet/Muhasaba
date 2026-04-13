// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Persian (`fa`).
class AppLocalizationsFa extends AppLocalizations {
  AppLocalizationsFa([String locale = 'fa']) : super(locale);

  @override
  String get appTitle => 'Muhasaba';

  @override
  String get tabToday => 'امروز';

  @override
  String get tabStats => 'آمار';

  @override
  String get tabHistory => 'تاریخچه';

  @override
  String get tabSettings => 'تنظیمات';

  @override
  String get newAmal => 'عمل جدید';

  @override
  String get editAmal => 'ویرایش عمل';

  @override
  String get newAmalTitle => 'عمل جدید';

  @override
  String get save => 'ذخیره';

  @override
  String get cancel => 'لغو';

  @override
  String get clear => 'پاک کردن';

  @override
  String get titleLabel => 'عنوان';

  @override
  String get titleRequired => 'عنوان الزامی است';

  @override
  String get titleTooLong => 'عنوان بیش از حد طولانی است';

  @override
  String get frequencyLabel => 'تکرار';

  @override
  String get frequencyDaily => 'روزانه';

  @override
  String get frequencyWeekly => 'هفتگی';

  @override
  String get frequencyMonthly => 'ماهانه';

  @override
  String get categoryLabel => 'دسته‌بندی';

  @override
  String get categoryOther => 'سایر';

  @override
  String get categorySalah => 'نماز';

  @override
  String get categoryDhikr => 'ذکر';

  @override
  String get categoryQuran => 'قرآن';

  @override
  String get categoryCharity => 'صدقه';

  @override
  String get timesPerPeriod => 'تعداد در هر دوره';

  @override
  String get custom => 'سفارشی';

  @override
  String get customTargetHint => 'مثلاً ۵۰';

  @override
  String get dayOfWeek => 'روز هفته';

  @override
  String get anyDay => 'هر روز';

  @override
  String get anyDayHint => 'هر روز (امروز نمایش داده می‌شود، فردا مخفی می‌شود)';

  @override
  String onlyDayHint(String day) {
    return 'فقط $day';
  }

  @override
  String get dateOfMonth => 'تاریخ ماه';

  @override
  String get anyDate => 'هر تاریخ';

  @override
  String get anyDateHint =>
      'هر تاریخ (امروز نمایش داده می‌شود، فردا مخفی می‌شود)';

  @override
  String onlyDateHint(String date) {
    return 'فقط در تاریخ $date';
  }

  @override
  String get startPreChecked => 'از پیش علامت‌گذاری شده';

  @override
  String get startPreCheckedSubtitle =>
      'هنگام شروع دوره جدید، این عمل به‌طور پیش‌فرض انجام‌شده علامت می‌خورد تا زمانی که آن را بردارید.';

  @override
  String get reminder => 'یادآوری';

  @override
  String get reminderNone => 'بدون یادآوری';

  @override
  String reminderTime(String time) {
    return 'یادآوری: $time';
  }

  @override
  String get reminderPermissionWarning =>
      'یادآوری ذخیره شد، اما اعلان‌ها مجاز نیستند. برای دریافت هشدارها، اعلان‌ها را در تنظیمات سیستم فعال کنید.';

  @override
  String get groupByCategory => 'گروه‌بندی بر اساس دسته';

  @override
  String get flatList => 'لیست ساده';

  @override
  String errorGeneric(String error) {
    return 'خطا: $error';
  }

  @override
  String get todayEmptyHint => 'روی + بزنید تا اولین عمل خود را اضافه کنید.';

  @override
  String get noteLabel => 'یادداشت';

  @override
  String get noteHint => 'مثلاً در مسجد نماز خواندم';

  @override
  String get completed => 'انجام شده';

  @override
  String get notCompleted => 'انجام نشده';

  @override
  String progressOf(int progress, int target) {
    return '$progress از $target انجام شده';
  }

  @override
  String get removeFromToday => 'حذف از امروز';

  @override
  String get removeFromTodaySubtitle =>
      'فقط برای امروز مخفی می‌شود. فردا برمی‌گردد.';

  @override
  String get removeFromTracking => 'حذف از پیگیری';

  @override
  String get removeFromTrackingSubtitle =>
      'برای همیشه از لیست حذف می‌شود. تاریخچه حفظ می‌شود.';

  @override
  String get chooseIcon => 'انتخاب آیکون';

  @override
  String get iconNone => 'بدون آیکون';

  @override
  String get recentlyUsed => 'اخیراً استفاده شده';

  @override
  String get emojiSectionGeneral => 'عمومی';

  @override
  String get categoryNameHint => 'نام';

  @override
  String get categoryNew => '+ جدید';

  @override
  String get addAmal => 'افزودن عمل';

  @override
  String get customAmal => 'عمل سفارشی';

  @override
  String get templateTasbih => 'تسبیح ۳۳ بار';

  @override
  String get templateIstighfar => 'استغفار ۱۰۰ بار';

  @override
  String get templateSurahKahf => 'سوره کهف';

  @override
  String get templateSadaqah => 'صدقه';

  @override
  String get templateTahajjud => 'تهجد';

  @override
  String get templateDuhaPrayer => 'نماز چاشت';

  @override
  String get settingsTitle => 'تنظیمات';

  @override
  String settingsLoadError(String error) {
    return 'خطا در بارگذاری تنظیمات:\n$error';
  }

  @override
  String get sectionDayBoundary => 'مرز روز';

  @override
  String get rolloverHour => 'ساعت تغییر روز';

  @override
  String get rolloverAtMidnight => 'امروز در نیمه‌شب به پایان می‌رسد.';

  @override
  String rolloverSubtitle(String time) {
    return 'اعمال دیروز تا $time قابل ویرایش هستند.';
  }

  @override
  String get pickRolloverHour => 'ساعت تغییر روز را انتخاب کنید';

  @override
  String get sectionWeekMonth => 'هفته و ماه';

  @override
  String get startOfWeek => 'شروع هفته';

  @override
  String get startOfMonth => 'شروع ماه';

  @override
  String get startOfMonthClamped =>
      'روزهای بعد از ۲۸ام به آخرین روز ماه‌های کوتاه‌تر محدود می‌شوند.';

  @override
  String get sectionAppearance => 'ظاهر';

  @override
  String get theme => 'پوسته';

  @override
  String get themeSystem => 'سیستم';

  @override
  String get themeLight => 'روشن';

  @override
  String get themeDark => 'تاریک';

  @override
  String get sectionLanguage => 'زبان';

  @override
  String get language => 'زبان';

  @override
  String get systemDefault => 'پیش‌فرض سیستم';

  @override
  String get aboutTitle => 'Muhasaba';

  @override
  String get aboutSubtitle =>
      'دفتر محاسبه شخصی دین. تمام داده‌ها روی این دستگاه باقی می‌مانند.';

  @override
  String get statsTitle => 'آمار';

  @override
  String statsLoadError(String error) {
    return 'خطا در بارگذاری آمار:\n$error';
  }

  @override
  String get perAmal => 'به تفکیک عمل';

  @override
  String get thisWeek => 'این هفته';

  @override
  String get thisMonth => 'این ماه';

  @override
  String get totalCompletions => 'مجموع انجام‌ها';

  @override
  String get streakCurrent => 'فعلی';

  @override
  String get streakLongest => 'بیشترین';

  @override
  String get ratioWeek => 'هفته';

  @override
  String get ratioMonth => 'ماه';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'روز',
      one: 'روز',
    );
    return '$_temp0';
  }

  @override
  String streakWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'هفته',
      one: 'هفته',
    );
    return '$_temp0';
  }

  @override
  String streakMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ماه',
      one: 'ماه',
    );
    return '$_temp0';
  }

  @override
  String get frequencyBadgeDaily => 'روزانه';

  @override
  String get frequencyBadgeWeekly => 'هفتگی';

  @override
  String get frequencyBadgeMonthly => 'ماهانه';

  @override
  String get statsEmpty =>
      'هنوز عملی ثبت نشده. یکی را در بخش امروز اضافه کنید تا پیگیری شروع شود.';

  @override
  String get statsToday => 'امروز';

  @override
  String get statsThisWeek => 'این هفته';

  @override
  String get statsThisMonth => 'این ماه';

  @override
  String get statsAllTime => 'همه زمان‌ها';

  @override
  String get statsCustomRange => 'بازه سفارشی';

  @override
  String get statsAllCategories => 'همه';

  @override
  String get statsAllAmals => 'همه';

  @override
  String get statsCompleted => 'انجام شده';

  @override
  String get statsExpected => 'مورد انتظار';

  @override
  String get statsVsPrevious => 'در مقایسه با قبلی';

  @override
  String get statsByCategory => 'بر اساس دسته';

  @override
  String get statsPerAmal => 'به تفکیک عمل';

  @override
  String get statsCurrentStreak => 'رکورد فعلی';

  @override
  String get statsBestStreak => 'بهترین رکورد';

  @override
  String get statsTotalDays => 'کل روزها';

  @override
  String get statsConsistency => 'پایداری';

  @override
  String get statsLast5Weeks => '۵ هفته اخیر';

  @override
  String get statsDailyBreakdown => 'جزئیات روزانه';

  @override
  String get statsCompletionRate => 'نرخ انجام';

  @override
  String get statsFilterTime => 'زمان';

  @override
  String get statsFilterCategory => 'دسته‌بندی';

  @override
  String get statsFilterAmal => 'عمل';

  @override
  String get statsStreaks => 'رکوردها';

  @override
  String get statsSelectDateRange => 'بازه تاریخ را انتخاب کنید';

  @override
  String get historyTitle => 'تاریخچه';

  @override
  String get jumpToDate => 'رفتن به تاریخ';

  @override
  String historyEmptyDay(String date) {
    return 'هیچ عملی در تاریخ $date ثبت نشده';
  }

  @override
  String get streakUnitD => 'ر';

  @override
  String get streakUnitW => 'ه';

  @override
  String get streakUnitM => 'م';

  @override
  String get mondayShort => 'دو';

  @override
  String get tuesdayShort => 'سه';

  @override
  String get wednesdayShort => 'چهار';

  @override
  String get thursdayShort => 'پنج';

  @override
  String get fridayShort => 'جمعه';

  @override
  String get saturdayShort => 'شنبه';

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
      '«محبوب‌ترین اعمال نزد خداوند آن‌هایی هستند که مداومت داشته باشند، هرچند اندک باشند.»\n— بخاری و مسلم';

  @override
  String get hadith1 =>
      '«اعمال نیک را به اندازه توانتان انجام دهید، زیرا بهترین اعمال آن‌هایی هستند که با مداومت انجام شوند، هرچند اندک باشند.»\n— ابن ماجه';

  @override
  String get hadith2 =>
      '«چون فرزند آدم بمیرد، عملش قطع می‌شود مگر از سه چیز: صدقه جاریه، علم سودمند، یا فرزند صالحی که برایش دعا کند.»\n— مسلم';

  @override
  String get hadith3 =>
      '«هرکس دو نماز خنک (فجر و عصر) را بخواند، وارد بهشت می‌شود.»\n— بخاری';

  @override
  String get hadith4 =>
      '«خداوند به ظاهر و ثروت شما نمی‌نگرد، بلکه به دل‌ها و اعمال شما می‌نگرد.»\n— مسلم';

  @override
  String get hadith5 =>
      '«بهترین مردم کسانی هستند که بیشترین سود را به مردم برسانند.»\n— دارقطنی';

  @override
  String get hadith6 =>
      '«آسان بگیرید و سخت نگیرید؛ مژده دهید و مردم را نرمانید.»\n— بخاری';

  @override
  String get hadith7 =>
      '«هرکس راهی را برای جستجوی علم بپیماید، خداوند راه بهشت را برایش آسان می‌سازد.»\n— مسلم';

  @override
  String get hadith8 => '«صدقه مال را کم نمی‌کند.»\n— مسلم';

  @override
  String get hadith9 =>
      '«مؤمن قوی بهتر و محبوب‌تر نزد خداوند است از مؤمن ضعیف، و در هر دو خیر هست.»\n— مسلم';
}
