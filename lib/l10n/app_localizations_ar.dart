// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get repeatsOnDaysHint => 'يتكرر في الأيام المحددة';

  @override
  String get newDayStarted => 'بدأ يوم جديد';

  @override
  String get appTitle => 'محاسبة';

  @override
  String get tabToday => 'اليوم';

  @override
  String get tabStats => 'الإحصائيات';

  @override
  String get tabHistory => 'السجل';

  @override
  String get tabSettings => 'الإعدادات';

  @override
  String get tabChallenge => 'التحدي';

  @override
  String get tabInsights => 'الإحصائيات';

  @override
  String get insightsTitle => 'الإحصائيات';

  @override
  String get insightsOverview => 'نظرة عامة';

  @override
  String get insightsDaily => 'يومي';

  @override
  String get insightsArchive => 'الأرشيف';

  @override
  String get archivedEmpty =>
      'لا يوجد شيء هنا بعد. الأعمال التي تزيلها من المتابعة تظهر هنا لتتمكن من استعادتها.';

  @override
  String archivedStoppedOn(String date) {
    return 'أُزيل في $date';
  }

  @override
  String get archivedRestore => 'استعادة';

  @override
  String archivedRestored(String title) {
    return 'عاد «$title» إلى قائمتك.';
  }

  @override
  String get newChallenge => 'تحدٍّ جديد';

  @override
  String get newAmal => 'عمل جديد';

  @override
  String get editAmal => 'تعديل العمل';

  @override
  String get newAmalTitle => 'عمل جديد';

  @override
  String get save => 'حفظ';

  @override
  String get cancel => 'إلغاء';

  @override
  String get ok => 'حسنًا';

  @override
  String get clear => 'مسح';

  @override
  String get titleLabel => 'العنوان';

  @override
  String get titleRequired => 'العنوان مطلوب';

  @override
  String get titleTooLong => 'العنوان طويل جدًا';

  @override
  String get frequencyLabel => 'التكرار';

  @override
  String get frequencyDaily => 'يومي';

  @override
  String get frequencyWeekly => 'أسبوعي';

  @override
  String get frequencyMonthly => 'شهري';

  @override
  String get categoryLabel => 'الفئة';

  @override
  String get categoryOther => 'أخرى';

  @override
  String get categorySalah => 'صلاة';

  @override
  String get categoryDhikr => 'ذكر';

  @override
  String get categoryQuran => 'قرآن';

  @override
  String get categoryCharity => 'صدقة';

  @override
  String get categorySunnah => 'سُنّة';

  @override
  String get timesPerPeriod => 'عدد المرات في الفترة';

  @override
  String get custom => 'مخصص';

  @override
  String get customTargetHint => 'مثلًا ٥٠';

  @override
  String get targetAny => 'أي عدد';

  @override
  String get targetAnyHelp => 'بلا هدف محدد — يكتمل بأي مقدار';

  @override
  String get dayOfWeek => 'يوم الأسبوع';

  @override
  String get anyDay => 'أي يوم';

  @override
  String get anyDayHint => 'أي يوم (يظهر اليوم ويختفي في اليوم التالي)';

  @override
  String onlyDayHint(String day) {
    return 'يوم $day فقط';
  }

  @override
  String get dateOfMonth => 'تاريخ الشهر';

  @override
  String get repeatMode => 'نمط التكرار';

  @override
  String get onSetDays => 'في أيام محددة';

  @override
  String get onSetDates => 'في تواريخ محددة';

  @override
  String get anyDayMode => 'أي يوم';

  @override
  String get datesOfMonth => 'التواريخ';

  @override
  String get daysPerWeekQuestion => 'كم يومًا في الأسبوع؟';

  @override
  String get daysPerMonthQuestion => 'كم يومًا في الشهر؟';

  @override
  String get pickAtLeastOneDay => 'اختر يومًا واحدًا على الأقل';

  @override
  String get pickAtLeastOneDate => 'اختر تاريخًا واحدًا على الأقل';

  @override
  String get previewDaily => 'يتكرر كل يوم';

  @override
  String previewWeeklyDays(String days) {
    return 'يتكرر كل $days';
  }

  @override
  String previewWeeklyAny(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count يوم',
      many: '$count يومًا',
      few: '$count أيام',
      two: 'يومين',
      one: 'يوم واحد',
    );
    return 'يتكرر في أي $_temp0 من الأسبوع';
  }

  @override
  String previewMonthlyDates(int count, String dates) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'يتكرر في أيام $dates من كل شهر',
      two: 'يتكرر في يومي $dates من كل شهر',
      one: 'يتكرر في يوم $dates من كل شهر',
    );
    return '$_temp0';
  }

  @override
  String previewMonthlyAny(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count يوم',
      many: '$count يومًا',
      few: '$count أيام',
      two: 'يومين',
      one: 'يوم واحد',
    );
    return 'يتكرر في أي $_temp0 من الشهر';
  }

  @override
  String get anyDate => 'أي تاريخ';

  @override
  String get anyDateHint => 'أي تاريخ (يظهر اليوم ويختفي في اليوم التالي)';

  @override
  String onlyDateHint(String date) {
    return 'في $date فقط';
  }

  @override
  String get startPreChecked => 'يبدأ مكتملًا';

  @override
  String get startPreCheckedSubtitle =>
      'مع بداية كل فترة جديدة يُعلَّم هذا العمل مكتملًا تلقائيًا، إلى أن تلغي تحديده.';

  @override
  String get reminder => 'تذكير';

  @override
  String get reminderNone => 'لا شيء';

  @override
  String reminderTime(String time) {
    return 'تذكير: $time';
  }

  @override
  String get reminderPermissionWarning =>
      'تم حفظ التذكير، لكن الإشعارات غير مسموح بها. فعّلها من إعدادات النظام لتلقي التنبيهات.';

  @override
  String get settingsReminders => 'التذكيرات';

  @override
  String get dailyReminder => 'التذكير اليومي';

  @override
  String get dailyReminderSubtitle => 'تذكير لطيف بتسجيل أعمالك';

  @override
  String get dailyReminderTimeLabel => 'وقت التذكير';

  @override
  String get dailyReminderBody => 'خصّص لحظة لتسجيل أعمال اليوم.';

  @override
  String get groupByCategory => 'تجميع حسب الفئة';

  @override
  String get flatList => 'قائمة واحدة';

  @override
  String errorGeneric(String error) {
    return 'خطأ: $error';
  }

  @override
  String get todayEmptyHint => 'اضغط + لإضافة أول عمل لك.';

  @override
  String get noteLabel => 'ملاحظة';

  @override
  String get noteHint => 'مثلًا: صليت في المسجد';

  @override
  String get completed => 'مكتمل';

  @override
  String get notCompleted => 'غير مكتمل';

  @override
  String progressOf(String progress, String target) {
    return 'تم إنجاز $progress من $target';
  }

  @override
  String progressOpen(String count) {
    return 'المُنجَز: $count';
  }

  @override
  String get removeFromToday => 'إزالة من اليوم';

  @override
  String get removeFromTodaySubtitle => 'يُخفى لهذا اليوم فقط، ويعود غدًا.';

  @override
  String get removeFromTracking => 'إزالة من المتابعة';

  @override
  String get removeFromTrackingSubtitle =>
      'يُزال من قائمتك نهائيًا، مع الاحتفاظ بسجله.';

  @override
  String get chooseIcon => 'اختر أيقونة';

  @override
  String get iconNone => 'لا شيء';

  @override
  String get recentlyUsed => 'المستخدمة مؤخرًا';

  @override
  String get emojiSectionGeneral => 'عام';

  @override
  String get categoryNameHint => 'الاسم';

  @override
  String get categoryNew => '+ جديدة';

  @override
  String get categoryNewSheetTitle => 'فئة جديدة';

  @override
  String get categoryEditSheetTitle => 'تعديل الفئة';

  @override
  String get addAmal => 'إضافة عمل';

  @override
  String get customAmal => 'عمل مخصص';

  @override
  String get amalTasbih => 'التسبيح ٣٣ مرة';

  @override
  String get amalIstighfar => 'الاستغفار';

  @override
  String get amalSurahKahf => 'سورة الكهف';

  @override
  String get amalSadaqah => 'صدقة';

  @override
  String get amalTahajjud => 'التهجد';

  @override
  String get amalDuha => 'صلاة الضحى';

  @override
  String get amalFajr => 'الفجر';

  @override
  String get amalDhuhr => 'الظهر';

  @override
  String get amalAsr => 'العصر';

  @override
  String get amalMaghrib => 'المغرب';

  @override
  String get amalIsha => 'العشاء';

  @override
  String get amalMorningAdhkar => 'أذكار الصباح';

  @override
  String get amalEveningAdhkar => 'أذكار المساء';

  @override
  String get amalTilawah => 'التلاوة';

  @override
  String get settingsTitle => 'الإعدادات';

  @override
  String settingsLoadError(String error) {
    return 'فشل تحميل الإعدادات:\n$error';
  }

  @override
  String get sectionDayBoundary => 'نهاية اليوم';

  @override
  String get rolloverHour => 'ساعة بداية اليوم';

  @override
  String get rolloverAtMidnight => 'ينتهي اليوم عند منتصف الليل.';

  @override
  String rolloverSubtitle(String time) {
    return 'تبقى أعمال الأمس قابلة للتعديل حتى $time.';
  }

  @override
  String get pickRolloverHour => 'اختر الساعة التي يبدأ فيها اليوم الجديد';

  @override
  String get sectionWeekMonth => 'الأسبوع والشهر';

  @override
  String get startOfWeek => 'بداية الأسبوع';

  @override
  String get startOfMonth => 'بداية الشهر';

  @override
  String get startOfMonthClamped =>
      'إذا اخترت يومًا بعد ٢٨، فسيُعتمد آخر يوم في الأشهر الأقصر.';

  @override
  String get sectionAppearance => 'المظهر';

  @override
  String get theme => 'السمة';

  @override
  String get themeSystem => 'حسب النظام';

  @override
  String get themeLight => 'فاتح';

  @override
  String get themeDark => 'داكن';

  @override
  String get sectionLanguage => 'اللغة';

  @override
  String get language => 'اللغة';

  @override
  String get systemDefault => 'لغة النظام';

  @override
  String get aboutTitle => 'محاسبة';

  @override
  String get aboutSubtitle =>
      'دفترك الشخصي لمحاسبة النفس في أمور الدين. تبقى جميع بياناتك على هذا الجهاز.';

  @override
  String get statsTitle => 'الإحصائيات';

  @override
  String statsLoadError(String error) {
    return 'فشل تحميل الإحصائيات:\n$error';
  }

  @override
  String get perAmal => 'لكل عمل';

  @override
  String get thisWeek => 'هذا الأسبوع';

  @override
  String get thisMonth => 'هذا الشهر';

  @override
  String get totalCompletions => 'إجمالي الإنجازات';

  @override
  String get streakCurrent => 'الحالي';

  @override
  String get streakLongest => 'الأطول';

  @override
  String get ratioWeek => 'الأسبوع';

  @override
  String get ratioMonth => 'الشهر';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'يوم',
      many: 'يومًا',
      few: 'أيام',
      two: 'يومان',
      one: 'يوم',
      zero: 'يوم',
    );
    return '$_temp0';
  }

  @override
  String streakWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'أسبوع',
      many: 'أسبوعًا',
      few: 'أسابيع',
      two: 'أسبوعان',
      one: 'أسبوع',
      zero: 'أسبوع',
    );
    return '$_temp0';
  }

  @override
  String streakMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'شهر',
      many: 'شهرًا',
      few: 'أشهر',
      two: 'شهران',
      one: 'شهر',
      zero: 'شهر',
    );
    return '$_temp0';
  }

  @override
  String get frequencyBadgeDaily => 'يومي';

  @override
  String get frequencyBadgeWeekly => 'أسبوعي';

  @override
  String get frequencyBadgeMonthly => 'شهري';

  @override
  String get statsEmpty =>
      'لا توجد أعمال بعد. أضف عملًا من صفحة اليوم لبدء المتابعة.';

  @override
  String get statsToday => 'اليوم';

  @override
  String get statsThisWeek => 'هذا الأسبوع';

  @override
  String get statsThisMonth => 'هذا الشهر';

  @override
  String get statsAllTime => 'منذ البداية';

  @override
  String get statsCustomRange => 'فترة مخصصة';

  @override
  String get statsAllCategories => 'الكل';

  @override
  String get statsAllAmals => 'الكل';

  @override
  String get statsCompleted => 'المُنجَز';

  @override
  String get statsExpected => 'المطلوب';

  @override
  String get statsVsPrevious => 'مقارنة بالسابق';

  @override
  String get statsByCategory => 'حسب الفئة';

  @override
  String get statsPerAmal => 'لكل عمل';

  @override
  String get statsTotalCaption => 'الإجمالي';

  @override
  String statsDaysFraction(String done, String expectedText, num expected) {
    String _temp0 = intl.Intl.pluralLogic(
      expected,
      locale: localeName,
      other: 'يوم',
      many: 'يومًا',
      few: 'أيام',
      two: 'يومان',
      one: 'يوم',
      zero: 'يوم',
    );
    return '$done/$expectedText $_temp0';
  }

  @override
  String get statsCurrentStreak => 'السلسلة الحالية';

  @override
  String get statsBestStreak => 'أفضل سلسلة';

  @override
  String get statsTotalDays => 'إجمالي الأيام';

  @override
  String get statsConsistency => 'الانتظام';

  @override
  String get statsLast5Weeks => 'آخر ٥ أسابيع';

  @override
  String get statsDailyBreakdown => 'التفصيل اليومي';

  @override
  String get statsCompletionRate => 'نسبة الإنجاز';

  @override
  String get statsAmountPerDay => 'المقدار اليومي';

  @override
  String statsCountTotal(String count) {
    return 'الإجمالي $count';
  }

  @override
  String statsCountAvg(String amount) {
    return 'المعدل $amount يوميًا';
  }

  @override
  String statsCountBest(String count, String day) {
    return 'الأعلى $count – $day';
  }

  @override
  String get statsFilterTime => 'الوقت';

  @override
  String get statsFilterCategory => 'الفئة';

  @override
  String get statsFilterAmal => 'العمل';

  @override
  String get statsStreaks => 'السلاسل';

  @override
  String get statsSelectDateRange => 'اختر الفترة';

  @override
  String get historyTitle => 'السجل';

  @override
  String get jumpToDate => 'الانتقال إلى تاريخ';

  @override
  String historyEmptyDay(String date) {
    return 'لا توجد أعمال مسجلة في $date';
  }

  @override
  String get streakUnitD => 'ي';

  @override
  String get streakUnitW => 'س';

  @override
  String get streakUnitM => 'ش';

  @override
  String get mondayShort => 'اثنين';

  @override
  String get tuesdayShort => 'ثلاثاء';

  @override
  String get wednesdayShort => 'أربعاء';

  @override
  String get thursdayShort => 'خميس';

  @override
  String get fridayShort => 'جمعة';

  @override
  String get saturdayShort => 'سبت';

  @override
  String get sundayShort => 'أحد';

  @override
  String get mondayFull => 'الاثنين';

  @override
  String get tuesdayFull => 'الثلاثاء';

  @override
  String get wednesdayFull => 'الأربعاء';

  @override
  String get thursdayFull => 'الخميس';

  @override
  String get fridayFull => 'الجمعة';

  @override
  String get saturdayFull => 'السبت';

  @override
  String get sundayFull => 'الأحد';

  @override
  String get hadith0 =>
      '«أحب الأعمال إلى الله أدومها وإن قلّ.»\n— البخاري ومسلم';

  @override
  String get hadith2 =>
      '«إذا مات ابن آدم انقطع عمله إلا من ثلاث: صدقة جارية، أو علم يُنتفع به، أو ولد صالح يدعو له.»\n— مسلم';

  @override
  String get hadith3 => '«من صلّى البَرْدَين دخل الجنة.»\n— البخاري';

  @override
  String get hadith4 =>
      '«إن الله لا ينظر إلى صوركم وأموالكم، ولكن ينظر إلى قلوبكم وأعمالكم.»\n— مسلم';

  @override
  String get hadith6 => '«يسّروا ولا تعسّروا، وبشّروا ولا تنفّروا.»\n— البخاري';

  @override
  String get hadith7 =>
      '«من سلك طريقًا يلتمس فيه علمًا سهّل الله له به طريقًا إلى الجنة.»\n— مسلم';

  @override
  String get hadith8 => '«ما نقصت صدقة من مال.»\n— مسلم';

  @override
  String get hadith9 =>
      '«المؤمن القوي خير وأحب إلى الله من المؤمن الضعيف، وفي كلٍّ خير.»\n— مسلم';

  @override
  String get hadith10 =>
      '«من قال سبحان الله وبحمده في يوم مائة مرة حُطّت خطاياه وإن كانت مثل زبد البحر.»\n— البخاري ومسلم';

  @override
  String get hadith12 =>
      '«من قرأ آية الكرسي في دبر كل صلاة مكتوبة لم يمنعه من دخول الجنة إلا أن يموت.»\n— النسائي';

  @override
  String get hadith13 => '«الكلمة الطيبة صدقة.»\n— البخاري ومسلم';

  @override
  String get hadith14 =>
      '«من كان يؤمن بالله واليوم الآخر فليقل خيرًا أو ليصمت.»\n— البخاري ومسلم';

  @override
  String get hadith15 =>
      '«الساعي على الأرملة والمسكين كالمجاهد في سبيل الله.»\n— البخاري ومسلم';

  @override
  String get hadith16 => '«تبسّمك في وجه أخيك لك صدقة.»\n— الترمذي';

  @override
  String get hadith17 => '«خيركم من تعلم القرآن وعلمه.»\n— البخاري';

  @override
  String get hadith18 =>
      '«ما أكل أحد طعامًا قط خيرًا من أن يأكل من عمل يده.»\n— البخاري';

  @override
  String get hadith19 =>
      '«إن الله رفيق يحب الرفق في الأمر كله.»\n— البخاري ومسلم';

  @override
  String historyDayCompleted(String completed, String total) {
    return 'تم إنجاز $completed من $total';
  }

  @override
  String get settingsSchedule => 'التوقيت';

  @override
  String get settingsAppearance => 'المظهر';

  @override
  String get settingsAboutTagline => 'رفيقك اليومي في الدين';

  @override
  String get settingsRolloverSub => 'متى يبدأ اليوم الجديد';

  @override
  String get settingsAbout => 'عن التطبيق';

  @override
  String get settingsVersion => 'الإصدار';

  @override
  String get settingsDeveloper => 'المطور';

  @override
  String get settingsSupport => 'الدعم';

  @override
  String get settingsRate => 'قيّم التطبيق';

  @override
  String get settingsContact => 'تواصل معنا';

  @override
  String get settingsReportBug => 'الإبلاغ عن خطأ';

  @override
  String get settingsRequestFeature => 'طلب ميزة';

  @override
  String settingsSupportFallback(String email) {
    return 'تعذّر فتح تطبيق البريد. يُرجى مراسلتنا على $email.';
  }

  @override
  String get settingsPrivacyPolicy => 'سياسة الخصوصية';

  @override
  String get settingsPrivacyOpenFailed => 'تعذّر فتح سياسة الخصوصية.';

  @override
  String get hadith20 =>
      '«مَنْ صَامَ رَمَضَانَ إِيمَانًا وَاحْتِسَابًا غُفِرَ لَهُ مَا تَقَدَّمَ مِنْ ذَنْبِهِ.»\n— البخاري ومسلم';

  @override
  String get hadith22 =>
      '«الدُّعَاءُ بَيْنَ الأَذَانِ وَالإِقَامَةِ لا يُرَدُّ.»\n— أبو داود';

  @override
  String get hadith23 =>
      '«مَنْ بَنَى مَسْجِدًا لِلَّهِ بَنَى اللَّهُ لَهُ بَيْتًا فِي الجَنَّةِ.»\n— البخاري ومسلم';

  @override
  String get hadith24 =>
      '«خَيْرُ صُفُوفِ الرِّجَالِ أَوَّلُهَا وَخَيْرُ صُفُوفِ النِّسَاءِ آخِرُهَا.»\n— مسلم';

  @override
  String get hadith25 => '«الصِّيَامُ جُنَّةٌ مِنَ النَّارِ.»\n— النسائي';

  @override
  String get hadith26 =>
      '«مَنْ صَلَّى اثْنَتَيْ عَشْرَةَ رَكْعَةً فِي يَوْمٍ وَلَيْلَةٍ بُنِيَ لَهُ بِهِنَّ بَيْتٌ فِي الجَنَّةِ.»\n— مسلم';

  @override
  String get hadith27 =>
      '«الْمَاهِرُ بِالقُرْآنِ مَعَ السَّفَرَةِ الكِرَامِ البَرَرَةِ.»\n— البخاري ومسلم';

  @override
  String get hadith29 => '«أَفْضَلُ الصَّدَقَةِ سَقْيُ المَاءِ.»\n— أحمد';

  @override
  String get hadith30 =>
      '«مَنْ نَفَّسَ عَنْ مُؤْمِنٍ كُرْبَةً مِنْ كُرَبِ الدُّنْيَا نَفَّسَ اللَّهُ عَنْهُ كُرْبَةً مِنْ كُرَبِ يَوْمِ القِيَامَةِ.»\n— مسلم';

  @override
  String get hadith32 =>
      '«الحَيَاءُ شُعْبَةٌ مِنَ الإِيمَانِ.»\n— البخاري ومسلم';

  @override
  String get hadith34 =>
      '«مَنْ يَتَصَبَّرْ يُصَبِّرْهُ اللَّهُ.»\n— البخاري ومسلم';

  @override
  String get hadith36 =>
      '«لا يُؤْمِنُ أَحَدُكُمْ حَتَّى يُحِبَّ لأَخِيهِ مَا يُحِبُّ لِنَفْسِهِ.»\n— البخاري ومسلم';

  @override
  String get hadith37 =>
      '«أَطْعِمُوا الجَائِعَ، وَعُودُوا المَرِيضَ، وَفُكُّوا العَانِيَ.»\n— البخاري';

  @override
  String get hadith38 =>
      '«لَيْسَ الشَّدِيدُ بِالصُّرَعَةِ، إِنَّمَا الشَّدِيدُ الَّذِي يَمْلِكُ نَفْسَهُ عِنْدَ الغَضَبِ.»\n— البخاري ومسلم';

  @override
  String get hadith40 =>
      '«تُسَبِّحُونَ دُبُرَ كُلِّ صَلاةٍ ثَلاثًا وَثَلاثِينَ، وَتَحْمَدُونَ ثَلاثًا وَثَلاثِينَ، وَتُكَبِّرُونَ ثَلاثًا وَثَلاثِينَ.»\n— مسلم';

  @override
  String get hadith41 =>
      '«أَفْضَلُ الذِّكْرِ لا إِلَهَ إِلَّا اللَّهُ.»\n— الترمذي';

  @override
  String get hadith42 =>
      '«نِعْمَتَانِ مَغْبُونٌ فِيهِمَا كَثِيرٌ مِنَ النَّاسِ: الصِّحَّةُ وَالفَرَاغُ.»\n— البخاري';

  @override
  String get hadith43 =>
      '«اغْتَنِمْ خَمْسًا قَبْلَ خَمْسٍ: شَبَابَكَ قَبْلَ هَرَمِكَ، وَصِحَّتَكَ قَبْلَ سَقَمِكَ، وَغِنَاكَ قَبْلَ فَقْرِكَ، وَفَرَاغَكَ قَبْلَ شُغْلِكَ، وَحَيَاتَكَ قَبْلَ مَوْتِكَ.»\n— الحاكم';

  @override
  String get hadith44 =>
      '«مَنْ قَرَأَ قُلْ هُوَ اللَّهُ أَحَدٌ عَشْرَ مَرَّاتٍ بَنَى اللَّهُ لَهُ بَيْتًا فِي الجَنَّةِ.»\n— أحمد';

  @override
  String get hadith45 =>
      '«أَفْضَلُ الصَّلاةِ بَعْدَ الفَرِيضَةِ صَلاةُ اللَّيْلِ.»\n— مسلم';

  @override
  String get hadith46 =>
      '«الصَّدَقَةُ تُطْفِئُ الخَطِيئَةَ كَمَا يُطْفِئُ المَاءُ النَّارَ.»\n— الترمذي';

  @override
  String get hadith47 =>
      '«لَيْسَ الوَاصِلُ بِالمُكَافِئِ، وَلَكِنَّ الوَاصِلَ الَّذِي إِذَا قُطِعَتْ رَحِمُهُ وَصَلَهَا.»\n— البخاري';

  @override
  String get hadith49 =>
      '«مَنْ أَكَلَ طَعَامًا فَقَالَ: الحَمْدُ لِلَّهِ الَّذِي أَطْعَمَنِي هَذَا وَرَزَقَنِيهِ مِنْ غَيْرِ حَوْلٍ مِنِّي وَلا قُوَّةٍ، غُفِرَ لَهُ مَا تَقَدَّمَ مِنْ ذَنْبِهِ.»\n— الترمذي';

  @override
  String get hadith53 =>
      '«لا تحقرنّ من المعروف شيئًا ولو أن تلقى أخاك بوجه طلق.»\n— مسلم';

  @override
  String get hadith54 => '«خيركم خيركم لأهله.»\n— الترمذي';

  @override
  String get hadith55 =>
      '«من قرأ بالآيتين من آخر سورة البقرة في ليلة كفتاه.»\n— البخاري ومسلم';

  @override
  String get hadith56 =>
      '«الدنيا متاع، وخير متاع الدنيا المرأة الصالحة.»\n— مسلم';

  @override
  String get hadith57 =>
      '«ثلاث دعوات لا تُردّ: دعوة الصائم، ودعوة الإمام العادل، ودعوة المظلوم.»\n— الترمذي';

  @override
  String get hadith58 =>
      '«من صلّى عليّ صلاة واحدة صلّى الله عليه بها عشرًا.»\n— مسلم';

  @override
  String get hadith65 => '«المؤمن مرآة المؤمن.»\n— أبو داود';

  @override
  String get hadith66 =>
      '«إن الصدق يهدي إلى البرّ وإن البرّ يهدي إلى الجنة.»\n— البخاري ومسلم';

  @override
  String get hadith67 =>
      '«أدِّ الأمانة إلى من ائتمنك ولا تخن من خانك.»\n— أبو داود والترمذي';

  @override
  String get hadith68 =>
      '«ما يصيب المسلم من نصب ولا وصب ولا همّ ولا حزن ولا أذى ولا غمّ حتى الشوكة يُشاكها إلا كفّر الله بها من خطاياه.»\n— البخاري ومسلم';

  @override
  String get hadith69 =>
      '«دعوة المرء المسلم لأخيه بظهر الغيب مستجابة.»\n— مسلم';

  @override
  String get hadith70 =>
      '«من سأل الله الجنة ثلاث مرات قالت الجنة: اللهم أدخله الجنة.»\n— الترمذي';

  @override
  String get hadith71 => '«أفضل الصيام بعد رمضان شهر الله المحرّم.»\n— مسلم';

  @override
  String get hadith72 =>
      '«من حجّ لله فلم يرفث ولم يفسق رجع كيوم ولدته أمه.»\n— البخاري ومسلم';

  @override
  String get hadith73 =>
      '«العمرة إلى العمرة كفّارة لما بينهما.»\n— البخاري ومسلم';

  @override
  String get hadith74 =>
      '«بَادِرُوا بِالأَعْمَالِ فِتَنًا كَقِطَعِ اللَّيْلِ المُظْلِمِ.»\n— مسلم';

  @override
  String get hadith75 => '«ركعتا الفجر خير من الدنيا وما فيها.»\n— مسلم';

  @override
  String get hadith77 =>
      '«لو أنكم كنتم توكّلون على الله حقّ توكّله لرزقكم كما يرزق الطير.»\n— الترمذي';

  @override
  String get hadith78 =>
      '«من عاد مريضًا لم يزل في خُرفة الجنة حتى يرجع.»\n— مسلم';

  @override
  String get hadith79 =>
      '«أفشوا السلام، وأطعموا الطعام، وصلّوا بالليل والناس نيام، تدخلوا الجنة بسلام.»\n— الترمذي';

  @override
  String get hadith80 =>
      '«لا يَشْكُرُ اللَّهَ مَنْ لا يَشْكُرُ النَّاسَ.»\n— الترمذي';

  @override
  String get hadith81 =>
      '«لا حسد إلا في اثنتين: رجل آتاه الله مالًا فسلّطه على هلكته في الحق، ورجل آتاه الله الحكمة فهو يقضي بها ويعلّمها.»\n— البخاري ومسلم';

  @override
  String get hadith82 =>
      '«المرء على دين خليله، فلينظر أحدكم من يخالل.»\n— أبو داود والترمذي';

  @override
  String get hadith85 =>
      '«إنك لن تدع شيئًا لله عز وجل إلا بدّلك الله به ما هو خير لك منه.»\n— أحمد';

  @override
  String get hadith86 =>
      '«من ستر مسلمًا ستره الله يوم القيامة.»\n— البخاري ومسلم';

  @override
  String get hadith87 => '«كن في الدنيا كأنك غريب أو عابر سبيل.»\n— البخاري';

  @override
  String get hadith88 =>
      '«من يسّر على معسر يسّر الله عليه في الدنيا والآخرة.»\n— مسلم';

  @override
  String get hadith89 => '«إنما الأعمال بالنيات.»\n— البخاري ومسلم';

  @override
  String get hadith90 =>
      '«إيّاكم والظن فإن الظن أكذب الحديث.»\n— البخاري ومسلم';

  @override
  String get hadith93 =>
      '«اجتمعوا على طعامكم واذكروا اسم الله عليه يُبارَك لكم فيه.»\n— أبو داود';

  @override
  String get hadith94 =>
      '«لا يَقْعُدُ قَوْمٌ يَذْكُرُونَ اللَّهَ إِلَّا حَفَّتْهُمُ المَلائِكَةُ وَغَشِيَتْهُمُ الرَّحْمَةُ وَنَزَلَتْ عَلَيْهِمُ السَّكِينَةُ.»\n— مسلم';

  @override
  String get hadith95 => '«ما زادَ اللهُ عبدًا بعفوٍ إلا عِزًّا.»\n— مسلم';

  @override
  String get hadith96 => '«اعقلها وتوكل.»\n— الترمذي';

  @override
  String get hadith97 => '«عجبًا لأمر المؤمن، إن أمره كله خير.»\n— مسلم';

  @override
  String get hadith98 =>
      '«المسلم أخو المسلم لا يظلمه ولا يخذله ولا يحقره.»\n— مسلم';

  @override
  String get delete => 'حذف';

  @override
  String get remove => 'إزالة';

  @override
  String get deleteAmalConfirmTitle => 'إزالته من المتابعة؟';

  @override
  String deleteAmalConfirmBody(String title) {
    return 'سيُخفى «$title» من قائمتك، وسيبقى سجله محفوظًا.';
  }

  @override
  String get genericError => 'حدث خطأ ما. يرجى المحاولة مرة أخرى.';

  @override
  String get notificationChannelName => 'تذكيرات الأعمال';

  @override
  String get notificationChannelDescription =>
      'تذكيرات يومية للأعمال التي تتابعها.';

  @override
  String get invalidAmalId => 'معرّف عمل غير صالح';

  @override
  String get tutorialSettingsRow => 'طريقة استخدام تطبيق محاسبة';

  @override
  String get tutorialSkip => 'تخطي';

  @override
  String get tutorialNext => 'التالي';

  @override
  String get tutorialDone => 'تم';

  @override
  String get tutorialTapTitle => 'اضغط للإكمال';

  @override
  String get tutorialTapBody =>
      'بضغطة واحدة يُسجَّل العمل مكتملًا لهذا اليوم. اضغط مرة أخرى للتراجع.';

  @override
  String get tutorialEditTitle => 'اضغط مرتين للتعديل';

  @override
  String get tutorialEditBody =>
      'يفتح نموذج التعديل — غيّر الاسم أو عدد مرات التكرار.';

  @override
  String get tutorialReorderTitle => 'اضغط مطولًا لإعادة الترتيب';

  @override
  String get tutorialReorderBody =>
      'اضغط مطولًا على الصف ثم اسحبه. يُحفظ ترتيبك.';

  @override
  String get tutorialRemoveTitle => 'اسحب للإزالة';

  @override
  String get tutorialRemoveBody =>
      'اسحب الصف جانبًا لإخفائه اليوم، أو لإيقاف متابعته.';

  @override
  String get tutorialCountTitle => 'عدّ التكرارات';

  @override
  String get tutorialCountBody =>
      'للأعمال التي يزيد هدفها على مرة واحدة، استخدم − و+ مع كل تكرار.';

  @override
  String get tutorialViewTitle => 'مجمّعة أو في قائمة واحدة';

  @override
  String get tutorialViewBody =>
      'بدّل بين التجميع حسب الفئة والعرض في قائمة واحدة.';

  @override
  String get tutorialChallengeLogTitle => 'اضغط لتسجيل اليوم';

  @override
  String get tutorialChallengeLogBody =>
      'ضغطة واحدة تسجّل اليوم. وفي تحدي المجموع، تضيف كل ضغطة خطوة واحدة.';

  @override
  String get tutorialChallengeOpenTitle => 'اضغط مرتين للفتح';

  @override
  String get tutorialChallengeOpenBody =>
      'يفتح التحدي — راجع كل يوم، أو صحّح يومًا فاتك، أو احذفه.';

  @override
  String get tutorialChallengeDeleteBody => 'اسحب البطاقة جانبًا لحذف التحدي.';

  @override
  String get tutorialChallengeAmountTitle => 'تسجيل مقدار محدد';

  @override
  String get tutorialChallengeAmountBody =>
      'استخدم − و + للتغيير، أو اضغط على الرقم لكتابة مقدار محدد.';

  @override
  String get challengeOpenDetailsAction => 'فتح تفاصيل التحدي';

  @override
  String get challengesActive => 'الجارية';

  @override
  String get challengesPast => 'السابقة';

  @override
  String challengeJustFinished(int count, String title) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'انتهى $count تحدٍّ — آخرها «$title»',
      many: 'انتهى $count تحديًا — آخرها «$title»',
      few: 'انتهت $count تحديات — آخرها «$title»',
      two: 'انتهى تحديان — آخرهما «$title»',
      one: 'انتهى تحدي «$title»',
    );
    return '$_temp0';
  }

  @override
  String get challengeSectionEnded => 'المنتهية';

  @override
  String get challengesPastEmpty => 'لا توجد تحديات منتهية بعد.';

  @override
  String get challengesEmptyTitle => 'لا توجد تحديات بعد';

  @override
  String get challengesEmptyBody =>
      'حدّد لنفسك هدفًا — مثل ٢٠ ركعة في ٧ أيام — وتابعه هنا.';

  @override
  String get editChallenge => 'تعديل التحدي';

  @override
  String get deleteChallenge => 'حذف التحدي';

  @override
  String get deleteChallengeConfirm =>
      'هل تريد حذف هذا التحدي وكل ما سُجّل من تقدم؟';

  @override
  String get challengeShapeQuestion => 'ما نوع هذا التحدي؟';

  @override
  String get challengeShapeTotal => 'مجموع تريد بلوغه';

  @override
  String get challengeShapeTotalBody =>
      '١٠٠٠ صلاة على النبي ﷺ، ٣٠ جزءًا. تسجّل المقادير فيزداد المجموع.';

  @override
  String get challengeShapeStreak => 'التزام يومي';

  @override
  String get challengeShapeStreakBody =>
      'التهجد، الفجر في جماعة. علامة واحدة كل يوم، والمقدار لا يهم.';

  @override
  String get challengeTargetLabel => 'الهدف';

  @override
  String get challengeTargetRequired => 'أدخل هدفًا أكبر من صفر';

  @override
  String get challengeUnitLabel => 'الوحدة (اختياري)';

  @override
  String get challengeUnitHint => 'ركعة، صفحة، مرة';

  @override
  String get challengeOneTapAdds => 'الضغطة الواحدة تضيف';

  @override
  String get challengeHowManyDays => 'كم يومًا؟';

  @override
  String get challengeReachHowMuch => 'ما المقدار المطلوب؟';

  @override
  String get challengeSpreadOver => 'الإطار الزمني';

  @override
  String get challengeSpreadEveryDay => 'كل يوم';

  @override
  String get challengeSpreadLonger => 'مدة أطول';

  @override
  String get challengeByWhen => 'إلى متى؟';

  @override
  String get challengeWindowDuration => 'الإنجاز خلال';

  @override
  String get challengeByDate => 'بتاريخ محدد';

  @override
  String challengePlanRange(String start, String end) {
    return 'من $start إلى $end';
  }

  @override
  String challengePlanExact(String start, String end) {
    return 'من $start إلى $end – مرة كل يوم دون انقطاع';
  }

  @override
  String challengePlanSlack(
    String start,
    String end,
    String target,
    String window,
    String slack,
  ) {
    return 'من $start إلى $end – $target من $window يومًا، ويمكنك تفويت $slack';
  }

  @override
  String challengePlanRate(String start, String end, String rate) {
    return 'من $start إلى $end – نحو $rate يوميًا';
  }

  @override
  String challengePlanOpen(String start) {
    return 'يبدأ $start – بلا موعد نهائي';
  }

  @override
  String challengeTooTight(String target, String window) {
    return '$target يومًا أطول من $window يومًا — الالتزام اليومي يُحتسب مرة واحدة في اليوم.';
  }

  @override
  String challengeDurationLabel(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count يوم',
      many: '$count يومًا',
      few: '$count أيام',
      two: 'يومان',
      one: 'يوم واحد',
    );
    return '$_temp0';
  }

  @override
  String get challengeStartDate => 'يبدأ';

  @override
  String get challengeEndDate => 'ينتهي';

  @override
  String challengeProgressCount(String done, String target, String unit) {
    return '$done من $target $unit';
  }

  @override
  String challengeProgressPlain(String done, String target) {
    return '$done من $target';
  }

  @override
  String challengeProgressDays(String done, String target) {
    return 'الأيام: $done من $target';
  }

  @override
  String challengeDaysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'بقي $count يوم',
      many: 'بقي $count يومًا',
      few: 'بقيت $count أيام',
      two: 'بقي يومان',
      one: 'بقي يوم واحد',
    );
    return '$_temp0';
  }

  @override
  String get challengeNoDeadline => 'بلا موعد نهائي';

  @override
  String challengeOnTrack(String rate) {
    return 'ضمن الخطة – $rate يوميًا';
  }

  @override
  String challengeBehind(String rate) {
    return 'متأخر – $rate يوميًا للإتمام';
  }

  @override
  String challengeLastDay(String remaining) {
    return 'آخر يوم – بقي $remaining';
  }

  @override
  String get challengeReached => 'تم بلوغ الهدف';

  @override
  String get challengeCompleted => 'مكتمل';

  @override
  String challengeEnded(String done, String target) {
    return 'انتهى – $done من $target';
  }

  @override
  String get challengeExpiredTitle => 'انتهى التحدي';

  @override
  String challengeExpiredBody(String title, String done, String target) {
    return 'انتهى تحدي «$title» عند $done من $target.';
  }

  @override
  String get challengeExtend => 'تمديد';

  @override
  String get challengeRestart => 'البدء من جديد';

  @override
  String get challengeArchive => 'أرشفة';

  @override
  String get challengeDailyBreakdown => 'السجل اليومي';

  @override
  String challengeNudgeBody(String title, String rate) {
    return '$title: $rate يوميًا لإتمامه في الموعد.';
  }

  @override
  String challengeLastDayBody(String title, String remaining) {
    return '$title: آخر يوم – بقي $remaining.';
  }

  @override
  String get challengeGroupGoal => 'هدفك';

  @override
  String get challengeGroupShape => 'النوع';

  @override
  String get challengeGroupPlan => 'الخطة';

  @override
  String get challengeGroupReminders => 'التذكيرات';

  @override
  String get challengeStartFromTemplate => 'ابدأ من قالب';

  @override
  String get challengeTemplateBlank => 'فارغ';

  @override
  String get challengePreview => 'معاينة';

  @override
  String get challengeTmplTahajjud => 'التهجد ٤٠ ليلة';

  @override
  String get challengeTmplSalawat => '١٠٠٠ صلاة على النبي';

  @override
  String get challengeTmplKhatm => 'ختم القرآن في ٣٠ يومًا';

  @override
  String get challengeTmplFajrJamaah => 'الفجر في جماعة ٣٠ يومًا';

  @override
  String get challengeTmplSadaqah => 'صدقة ٣٠ يومًا';

  @override
  String get listSeparator => ' – ';

  @override
  String get tierRafiq => 'رفيق';

  @override
  String get tierNasir => 'ناصر';

  @override
  String get tierMuhsin => 'محسن';

  @override
  String get tierAnsar => 'أنصار';

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
      'مجاني، بلا إعلانات ولا حساب. يمكنك دعم تطويره بمساهمة — بأي مبلغ، ومتى شئت.';

  @override
  String get supportCta => 'ادعم تطبيق محاسبة';

  @override
  String get supportAgain => 'ادعم مجددًا';

  @override
  String get supporterThanks =>
      'جزاكم الله خيرًا — يبقى تطبيق محاسبة مجانيًا وبلا إعلانات إن شاء الله.';

  @override
  String supporterSince(String tier, String month) {
    return '$tier منذ $month';
  }

  @override
  String get supportPromptTitle => 'ادعم تطبيق محاسبة';

  @override
  String get supportPromptBody =>
      'تطبيق محاسبة مجاني، بلا إعلانات ولا حساب. يمكنك دعم تطويره بمساهمة — بأي مبلغ، ومتى شئت. وجميع الميزات متاحة لك في كل الأحوال.';

  @override
  String get supportPromptNow => 'ادعم الآن';

  @override
  String get supportPromptLater => 'ذكّرني لاحقًا';

  @override
  String get supportPromptNever => 'لا تسألني مجددًا';

  @override
  String get tipSheetTitle => 'ادعم تطبيق محاسبة';

  @override
  String get tipSheetBody =>
      'اختر أي مبلغ، وكلما شئت. تُخصَّص المساهمات لصيانة التطبيق — ويبقى مجانيًا وبلا إعلانات إن شاء الله. وتقديرًا لك، ستظهر في الإعدادات بصفتك داعمًا.';

  @override
  String tipSheetSupporterLine(String tier) {
    return '$tier — جزاكم الله خيرًا.';
  }

  @override
  String get tipSheetSupporterAgain => 'يمكنك الدعم مجددًا متى شئت.';

  @override
  String tipSheetStoreNote(String store) {
    return 'تتم المعاملة عبر $store — لا نطّلع أبدًا على بيانات الدفع.';
  }

  @override
  String get tipSheetOtherWays => 'لا تجد خيارًا يناسبك؟';

  @override
  String get tipSheetWriteToUs => 'راسلنا';

  @override
  String get supportEmailBody =>
      'السلام عليكم،\n\nأودّ دعم تطوير تطبيق محاسبة مباشرةً.\n\nالبلد:\nطريقة الإرسال التي أفضّلها:\nالمبلغ (اختياري):';

  @override
  String tipBusy(String store) {
    return 'جارٍ فتح $store…';
  }

  @override
  String get tipThanks => 'جزاكم الله خيرًا — تقبّل الله منكم.';

  @override
  String get tipDone => 'تم';

  @override
  String get tipFailed => 'لم تكتمل عملية الشراء. لم يُخصم أي مبلغ.';

  @override
  String tipPending(String store) {
    return 'مساهمتك قيد المعالجة لدى $store — ستُضاف شارتك فور تأكيدها.';
  }

  @override
  String get tipUnavailable => 'عمليات الشراء غير متاحة على هذا الجهاز حاليًا.';

  @override
  String get optionSetJamaa => 'الجماعة';

  @override
  String get optionJamaaAlone => 'منفردًا';

  @override
  String get optionJamaaHome => 'جماعة في البيت';

  @override
  String get optionJamaaMasjid => 'جماعة في المسجد';

  @override
  String get optionSetOnTime => 'وقت الأداء';

  @override
  String get optionOnTimeOnTime => 'في وقتها';

  @override
  String get optionOnTimeLate => 'متأخرة';

  @override
  String get optionOnTimeQada => 'قضاء';

  @override
  String get optionSetQuranSession => 'جلسة القرآن';

  @override
  String get optionQuranRecited => 'تلاوة';

  @override
  String get optionQuranMemorised => 'حفظ';

  @override
  String get optionQuranMeaning => 'تدبر';

  @override
  String get optionQuranListened => 'استماع';

  @override
  String get optionSetSadaqahType => 'نوع الصدقة';

  @override
  String get optionSadaqahMoney => 'مال';

  @override
  String get optionSadaqahFood => 'طعام';

  @override
  String get optionSadaqahTime => 'وقت';

  @override
  String get optionSadaqahOther => 'غير ذلك';

  @override
  String get optionSetIntensity => 'المستوى';

  @override
  String get optionIntensityLight => 'خفيف';

  @override
  String get optionIntensityModerate => 'متوسط';

  @override
  String get optionIntensityIntense => 'مكثف';

  @override
  String get optionSetNewTitle => 'مجموعة خيارات جديدة';

  @override
  String get optionSetEditTitle => 'تعديل مجموعة الخيارات';

  @override
  String get optionSetNameLabel => 'اسم المجموعة';

  @override
  String get optionSetNameHint => 'مثلًا: الجماعة';

  @override
  String get optionsLabel => 'الخيارات';

  @override
  String get optionAdd => 'إضافة خيار';

  @override
  String optionHint(int index) {
    return 'الخيار $index';
  }

  @override
  String optionsMaxReached(int max) {
    return 'الحد الأقصى للخيارات: $max.';
  }

  @override
  String get optionSetPreviewLabel => 'معاينة — صف اليوم';

  @override
  String optionSetKeptForHistory(String labels) {
    return 'محفوظة في السجل: $labels';
  }

  @override
  String get optionSetDelete => 'حذف المجموعة';

  @override
  String get optionSetDeleteConfirm =>
      'لن تظهر الخيارات في الأعمال التي تستخدم هذه المجموعة. والأيام التي سجّلتها من قبل يبقى اختيارها كما هو.';

  @override
  String get optionSetNameRequired => 'أدخل اسمًا للمجموعة';

  @override
  String get optionsMinRequired => 'أضف خيارين على الأقل';

  @override
  String get optionSetNameTooLong => 'اسم المجموعة طويل جدًا';

  @override
  String optionTooLong(int index) {
    return 'الخيار $index طويل جدًا';
  }

  @override
  String get optionSetNone => 'لا شيء';

  @override
  String get optionSetNew => 'مجموعة جديدة';

  @override
  String get requireChoiceLabel => 'اشتراط الاختيار';

  @override
  String get requireChoiceHelp =>
      'لن يُعلَّم العمل مكتملًا حتى تختار أحد الخيارات';

  @override
  String get requireChoicePickSetFirst => 'اختر مجموعة أولًا';

  @override
  String get requireChoiceCountHelp => 'الأعمال المعدودة تكتمل بالعدّاد';

  @override
  String optionsUsedOf(int used, int max) {
    return 'الخيارات المستخدمة: $used من $max.';
  }

  @override
  String get choiceNeeded => 'يلزم الاختيار';

  @override
  String optionSelected(String label) {
    return '$label، محدد';
  }

  @override
  String optionNotSelected(String label) {
    return '$label، غير محدد';
  }

  @override
  String optionBreakdownTitle(String set) {
    return 'توزيع الخيارات — $set';
  }

  @override
  String optionBreakdownCaption(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count مرة سُجّل فيها اختيار',
      many: '$count مرة سُجّل فيها اختيار',
      few: '$count مرات سُجّل فيها اختيار',
      two: 'مرتين سُجّل فيهما اختيار',
      one: 'مرة واحدة سُجّل فيها اختيار',
    );
    return 'النسب من أصل $_temp0';
  }

  @override
  String optionNoChoiceRecorded(int none, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other: '$total يوم مكتمل',
      many: '$total يومًا مكتملًا',
      few: '$total أيام مكتملة',
      two: 'يومين مكتملين',
      one: 'يوم واحد مكتمل',
    );
    return 'بلا اختيار — $none من أصل $_temp0';
  }

  @override
  String get optionRemovedSuffix => 'محذوف';

  @override
  String get optionAllAmals => 'الكل';

  @override
  String optionScopedCaption(String amal, int count) {
    return '$amal – المسجَّل: $count';
  }

  @override
  String get optionBreakdownSectionTitle => 'توزيع الخيارات';

  @override
  String optionBreakdownSwipeHint(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count مجموعة – اسحب',
      many: '$count مجموعة – اسحب',
      few: '$count مجموعات – اسحب',
      two: 'مجموعتان – اسحب',
    );
    return '$_temp0';
  }

  @override
  String get optionDetailEmpty => 'لم يُسجَّل أي اختيار لهذه المجموعة بعد.';

  @override
  String get optionDetailTrendHeading => 'التغيّر مع الوقت';

  @override
  String optionDetailTrendReadout(String option, String from, String to) {
    return 'تغيّرت نسبة $option من $from إلى $to بين الأسبوع الأول والأخير.';
  }

  @override
  String get optionDetailByAmalHeading => 'حسب العمل';

  @override
  String optionDetailByAmalReadout(
    String best,
    String bestShare,
    String worst,
    String worstShare,
  ) {
    return 'الأعلى: $best بنسبة $bestShare؛ والأدنى: $worst بنسبة $worstShare.';
  }

  @override
  String get optionDetailRecordsHeading => 'الأرقام القياسية';

  @override
  String get optionDetailLongestRun => 'أطول سلسلة';

  @override
  String get optionDetailBestWeek => 'أفضل أسبوع';

  @override
  String get optionDetailCurrentRun => 'السلسلة الحالية';

  @override
  String get optionDetailRecordsCaption =>
      'محسوبة على مدى السنة الماضية، بغضّ النظر عن الفترة المحددة أعلاه.';

  @override
  String get optionDetailRecentDaysHeading => 'الأيام الأخيرة';

  @override
  String optionDetailRecentDaysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'آخر $count يوم',
      many: 'آخر $count يومًا',
      few: 'آخر $count أيام',
      two: 'آخر يومين',
      one: 'آخر يوم',
      zero: 'آخر ٠ يوم',
    );
    return '$_temp0';
  }

  @override
  String get amalFivePrayers => 'الصلوات الخمس';

  @override
  String get amalJumuah => 'صلاة الجمعة';

  @override
  String get amalWitr => 'الوتر';

  @override
  String get amalQada => 'قضاء الفوائت';

  @override
  String get amalFajrSunnah => 'سنة الفجر';

  @override
  String get amalDhuhrSunnah => 'سنة الظهر';

  @override
  String get amalAsrSunnah => 'سنة العصر';

  @override
  String get amalMaghribSunnah => 'سنة المغرب';

  @override
  String get amalIshaSunnah => 'سنة العشاء';

  @override
  String get amalRawatib => 'السنن الرواتب';

  @override
  String get amalSiwak => 'السواك';

  @override
  String get amalWuduSleep => 'الوضوء قبل النوم';

  @override
  String get amalFridayGhusl => 'غسل الجمعة';

  @override
  String get amalIshraq => 'صلاة الإشراق';

  @override
  String get amalWuduPrayer => 'ركعتا الوضوء';

  @override
  String get amalTahiyyah => 'تحية المسجد';

  @override
  String get amalEarlyJumuah => 'التبكير إلى الجمعة';

  @override
  String get amalAfterSalah => 'أذكار بعد الصلاة';

  @override
  String get amalAfterFajr => 'أذكار بعد الفجر';

  @override
  String get amalAfterDhuhr => 'أذكار بعد الظهر';

  @override
  String get amalAfterAsr => 'أذكار بعد العصر';

  @override
  String get amalAfterMaghrib => 'أذكار بعد المغرب';

  @override
  String get amalAfterIsha => 'أذكار بعد العشاء';

  @override
  String get amalAyatKursi => 'آية الكرسي';

  @override
  String get amalKursiFajr => 'آية الكرسي بعد الفجر';

  @override
  String get amalKursiDhuhr => 'آية الكرسي بعد الظهر';

  @override
  String get amalKursiAsr => 'آية الكرسي بعد العصر';

  @override
  String get amalKursiMaghrib => 'آية الكرسي بعد المغرب';

  @override
  String get amalKursiIsha => 'آية الكرسي بعد العشاء';

  @override
  String get amalSayyidIstighfar => 'سيد الاستغفار';

  @override
  String get amalSalawat => 'الصلاة على النبي ﷺ';

  @override
  String get amalSubhanallah => 'سبحان الله وبحمده';

  @override
  String get amalTahlil => 'لا إله إلا الله';

  @override
  String get amalBedtimeAdhkar => 'أذكار النوم';

  @override
  String get amalFridaySalawat => 'الصلاة على النبي ﷺ يوم الجمعة';

  @override
  String get amalHawqala => 'لا حول ولا قوة إلا بالله';

  @override
  String get amalTasbihFatimah => 'تسبيح فاطمة';

  @override
  String get amalWakingAdhkar => 'أذكار الاستيقاظ';

  @override
  String get amalDuaAdhan => 'الدعاء بعد الأذان';

  @override
  String get amalDuaIqamah => 'الدعاء بين الأذان والإقامة';

  @override
  String get amalDuaSujood => 'الدعاء في السجود';

  @override
  String get amalDuaParents => 'الدعاء للوالدين';

  @override
  String get amalDuaOthers => 'الدعاء بظهر الغيب';

  @override
  String get amalFridayHour => 'ساعة الإجابة يوم الجمعة';

  @override
  String get amalLastThird => 'الدعاء في الثلث الأخير من الليل';

  @override
  String get amalMulk => 'سورة الملك';

  @override
  String get amalBaqarahEnd => 'خواتيم سورة البقرة';

  @override
  String get amalSajdah => 'سورة السجدة';

  @override
  String get amalQuls => 'المعوذات';

  @override
  String get amalYasin => 'سورة يس';

  @override
  String get amalWaqiah => 'سورة الواقعة';

  @override
  String get amalHifz => 'حفظ القرآن';

  @override
  String get amalMurajaah => 'مراجعة الحفظ';

  @override
  String get amalTafsir => 'التفسير';

  @override
  String get amalListenQuran => 'الاستماع إلى القرآن';

  @override
  String get amalTeachQuran => 'تعليم القرآن';

  @override
  String get amalMonThu => 'صيام الاثنين والخميس';

  @override
  String get amalThreeDays => 'صيام ثلاثة أيام من كل شهر';

  @override
  String get amalDailySadaqah => 'صدقة يومية';

  @override
  String get amalFeed => 'إطعام الطعام';

  @override
  String get amalHelpNeed => 'مساعدة محتاج';

  @override
  String get amalOrphan => 'كفالة يتيم';

  @override
  String get amalGiveWater => 'سقي الماء';

  @override
  String get amalLearnHadith => 'حفظ حديث';

  @override
  String get amalReadBook => 'قراءة كتاب إسلامي';

  @override
  String get amalSeerah => 'دراسة السيرة';

  @override
  String get amalClass => 'حضور مجلس علم';

  @override
  String get amalArabic => 'تعلم العربية';

  @override
  String get amalLearnDua => 'تعلم دعاء جديد';

  @override
  String get amalShare => 'نشر العلم';

  @override
  String get amalFiqh => 'دراسة الفقه';

  @override
  String get amalMuhasaba => 'محاسبة النفس ليلًا';

  @override
  String get amalSpeakGood => 'قل خيرًا أو اصمت';

  @override
  String get amalNoBackbiting => 'اجتناب الغيبة';

  @override
  String get amalAnger => 'كظم الغيظ';

  @override
  String get amalGaze => 'غض البصر';

  @override
  String get amalTruthful => 'الصدق';

  @override
  String get amalSmile => 'التبسم';

  @override
  String get amalSalam => 'إفشاء السلام';

  @override
  String get amalForgive => 'العفو عن الناس';

  @override
  String get amalGratitude => 'الشكر';

  @override
  String get amalVisitSick => 'عيادة المريض';

  @override
  String get amalNeighbours => 'الإحسان إلى الجار';

  @override
  String get amalRemoveHarm => 'إماطة الأذى عن الطريق';

  @override
  String get amalParents => 'بر الوالدين';

  @override
  String get amalFamilyTies => 'صلة الرحم';

  @override
  String get amalHelpHome => 'مساعدة الأهل في البيت';

  @override
  String get amalTeachChildren => 'تعليم الأبناء';

  @override
  String get amalSpouse => 'حسن العشرة';

  @override
  String get categoryDua => 'دعاء';

  @override
  String get categoryFasting => 'صيام';

  @override
  String get categoryKnowledge => 'علم';

  @override
  String get categoryCharacter => 'أخلاق';

  @override
  String get categoryFamily => 'أسرة';

  @override
  String get libraryTitle => 'مكتبة الأعمال';

  @override
  String get librarySearchHint => 'ابحث عن عمل';

  @override
  String get libraryAll => 'الكل';

  @override
  String get libraryAdded => 'أُضيف إلى قائمة اليوم';

  @override
  String libraryAddedShowsOn(String days) {
    return 'أُضيف – يظهر في: $days';
  }

  @override
  String libraryNoMatch(String query) {
    return 'لا يوجد عمل يطابق «$query»';
  }

  @override
  String libraryCreateNamed(String query) {
    return 'إنشاء «$query»';
  }

  @override
  String get libraryPickBanner => 'اختر من مكتبة الأعمال';

  @override
  String libraryPickBannerSubtitle(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countText عمل جاهز',
      many: '$countText عملًا جاهزًا',
      few: '$countText أعمال جاهزة',
      two: 'عملان جاهزان',
      one: 'عمل واحد جاهز',
    );
    return '$_temp0';
  }

  @override
  String get libraryFilledIn => 'مأخوذ من مكتبة الأعمال';

  @override
  String get libraryChange => 'تغيير';

  @override
  String get libraryEditAction => 'تعديل';

  @override
  String libraryWeeklyAny(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countText يوم في الأسبوع',
      many: '$countText يومًا في الأسبوع',
      few: '$countText أيام في الأسبوع',
      two: 'يومان في الأسبوع',
      one: 'مرة في الأسبوع',
    );
    return '$_temp0';
  }

  @override
  String libraryMonthlyAny(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countText يوم في الشهر',
      many: '$countText يومًا في الشهر',
      few: '$countText أيام في الشهر',
      two: 'يومان في الشهر',
      one: 'مرة في الشهر',
    );
    return '$_temp0';
  }

  @override
  String libraryTimes(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countText مرة',
      many: '$countText مرة',
      few: '$countText مرات',
      two: 'مرتان',
      one: 'مرة واحدة',
    );
    return '$_temp0';
  }

  @override
  String get libraryAnyAmount => 'أي عدد';

  @override
  String libraryAddTooltip(String title) {
    return 'إضافة $title';
  }

  @override
  String get libraryOnList => 'في قائمتك';

  @override
  String get todayEmptyBrowse => 'تصفح مكتبة الأعمال';
}
