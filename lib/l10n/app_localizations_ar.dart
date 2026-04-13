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
  String get statsToday => 'اليوم';

  @override
  String get statsThisWeek => 'هذا الأسبوع';

  @override
  String get statsThisMonth => 'هذا الشهر';

  @override
  String get statsAllTime => 'كل الأوقات';

  @override
  String get statsCustomRange => 'نطاق مخصص';

  @override
  String get statsAllCategories => 'الكل';

  @override
  String get statsAllAmals => 'الكل';

  @override
  String get statsCompleted => 'مكتمل';

  @override
  String get statsExpected => 'متوقع';

  @override
  String get statsVsPrevious => 'مقارنة بالسابق';

  @override
  String get statsByCategory => 'حسب الفئة';

  @override
  String get statsPerAmal => 'لكل عمل';

  @override
  String get statsCurrentStreak => 'السلسلة الحالية';

  @override
  String get statsBestStreak => 'أفضل سلسلة';

  @override
  String get statsTotalDays => 'إجمالي الأيام';

  @override
  String get statsConsistency => 'الانتظام';

  @override
  String get statsLast5Weeks => 'آخر 5 أسابيع';

  @override
  String get statsDailyBreakdown => 'التفصيل اليومي';

  @override
  String get statsCompletionRate => 'نسبة الإنجاز';

  @override
  String get statsFilterTime => 'الوقت';

  @override
  String get statsFilterCategory => 'الفئة';

  @override
  String get statsFilterAmal => 'العمل';

  @override
  String get statsStreaks => 'السلاسل';

  @override
  String get statsSelectDateRange => 'اختر نطاق التاريخ';

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

  @override
  String get hadith10 =>
      '\"من قال سبحان الله وبحمده في يوم مائة مرة حُطّت خطاياه وإن كانت مثل زبد البحر.\"\n— البخاري';

  @override
  String get hadith11 =>
      '\"خير الدعاء دعاء يوم عرفة، وخير ما قلت أنا والنبيون من قبلي: لا إله إلا الله.\"\n— الترمذي';

  @override
  String get hadith12 =>
      '\"من قرأ آية الكرسي دبر كل صلاة مكتوبة لم يمنعه من دخول الجنة إلا الموت.\"\n— النسائي';

  @override
  String get hadith13 => '\"الكلمة الطيبة صدقة.\"\n— البخاري ومسلم';

  @override
  String get hadith14 =>
      '\"من كان يؤمن بالله واليوم الآخر فليقل خيرًا أو ليصمت.\"\n— البخاري ومسلم';

  @override
  String get hadith15 =>
      '\"الساعي على الأرملة والمسكين كالمجاهد في سبيل الله.\"\n— البخاري';

  @override
  String get hadith16 => '\"تبسّمك في وجه أخيك صدقة.\"\n— الترمذي';

  @override
  String get hadith17 => '\"خيركم من تعلم القرآن وعلمه.\"\n— البخاري';

  @override
  String get hadith18 =>
      '\"ما أكل أحد طعامًا قط خيرًا من أن يأكل من عمل يده.\"\n— البخاري';

  @override
  String get hadith19 =>
      '\"إن الله رفيق يحب الرفق في الأمر كله.\"\n— البخاري ومسلم';

  @override
  String historyDayCompleted(int completed, int total) {
    return 'تم إنجاز $completed من $total';
  }

  @override
  String get settingsSchedule => 'الجدول';

  @override
  String get settingsAppearance => 'المظهر';

  @override
  String get settingsAboutTagline => 'رفيقك اليومي في الدين';

  @override
  String get settingsRolloverSub => 'متى يبدأ اليوم الجديد';

  @override
  String get settingsAbout => 'حول';

  @override
  String get settingsVersion => 'الإصدار';

  @override
  String get settingsDeveloper => 'المطور';

  @override
  String get hadith20 =>
      '\"مَنْ صَامَ رَمَضَانَ إِيمَانًا وَاحْتِسَابًا غُفِرَ لَهُ مَا تَقَدَّمَ مِنْ ذَنْبِهِ.\"\n— البخاري ومسلم';

  @override
  String get hadith21 => '\"الصَّلاةُ عِمَادُ الدِّينِ.\"\n— البيهقي';

  @override
  String get hadith22 =>
      '\"الدُّعَاءُ بَيْنَ الأَذَانِ وَالإِقَامَةِ لا يُرَدُّ.\"\n— أبو داود';

  @override
  String get hadith23 =>
      '\"مَنْ بَنَى مَسْجِدًا لِلَّهِ بَنَى اللَّهُ لَهُ بَيْتًا فِي الجَنَّةِ.\"\n— البخاري ومسلم';

  @override
  String get hadith24 =>
      '\"خَيْرُ صُفُوفِ الرِّجَالِ أَوَّلُهَا وَخَيْرُ صُفُوفِ النِّسَاءِ آخِرُهَا.\"\n— مسلم';

  @override
  String get hadith25 => '\"الصِّيَامُ جُنَّةٌ مِنَ النَّارِ.\"\n— النسائي';

  @override
  String get hadith26 =>
      '\"مَنْ صَلَّى اثْنَتَيْ عَشْرَةَ رَكْعَةً تَطَوُّعًا بُنِيَ لَهُ بَيْتٌ فِي الجَنَّةِ.\"\n— مسلم';

  @override
  String get hadith27 =>
      '\"الْمَاهِرُ بِالقُرْآنِ مَعَ السَّفَرَةِ الكِرَامِ البَرَرَةِ.\"\n— البخاري ومسلم';

  @override
  String get hadith28 =>
      '\"طَلَبُ العِلْمِ فَرِيضَةٌ عَلَى كُلِّ مُسْلِمٍ.\"\n— ابن ماجه';

  @override
  String get hadith29 => '\"أَفْضَلُ الصَّدَقَةِ سَقْيُ المَاءِ.\"\n— أحمد';

  @override
  String get hadith30 =>
      '\"مَنْ قَرَأَ سُورَةَ الكَهْفِ يَوْمَ الجُمُعَةِ أَضَاءَ لَهُ مِنَ النُّورِ مَا بَيْنَ الجُمُعَتَيْنِ.\"\n— الحاكم';

  @override
  String get hadith31 =>
      '\"اتَّقِ اللَّهَ حَيْثُمَا كُنْتَ وَأَتْبِعِ السَّيِّئَةَ الحَسَنَةَ تَمْحُهَا.\"\n— الترمذي';

  @override
  String get hadith32 =>
      '\"يَسِّرُوا وَلا تُعَسِّرُوا وَبَشِّرُوا وَلا تُنَفِّرُوا.\"\n— البخاري';

  @override
  String get hadith33 => '\"الطُّهُورُ شَطْرُ الإِيمَانِ.\"\n— مسلم';

  @override
  String get hadith34 =>
      '\"أَحَبُّ النَّاسِ إِلَى اللَّهِ أَنْفَعُهُمْ لِلنَّاسِ.\"\n— الطبراني';

  @override
  String get hadith35 => '\"مَا نَقَصَتْ صَدَقَةٌ مِنْ مَالٍ.\"\n— مسلم';

  @override
  String get hadith36 =>
      '\"خَيْرُكُمْ مَنْ تَعَلَّمَ القُرْآنَ وَعَلَّمَهُ.\"\n— البخاري';

  @override
  String get hadith37 =>
      '\"مَنْ سَلَكَ طَرِيقًا يَلْتَمِسُ فِيهِ عِلْمًا سَهَّلَ اللَّهُ لَهُ طَرِيقًا إِلَى الجَنَّةِ.\"\n— مسلم';

  @override
  String get hadith38 =>
      '\"لا يُؤْمِنُ أَحَدُكُمْ حَتَّى يُحِبَّ لأَخِيهِ مَا يُحِبُّ لِنَفْسِهِ.\"\n— البخاري ومسلم';

  @override
  String get hadith39 =>
      '\"صَنَائِعُ المَعْرُوفِ تَقِي مَصَارِعَ السُّوءِ.\"\n— الطبراني';

  @override
  String get hadith40 =>
      '\"مَنْ قَالَ سُبْحَانَ اللَّهِ وَبِحَمْدِهِ غُرِسَتْ لَهُ نَخْلَةٌ فِي الجَنَّةِ.\"\n— الترمذي';

  @override
  String get hadith41 =>
      '\"إِنَّمَا الأَعْمَالُ بِالنِّيَّاتِ.\"\n— البخاري ومسلم';

  @override
  String get hadith42 =>
      '\"مَنْ صَلَّى الفَجْرَ فِي جَمَاعَةٍ فَهُوَ فِي ذِمَّةِ اللَّهِ.\"\n— مسلم';

  @override
  String get hadith43 =>
      '\"أَقْرَبُ مَا يَكُونُ العَبْدُ مِنْ رَبِّهِ وَهُوَ سَاجِدٌ فَأَكْثِرُوا الدُّعَاءَ.\"\n— مسلم';

  @override
  String get hadith44 => '\"الصَّبْرُ ضِيَاءٌ.\"\n— مسلم';

  @override
  String get hadith45 =>
      '\"لا يَشْكُرُ اللَّهَ مَنْ لا يَشْكُرُ النَّاسَ.\"\n— أبو داود';

  @override
  String get hadith46 =>
      '\"مَا مِنْ مُسْلِمٍ يَغْرِسُ غَرْسًا فَيَأْكُلُ مِنْهُ إِنْسَانٌ أَوْ طَيْرٌ إِلَّا كَانَ لَهُ صَدَقَةً.\"\n— البخاري';

  @override
  String get hadith47 => '\"خَيْرُكُمْ خَيْرُكُمْ لأَهْلِهِ.\"\n— الترمذي';

  @override
  String get hadith48 =>
      '\"مَنْ كَظَمَ غَيْظًا وَهُوَ قَادِرٌ عَلَى أَنْ يُنْفِذَهُ دَعَاهُ اللَّهُ عَلَى رُؤُوسِ الخَلائِقِ.\"\n— أبو داود';

  @override
  String get hadith49 =>
      '\"تَبَسُّمُكَ فِي وَجْهِ أَخِيكَ صَدَقَةٌ.\"\n— الترمذي';

  @override
  String get hadith50 => '«أحب الناس إلى الله أنفعهم للناس.»\n— الطبراني';

  @override
  String get hadith51 =>
      '«من كظم غيظاً وهو قادر على أن يُنفذه دعاه الله على رؤوس الخلائق يوم القيامة حتى يخيّره من الحور ما شاء.»\n— الترمذي';

  @override
  String get hadith52 => '«باكروا بالصدقة فإن البلاء لا يتخطاها.»\n— الترمذي';

  @override
  String get hadith53 =>
      '«لا تحقرنّ من المعروف شيئاً ولو أن تلقى أخاك بوجه طلق.»\n— مسلم';

  @override
  String get hadith54 => '«خيركم خيركم لأهله.»\n— الترمذي';

  @override
  String get hadith55 =>
      '«من قرأ بالآيتين من آخر سورة البقرة في ليلة كفتاه.»\n— البخاري ومسلم';

  @override
  String get hadith56 => '«الدنيا متاع وخير متاعها المرأة الصالحة.»\n— مسلم';

  @override
  String get hadith57 =>
      '«ثلاث دعوات لا تُردّ: دعوة الصائم، ودعوة الإمام العادل، ودعوة المظلوم.»\n— الترمذي';

  @override
  String get hadith58 =>
      '«من صلّى عليّ صلاة واحدة صلّى الله عليه بها عشراً.»\n— مسلم';

  @override
  String get hadith59 => '«المسجد بيت كل تقيّ.»\n— الطبراني';

  @override
  String get hadith60 =>
      '«من قال لا حول ولا قوة إلا بالله كانت له دواءً من تسعة وتسعين داءً أيسرها الهمّ.»\n— الحاكم';

  @override
  String get hadith61 =>
      '«إن الله يحب إذا عمل أحدكم عملاً أن يتقنه.»\n— الطبراني';

  @override
  String get hadith62 => '«الجنة تحت أقدام الأمهات.»\n— النسائي';

  @override
  String get hadith63 => '«برّ الوالدين أعظم الأعمال الواجبة.»\n— البخاري';

  @override
  String get hadith64 => '«من شكر القليل أُعطي الكثير.»\n— البيهقي';

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
  String get hadith69 => '«دعوة المسلم لأخيه بظهر الغيب مستجابة.»\n— مسلم';

  @override
  String get hadith70 =>
      '«من سأل الله الجنة ثلاث مرات قالت الجنة: اللهم أدخله الجنة.»\n— الترمذي';

  @override
  String get hadith71 => '«أفضل الصيام بعد رمضان شهر الله المحرّم.»\n— مسلم';

  @override
  String get hadith72 =>
      '«من حجّ فلم يرفث ولم يفسق رجع كيوم ولدته أمه.»\n— البخاري ومسلم';

  @override
  String get hadith73 =>
      '«العمرة إلى العمرة كفّارة لما بينهما.»\n— البخاري ومسلم';

  @override
  String get hadith74 => '«سابقوا إلى الخيرات.»\n— مسلم';

  @override
  String get hadith75 => '«ركعتا الفجر خير من الدنيا وما فيها.»\n— مسلم';

  @override
  String get hadith76 =>
      '«من لزم الاستغفار جعل الله له من كل ضيق مخرجاً.»\n— أبو داود';

  @override
  String get hadith77 =>
      '«لو أنكم تتوكلون على الله حق توكله لرزقكم كما يرزق الطير.»\n— الترمذي';

  @override
  String get hadith78 =>
      '«من عاد مريضاً لم يزل في خُرفة الجنة حتى يرجع.»\n— مسلم';

  @override
  String get hadith79 =>
      '«أفشوا السلام، وأطعموا الطعام، وصلّوا بالليل والناس نيام، تدخلوا الجنة بسلام.»\n— الترمذي';

  @override
  String get hadith80 => '«أحب الأعمال إلى الله أدومها وإن قلّ.»\n— البخاري';

  @override
  String get hadith81 =>
      '«لا حسد إلا في اثنتين: رجل آتاه الله مالاً فسلّطه على هلكته في الحق، ورجل آتاه الله حكمةً فهو يقضي بها ويعلّمها.»\n— البخاري ومسلم';

  @override
  String get hadith82 =>
      '«المرء على دين خليله فلينظر أحدكم من يخالل.»\n— أبو داود والترمذي';

  @override
  String get hadith83 => '«أكثروا ذكر الموت فإنه يمحص الذنوب.»\n— الترمذي';

  @override
  String get hadith84 => '«خياركم ألينكم قلوباً.»\n— الطبراني';

  @override
  String get hadith85 => '«لا يكلّف الله نفساً إلا وسعها.»\n— القرآن ٢:٢٨٦';

  @override
  String get hadith86 =>
      '«من ستر مسلماً ستره الله يوم القيامة.»\n— البخاري ومسلم';

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
  String get hadith91 =>
      '«من ترك الكذب وهو باطل بُني له في رَبَض الجنة.»\n— أبو داود';

  @override
  String get hadith92 =>
      '«أبواب الخير كثيرة: التسبيح، والتحميد، والصدقة، والأمر بالمعروف، وإماطة الأذى عن الطريق.»\n— مسلم';

  @override
  String get hadith93 =>
      '«اجتمعوا على طعامكم واذكروا اسم الله يُبارَك لكم فيه.»\n— أبو داود';

  @override
  String get hadith94 => '«خير المجالس أوسعها.»\n— أبو داود';

  @override
  String get hadith95 => '«اعفوا يُعفَ عنكم.»\n— أحمد';

  @override
  String get hadith96 => '«اعقلها وتوكل.»\n— الترمذي';

  @override
  String get hadith97 => '«عجباً لأمر المؤمن إن أمره كله له خير.»\n— مسلم';

  @override
  String get hadith98 =>
      '«المسلم أخو المسلم لا يظلمه ولا يخذله ولا يحقره.»\n— مسلم';

  @override
  String get hadith99 =>
      '«أحب الكلام إلى الله: سبحان الله وبحمده، سبحان الله العظيم.»\n— البخاري ومسلم';
}
