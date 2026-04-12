// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kurdish (`ku`).
class AppLocalizationsKu extends AppLocalizations {
  AppLocalizationsKu([String locale = 'ku']) : super(locale);

  @override
  String get appTitle => 'Muhasaba';

  @override
  String get tabToday => 'ئەمڕۆ';

  @override
  String get tabStats => 'ئامار';

  @override
  String get tabHistory => 'مێژوو';

  @override
  String get tabSettings => 'ڕێکخستنەکان';

  @override
  String get newAmal => 'کرداری نوێ';

  @override
  String get editAmal => 'دەستکاری کردار';

  @override
  String get newAmalTitle => 'کرداری نوێ';

  @override
  String get save => 'پاشەکەوتکردن';

  @override
  String get cancel => 'پاشگەزبوونەوە';

  @override
  String get clear => 'سڕینەوە';

  @override
  String get titleLabel => 'ناونیشان';

  @override
  String get titleRequired => 'ناونیشان پێویستە';

  @override
  String get titleTooLong => 'ناونیشان زۆر درێژە';

  @override
  String get frequencyLabel => 'دووبارەبوونەوە';

  @override
  String get frequencyDaily => 'ڕۆژانە';

  @override
  String get frequencyWeekly => 'هەفتانە';

  @override
  String get frequencyMonthly => 'مانگانە';

  @override
  String get categoryLabel => 'جۆر';

  @override
  String get categoryOther => 'هیتر';

  @override
  String get categorySalah => 'نوێژ';

  @override
  String get categoryDhikr => 'زیکر';

  @override
  String get categoryQuran => 'قورئان';

  @override
  String get categoryCharity => 'خێرات';

  @override
  String get timesPerPeriod => 'جار لە هەر ماوەیەک';

  @override
  String get custom => 'تایبەت';

  @override
  String get customTargetHint => 'بۆ نمونە ٥٠';

  @override
  String get dayOfWeek => 'ڕۆژی هەفتە';

  @override
  String get anyDay => 'هەر ڕۆژێک';

  @override
  String get anyDayHint => 'هەر ڕۆژێک (ئەمڕۆ دەردەکەوێت، سبەی دەشارێتەوە)';

  @override
  String onlyDayHint(String day) {
    return 'تەنها $day';
  }

  @override
  String get dateOfMonth => 'ڕێکەوتی مانگ';

  @override
  String get anyDate => 'هەر ڕێکەوتێک';

  @override
  String get anyDateHint => 'هەر ڕێکەوتێک (ئەمڕۆ دەردەکەوێت، سبەی دەشارێتەوە)';

  @override
  String onlyDateHint(String date) {
    return 'تەنها لە $date';
  }

  @override
  String get startPreChecked => 'لە سەرەتاوە نیشانکراو';

  @override
  String get startPreCheckedSubtitle =>
      'کاتێک ماوەیەکی نوێ دەست پێ دەکات، ئەم کردارە بە بنەڕەتی وەک تەواوکراو نیشان دەکرێت تا تۆ نیشانەکەی لادەبەیت.';

  @override
  String get reminder => 'بیرخستنەوە';

  @override
  String get reminderNone => 'هیچ';

  @override
  String reminderTime(String time) {
    return 'بیرخستنەوە: $time';
  }

  @override
  String get reminderPermissionWarning =>
      'بیرخستنەوە پاشەکەوت کرا، بەڵام ئاگاداریەکان ڕێگەپێنەدراون. لە ڕێکخستنەکانی سیستەم چالاکیان بکە بۆ وەرگرتنی ئاگاداری.';

  @override
  String get groupByCategory => 'کۆکردنەوە بەپێی جۆر';

  @override
  String get flatList => 'لیستی ئاسایی';

  @override
  String errorGeneric(String error) {
    return 'هەڵە: $error';
  }

  @override
  String get todayEmptyHint => 'دەست بنێ لەسەر + بۆ زیادکردنی یەکەم کردارت.';

  @override
  String get noteLabel => 'تێبینی';

  @override
  String get noteHint => 'بۆ نمونە لە مزگەوت نوێژم کرد';

  @override
  String get completed => 'تەواو کرا';

  @override
  String get notCompleted => 'تەواو نەکرا';

  @override
  String progressOf(int progress, int target) {
    return '$progress لە $target تەواو کرا';
  }

  @override
  String get removeFromToday => 'لابردن لە ئەمڕۆ';

  @override
  String get removeFromTodaySubtitle =>
      'تەنها بۆ ئەم ڕۆژە دەشارێتەوە. سبەی دەگەڕێتەوە.';

  @override
  String get removeFromTracking => 'لابردن لە شوێنکەوتن';

  @override
  String get removeFromTrackingSubtitle =>
      'بە تەواوی لە لیستەکەت لادەبرێت. مێژووەکە دەمێنێتەوە.';

  @override
  String get chooseIcon => 'وێنۆچکە هەڵبژێرە';

  @override
  String get iconNone => 'هیچ';

  @override
  String get recentlyUsed => 'دوایین بەکارهێنراوەکان';

  @override
  String get emojiSectionGeneral => 'گشتی';

  @override
  String get categoryNameHint => 'ناو';

  @override
  String get categoryNew => '+ نوێ';

  @override
  String get addAmal => 'زیادکردنی کردار';

  @override
  String get customAmal => 'کرداری تایبەت';

  @override
  String get templateTasbih => 'تەسبیح ٣٣ جار';

  @override
  String get templateIstighfar => 'ئیستیغفار ١٠٠ جار';

  @override
  String get templateSurahKahf => 'سورەتی کەهف';

  @override
  String get templateSadaqah => 'خێرات';

  @override
  String get templateTahajjud => 'تەهەجود';

  @override
  String get templateDuhaPrayer => 'نوێژی دوحا';

  @override
  String get settingsTitle => 'ڕێکخستنەکان';

  @override
  String settingsLoadError(String error) {
    return 'ڕێکخستنەکان بارنەکران:\n$error';
  }

  @override
  String get sectionDayBoundary => 'سنووری ڕۆژ';

  @override
  String get rolloverHour => 'کاتی گۆڕانی ڕۆژ';

  @override
  String get rolloverAtMidnight => 'ئەمڕۆ لە نیوەشەو تەواو دەبێت.';

  @override
  String rolloverSubtitle(String time) {
    return 'کردارەکانی دوێنێ تا $time دەستکاریکردنیان دەکرێت.';
  }

  @override
  String get pickRolloverHour => 'کاتژمێری گۆڕانی ڕۆژ هەڵبژێرە';

  @override
  String get sectionWeekMonth => 'هەفتە و مانگ';

  @override
  String get startOfWeek => 'سەرەتای هەفتە';

  @override
  String get startOfMonth => 'سەرەتای مانگ';

  @override
  String get startOfMonthClamped =>
      'ڕۆژەکانی دوای ٢٨ بۆ دوایین ڕۆژی مانگە کورتەکان دەگۆڕدرێن.';

  @override
  String get sectionAppearance => 'دەرکەوتن';

  @override
  String get theme => 'ڕووکار';

  @override
  String get themeSystem => 'سیستەم';

  @override
  String get themeLight => 'ڕووناک';

  @override
  String get themeDark => 'تاریک';

  @override
  String get sectionLanguage => 'زمان';

  @override
  String get language => 'زمان';

  @override
  String get systemDefault => 'بنەڕەتی سیستەم';

  @override
  String get aboutTitle => 'Muhasaba';

  @override
  String get aboutSubtitle =>
      'ڕۆژنامەی تایبەتی بەرپرسیارێتی ئایینی. هەموو داتاکان لەم ئامێرەدا دەمێنێتەوە.';

  @override
  String get statsTitle => 'ئامار';

  @override
  String statsLoadError(String error) {
    return 'ئامار بارنەکران:\n$error';
  }

  @override
  String get perAmal => 'بۆ هەر کردارێک';

  @override
  String get thisWeek => 'ئەم هەفتەیە';

  @override
  String get thisMonth => 'ئەم مانگە';

  @override
  String get totalCompletions => 'کۆی تەواوکردنەکان';

  @override
  String get streakCurrent => 'ئێستا';

  @override
  String get streakLongest => 'درێژترین';

  @override
  String get ratioWeek => 'هەفتە';

  @override
  String get ratioMonth => 'مانگ';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ڕۆژ',
      one: 'ڕۆژ',
    );
    return '$_temp0';
  }

  @override
  String streakWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'هەفتە',
      one: 'هەفتە',
    );
    return '$_temp0';
  }

  @override
  String streakMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'مانگ',
      one: 'مانگ',
    );
    return '$_temp0';
  }

  @override
  String get frequencyBadgeDaily => 'ڕۆژانە';

  @override
  String get frequencyBadgeWeekly => 'هەفتانە';

  @override
  String get frequencyBadgeMonthly => 'مانگانە';

  @override
  String get statsEmpty =>
      'هێشتا هیچ کردارێک نییە. لە ئەمڕۆ یەکێک زیاد بکە بۆ دەستپێکردنی شوێنکەوتن.';

  @override
  String get historyTitle => 'مێژوو';

  @override
  String get jumpToDate => 'بڕۆ بۆ ڕێکەوت';

  @override
  String historyEmptyDay(String date) {
    return 'هیچ کردارێک لە $date تۆمار نەکراوە';
  }

  @override
  String get streakUnitD => 'ڕ';

  @override
  String get streakUnitW => 'ه';

  @override
  String get streakUnitM => 'م';

  @override
  String get mondayShort => 'دشم';

  @override
  String get tuesdayShort => 'سشم';

  @override
  String get wednesdayShort => 'چشم';

  @override
  String get thursdayShort => 'پشم';

  @override
  String get fridayShort => 'هەی';

  @override
  String get saturdayShort => 'شەم';

  @override
  String get sundayShort => 'یشم';

  @override
  String get mondayFull => 'دووشەممە';

  @override
  String get tuesdayFull => 'سێشەممە';

  @override
  String get wednesdayFull => 'چوارشەممە';

  @override
  String get thursdayFull => 'پێنجشەممە';

  @override
  String get fridayFull => 'هەینی';

  @override
  String get saturdayFull => 'شەممە';

  @override
  String get sundayFull => 'یەکشەممە';

  @override
  String get hadith0 =>
      '\"خۆشەویستترین کردار لای خوا ئەوانەن کە بەردەوام بن، تەنانەت گەر بچووکیش بن.\"\n— بوخاری و موسلیم';

  @override
  String get hadith1 =>
      '\"کرداری چاک بکەن بەقەدری توانایان، چونکە باشترین کردار ئەوانەن کە بەردەوام بن تەنانەت گەر کەمیش بن.\"\n— ئیبن ماجە';

  @override
  String get hadith2 =>
      '\"کاتێک کوڕی ئادەم دەمرێت، کردارەکانی دەوەستن جگە لە سێ: خێراتی بەردەوام، زانستی سوودبەخش، یان منداڵێکی چاک کە بۆی دوعا دەکات.\"\n— موسلیم';

  @override
  String get hadith3 =>
      '\"هەرکەسێک دوو نوێژی فێنک (بەیانی و عەسر) بکات دەچێتە بەهەشتەوە.\"\n— بوخاری';

  @override
  String get hadith4 =>
      '\"خوا سەیری ڕووخسارتان و سامانتان ناکات، بەڵکو سەیری دڵ و کردارتان دەکات.\"\n— موسلیم';

  @override
  String get hadith5 =>
      '\"باشترین خەڵک ئەوانەن کە سوودیان بۆ خەڵک هەبێت.\"\n— دارەقوتنی';

  @override
  String get hadith6 =>
      '\"ئاسان بکەن و قورس مەکەن؛ مژدە بدەن و خەڵکی مەتۆقێنن.\"\n— بوخاری';

  @override
  String get hadith7 =>
      '\"هەرکەسێک ڕێگایەک بگرێت بۆ بەدەستهێنانی زانست، خوا ڕێگای بەهەشتی بۆ ئاسان دەکات.\"\n— موسلیم';

  @override
  String get hadith8 => '\"خێرات سامان کەم ناکاتەوە.\"\n— موسلیم';

  @override
  String get hadith9 =>
      '\"باوەڕداری بەهێز باشتر و خۆشەویستترە لای خوا لە باوەڕداری لاواز، لەگەڵ ئەوەشدا لە هەردووکیاندا چاکە هەیە.\"\n— موسلیم';
}
