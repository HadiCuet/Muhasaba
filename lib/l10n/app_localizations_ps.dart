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
  String get hadith1 =>
      '\"نیک عملونه هومره واخلئ څومره چې وکولی شئ، ځکه ترټولو غوره عملونه هغه دي چې دوامداره وي که لږ هم وي.\"\n— ابن ماجه';

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
  String get hadith5 =>
      '\"ترټولو غوره خلک هغه دي چې خلکو ته ترټولو ډیر ګټور وي.\"\n— دارقطني';

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
}
