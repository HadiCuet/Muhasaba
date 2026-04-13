// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get appTitle => 'Muhasaba';

  @override
  String get tabToday => 'আজ';

  @override
  String get tabStats => 'পরিসংখ্যান';

  @override
  String get tabHistory => 'ইতিহাস';

  @override
  String get tabSettings => 'সেটিংস';

  @override
  String get newAmal => 'নতুন আমল';

  @override
  String get editAmal => 'আমল সম্পাদনা';

  @override
  String get newAmalTitle => 'নতুন আমল';

  @override
  String get save => 'সংরক্ষণ';

  @override
  String get cancel => 'বাতিল';

  @override
  String get clear => 'মুছুন';

  @override
  String get titleLabel => 'শিরোনাম';

  @override
  String get titleRequired => 'শিরোনাম আবশ্যক';

  @override
  String get titleTooLong => 'শিরোনাম অনেক বড়';

  @override
  String get frequencyLabel => 'পুনরাবৃত্তি';

  @override
  String get frequencyDaily => 'দৈনিক';

  @override
  String get frequencyWeekly => 'সাপ্তাহিক';

  @override
  String get frequencyMonthly => 'মাসিক';

  @override
  String get categoryLabel => 'বিভাগ';

  @override
  String get categoryOther => 'অন্যান্য';

  @override
  String get categorySalah => 'নামাজ';

  @override
  String get categoryDhikr => 'যিকর';

  @override
  String get categoryQuran => 'কুরআন';

  @override
  String get categoryCharity => 'দান';

  @override
  String get timesPerPeriod => 'প্রতি পর্বে কতবার';

  @override
  String get custom => 'কাস্টম';

  @override
  String get customTargetHint => 'যেমন ৫০';

  @override
  String get dayOfWeek => 'সপ্তাহের দিন';

  @override
  String get anyDay => 'যেকোনো';

  @override
  String get anyDayHint => 'যেকোনো দিন (আজ দেখাবে, পরদিন লুকাবে)';

  @override
  String onlyDayHint(String day) {
    return 'শুধু $day';
  }

  @override
  String get dateOfMonth => 'মাসের তারিখ';

  @override
  String get anyDate => 'যেকোনো';

  @override
  String get anyDateHint => 'যেকোনো তারিখ (আজ দেখাবে, পরদিন লুকাবে)';

  @override
  String onlyDateHint(String date) {
    return 'শুধু $date তারিখে';
  }

  @override
  String get startPreChecked => 'আগে থেকে চেক করা';

  @override
  String get startPreCheckedSubtitle =>
      'নতুন পর্ব শুরু হলে এই আমল স্বয়ংক্রিয়ভাবে সম্পন্ন হিসেবে চিহ্নিত থাকবে, যতক্ষণ না আপনি আনচেক করেন।';

  @override
  String get reminder => 'রিমাইন্ডার';

  @override
  String get reminderNone => 'নেই';

  @override
  String reminderTime(String time) {
    return 'রিমাইন্ডার: $time';
  }

  @override
  String get reminderPermissionWarning =>
      'রিমাইন্ডার সংরক্ষিত হয়েছে, তবে নোটিফিকেশনের অনুমতি নেই। সতর্কতা পেতে সিস্টেম সেটিংস থেকে চালু করুন।';

  @override
  String get groupByCategory => 'বিভাগ অনুযায়ী';

  @override
  String get flatList => 'সাধারণ তালিকা';

  @override
  String errorGeneric(String error) {
    return 'ত্রুটি: $error';
  }

  @override
  String get todayEmptyHint => 'আপনার প্রথম আমল যোগ করতে + চাপুন।';

  @override
  String get noteLabel => 'নোট';

  @override
  String get noteHint => 'যেমন মসজিদে নামাজ পড়েছি';

  @override
  String get completed => 'সম্পন্ন';

  @override
  String get notCompleted => 'অসম্পন্ন';

  @override
  String progressOf(int progress, int target) {
    return '$target এর মধ্যে $progress সম্পন্ন';
  }

  @override
  String get removeFromToday => 'আজকের তালিকা থেকে সরান';

  @override
  String get removeFromTodaySubtitle =>
      'শুধু আজকের জন্য লুকান। আগামীকাল ফিরে আসবে।';

  @override
  String get removeFromTracking => 'ট্র্যাকিং থেকে সরান';

  @override
  String get removeFromTrackingSubtitle =>
      'আপনার তালিকা থেকে স্থায়ীভাবে সরান। ইতিহাস রক্ষিত থাকবে।';

  @override
  String get chooseIcon => 'আইকন বাছাই করুন';

  @override
  String get iconNone => 'নেই';

  @override
  String get recentlyUsed => 'সম্প্রতি ব্যবহৃত';

  @override
  String get emojiSectionGeneral => 'সাধারণ';

  @override
  String get categoryNameHint => 'নাম';

  @override
  String get categoryNew => '+ নতুন';

  @override
  String get addAmal => 'আমল যোগ করুন';

  @override
  String get customAmal => 'কাস্টম আমল';

  @override
  String get templateTasbih => 'তাসবিহ ৩৩ বার';

  @override
  String get templateIstighfar => 'ইস্তিগফার ১০০ বার';

  @override
  String get templateSurahKahf => 'সূরা কাহফ';

  @override
  String get templateSadaqah => 'সাদাকাহ';

  @override
  String get templateTahajjud => 'তাহাজ্জুদ';

  @override
  String get templateDuhaPrayer => 'চাশতের নামাজ';

  @override
  String get settingsTitle => 'সেটিংস';

  @override
  String settingsLoadError(String error) {
    return 'সেটিংস লোড করতে ব্যর্থ:\n$error';
  }

  @override
  String get sectionDayBoundary => 'দিনের সীমানা';

  @override
  String get rolloverHour => 'দিন পরিবর্তনের সময়';

  @override
  String get rolloverAtMidnight => 'আজ মধ্যরাতে শেষ হবে।';

  @override
  String rolloverSubtitle(String time) {
    return 'গতকালের আমল $time পর্যন্ত সম্পাদনাযোগ্য থাকবে।';
  }

  @override
  String get pickRolloverHour => 'দিন পরিবর্তনের সময় নির্বাচন করুন';

  @override
  String get sectionWeekMonth => 'সপ্তাহ ও মাস';

  @override
  String get startOfWeek => 'সপ্তাহের শুরু';

  @override
  String get startOfMonth => 'মাসের শুরু';

  @override
  String get startOfMonthClamped =>
      '২৮ তারিখের পরের দিনগুলো ছোট মাসের শেষ দিনে সমন্বিত হবে।';

  @override
  String get sectionAppearance => 'চেহারা';

  @override
  String get theme => 'থিম';

  @override
  String get themeSystem => 'সিস্টেম';

  @override
  String get themeLight => 'লাইট';

  @override
  String get themeDark => 'ডার্ক';

  @override
  String get sectionLanguage => 'ভাষা';

  @override
  String get language => 'ভাষা';

  @override
  String get systemDefault => 'সিস্টেম ডিফল্ট';

  @override
  String get aboutTitle => 'Muhasaba';

  @override
  String get aboutSubtitle =>
      'একটি ব্যক্তিগত দ্বীন মুহাসাবার জার্নাল। সমস্ত তথ্য এই ডিভাইসেই থাকে।';

  @override
  String get statsTitle => 'পরিসংখ্যান';

  @override
  String statsLoadError(String error) {
    return 'পরিসংখ্যান লোড করতে ব্যর্থ:\n$error';
  }

  @override
  String get perAmal => 'আমল প্রতি';

  @override
  String get thisWeek => 'এই সপ্তাহ';

  @override
  String get thisMonth => 'এই মাস';

  @override
  String get totalCompletions => 'মোট সম্পন্ন';

  @override
  String get streakCurrent => 'বর্তমান';

  @override
  String get streakLongest => 'সর্বোচ্চ';

  @override
  String get ratioWeek => 'সপ্তাহ';

  @override
  String get ratioMonth => 'মাস';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'দিন',
      one: 'দিন',
    );
    return '$_temp0';
  }

  @override
  String streakWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'সপ্তাহ',
      one: 'সপ্তাহ',
    );
    return '$_temp0';
  }

  @override
  String streakMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'মাস',
      one: 'মাস',
    );
    return '$_temp0';
  }

  @override
  String get frequencyBadgeDaily => 'দৈনিক';

  @override
  String get frequencyBadgeWeekly => 'সাপ্তাহিক';

  @override
  String get frequencyBadgeMonthly => 'মাসিক';

  @override
  String get statsEmpty =>
      'এখনো কোনো আমল নেই। ট্র্যাকিং শুরু করতে আজ ট্যাব থেকে একটি যোগ করুন।';

  @override
  String get statsToday => 'আজ';

  @override
  String get statsThisWeek => 'এই সপ্তাহ';

  @override
  String get statsThisMonth => 'এই মাস';

  @override
  String get statsAllTime => 'সর্বকালীন';

  @override
  String get statsCustomRange => 'কাস্টম পরিসীমা';

  @override
  String get statsAllCategories => 'সব';

  @override
  String get statsAllAmals => 'সব';

  @override
  String get statsCompleted => 'সম্পন্ন';

  @override
  String get statsExpected => 'প্রত্যাশিত';

  @override
  String get statsVsPrevious => 'পূর্ববর্তীর তুলনায়';

  @override
  String get statsByCategory => 'বিভাগ অনুযায়ী';

  @override
  String get statsPerAmal => 'আমল প্রতি';

  @override
  String get statsCurrentStreak => 'বর্তমান ধারা';

  @override
  String get statsBestStreak => 'সেরা ধারা';

  @override
  String get statsTotalDays => 'মোট দিন';

  @override
  String get statsConsistency => 'ধারাবাহিকতা';

  @override
  String get statsLast5Weeks => 'গত ৫ সপ্তাহ';

  @override
  String get statsDailyBreakdown => 'দৈনিক বিশ্লেষণ';

  @override
  String get statsCompletionRate => 'সম্পন্নের হার';

  @override
  String get statsFilterTime => 'সময়';

  @override
  String get statsFilterCategory => 'বিভাগ';

  @override
  String get statsFilterAmal => 'আমল';

  @override
  String get statsStreaks => 'ধারা';

  @override
  String get statsSelectDateRange => 'তারিখের পরিসীমা নির্বাচন করুন';

  @override
  String get historyTitle => 'ইতিহাস';

  @override
  String get jumpToDate => 'তারিখে যান';

  @override
  String historyEmptyDay(String date) {
    return '$date তারিখে কোনো আমল ট্র্যাক করা হয়নি';
  }

  @override
  String get streakUnitD => 'দি';

  @override
  String get streakUnitW => 'স';

  @override
  String get streakUnitM => 'মা';

  @override
  String get mondayShort => 'সোম';

  @override
  String get tuesdayShort => 'মঙ্গল';

  @override
  String get wednesdayShort => 'বুধ';

  @override
  String get thursdayShort => 'বৃহ';

  @override
  String get fridayShort => 'শুক্র';

  @override
  String get saturdayShort => 'শনি';

  @override
  String get sundayShort => 'রবি';

  @override
  String get mondayFull => 'সোমবার';

  @override
  String get tuesdayFull => 'মঙ্গলবার';

  @override
  String get wednesdayFull => 'বুধবার';

  @override
  String get thursdayFull => 'বৃহস্পতিবার';

  @override
  String get fridayFull => 'শুক্রবার';

  @override
  String get saturdayFull => 'শনিবার';

  @override
  String get sundayFull => 'রবিবার';

  @override
  String get hadith0 =>
      '\"আল্লাহর কাছে সবচেয়ে প্রিয় আমল হলো যা নিয়মিত করা হয়, যদিও তা অল্প হোক।\"\n— বুখারি ও মুসলিম';

  @override
  String get hadith1 =>
      '\"তোমরা যতটুকু পারো ততটুকু নেক আমল করো, কারণ সর্বোত্তম আমল হলো যা নিয়মিত করা হয়, যদিও তা অল্প হোক।\"\n— ইবনে মাজাহ';

  @override
  String get hadith2 =>
      '\"আদম সন্তান মৃত্যুবরণ করলে তার আমল বন্ধ হয়ে যায়, তিনটি ব্যতীত: সাদাকায়ে জারিয়া, উপকারী ইলম, অথবা এমন নেক সন্তান যে তার জন্য দোয়া করে।\"\n— মুসলিম';

  @override
  String get hadith3 =>
      '\"যে ব্যক্তি দুই ঠান্ডা নামাজ (ফজর ও আসর) আদায় করবে, সে জান্নাতে প্রবেশ করবে।\"\n— বুখারি';

  @override
  String get hadith4 =>
      '\"আল্লাহ তোমাদের চেহারা বা সম্পদের দিকে তাকান না, বরং তিনি তোমাদের অন্তর ও আমলের দিকে তাকান।\"\n— মুসলিম';

  @override
  String get hadith5 =>
      '\"সর্বোত্তম মানুষ তারাই যারা মানুষের সবচেয়ে বেশি উপকার করে।\"\n— দারাকুতনি';

  @override
  String get hadith6 =>
      '\"সহজ করো, কঠিন করো না; সুসংবাদ দাও, ভয় দেখিয়ে মানুষকে দূরে সরিয়ে দিও না।\"\n— বুখারি';

  @override
  String get hadith7 =>
      '\"যে ব্যক্তি ইলম অর্জনের পথে চলে, আল্লাহ তার জন্য জান্নাতের পথ সহজ করে দেন।\"\n— মুসলিম';

  @override
  String get hadith8 => '\"দান-সাদাকায় সম্পদ কমে না।\"\n— মুসলিম';

  @override
  String get hadith9 =>
      '\"শক্তিশালী মুমিন দুর্বল মুমিনের চেয়ে আল্লাহর কাছে উত্তম ও বেশি প্রিয়, তবে উভয়ের মধ্যেই কল্যাণ রয়েছে।\"\n— মুসলিম';
}
