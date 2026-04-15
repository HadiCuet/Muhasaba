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
  String get categoryNewSheetTitle => 'دسته جدید';

  @override
  String get categoryEditSheetTitle => 'ویرایش دسته';

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
      '«آسان بگیرید و سخت نگیرید؛ مژده دهید و مردم را نرمانید.»\n— بخاری';

  @override
  String get hadith7 =>
      '«هرکس راهی را برای جستجوی علم بپیماید، خداوند راه بهشت را برایش آسان می‌سازد.»\n— مسلم';

  @override
  String get hadith8 => '«صدقه مال را کم نمی‌کند.»\n— مسلم';

  @override
  String get hadith9 =>
      '«مؤمن قوی بهتر و محبوب‌تر نزد خداوند است از مؤمن ضعیف، و در هر دو خیر هست.»\n— مسلم';

  @override
  String get hadith10 =>
      '«هر کس روزی صد بار \'سبحان‌الله و بحمده\' بگوید، گناهانش آمرزیده می‌شود حتی اگر مانند کف دریا باشد.»\n— بخاری و مسلم';

  @override
  String get hadith12 =>
      '«هر کس پس از هر نماز واجب آیة‌الکرسی بخواند، چیزی مانع ورود او به بهشت نمی‌شود مگر مرگ.»\n— نسائی';

  @override
  String get hadith13 => '«سخن نیک صدقه است.»\n— بخاری و مسلم';

  @override
  String get hadith14 =>
      '«هر کس به خدا و روز قیامت ایمان دارد، سخن نیک بگوید یا سکوت کند.»\n— بخاری و مسلم';

  @override
  String get hadith15 =>
      '«کسی که از بیوه‌زن و مسکین مراقبت کند، مانند مجاهد در راه خداست.»\n— بخاری و مسلم';

  @override
  String get hadith16 => '«لبخند زدن به برادرت صدقه است.»\n— ترمذی';

  @override
  String get hadith17 =>
      '«بهترین شما کسی است که قرآن بیاموزد و آن را بیاموزاند.»\n— بخاری';

  @override
  String get hadith18 =>
      '«هیچ‌کس غذایی بهتر از دسترنج خود نخورده است.»\n— بخاری';

  @override
  String get hadith19 =>
      '«خداوند مهربان است و در همه امور مهربانی را دوست دارد.»\n— بخاری و مسلم';

  @override
  String historyDayCompleted(int completed, int total) {
    return '$completed از $total انجام شده';
  }

  @override
  String get settingsSchedule => 'زمان‌بندی';

  @override
  String get settingsAppearance => 'ظاهر';

  @override
  String get settingsAboutTagline => 'همراه روزانه دین شما';

  @override
  String get settingsRolloverSub => 'روز چه زمانی بازنشانی می‌شود';

  @override
  String get settingsAbout => 'درباره';

  @override
  String get settingsVersion => 'نسخه';

  @override
  String get settingsDeveloper => 'توسعه‌دهنده';

  @override
  String get settingsSupport => 'پشتیبانی';

  @override
  String get settingsRate => 'به برنامه امتیاز دهید';

  @override
  String get settingsContact => 'تماس با ما';

  @override
  String get settingsReportBug => 'گزارش اشکال';

  @override
  String get settingsRequestFeature => 'درخواست ویژگی';

  @override
  String settingsSupportFallback(String email) {
    return 'نمی‌توان ایمیل را باز کرد. لطفاً به $email ایمیل بزنید.';
  }

  @override
  String get settingsPrivacyPolicy => 'سیاست حفظ حریم خصوصی';

  @override
  String get settingsPrivacyOpenFailed =>
      'باز کردن سیاست حفظ حریم خصوصی ممکن نشد.';

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
      '«قوی آن نیست که در کشتی غالب شود، بلکه قوی کسی است که هنگام خشم خود را کنترل کند.»\n— بخاری و مسلم';

  @override
  String get hadith40 =>
      '«پس از هر نماز سی و سه بار \'سبحان‌الله\'، \'الحمدلله\' و \'الله اکبر\' بگویید.»\n— مسلم';

  @override
  String get hadith41 => '«بهترین ذکر لا اله الا الله است.»\n— ترمذی';

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
      '«صله رحم‌کننده واقعی کسی نیست که مقابله‌به‌مثل کند، بلکه کسی است که حتی وقتی قطع رحم می‌شود، پیوند را حفظ کند.»\n— بخاری';

  @override
  String get hadith49 =>
      '«هر کس غذا بخورد و بگوید: \'سپاس خدایی را که این غذا را به من خوراند و بدون هیچ نیرو و توانی از جانب من آن را روزی‌ام کرد،\' گناهان گذشته‌اش آمرزیده می‌شود.»\n— ترمذی';

  @override
  String get hadith53 =>
      '«هیچ کار نیکی را کوچک نشمارید، حتی اگر ملاقات برادرتان با چهره‌ای خندان باشد.»\n— مسلم';

  @override
  String get hadith54 =>
      '«بهترین شما کسی است که با خانواده‌اش بهترین رفتار را داشته باشد.»\n— ترمذی';

  @override
  String get hadith55 =>
      '«هر کس شب دو آیه آخر سوره بقره را بخواند، برایش کافی است.»\n— بخاری و مسلم';

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
      '«هیچ خستگی، بیماری، اندوه، غم، آزار یا ناراحتی به مسلمان نمی‌رسد — حتی خار خلیدن — مگر آنکه خداوند به واسطه آن گناهانش را می‌بخشد.»\n— بخاری و مسلم';

  @override
  String get hadith69 =>
      '«دعای مسلمان برای برادرش در غیابش همواره مستجاب است.»\n— مسلم';

  @override
  String get hadith70 =>
      '«هر کس سه بار از خداوند بهشت بخواهد، بهشت می‌گوید: خدایا او را وارد بهشت کن.»\n— ترمذی';

  @override
  String get hadith71 =>
      '«فاضل‌ترین روزه پس از رمضان، روزه ماه خدا یعنی محرم است.»\n— مسلم';

  @override
  String get hadith72 =>
      '«هر کس حج کند و مرتکب فحش و گناه نشود، مانند روزی که مادرش او را زاییده بازمی‌گردد.»\n— بخاری و مسلم';

  @override
  String get hadith73 =>
      '«عمره تا عمره کفاره گناهان بین آن دو است.»\n— بخاری و مسلم';

  @override
  String get hadith74 =>
      '«پیش از آنکه فتنه‌ها مانند تکه‌های شب تاریک فرا رسند، به سوی کارهای نیک بشتابید.»\n— مسلم';

  @override
  String get hadith75 =>
      '«دو رکعت سنت فجر از دنیا و آنچه در آن است بهتر است.»\n— مسلم';

  @override
  String get hadith77 =>
      '«اگر بر خداوند آن‌گونه که شایسته اوست توکل می‌کردید، شما را همان‌طور روزی می‌داد که پرندگان را روزی می‌دهد.»\n— ترمذی';

  @override
  String get hadith78 =>
      '«هر کس بیماری را عیادت کند، تا بازگردد در باغ بهشت است.»\n— مسلم';

  @override
  String get hadith79 =>
      '«سلام را بگسترانید، گرسنگان را غذا دهید و شب هنگامی که مردم خوابند نماز بخوانید تا با سلامت وارد بهشت شوید.»\n— ترمذی';

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
      '«هر کس چیزی را به خاطر خداوند ترک کند، خداوند بهتر از آن را جایگزین می‌کند.»\n— احمد';

  @override
  String get hadith86 =>
      '«هر کس عیب مسلمانی را بپوشاند، خداوند عیب او را در روز قیامت می‌پوشاند.»\n— بخاری و مسلم';

  @override
  String get hadith87 =>
      '«در دنیا چنان باش که گویی غریبه‌ای یا مسافری هستی.»\n— بخاری';

  @override
  String get hadith88 =>
      '«هر کس بر شخصی در سختی آسان بگیرد، خداوند در دنیا و آخرت بر او آسان می‌گیرد.»\n— مسلم';

  @override
  String get hadith89 => '«اعمال بسته به نیت‌هاست.»\n— بخاری و مسلم';

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
  String get hadith95 => '«خداوند با گذشت، جز بر عزت بنده نمی‌افزاید.»\n— مسلم';

  @override
  String get hadith96 => '«شترت را ببند و سپس بر خدا توکل کن.»\n— ترمذی';

  @override
  String get hadith97 =>
      '«شگفتا از کار مؤمن که همه چیز برایش خیر است.»\n— مسلم';

  @override
  String get hadith98 =>
      '«مسلمان برادر مسلمان است: به او ظلم نمی‌کند، رهایش نمی‌کند و تحقیرش نمی‌کند.»\n— مسلم';
}
