// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Persian (`fa`).
class AppLocalizationsFa extends AppLocalizations {
  AppLocalizationsFa([String locale = 'fa']) : super(locale);

  @override
  String get repeatsOnDaysHint => 'در روزهای انتخاب‌شده تکرار می‌شود';

  @override
  String get newDayStarted => 'روز جدیدی آغاز شد';

  @override
  String get appTitle => 'محاسبه';

  @override
  String get tabToday => 'امروز';

  @override
  String get tabStats => 'آمار';

  @override
  String get tabHistory => 'تاریخچه';

  @override
  String get tabSettings => 'تنظیمات';

  @override
  String get tabChallenge => 'چالش';

  @override
  String get tabInsights => 'آمار';

  @override
  String get insightsTitle => 'آمار';

  @override
  String get insightsOverview => 'نمای کلی';

  @override
  String get insightsDaily => 'روزانه';

  @override
  String get insightsArchive => 'بایگانی';

  @override
  String get archivedEmpty =>
      'هنوز چیزی اینجا نیست. اعمالی که از پیگیری حذف می‌کنید اینجا می‌مانند تا بتوانید آن‌ها را بازگردانید.';

  @override
  String archivedStoppedOn(String date) {
    return 'در $date حذف شد';
  }

  @override
  String get archivedRestore => 'بازگرداندن';

  @override
  String archivedRestored(String title) {
    return '«$title» به فهرست شما بازگشت.';
  }

  @override
  String get newChallenge => 'چالش جدید';

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
  String get ok => 'تأیید';

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
  String get categoryLabel => 'دسته';

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
  String get categorySunnah => 'سنت';

  @override
  String get timesPerPeriod => 'تعداد در هر دوره';

  @override
  String get custom => 'سفارشی';

  @override
  String get customTargetHint => 'مثلاً ۵۰';

  @override
  String get targetAny => 'هر تعداد';

  @override
  String get targetAnyHelp => 'بدون هدف — هر مقداری انجام‌شده حساب می‌شود';

  @override
  String get dayOfWeek => 'روز هفته';

  @override
  String get anyDay => 'دلخواه';

  @override
  String get anyDayHint =>
      'روز دلخواه (امروز نمایش داده می‌شود و روز بعد پنهان می‌شود)';

  @override
  String onlyDayHint(String day) {
    return 'فقط $day';
  }

  @override
  String get dateOfMonth => 'تاریخ ماه';

  @override
  String get repeatMode => 'نوع تکرار';

  @override
  String get onSetDays => 'در روزهای مشخص';

  @override
  String get onSetDates => 'در تاریخ‌های مشخص';

  @override
  String get anyDayMode => 'روز دلخواه';

  @override
  String get datesOfMonth => 'تاریخ‌ها';

  @override
  String get daysPerWeekQuestion => 'چند روز در هفته؟';

  @override
  String get daysPerMonthQuestion => 'چند روز در ماه؟';

  @override
  String get pickAtLeastOneDay => 'حداقل یک روز انتخاب کنید';

  @override
  String get pickAtLeastOneDate => 'حداقل یک تاریخ انتخاب کنید';

  @override
  String get previewDaily => 'هر روز تکرار می‌شود';

  @override
  String previewWeeklyDays(String days) {
    return 'هر $days تکرار می‌شود';
  }

  @override
  String previewWeeklyAny(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count روز',
      one: 'یک روز',
    );
    return 'هفته‌ای $_temp0 دلخواه تکرار می‌شود';
  }

  @override
  String previewMonthlyDates(int count, String dates) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'روزهای $dates هر ماه تکرار می‌شود',
      one: 'روز $dates هر ماه تکرار می‌شود',
    );
    return '$_temp0';
  }

  @override
  String previewMonthlyAny(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count روز',
      one: 'یک روز',
    );
    return 'ماهی $_temp0 دلخواه تکرار می‌شود';
  }

  @override
  String get anyDate => 'دلخواه';

  @override
  String get anyDateHint =>
      'تاریخ دلخواه (امروز نمایش داده می‌شود و روز بعد پنهان می‌شود)';

  @override
  String onlyDateHint(String date) {
    return 'فقط در تاریخ $date';
  }

  @override
  String get startPreChecked => 'به‌طور پیش‌فرض انجام‌شده';

  @override
  String get startPreCheckedSubtitle =>
      'با شروع هر دورهٔ جدید، این عمل به‌طور پیش‌فرض انجام‌شده علامت می‌خورد، مگر اینکه علامتش را بردارید.';

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
  String get settingsReminders => 'یادآوری‌ها';

  @override
  String get dailyReminder => 'یادآوری روزانه';

  @override
  String get dailyReminderSubtitle => 'یادآوری ملایمی برای پیگیری اعمالتان';

  @override
  String get dailyReminderTimeLabel => 'زمان یادآوری';

  @override
  String get dailyReminderBody =>
      'کمی وقت بگذارید تا اعمال امروز را پیگیری کنید.';

  @override
  String get groupByCategory => 'گروه‌بندی بر اساس دسته';

  @override
  String get flatList => 'فهرست ساده';

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
  String get completed => 'انجام‌شده';

  @override
  String get notCompleted => 'انجام‌نشده';

  @override
  String progressOf(String progress, String target) {
    return '$progress از $target انجام‌شده';
  }

  @override
  String progressOpen(String count) {
    return '$count انجام‌شده';
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
      'برای همیشه از فهرست شما حذف می‌شود. تاریخچه حفظ می‌شود.';

  @override
  String get chooseIcon => 'انتخاب آیکون';

  @override
  String get iconNone => 'بدون آیکون';

  @override
  String get recentlyUsed => 'اخیراً استفاده‌شده';

  @override
  String get emojiSectionGeneral => 'عمومی';

  @override
  String get categoryNameHint => 'نام';

  @override
  String get categoryNew => '+ جدید';

  @override
  String get categoryNewSheetTitle => 'دستهٔ جدید';

  @override
  String get categoryEditSheetTitle => 'ویرایش دسته';

  @override
  String get addAmal => 'افزودن عمل';

  @override
  String get customAmal => 'عمل سفارشی';

  @override
  String get amalTasbih => 'تسبیح ۳۳ بار';

  @override
  String get amalIstighfar => 'استغفار';

  @override
  String get amalSurahKahf => 'سوره کهف';

  @override
  String get amalSadaqah => 'صدقه';

  @override
  String get amalTahajjud => 'تهجد';

  @override
  String get amalDuha => 'نماز چاشت';

  @override
  String get amalFajr => 'نماز فجر';

  @override
  String get amalDhuhr => 'نماز ظهر';

  @override
  String get amalAsr => 'نماز عصر';

  @override
  String get amalMaghrib => 'نماز مغرب';

  @override
  String get amalIsha => 'نماز عشاء';

  @override
  String get amalMorningAdhkar => 'اذکار صبح';

  @override
  String get amalEveningAdhkar => 'اذکار شام';

  @override
  String get amalTilawah => 'تلاوت';

  @override
  String get settingsTitle => 'تنظیمات';

  @override
  String settingsLoadError(String error) {
    return 'خطا در بارگذاری تنظیمات:\n$error';
  }

  @override
  String get sectionDayBoundary => 'تغییر روز';

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
      'در ماه‌های کوتاه‌تر، روزهای بعد از ۲۸ به آخرین روز ماه منتقل می‌شوند.';

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
  String get aboutTitle => 'محاسبه';

  @override
  String get aboutSubtitle =>
      'دفترچهٔ شخصی محاسبهٔ نفس در امور دینی. همهٔ داده‌ها فقط روی همین دستگاه می‌ماند.';

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
  String get totalCompletions => 'مجموع دفعات انجام';

  @override
  String get streakCurrent => 'فعلی';

  @override
  String get streakLongest => 'طولانی‌ترین';

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
  String get statsAllTime => 'از ابتدا';

  @override
  String get statsCustomRange => 'بازه سفارشی';

  @override
  String get statsAllCategories => 'همه';

  @override
  String get statsAllAmals => 'همه';

  @override
  String get statsCompleted => 'انجام‌شده';

  @override
  String get statsExpected => 'مورد انتظار';

  @override
  String get statsVsPrevious => 'نسبت به دورهٔ قبل';

  @override
  String get statsByCategory => 'بر اساس دسته';

  @override
  String get statsPerAmal => 'به تفکیک عمل';

  @override
  String get statsTotalCaption => 'مجموع';

  @override
  String statsDaysFraction(String done, String expectedText, num expected) {
    String _temp0 = intl.Intl.pluralLogic(
      expected,
      locale: localeName,
      other: 'روز',
      one: 'روز',
    );
    return '$done/$expectedText $_temp0';
  }

  @override
  String get statsCurrentStreak => 'زنجیرهٔ فعلی';

  @override
  String get statsBestStreak => 'بهترین زنجیره';

  @override
  String get statsTotalDays => 'کل روزها';

  @override
  String get statsConsistency => 'استمرار';

  @override
  String get statsLast5Weeks => '۵ هفته اخیر';

  @override
  String get statsDailyBreakdown => 'جزئیات روزانه';

  @override
  String get statsCompletionRate => 'درصد انجام';

  @override
  String get statsAmountPerDay => 'مقدار روزانه';

  @override
  String statsCountTotal(String count) {
    return 'مجموع $count';
  }

  @override
  String statsCountAvg(String amount) {
    return 'میانگین $amount در روز';
  }

  @override
  String statsCountBest(String count, String day) {
    return 'بیشترین $count – $day';
  }

  @override
  String get statsFilterTime => 'زمان';

  @override
  String get statsFilterCategory => 'دسته';

  @override
  String get statsFilterAmal => 'عمل';

  @override
  String get statsStreaks => 'زنجیره‌ها';

  @override
  String get statsSelectDateRange => 'بازهٔ تاریخ را انتخاب کنید';

  @override
  String get historyTitle => 'تاریخچه';

  @override
  String get jumpToDate => 'رفتن به تاریخ';

  @override
  String historyEmptyDay(String date) {
    return 'هیچ عملی در تاریخ $date ثبت نشده';
  }

  @override
  String get streakUnitD => ' روز';

  @override
  String get streakUnitW => ' هفته';

  @override
  String get streakUnitM => ' ماه';

  @override
  String get mondayShort => 'د';

  @override
  String get tuesdayShort => 'س';

  @override
  String get wednesdayShort => 'چ';

  @override
  String get thursdayShort => 'پ';

  @override
  String get fridayShort => 'ج';

  @override
  String get saturdayShort => 'ش';

  @override
  String get sundayShort => 'ی';

  @override
  String get mondayFull => 'دوشنبه';

  @override
  String get tuesdayFull => 'سه‌شنبه';

  @override
  String get wednesdayFull => 'چهارشنبه';

  @override
  String get thursdayFull => 'پنج‌شنبه';

  @override
  String get fridayFull => 'جمعه';

  @override
  String get saturdayFull => 'شنبه';

  @override
  String get sundayFull => 'یکشنبه';

  @override
  String get hadith0 =>
      '«محبوب‌ترین اعمال نزد خداوند، پیوسته‌ترین آن‌هاست، هرچند اندک باشد.»\n— بخاری و مسلم';

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
  String get hadith6 =>
      '«آسان بگیرید و سخت نگیرید؛ مژده دهید و مردم را متنفر نسازید.»\n— بخاری';

  @override
  String get hadith7 =>
      '«هر کس راهی را در طلب علم بپیماید، خداوند راه بهشت را برایش آسان می‌سازد.»\n— مسلم';

  @override
  String get hadith8 => '«صدقه مال را کم نمی‌کند.»\n— مسلم';

  @override
  String get hadith9 =>
      '«مؤمن قوی از مؤمن ضعیف بهتر و نزد خداوند محبوب‌تر است، و در هر دو خیر هست.»\n— مسلم';

  @override
  String get hadith10 =>
      '«هر کس روزی صد بار «سبحان‌الله و بحمده» بگوید، گناهانش آمرزیده می‌شود، هرچند مانند کف دریا باشد.»\n— بخاری و مسلم';

  @override
  String get hadith12 =>
      '«هر کس پس از هر نماز واجب آیت‌الکرسی بخواند، چیزی جز مرگ مانع ورود او به بهشت نیست.»\n— نسائی';

  @override
  String get hadith13 => '«سخن نیک صدقه است.»\n— بخاری و مسلم';

  @override
  String get hadith14 =>
      '«هر کس به خدا و روز آخرت ایمان دارد، سخن نیک بگوید یا خاموش بماند.»\n— بخاری و مسلم';

  @override
  String get hadith15 =>
      '«کسی که از بیوه‌زن و مسکین مراقبت کند، مانند مجاهد در راه خداست.»\n— بخاری و مسلم';

  @override
  String get hadith16 => '«لبخند تو به روی برادرت صدقه است.»\n— ترمذی';

  @override
  String get hadith17 =>
      '«بهترین شما کسی است که قرآن را بیاموزد و به دیگران بیاموزد.»\n— بخاری';

  @override
  String get hadith18 =>
      '«هیچ‌کس غذایی بهتر از آنچه با دسترنج خود به دست آورده، نخورده است.»\n— بخاری';

  @override
  String get hadith19 =>
      '«خداوند نرم‌خوست و نرمی را در همهٔ کارها دوست دارد.»\n— بخاری و مسلم';

  @override
  String historyDayCompleted(String completed, String total) {
    return '$completed از $total انجام‌شده';
  }

  @override
  String get settingsSchedule => 'زمان‌بندی';

  @override
  String get settingsAppearance => 'ظاهر';

  @override
  String get settingsAboutTagline => 'همراه روزانهٔ دین‌داری شما';

  @override
  String get settingsRolloverSub => 'زمان شروع روز جدید';

  @override
  String get settingsAbout => 'درباره';

  @override
  String get settingsVersion => 'نسخه';

  @override
  String get settingsDeveloper => 'توسعه‌دهنده';

  @override
  String get settingsSupport => 'پشتیبانی';

  @override
  String get settingsRate => 'امتیاز دادن به برنامه';

  @override
  String get settingsContact => 'تماس با ما';

  @override
  String get settingsReportBug => 'گزارش اشکال';

  @override
  String get settingsRequestFeature => 'پیشنهاد قابلیت';

  @override
  String settingsSupportFallback(String email) {
    return 'برنامهٔ ایمیل باز نشد. لطفاً به $email ایمیل بزنید.';
  }

  @override
  String get settingsPrivacyPolicy => 'سیاست حریم خصوصی';

  @override
  String get settingsPrivacyOpenFailed => 'باز کردن سیاست حریم خصوصی ممکن نشد.';

  @override
  String get hadith20 =>
      '«هر کس ماه رمضان را با ایمان و به امید ثواب روزه بدارد، گناهان گذشته‌اش آمرزیده می‌شود.»\n— بخاری و مسلم';

  @override
  String get hadith22 => '«دعای بین اذان و اقامه رد نمی‌شود.»\n— ابوداوود';

  @override
  String get hadith23 =>
      '«هر کس مسجدی برای خدا بسازد، خداوند برایش خانه‌ای در بهشت می‌سازد.»\n— بخاری و مسلم';

  @override
  String get hadith24 =>
      '«بهترین صف‌ها برای مردان صف اول و بهترین صف‌ها برای زنان صف آخر است.»\n— مسلم';

  @override
  String get hadith25 => '«روزه سپری در برابر آتش جهنم است.»\n— نسائی';

  @override
  String get hadith26 =>
      '«هر کس دوازده رکعت نماز سنت بخواند، خانه‌ای در بهشت برایش ساخته می‌شود.»\n— مسلم';

  @override
  String get hadith27 =>
      '«کسی که در خواندن قرآن ماهر باشد، با فرشتگان بزرگوار و نیکوکار همنشین است.»\n— بخاری و مسلم';

  @override
  String get hadith29 => '«بهترین صدقه آب دادن است.»\n— احمد';

  @override
  String get hadith30 =>
      '«هر کس سختی‌ای را از مؤمنی برطرف کند، خداوند سختی‌ای را از او در روز قیامت برطرف می‌کند.»\n— مسلم';

  @override
  String get hadith32 => '«حیا از ایمان است.»\n— بخاری و مسلم';

  @override
  String get hadith34 =>
      '«هر کس صبر کند، خداوند به او صبر عطا می‌کند.»\n— بخاری و مسلم';

  @override
  String get hadith36 =>
      '«هیچ‌یک از شما ایمان کامل ندارد مگر آنکه برای برادرش همان را بخواهد که برای خودش می‌خواهد.»\n— بخاری و مسلم';

  @override
  String get hadith37 =>
      '«گرسنگان را سیر کنید، بیماران را عیادت کنید و اسیران را آزاد کنید.»\n— بخاری';

  @override
  String get hadith38 =>
      '«قوی کسی نیست که در کشتی دیگران را زمین بزند، بلکه قوی کسی است که هنگام خشم بر خود مسلط باشد.»\n— بخاری و مسلم';

  @override
  String get hadith40 =>
      '«پس از هر نماز، هر یک از «سبحان‌الله»، «الحمدلله» و «الله‌اکبر» را سی‌وسه بار بگویید.»\n— مسلم';

  @override
  String get hadith41 => '«بهترین ذکر «لا إله إلا الله» است.»\n— ترمذی';

  @override
  String get hadith42 =>
      '«دو نعمت است که بسیاری از مردم در آن مغبون هستند: سلامتی و فراغت.»\n— بخاری';

  @override
  String get hadith43 =>
      '«پنج چیز را پیش از پنج چیز غنیمت شمار: جوانی‌ات را پیش از پیری، سلامتی‌ات را پیش از بیماری، ثروتت را پیش از فقر، فراغتت را پیش از مشغولیت، و زندگی‌ات را پیش از مرگ.»\n— حاکم';

  @override
  String get hadith44 =>
      '«هر کس سوره اخلاص را ده بار بخواند، خداوند برایش خانه‌ای در بهشت بنا می‌کند.»\n— احمد';

  @override
  String get hadith45 =>
      '«بهترین نماز پس از نمازهای واجب، نماز شب است.»\n— مسلم';

  @override
  String get hadith46 =>
      '«صدقه گناهان را خاموش می‌کند همان‌طور که آب آتش را خاموش می‌کند.»\n— ترمذی';

  @override
  String get hadith47 =>
      '«صله‌رحم‌کننده کسی نیست که تنها نیکی را جبران کند، بلکه کسی است که هرگاه با او قطع رابطه کنند، پیوند را برقرار نگه دارد.»\n— بخاری';

  @override
  String get hadith49 =>
      '«هر کس غذایی بخورد و بگوید: «سپاس خدایی را که این را به من خوراند و بی‌آنکه نیرو و توانی از من باشد، روزی‌ام کرد»، گناهان گذشته‌اش آمرزیده می‌شود.»\n— ترمذی';

  @override
  String get hadith53 =>
      '«هیچ کار نیکی را کوچک مشمارید، حتی دیدار برادرتان با چهره‌ای گشاده را.»\n— مسلم';

  @override
  String get hadith54 =>
      '«بهترین شما کسی است که با خانواده‌اش بهترین رفتار را داشته باشد.»\n— ترمذی';

  @override
  String get hadith55 =>
      '«هر کس شب دو آیهٔ آخر سورهٔ بقره را بخواند، او را کفایت می‌کند.»\n— بخاری و مسلم';

  @override
  String get hadith56 =>
      '«دنیا متاعی است و بهترین متاع آن همسر صالح است.»\n— مسلم';

  @override
  String get hadith57 =>
      '«سه دعا رد نمی‌شود: دعای روزه‌دار، دعای حاکم عادل و دعای مظلوم.»\n— ترمذی';

  @override
  String get hadith58 =>
      '«هر کس بر من یک بار صلوات بفرستد، خداوند ده بار بر او صلوات می‌فرستد.»\n— مسلم';

  @override
  String get hadith65 => '«مؤمن آینه مؤمن است.»\n— ابوداوود';

  @override
  String get hadith66 =>
      '«راستگویی به نیکی می‌رساند و نیکی به بهشت می‌رساند.»\n— بخاری و مسلم';

  @override
  String get hadith67 =>
      '«امانت را به صاحبش برگردان و به کسی که به تو خیانت کرده خیانت نکن.»\n— ابوداوود و ترمذی';

  @override
  String get hadith68 =>
      '«هیچ خستگی، بیماری، اندوه، غم، آزار یا ناراحتی به مسلمان نمی‌رسد، حتی خاری که در بدنش فرو رود، مگر آنکه خداوند به سبب آن بخشی از گناهانش را می‌زداید.»\n— بخاری و مسلم';

  @override
  String get hadith69 =>
      '«دعای مسلمان برای برادرش در غیابش همواره مستجاب است.»\n— مسلم';

  @override
  String get hadith70 =>
      '«هر کس سه بار از خداوند بهشت بخواهد، بهشت می‌گوید: خدایا او را وارد بهشت کن.»\n— ترمذی';

  @override
  String get hadith71 =>
      '«برترین روزه پس از رمضان، روزهٔ ماه خدا، محرم است.»\n— مسلم';

  @override
  String get hadith72 =>
      '«هر کس حج بگزارد و در آن سخن زشت نگوید و گناه نکند، مانند روزی که از مادر زاده شده بازمی‌گردد.»\n— بخاری و مسلم';

  @override
  String get hadith73 =>
      '«عمره تا عمره کفاره گناهان بین آن دو است.»\n— بخاری و مسلم';

  @override
  String get hadith74 =>
      '«پیش از فتنه‌هایی که چون پاره‌های شب تاریک‌اند، به سوی کارهای نیک بشتابید.»\n— مسلم';

  @override
  String get hadith75 =>
      '«دو رکعت سنت فجر از دنیا و آنچه در آن است بهتر است.»\n— مسلم';

  @override
  String get hadith77 =>
      '«اگر بر خداوند آن‌گونه که شایسته اوست توکل می‌کردید، شما را همان‌طور روزی می‌داد که پرندگان را روزی می‌دهد.»\n— ترمذی';

  @override
  String get hadith78 =>
      '«هر کس بیماری را عیادت کند، تا بازگردد در میوه‌چینی بهشت است.»\n— مسلم';

  @override
  String get hadith79 =>
      '«سلام را بگسترانید، گرسنگان را غذا دهید و شب هنگامی که مردم خوابند نماز بخوانید تا به سلامت وارد بهشت شوید.»\n— ترمذی';

  @override
  String get hadith80 =>
      '«هر کس از مردم سپاسگزار نباشد، از خداوند سپاسگزار نیست.»\n— ترمذی';

  @override
  String get hadith81 =>
      '«حسد جایز نیست مگر در دو مورد: مردی که خداوند به او مال داده و او آن را در راه حق خرج می‌کند، و مردی که خداوند به او حکمت داده و او با آن قضاوت و تعلیم می‌دهد.»\n— بخاری و مسلم';

  @override
  String get hadith82 =>
      '«انسان بر دین دوستش است، پس هر یک از شما بنگرد با چه کسی دوستی می‌کند.»\n— ابوداوود و ترمذی';

  @override
  String get hadith85 =>
      '«هر کس چیزی را به خاطر خداوند ترک کند، خداوند بهتر از آن را به او عوض می‌دهد.»\n— احمد';

  @override
  String get hadith86 =>
      '«هر کس عیب مسلمانی را بپوشاند، خداوند عیب او را در روز قیامت می‌پوشاند.»\n— بخاری و مسلم';

  @override
  String get hadith87 =>
      '«در دنیا چنان باش که گویی غریبه‌ای یا مسافری هستی.»\n— بخاری';

  @override
  String get hadith88 =>
      '«هر کس بر تنگدستی آسان بگیرد، خداوند در دنیا و آخرت بر او آسان می‌گیرد.»\n— مسلم';

  @override
  String get hadith89 => '«پاداش اعمال بسته به نیت‌هاست.»\n— بخاری و مسلم';

  @override
  String get hadith90 =>
      '«از گمان بپرهیزید، زیرا گمان دروغ‌ترین سخن است.»\n— بخاری و مسلم';

  @override
  String get hadith93 =>
      '«با هم غذا بخورید و نام خدا را ببرید تا برایتان برکت داده شود.»\n— ابوداوود';

  @override
  String get hadith94 =>
      '«هیچ قومی به یاد خدا نمی‌نشینند مگر آنکه فرشتگان آنان را در بر می‌گیرند، رحمت آنان را فرا می‌گیرد و آرامش بر آنان نازل می‌شود.»\n— مسلم';

  @override
  String get hadith95 =>
      '«خداوند به سبب گذشت، جز بر عزت بنده نمی‌افزاید.»\n— مسلم';

  @override
  String get hadith96 => '«شترت را ببند و سپس بر خدا توکل کن.»\n— ترمذی';

  @override
  String get hadith97 =>
      '«شگفتا از کار مؤمن؛ همهٔ کارش برایش خیر است.»\n— مسلم';

  @override
  String get hadith98 =>
      '«مسلمان برادر مسلمان است: به او ظلم نمی‌کند، رهایش نمی‌کند و تحقیرش نمی‌کند.»\n— مسلم';

  @override
  String get delete => 'حذف';

  @override
  String get remove => 'حذف';

  @override
  String get deleteAmalConfirmTitle => 'از پیگیری حذف شود؟';

  @override
  String deleteAmalConfirmBody(String title) {
    return '«$title» از فهرست شما پنهان می‌شود. تاریخچهٔ آن حفظ می‌شود.';
  }

  @override
  String get genericError => 'مشکلی پیش آمد. لطفاً دوباره تلاش کنید.';

  @override
  String get notificationChannelName => 'یادآوری اعمال';

  @override
  String get notificationChannelDescription =>
      'یادآوری‌های روزانه برای اعمالی که پیگیری می‌کنید.';

  @override
  String get invalidAmalId => 'شناسهٔ عمل نامعتبر است';

  @override
  String get tutorialSettingsRow => 'راهنمای استفاده از محاسبه';

  @override
  String get tutorialSkip => 'رد کردن';

  @override
  String get tutorialNext => 'بعدی';

  @override
  String get tutorialDone => 'تمام';

  @override
  String get tutorialTapTitle => 'برای انجام ضربه بزنید';

  @override
  String get tutorialTapBody =>
      'یک ضربه عمل را برای امروز انجام‌شده علامت می‌زند. برای برگرداندن، دوباره ضربه بزنید.';

  @override
  String get tutorialEditTitle => 'برای ویرایش دو بار ضربه بزنید';

  @override
  String get tutorialEditBody =>
      'فرم ویرایش را باز می‌کند — نام را تغییر دهید یا تکرار آن را عوض کنید.';

  @override
  String get tutorialReorderTitle => 'برای تغییر ترتیب نگه دارید';

  @override
  String get tutorialReorderBody =>
      'یک ردیف را نگه دارید و بکشید. ترتیب شما ذخیره می‌شود.';

  @override
  String get tutorialRemoveTitle => 'برای حذف بکشید';

  @override
  String get tutorialRemoveBody =>
      'ردیف را به کنار بکشید تا برای امروز پنهان شود یا پیگیری آن متوقف شود.';

  @override
  String get tutorialCountTitle => 'شمردن تکرارها';

  @override
  String get tutorialCountBody =>
      'برای اعمالی که هدفشان بیش از یک است، برای هر تکرار از − و + استفاده کنید.';

  @override
  String get tutorialViewTitle => 'گروه‌بندی یا فهرست ساده';

  @override
  String get tutorialViewBody =>
      'بین گروه‌بندی بر اساس دسته و یک فهرست ساده جابه‌جا شوید.';

  @override
  String get tutorialLibraryTitle => 'افزودن اعمال آماده';

  @override
  String get tutorialLibraryBody =>
      'کتابخانه اعمال را دسته به دسته مرور کنید و روی + بزنید تا عملی به امروز اضافه شود.';

  @override
  String get tutorialChallengeLogTitle => 'برای ثبت امروز ضربه بزنید';

  @override
  String get tutorialChallengeLogBody =>
      'یک ضربه امروز را ثبت می‌کند. در چالش شمارشی، هر ضربه یک گام اضافه می‌کند.';

  @override
  String get tutorialChallengeOpenTitle => 'برای باز کردن دو بار ضربه بزنید';

  @override
  String get tutorialChallengeOpenBody =>
      'چالش را باز می‌کند — هر روز را ببینید، روز جامانده را درست کنید یا آن را حذف کنید.';

  @override
  String get tutorialChallengeDeleteBody =>
      'برای حذف چالش، کارت را به کنار بکشید.';

  @override
  String get tutorialChallengeAmountTitle => 'ثبت مقدار دقیق';

  @override
  String get tutorialChallengeAmountBody =>
      'برای تغییر از − و + استفاده کنید، یا روی عدد ضربه بزنید و مقدار دقیق را بنویسید.';

  @override
  String get challengeOpenDetailsAction => 'باز کردن جزئیات چالش';

  @override
  String get challengesActive => 'در جریان';

  @override
  String get challengesPast => 'گذشته';

  @override
  String challengeJustFinished(int count, String title) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count چالش به پایان رسید — آخرین آن‌ها $title',
      one: '$title به پایان رسید',
    );
    return '$_temp0';
  }

  @override
  String get challengeSectionEnded => 'پایان‌یافته';

  @override
  String get challengesPastEmpty => 'هنوز چیزی به پایان نرسیده است.';

  @override
  String get challengesEmptyTitle => 'هنوز چالشی ندارید';

  @override
  String get challengesEmptyBody =>
      'برای خود هدفی تعیین کنید — مثلاً ۲۰ رکعت در ۷ روز — و آن را اینجا پیگیری کنید.';

  @override
  String get editChallenge => 'ویرایش چالش';

  @override
  String get deleteChallenge => 'حذف چالش';

  @override
  String get deleteChallengeConfirm =>
      'این چالش و همهٔ پیشرفت ثبت‌شدهٔ آن حذف شود؟';

  @override
  String get challengeShapeQuestion => 'این چالش از چه نوعی است؟';

  @override
  String get challengeShapeTotal => 'رسیدن به یک مجموع';

  @override
  String get challengeShapeTotalBody =>
      '۱۰۰۰ صلوات، ۳۰ جزء. مقدار را ثبت می‌کنید و جمع می‌شود.';

  @override
  String get challengeShapeStreak => 'زنجیرهٔ روزانه';

  @override
  String get challengeShapeStreakBody =>
      'تهجد، نماز فجر به جماعت. روزی یک علامت؛ مقدار مهم نیست.';

  @override
  String get challengeTargetLabel => 'هدف';

  @override
  String get challengeTargetRequired => 'هدفی بیشتر از صفر وارد کنید';

  @override
  String get challengeUnitLabel => 'واحد (اختیاری)';

  @override
  String get challengeUnitHint => 'رکعت، صفحه، بار';

  @override
  String get challengeOneTapAdds => 'هر ضربه اضافه می‌کند';

  @override
  String get challengeHowManyDays => 'چند روز؟';

  @override
  String get challengeReachHowMuch => 'تا چه مقدار؟';

  @override
  String get challengeSpreadOver => 'بازهٔ زمانی';

  @override
  String get challengeSpreadEveryDay => 'هر روز';

  @override
  String get challengeSpreadLonger => 'بازهٔ طولانی‌تر';

  @override
  String get challengeByWhen => 'تا چه زمانی؟';

  @override
  String get challengeWindowDuration => 'ظرف مدت';

  @override
  String get challengeByDate => 'تا تاریخ معین';

  @override
  String challengePlanRange(String start, String end) {
    return 'از $start تا $end';
  }

  @override
  String challengePlanExact(String start, String end) {
    return 'از $start تا $end – روزی یک بار، هر روز';
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
    return 'از $start تا $end – $target از $window روز؛ $slack روز را می‌توانید جا بیندازید';
  }

  @override
  String challengePlanRate(String start, String end, String rate) {
    return 'از $start تا $end – روزی حدود $rate';
  }

  @override
  String challengePlanOpen(String start) {
    return 'شروع $start – بدون مهلت';
  }

  @override
  String challengeTooTight(
    String target,
    String window,
    num targetCount,
    num windowCount,
  ) {
    return '$target روز در $window روز نمی‌گنجد؛ در زنجیره هر روز فقط یک بار حساب می‌شود.';
  }

  @override
  String challengeDurationLabel(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count روز',
      one: 'یک روز',
    );
    return '$_temp0';
  }

  @override
  String get challengeStartDate => 'شروع';

  @override
  String get challengeEndDate => 'پایان';

  @override
  String challengeProgressCount(String done, String target, String unit) {
    return '$done از $target $unit';
  }

  @override
  String challengeProgressPlain(String done, String target) {
    return '$done از $target';
  }

  @override
  String challengeProgressDays(String done, String target) {
    return '$done از $target روز';
  }

  @override
  String challengeDaysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count روز مانده',
      one: 'یک روز مانده',
    );
    return '$_temp0';
  }

  @override
  String get challengeNoDeadline => 'بدون مهلت';

  @override
  String challengeOnTrack(String rate) {
    return 'طبق برنامه – روزی $rate';
  }

  @override
  String challengeBehind(String rate) {
    return 'عقب از برنامه – روزی $rate لازم است';
  }

  @override
  String challengeLastDay(String remaining) {
    return 'روز آخر – $remaining مانده';
  }

  @override
  String get challengeReached => 'به هدف رسیدید';

  @override
  String get challengeCompleted => 'تکمیل‌شده';

  @override
  String challengeEnded(String done, String target) {
    return 'پایان یافت – $done از $target';
  }

  @override
  String get challengeExpiredTitle => 'چالش پایان یافت';

  @override
  String challengeExpiredBody(String title, String done, String target) {
    return '$title با $done از $target پایان یافت.';
  }

  @override
  String get challengeExtend => 'تمدید';

  @override
  String get challengeRestart => 'شروع دوباره';

  @override
  String get challengeArchive => 'بایگانی';

  @override
  String get challengeDailyBreakdown => 'گزارش روزانه';

  @override
  String challengeNudgeBody(String title, String rate) {
    return '$title: برای پایان به‌موقع، روزی $rate لازم است.';
  }

  @override
  String challengeLastDayBody(String title, String remaining) {
    return '$title: روز آخر – $remaining مانده.';
  }

  @override
  String get challengeGroupGoal => 'هدف شما';

  @override
  String get challengeGroupShape => 'نوع';

  @override
  String get challengeGroupPlan => 'برنامه';

  @override
  String get challengeGroupReminders => 'یادآوری‌ها';

  @override
  String get challengeStartFromTemplate => 'شروع از یک الگو';

  @override
  String get challengeTemplateBlank => 'خالی';

  @override
  String get challengePreview => 'پیش‌نمایش';

  @override
  String get challengeTmplTahajjud => '۴۰ شب تهجد';

  @override
  String get challengeTmplSalawat => '۱۰۰۰ صلوات';

  @override
  String get challengeTmplKhatm => 'ختم قرآن در ۳۰ روز';

  @override
  String get challengeTmplFajrJamaah => '۳۰ روز نماز فجر به جماعت';

  @override
  String get challengeTmplSadaqah => '۳۰ روز صدقه';

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
      'رایگان، بدون تبلیغ و بدون نیاز به حساب کاربری. می‌توانید با هدیه‌ای به هر مبلغ و هر زمان که خواستید، از توسعهٔ آن حمایت کنید.';

  @override
  String get supportCta => 'از محاسبه حمایت کنید';

  @override
  String get supportAgain => 'دوباره حمایت کنید';

  @override
  String get supporterThanks =>
      'خداوند به شما جزای خیر دهد — ان‌شاءالله محاسبه رایگان و بدون تبلیغ می‌ماند.';

  @override
  String supporterSince(String tier, String month) {
    return '$tier از $month';
  }

  @override
  String get supportPromptTitle => 'از محاسبه حمایت کنید';

  @override
  String get supportPromptBody =>
      'محاسبه رایگان است، بدون تبلیغ و بدون نیاز به حساب کاربری. می‌توانید با هدیه‌ای به هر مبلغ و هر زمان که خواستید، از توسعهٔ آن حمایت کنید. همهٔ امکانات بدون آن هم در دسترس است.';

  @override
  String get supportPromptNow => 'همین حالا حمایت کنید';

  @override
  String get supportPromptLater => 'بعداً یادآوری کن';

  @override
  String get supportPromptNever => 'دیگر نپرس';

  @override
  String get tipSheetTitle => 'از محاسبه حمایت کنید';

  @override
  String get tipSheetBody =>
      'هر مبلغی را که می‌خواهید، هر چند بار که بخواهید، انتخاب کنید. این مبالغ صرف نگهداری برنامه می‌شود و ان‌شاءالله برنامه رایگان و بدون تبلیغ می‌ماند. به رسم قدردانی، در تنظیمات به‌عنوان حامی نشان داده می‌شوید.';

  @override
  String tipSheetSupporterLine(String tier) {
    return '$tier — خداوند به شما جزای خیر دهد.';
  }

  @override
  String get tipSheetSupporterAgain =>
      'هر وقت خواستید می‌توانید دوباره حمایت کنید.';

  @override
  String tipSheetStoreNote(String store) {
    return 'پرداخت از طریق $store انجام می‌شود — ما هرگز اطلاعات پرداخت شما را نمی‌بینیم.';
  }

  @override
  String get tipSheetOtherWays => 'گزینه‌ای که مناسب شما باشد نمی‌بینید؟';

  @override
  String get tipSheetWriteToUs => 'برای ما بنویسید';

  @override
  String get supportEmailBody =>
      'السلام علیکم،\n\nمی‌خواهم مستقیماً از توسعهٔ محاسبه حمایت کنم.\n\nکشور:\nروش ارسال مورد نظرم:\nمبلغ (اختیاری):';

  @override
  String tipBusy(String store) {
    return 'در حال باز کردن $store…';
  }

  @override
  String get tipThanks => 'خداوند به شما جزای خیر دهد و از شما بپذیرد.';

  @override
  String get tipDone => 'تمام';

  @override
  String get tipFailed => 'خرید انجام نشد. مبلغی کسر نشد.';

  @override
  String tipPending(String store) {
    return 'پرداخت شما در $store در انتظار تأیید است — به‌محض تأیید، نشان شما اضافه می‌شود.';
  }

  @override
  String get tipUnavailable => 'خرید در حال حاضر روی این دستگاه در دسترس نیست.';

  @override
  String get optionSetJamaa => 'جماعت';

  @override
  String get optionJamaaAlone => 'فرادا';

  @override
  String get optionJamaaHome => 'جماعت در خانه';

  @override
  String get optionJamaaMasjid => 'جماعت در مسجد';

  @override
  String get optionSetOnTime => 'زمان ادا';

  @override
  String get optionOnTimeOnTime => 'به‌موقع';

  @override
  String get optionOnTimeLate => 'با تأخیر';

  @override
  String get optionOnTimeQada => 'قضا';

  @override
  String get optionSetQuranSession => 'جلسهٔ قرآن';

  @override
  String get optionQuranRecited => 'تلاوت';

  @override
  String get optionQuranMemorised => 'حفظ';

  @override
  String get optionQuranMeaning => 'با ترجمه';

  @override
  String get optionQuranListened => 'استماع';

  @override
  String get optionSetSadaqahType => 'نوع صدقه';

  @override
  String get optionSadaqahMoney => 'پول';

  @override
  String get optionSadaqahFood => 'غذا';

  @override
  String get optionSadaqahTime => 'وقت';

  @override
  String get optionSadaqahOther => 'سایر';

  @override
  String get optionSetIntensity => 'شدت';

  @override
  String get optionIntensityLight => 'سبک';

  @override
  String get optionIntensityModerate => 'متوسط';

  @override
  String get optionIntensityIntense => 'سنگین';

  @override
  String get optionSetNewTitle => 'مجموعهٔ گزینه‌های جدید';

  @override
  String get optionSetEditTitle => 'ویرایش مجموعهٔ گزینه‌ها';

  @override
  String get optionSetNameLabel => 'نام مجموعه';

  @override
  String get optionSetNameHint => 'مثلاً جماعت';

  @override
  String get optionsLabel => 'گزینه‌ها';

  @override
  String get optionAdd => 'افزودن گزینه';

  @override
  String optionHint(int index) {
    return 'گزینهٔ $index';
  }

  @override
  String optionsMaxReached(int max) {
    return 'حداکثر $max گزینه.';
  }

  @override
  String get optionSetPreviewLabel => 'پیش‌نمایش — ردیف امروز';

  @override
  String optionSetKeptForHistory(String labels) {
    return 'برای تاریخچه حفظ می‌شود: $labels';
  }

  @override
  String get optionSetDelete => 'حذف مجموعه';

  @override
  String get optionSetDeleteConfirm =>
      'اعمالی که از این مجموعه استفاده می‌کنند دیگر گزینه‌ای نشان نمی‌دهند. انتخاب روزهایی که قبلاً ثبت کرده‌اید حفظ می‌شود.';

  @override
  String get optionSetNameRequired => 'برای مجموعه نامی وارد کنید';

  @override
  String get optionsMinRequired => 'دست‌کم دو گزینه اضافه کنید';

  @override
  String get optionSetNameTooLong => 'نام مجموعه بیش از حد طولانی است';

  @override
  String optionTooLong(int index) {
    return 'گزینهٔ $index بیش از حد طولانی است';
  }

  @override
  String get optionSetNone => 'هیچ‌کدام';

  @override
  String get optionSetNew => 'مجموعهٔ جدید';

  @override
  String get requireChoiceLabel => 'الزام به انتخاب';

  @override
  String get requireChoiceHelp =>
      'تا گزینه‌ای انتخاب نشود، ردیف علامت نمی‌خورد';

  @override
  String get requireChoicePickSetFirst => 'اول یک مجموعه انتخاب کنید';

  @override
  String get requireChoiceCountHelp => 'اعمال شمارشی با شمارنده تکمیل می‌شوند';

  @override
  String optionsUsedOf(int used, int max) {
    return '$used از $max گزینه استفاده شده.';
  }

  @override
  String get choiceNeeded => 'انتخاب لازم است';

  @override
  String optionSelected(String label) {
    return '$label، انتخاب‌شده';
  }

  @override
  String optionNotSelected(String label) {
    return '$label، انتخاب‌نشده';
  }

  @override
  String optionBreakdownTitle(String set) {
    return 'تفکیک گزینه‌ها — $set';
  }

  @override
  String optionBreakdownCaption(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count بار انجام',
      one: 'یک بار انجام',
    );
    return 'سهم هر گزینه از $_temp0 که انتخابی برایش ثبت شده است';
  }

  @override
  String optionNoChoiceRecorded(int none, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other: '$total روز انجام‌شده',
      one: 'یک روز انجام‌شده',
    );
    return 'انتخابی ثبت نشده — $none از $_temp0';
  }

  @override
  String get optionRemovedSuffix => 'حذف‌شده';

  @override
  String get optionAllAmals => 'همه';

  @override
  String optionScopedCaption(String amal, int count) {
    return '$amal – $count مورد ثبت‌شده';
  }

  @override
  String get optionBreakdownSectionTitle => 'تفکیک گزینه‌ها';

  @override
  String optionBreakdownSwipeHint(int count) {
    return '$count مجموعه – بکشید';
  }

  @override
  String get optionDetailEmpty => 'هنوز انتخابی برای این مجموعه ثبت نشده است.';

  @override
  String get optionDetailTrendHeading => 'روند تغییر';

  @override
  String optionDetailTrendReadout(String option, String from, String to) {
    return 'سهم $option بین هفتهٔ اول و هفتهٔ آخر از $from به $to رسید.';
  }

  @override
  String get optionDetailByAmalHeading => 'به تفکیک عمل';

  @override
  String optionDetailByAmalReadout(
    String best,
    String bestShare,
    String worst,
    String worstShare,
  ) {
    return '$best با $bestShare بالاترین و $worst با $worstShare پایین‌ترین است.';
  }

  @override
  String get optionDetailRecordsHeading => 'رکوردها';

  @override
  String get optionDetailLongestRun => 'طولانی‌ترین زنجیره';

  @override
  String get optionDetailBestWeek => 'بهترین هفته';

  @override
  String get optionDetailCurrentRun => 'زنجیرهٔ فعلی';

  @override
  String get optionDetailRecordsCaption =>
      'بر اساس یک سال گذشته و مستقل از فیلتر بازهٔ بالا.';

  @override
  String get optionDetailRecentDaysHeading => 'روزهای اخیر';

  @override
  String optionDetailRecentDaysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count روز اخیر',
      one: 'یک روز اخیر',
    );
    return '$_temp0';
  }

  @override
  String get amalFivePrayers => 'نمازهای پنج‌گانه';

  @override
  String get amalJumuah => 'نماز جمعه';

  @override
  String get amalWitr => 'نماز وتر';

  @override
  String get amalQada => 'نمازهای قضا';

  @override
  String get amalFajrSunnah => 'سنت فجر';

  @override
  String get amalDhuhrSunnah => 'سنت ظهر';

  @override
  String get amalAsrSunnah => 'سنت عصر';

  @override
  String get amalMaghribSunnah => 'سنت مغرب';

  @override
  String get amalIshaSunnah => 'سنت عشاء';

  @override
  String get amalRawatib => 'سنت‌های راتبه';

  @override
  String get amalSiwak => 'مسواک';

  @override
  String get amalWuduSleep => 'وضو پیش از خواب';

  @override
  String get amalFridayGhusl => 'غسل جمعه';

  @override
  String get amalIshraq => 'نماز اشراق';

  @override
  String get amalWuduPrayer => 'دو رکعت پس از وضو';

  @override
  String get amalTahiyyah => 'تحیة المسجد';

  @override
  String get amalEarlyJumuah => 'زود رفتن به نماز جمعه';

  @override
  String get amalAfterSalah => 'اذکار پس از نماز';

  @override
  String get amalAfterFajr => 'اذکار پس از نماز فجر';

  @override
  String get amalAfterDhuhr => 'اذکار پس از نماز ظهر';

  @override
  String get amalAfterAsr => 'اذکار پس از نماز عصر';

  @override
  String get amalAfterMaghrib => 'اذکار پس از نماز مغرب';

  @override
  String get amalAfterIsha => 'اذکار پس از نماز عشاء';

  @override
  String get amalAyatKursi => 'آیت‌الکرسی';

  @override
  String get amalKursiFajr => 'آیت‌الکرسی پس از فجر';

  @override
  String get amalKursiDhuhr => 'آیت‌الکرسی پس از ظهر';

  @override
  String get amalKursiAsr => 'آیت‌الکرسی پس از عصر';

  @override
  String get amalKursiMaghrib => 'آیت‌الکرسی پس از مغرب';

  @override
  String get amalKursiIsha => 'آیت‌الکرسی پس از عشاء';

  @override
  String get amalSayyidIstighfar => 'سید الاستغفار';

  @override
  String get amalSalawat => 'صلوات بر پیامبر ﷺ';

  @override
  String get amalSubhanallah => 'سبحان‌الله و بحمده';

  @override
  String get amalTahlil => 'لا إله إلا الله';

  @override
  String get amalBedtimeAdhkar => 'اذکار پیش از خواب';

  @override
  String get amalFridaySalawat => 'صلوات روز جمعه';

  @override
  String get amalHawqala => 'لا حول و لا قوة إلا بالله';

  @override
  String get amalTasbihFatimah => 'تسبیح فاطمه';

  @override
  String get amalWakingAdhkar => 'اذکار هنگام بیداری';

  @override
  String get amalDuaAdhan => 'دعای پس از اذان';

  @override
  String get amalDuaIqamah => 'دعا میان اذان و اقامه';

  @override
  String get amalDuaSujood => 'دعا در سجده';

  @override
  String get amalDuaParents => 'دعا برای پدر و مادر';

  @override
  String get amalDuaOthers => 'دعا برای دیگران';

  @override
  String get amalFridayHour => 'دعا در ساعت پایانی جمعه';

  @override
  String get amalLastThird => 'دعا در یک‌سوم پایانی شب';

  @override
  String get amalMulk => 'سوره ملک';

  @override
  String get amalBaqarahEnd => 'دو آیه پایانی سوره بقره';

  @override
  String get amalSajdah => 'سوره سجده';

  @override
  String get amalQuls => 'سه قل';

  @override
  String get amalYasin => 'سوره یس';

  @override
  String get amalWaqiah => 'سوره واقعه';

  @override
  String get amalHifz => 'حفظ قرآن';

  @override
  String get amalMurajaah => 'مرور محفوظات';

  @override
  String get amalTafsir => 'تفسیر';

  @override
  String get amalListenQuran => 'گوش دادن به قرآن';

  @override
  String get amalTeachQuran => 'آموزش قرآن';

  @override
  String get amalMonThu => 'روزهٔ دوشنبه و پنج‌شنبه';

  @override
  String get amalThreeDays => 'سه روز روزه در ماه';

  @override
  String get amalDailySadaqah => 'صدقه روزانه';

  @override
  String get amalFeed => 'غذا دادن به دیگران';

  @override
  String get amalHelpNeed => 'کمک به نیازمند';

  @override
  String get amalOrphan => 'سرپرستی یتیم';

  @override
  String get amalGiveWater => 'آب دادن به تشنگان';

  @override
  String get amalLearnHadith => 'آموختن یک حدیث';

  @override
  String get amalReadBook => 'خواندن کتاب اسلامی';

  @override
  String get amalSeerah => 'مطالعه سیره';

  @override
  String get amalClass => 'شرکت در درس دینی';

  @override
  String get amalArabic => 'یادگیری عربی';

  @override
  String get amalLearnDua => 'یادگیری دعای تازه';

  @override
  String get amalShare => 'انتقال آموخته‌ها';

  @override
  String get amalFiqh => 'مطالعه فقه';

  @override
  String get amalMuhasaba => 'محاسبهٔ نفس شبانه';

  @override
  String get amalSpeakGood => 'سخن نیک یا سکوت';

  @override
  String get amalNoBackbiting => 'پرهیز از غیبت';

  @override
  String get amalAnger => 'فروخوردن خشم';

  @override
  String get amalGaze => 'حفظ نگاه';

  @override
  String get amalTruthful => 'راستگویی';

  @override
  String get amalSmile => 'لبخند';

  @override
  String get amalSalam => 'رواج دادن سلام';

  @override
  String get amalForgive => 'بخشیدن دیگران';

  @override
  String get amalGratitude => 'شکرگزاری';

  @override
  String get amalVisitSick => 'عیادت بیمار';

  @override
  String get amalNeighbours => 'نیکی به همسایه';

  @override
  String get amalRemoveHarm => 'برداشتن مانع از سر راه';

  @override
  String get amalParents => 'نیکی به پدر و مادر';

  @override
  String get amalFamilyTies => 'صله رحم';

  @override
  String get amalHelpHome => 'کمک در کارهای خانه';

  @override
  String get amalTeachChildren => 'آموزش دین به فرزندان';

  @override
  String get amalSpouse => 'خوش‌رفتاری با همسر';

  @override
  String get categoryDua => 'دعا';

  @override
  String get categoryFasting => 'روزه';

  @override
  String get categoryKnowledge => 'علم';

  @override
  String get categoryCharacter => 'اخلاق';

  @override
  String get categoryFamily => 'خانواده';

  @override
  String get libraryTitle => 'کتابخانه اعمال';

  @override
  String get librarySearchHint => 'جستجوی اعمال';

  @override
  String get libraryAll => 'همه';

  @override
  String get libraryAdded => 'به امروز افزوده شد';

  @override
  String libraryAddedShowsOn(String days) {
    return 'افزوده شد – نمایش در $days';
  }

  @override
  String libraryNoMatch(String query) {
    return 'عملی مطابق «$query» یافت نشد';
  }

  @override
  String libraryCreateNamed(String query) {
    return 'ساختن «$query»';
  }

  @override
  String get libraryPickBanner => 'انتخاب از کتابخانه اعمال';

  @override
  String libraryPickBannerSubtitle(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countText عمل آماده',
      one: '$countText عمل آماده',
    );
    return '$_temp0';
  }

  @override
  String get libraryFilledIn => 'از کتابخانه اعمال پر شد';

  @override
  String get libraryChange => 'تغییر';

  @override
  String get libraryEditAction => 'ویرایش';

  @override
  String libraryWeeklyAny(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'هفته‌ای $countText روز',
      one: 'هفته‌ای یک بار',
    );
    return '$_temp0';
  }

  @override
  String libraryMonthlyAny(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ماهی $countText روز',
      one: 'ماهی یک بار',
    );
    return '$_temp0';
  }

  @override
  String libraryTimes(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countText بار',
    );
    return '$_temp0';
  }

  @override
  String get libraryAnyAmount => 'هر تعداد';

  @override
  String libraryAddTooltip(String title) {
    return 'افزودن $title';
  }

  @override
  String get libraryOnList => 'در فهرست شماست';

  @override
  String get todayEmptyBrowse => 'مرور کتابخانه اعمال';
}
