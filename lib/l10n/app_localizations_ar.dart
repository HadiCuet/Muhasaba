// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

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
  String get clear => 'مسح';

  @override
  String get titleLabel => 'العنوان';

  @override
  String get titleRequired => 'العنوان مطلوب';

  @override
  String get titleTooLong => 'العنوان طويل جداً';

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
  String get timesPerPeriod => 'عدد المرات في الفترة';

  @override
  String get custom => 'مخصص';

  @override
  String get customTargetHint => 'مثلاً 50';

  @override
  String get dayOfWeek => 'يوم الأسبوع';

  @override
  String get anyDay => 'أي يوم';

  @override
  String get anyDayHint => 'أي يوم (يظهر اليوم ويختفي في اليوم التالي)';

  @override
  String onlyDayHint(String day) {
    return 'فقط يوم $day';
  }

  @override
  String get dateOfMonth => 'تاريخ الشهر';

  @override
  String get anyDate => 'أي تاريخ';

  @override
  String get anyDateHint => 'أي تاريخ (يظهر اليوم ويختفي في اليوم التالي)';

  @override
  String onlyDateHint(String date) {
    return 'فقط في $date';
  }

  @override
  String get startPreChecked => 'البدء محدداً مسبقاً';

  @override
  String get startPreCheckedSubtitle =>
      'عند بدء فترة جديدة، يُعتبر هذا العمل مكتملاً بشكل افتراضي حتى تلغي تحديده.';

  @override
  String get reminder => 'تذكير';

  @override
  String get reminderNone => 'بدون';

  @override
  String reminderTime(String time) {
    return 'تذكير: $time';
  }

  @override
  String get reminderPermissionWarning =>
      'تم حفظ التذكير، لكن الإشعارات غير مسموح بها. فعّلها من إعدادات النظام لتلقي التنبيهات.';

  @override
  String get groupByCategory => 'تجميع حسب الفئة';

  @override
  String get flatList => 'قائمة مسطحة';

  @override
  String errorGeneric(String error) {
    return 'خطأ: $error';
  }

  @override
  String get todayEmptyHint => 'اضغط + لإضافة أول عمل لك.';

  @override
  String get noteLabel => 'ملاحظة';

  @override
  String get noteHint => 'مثلاً صليت في المسجد';

  @override
  String get completed => 'مكتمل';

  @override
  String get notCompleted => 'غير مكتمل';

  @override
  String progressOf(int progress, int target) {
    return '$progress من $target مكتمل';
  }

  @override
  String get removeFromToday => 'إزالة من اليوم';

  @override
  String get removeFromTodaySubtitle => 'إخفاء لهذا اليوم فقط. سيعود غداً.';

  @override
  String get removeFromTracking => 'إزالة من المتابعة';

  @override
  String get removeFromTrackingSubtitle =>
      'إزالة نهائية من قائمتك. يُحفظ السجل.';

  @override
  String get chooseIcon => 'اختر أيقونة';

  @override
  String get iconNone => 'بدون';

  @override
  String get recentlyUsed => 'المستخدمة مؤخراً';

  @override
  String get emojiSectionGeneral => 'عام';

  @override
  String get categoryNameHint => 'الاسم';

  @override
  String get categoryNew => '+ جديدة';

  @override
  String get addAmal => 'إضافة عمل';

  @override
  String get customAmal => 'عمل مخصص';

  @override
  String get templateTasbih => 'تسبيح 33 مرة';

  @override
  String get templateIstighfar => 'استغفار 100 مرة';

  @override
  String get templateSurahKahf => 'سورة الكهف';

  @override
  String get templateSadaqah => 'صدقة';

  @override
  String get templateTahajjud => 'تهجد';

  @override
  String get templateDuhaPrayer => 'صلاة الضحى';

  @override
  String get settingsTitle => 'الإعدادات';

  @override
  String settingsLoadError(String error) {
    return 'فشل تحميل الإعدادات:\n$error';
  }

  @override
  String get sectionDayBoundary => 'حد اليوم';

  @override
  String get rolloverHour => 'ساعة التجديد';

  @override
  String get rolloverAtMidnight => 'ينتهي اليوم عند منتصف الليل.';

  @override
  String rolloverSubtitle(String time) {
    return 'تبقى أعمال الأمس قابلة للتعديل حتى $time.';
  }

  @override
  String get pickRolloverHour => 'اختر ساعة تجديد اليوم';

  @override
  String get sectionWeekMonth => 'الأسبوع والشهر';

  @override
  String get startOfWeek => 'بداية الأسبوع';

  @override
  String get startOfMonth => 'بداية الشهر';

  @override
  String get startOfMonthClamped =>
      'الأيام بعد 28 تُقرّب إلى آخر يوم في الأشهر الأقصر.';

  @override
  String get sectionAppearance => 'المظهر';

  @override
  String get theme => 'السمة';

  @override
  String get themeSystem => 'النظام';

  @override
  String get themeLight => 'فاتح';

  @override
  String get themeDark => 'داكن';

  @override
  String get sectionLanguage => 'اللغة';

  @override
  String get language => 'اللغة';

  @override
  String get systemDefault => 'افتراضي النظام';

  @override
  String get aboutTitle => 'Muhasaba';

  @override
  String get aboutSubtitle =>
      'دفتر محاسبة شخصي للدين. جميع البيانات تبقى على هذا الجهاز.';

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
      many: 'يوماً',
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
      many: 'أسبوعاً',
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
      many: 'شهراً',
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
      'لا توجد أعمال بعد. أضف عملاً من صفحة اليوم لبدء المتابعة.';

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
  String get mondayShort => 'اثن';

  @override
  String get tuesdayShort => 'ثلا';

  @override
  String get wednesdayShort => 'أرب';

  @override
  String get thursdayShort => 'خمي';

  @override
  String get fridayShort => 'جمع';

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
  String get hadith1 =>
      '«خذوا من الأعمال ما تطيقون، فإن خير الأعمال أدومه وإن قلّ.»\n— ابن ماجه';

  @override
  String get hadith2 =>
      '«إذا مات ابن آدم انقطع عمله إلا من ثلاث: صدقة جارية، أو علم يُنتفع به، أو ولد صالح يدعو له.»\n— مسلم';

  @override
  String get hadith3 => '«من صلّى البَرْدَين دخل الجنة.»\n— البخاري';

  @override
  String get hadith4 =>
      '«إن الله لا ينظر إلى صوركم وأموالكم، ولكن ينظر إلى قلوبكم وأعمالكم.»\n— مسلم';

  @override
  String get hadith5 => '«خير الناس أنفعهم للناس.»\n— الدارقطني';

  @override
  String get hadith6 => '«يسّروا ولا تعسّروا، وبشّروا ولا تنفّروا.»\n— البخاري';

  @override
  String get hadith7 =>
      '«من سلك طريقاً يلتمس فيه علماً سهّل الله له به طريقاً إلى الجنة.»\n— مسلم';

  @override
  String get hadith8 => '«ما نقصت صدقة من مال.»\n— مسلم';

  @override
  String get hadith9 =>
      '«المؤمن القوي خير وأحب إلى الله من المؤمن الضعيف، وفي كلٍّ خير.»\n— مسلم';
}
