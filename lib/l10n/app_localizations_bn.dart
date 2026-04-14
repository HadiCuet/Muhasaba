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
      '\"সর্বোত্তম মানুষ তারাই যারা মানুষের সবচেয়ে বেশি উপকার করে।\"\n— তাবারানি';

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

  @override
  String get hadith10 =>
      '\"যে ব্যক্তি দিনে একশত বার \'সুবহানাল্লাহি ওয়া বিহামদিহি\' বলবে, তার পাপ ক্ষমা করা হবে, যদিও তা সমুদ্রের ফেনার মতো হয়।\"\n— বুখারী';

  @override
  String get hadith11 =>
      '\"সর্বোত্তম দোয়া হলো আরাফার দিনের দোয়া, এবং আমি ও আমার পূর্ববর্তী নবীগণ যা বলেছি তার মধ্যে সর্বোত্তম হলো: লা ইলাহা ইল্লাল্লাহ।\"\n— তিরমিযী';

  @override
  String get hadith12 =>
      '\"যে ব্যক্তি প্রতি ফরজ নামাজের পর আয়াতুল কুরসি পড়বে, জান্নাতে প্রবেশে মৃত্যু ছাড়া কিছু বাধা হবে না।\"\n— নাসায়ী';

  @override
  String get hadith13 => '\"ভালো কথা সদকা।\"\n— বুখারী ও মুসলিম';

  @override
  String get hadith14 =>
      '\"যে ব্যক্তি আল্লাহ ও শেষ দিবসে বিশ্বাস করে, সে যেন ভালো কথা বলে অথবা চুপ থাকে।\"\n— বুখারী ও মুসলিম';

  @override
  String get hadith15 =>
      '\"বিধবা ও অভাবীর সেবাকারী আল্লাহর পথে মুজাহিদের মতো।\"\n— বুখারী';

  @override
  String get hadith16 => '\"তোমার ভাইয়ের সামনে হাসি দেওয়া সদকা।\"\n— তিরমিযী';

  @override
  String get hadith17 =>
      '\"তোমাদের মধ্যে সর্বোত্তম সেই ব্যক্তি যে কুরআন শেখে এবং শেখায়।\"\n— বুখারী';

  @override
  String get hadith18 =>
      '\"নিজ হাতে উপার্জিত খাবারের চেয়ে উত্তম খাবার কেউ খায়নি।\"\n— বুখারী';

  @override
  String get hadith19 =>
      '\"আল্লাহ কোমল এবং তিনি সকল বিষয়ে কোমলতা পছন্দ করেন।\"\n— বুখারী ও মুসলিম';

  @override
  String historyDayCompleted(int completed, int total) {
    return '$total এর মধ্যে $completed সম্পন্ন';
  }

  @override
  String get settingsSchedule => 'সময়সূচি';

  @override
  String get settingsAppearance => 'চেহারা';

  @override
  String get settingsAboutTagline => 'আপনার দৈনিক দ্বীন সঙ্গী';

  @override
  String get settingsRolloverSub => 'দিন কখন রিসেট হয়';

  @override
  String get settingsAbout => 'সম্পর্কে';

  @override
  String get settingsVersion => 'সংস্করণ';

  @override
  String get settingsDeveloper => 'ডেভেলপার';

  @override
  String get settingsSupport => 'সহায়তা';

  @override
  String get settingsRate => 'অ্যাপটিকে রেট করুন';

  @override
  String get settingsContact => 'যোগাযোগ করুন';

  @override
  String get settingsReportBug => 'বাগ রিপোর্ট করুন';

  @override
  String get settingsRequestFeature => 'ফিচার অনুরোধ করুন';

  @override
  String settingsSupportFallback(String email) {
    return 'মেল খুলতে পারেনি। অনুগ্রহ করে $email এ ইমেল করুন।';
  }

  @override
  String get hadith20 =>
      '\"যে ব্যক্তি ঈমান ও সওয়াবের আশায় রমজানে রোজা রাখবে, তার পূর্ববর্তী গুনাহ মাফ করা হবে।\"\n— বুখারি ও মুসলিম';

  @override
  String get hadith21 => '\"নামাজ দ্বীনের স্তম্ভ।\"\n— বায়হাকি';

  @override
  String get hadith22 =>
      '\"আজান ও ইকামতের মধ্যবর্তী দোয়া ফেরত দেওয়া হয় না।\"\n— আবু দাউদ';

  @override
  String get hadith23 =>
      '\"যে ব্যক্তি আল্লাহর জন্য একটি মসজিদ নির্মাণ করবে, আল্লাহ তার জন্য জান্নাতে একটি ঘর নির্মাণ করবেন।\"\n— বুখারি ও মুসলিম';

  @override
  String get hadith24 =>
      '\"পুরুষদের জন্য সর্বোত্তম সারি হলো প্রথম সারি, এবং নারীদের জন্য সর্বোত্তম সারি হলো শেষ সারি।\"\n— মুসলিম';

  @override
  String get hadith25 => '\"রোজা জাহান্নামের আগুন থেকে ঢাল।\"\n— নাসায়ী';

  @override
  String get hadith26 =>
      '\"যে ব্যক্তি বারো রাকাত সুন্নত নামাজ পড়বে, তার জন্য জান্নাতে একটি ঘর নির্মাণ করা হবে।\"\n— মুসলিম';

  @override
  String get hadith27 =>
      '\"কুরআনে দক্ষ ব্যক্তি সম্মানিত ফেরেশতাদের সাথে থাকবে।\"\n— বুখারি ও মুসলিম';

  @override
  String get hadith28 =>
      '\"ইলম অর্জন করা প্রত্যেক মুসলিমের উপর ফরজ।\"\n— ইবনে মাজাহ';

  @override
  String get hadith29 => '\"সর্বোত্তম সদকা হলো পানি পান করানো।\"\n— আহমদ';

  @override
  String get hadith30 =>
      '\"যে ব্যক্তি কোনো মুমিনের কষ্ট দূর করে, আল্লাহ কিয়ামতের দিন তার কষ্ট দূর করবেন।\"\n— মুসলিম';

  @override
  String get hadith31 =>
      '\"দয়াশীলদের প্রতি পরম দয়ালু দয়া করেন।\"\n— আবু দাউদ ও তিরমিযী';

  @override
  String get hadith32 => '\"লজ্জা ঈমানের অংশ।\"\n— বুখারী ও মুসলিম';

  @override
  String get hadith33 => '\"পবিত্রতা ঈমানের অর্ধেক।\"\n— মুসলিম';

  @override
  String get hadith34 =>
      '\"যে ধৈর্য ধারণ করে, আল্লাহ তাকে ধৈর্য দান করেন।\"\n— বুখারী ও মুসলিম';

  @override
  String get hadith35 =>
      '\"সর্বোত্তম সম্পদ হলো সেই জিহ্বা যা আল্লাহর যিকির করে।\"\n— তাবারানি';

  @override
  String get hadith36 =>
      '\"তোমাদের কেউ ততক্ষণ মুমিন হতে পারবে না, যতক্ষণ না সে তার ভাইয়ের জন্য তা পছন্দ করে যা নিজের জন্য পছন্দ করে।\"\n— বুখারী ও মুসলিম';

  @override
  String get hadith37 =>
      '\"ক্ষুধার্তদের খাওয়াও, অসুস্থদের দেখতে যাও এবং বন্দীদের মুক্ত করো।\"\n— বুখারী';

  @override
  String get hadith38 =>
      '\"শক্তিশালী সে নয় যে কুস্তিতে জেতে, বরং শক্তিশালী সে যে রাগের সময় নিজেকে নিয়ন্ত্রণ করে।\"\n— বুখারী ও মুসলিম';

  @override
  String get hadith39 =>
      '\"যে ব্যক্তি তার চোয়াল ও পায়ের মধ্যবর্তী অংশের হেফাজত করে, আমি তার জন্য জান্নাতের জামানত দিচ্ছি।\"\n— বুখারী';

  @override
  String get hadith40 =>
      '\"প্রতি নামাজের পর তেত্রিশবার করে \'সুবহানাল্লাহ\', \'আলহামদুলিল্লাহ\' এবং \'আল্লাহু আকবার\' বলো।\"\n— মুসলিম';

  @override
  String get hadith41 =>
      '\"সর্বোত্তম যিকির হলো লা ইলাহা ইল্লাল্লাহ।\"\n— তিরমিযী';

  @override
  String get hadith42 =>
      '\"দুটি নিয়ামত আছে যেগুলোতে অনেক মানুষ ক্ষতিগ্রস্ত: স্বাস্থ্য ও অবসর।\"\n— বুখারী';

  @override
  String get hadith43 =>
      '\"পাঁচটি জিনিসকে পাঁচটির আগে গনিমত মনে করো: বার্ধক্যের আগে যৌবন, অসুস্থতার আগে সুস্থতা, দারিদ্র্যের আগে সচ্ছলতা, ব্যস্ততার আগে অবসর এবং মৃত্যুর আগে জীবন।\"\n— হাকিম';

  @override
  String get hadith44 =>
      '\"যে ব্যক্তি সূরা ইখলাস দশবার পড়বে, আল্লাহ তার জন্য জান্নাতে একটি ঘর নির্মাণ করবেন।\"\n— আহমাদ';

  @override
  String get hadith45 =>
      '\"ফরজ নামাজের পর সর্বোত্তম নামাজ হলো রাতের নামাজ।\"\n— মুসলিম';

  @override
  String get hadith46 =>
      '\"সাদাকাহ গুনাহকে এমনভাবে নিভিয়ে দেয় যেমন পানি আগুনকে নেভায়।\"\n— তিরমিযী';

  @override
  String get hadith47 =>
      '\"আত্মীয়তার বন্ধন রক্ষাকারী সে নয় যে প্রতিদান দেয়। বরং সে যে ছিন্ন হওয়ার পরও তা বজায় রাখে।\"\n— বুখারী';

  @override
  String get hadith48 => '\"প্রতিটি ভালো কাজ সাদাকাহ।\"\n— বুখারী ও মুসলিম';

  @override
  String get hadith49 =>
      '\"যে ব্যক্তি খাবার খেয়ে বলে: \'সমস্ত প্রশংসা আল্লাহর যিনি আমাকে এটি খাইয়েছেন এবং আমার কোনো শক্তি বা সামর্থ্য ছাড়াই দান করেছেন\', তার পূর্ববর্তী গুনাহ ক্ষমা করা হবে।\"\n— তিরমিযী';

  @override
  String get hadith50 =>
      '\"আল্লাহর কাছে সবচেয়ে প্রিয় মানুষ তারাই যারা অন্যদের সবচেয়ে বেশি উপকার করে।\"\n— তাবারানি';

  @override
  String get hadith51 =>
      '\"যে ব্যক্তি ক্ষমতা থাকা সত্ত্বেও রাগ সংবরণ করে, আল্লাহ কিয়ামতের দিন সকল সৃষ্টির সামনে তাকে ডেকে তার পুরস্কার বেছে নিতে বলবেন।\"\n— তিরমিযী';

  @override
  String get hadith52 =>
      '\"সাদাকায় বিলম্ব করো না, কারণ তা বিপদের পথে বাধা হয়ে দাঁড়ায়।\"\n— তিরমিযী';

  @override
  String get hadith53 =>
      '\"কোনো ভালো কাজকে তুচ্ছ মনে করো না, এমনকি তোমার ভাইয়ের সাথে হাসিমুখে সাক্ষাৎ করাও।\"\n— মুসলিম';

  @override
  String get hadith54 =>
      '\"তোমাদের মধ্যে সর্বোত্তম সেই ব্যক্তি যে তার পরিবারের কাছে সর্বোত্তম।\"\n— তিরমিযী';

  @override
  String get hadith55 =>
      '\"যে ব্যক্তি রাতে সূরা বাকারার শেষ দুই আয়াত পড়বে, তা তার জন্য যথেষ্ট হবে।\"\n— বুখারী ও মুসলিম';

  @override
  String get hadith56 =>
      '\"দুনিয়া হলো সম্পদ, আর সর্বোত্তম সম্পদ হলো নেককার স্ত্রী।\"\n— মুসলিম';

  @override
  String get hadith57 =>
      '\"তিনটি দোয়া কখনো ফিরিয়ে দেওয়া হয় না: রোজাদারের দোয়া, ন্যায়পরায়ণ শাসকের দোয়া এবং মজলুমের দোয়া।\"\n— তিরমিযী';

  @override
  String get hadith58 =>
      '\"যে ব্যক্তি আমার উপর একবার দরূদ পাঠায়, আল্লাহ তার উপর দশবার রহমত বর্ষণ করেন।\"\n— মুসলিম';

  @override
  String get hadith59 =>
      '\"মসজিদ হলো প্রতিটি তাকওয়াবান ব্যক্তির ঘর।\"\n— তাবারানি';

  @override
  String get hadith60 =>
      '\"যে ব্যক্তি \'লা হাওলা ওয়া লা কুওয়াতা ইল্লা বিল্লাহ\' পড়ে — এটি নিরানব্বইটি রোগের ঔষধ, যার সবচেয়ে ছোটটি হলো দুশ্চিন্তা।\"\n— হাকিম';

  @override
  String get hadith61 =>
      '\"আল্লাহ পছন্দ করেন যে, তোমরা যখন কোনো কাজ করো, তা যেন উত্তমভাবে করো।\"\n— তাবারানি';

  @override
  String get hadith62 => '\"জান্নাত মায়ের পায়ের নিচে।\"\n— নাসায়ী';

  @override
  String get hadith63 =>
      '\"আল্লাহর কাছে সবচেয়ে প্রিয় আমল: সময়মতো নামাজ, তারপর পিতা-মাতার সাথে সদ্ব্যবহার, তারপর আল্লাহর পথে জিহাদ।\"\n— বুখারী ও মুসলিম';

  @override
  String get hadith64 =>
      '\"যে অল্পে কৃতজ্ঞ, তাকে অনেক দেওয়া হবে।\"\n— বায়হাকী';

  @override
  String get hadith65 => '\"মুমিন মুমিনের আয়না।\"\n— আবু দাউদ';

  @override
  String get hadith66 =>
      '\"সত্যবাদিতা সৎকর্মের দিকে নিয়ে যায়, আর সৎকর্ম জান্নাতের দিকে নিয়ে যায়।\"\n— বুখারী ও মুসলিম';

  @override
  String get hadith67 =>
      '\"যে তোমাকে আমানত দিয়েছে তার আমানত ফিরিয়ে দাও, আর যে তোমার সাথে বিশ্বাসঘাতকতা করেছে তার সাথে বিশ্বাসঘাতকতা করো না।\"\n— আবু দাউদ ও তিরমিযী';

  @override
  String get hadith68 =>
      '\"কোনো মুসলিমের যে কষ্ট, রোগ, দুঃখ, বেদনা, কষ্ট বা মনোব্যথা হয়, এমনকি একটি কাঁটা বিদ্ধ হলেও, আল্লাহ তার বিনিময়ে তার কিছু পাপ ক্ষমা করেন।\"\n— বুখারী ও মুসলিম';

  @override
  String get hadith69 =>
      '\"একজন মুসলিমের তার ভাইয়ের অনুপস্থিতিতে দোয়া সর্বদা কবুল হয়।\"\n— মুসলিম';

  @override
  String get hadith70 =>
      '\"যে ব্যক্তি আল্লাহর কাছে তিনবার জান্নাত চায়, জান্নাত বলে: হে আল্লাহ, তাকে জান্নাতে প্রবেশ করান।\"\n— তিরমিযী';

  @override
  String get hadith71 =>
      '\"রমজানের পর সবচেয়ে উত্তম রোজা হলো আল্লাহর মাস মুহাররমের রোজা।\"\n— মুসলিম';

  @override
  String get hadith72 =>
      '\"যে ব্যক্তি হজ করে এবং কোনো অশ্লীলতা বা পাপ করে না, সে সেই দিনের মতো ফিরে আসে যেদিন তার মা তাকে জন্ম দিয়েছিলেন।\"\n— বুখারী ও মুসলিম';

  @override
  String get hadith73 =>
      '\"এক উমরা থেকে আরেক উমরা এর মধ্যবর্তী পাপের কাফফারা।\"\n— বুখারী ও মুসলিম';

  @override
  String get hadith74 =>
      '\"অন্ধকার রাতের টুকরোর মতো ফিতনা আসার আগেই নেক আমলে তাড়াতাড়ি করো।\"\n— মুসলিম';

  @override
  String get hadith75 =>
      '\"ফজরের দুই রাকাত দুনিয়া ও তার মধ্যে যা কিছু আছে তার চেয়ে উত্তম।\"\n— মুসলিম';

  @override
  String get hadith76 =>
      '\"যে ব্যক্তি নিয়মিত ইস্তিগফার করে, আল্লাহ তার প্রতিটি কষ্ট থেকে মুক্তির পথ করে দেন।\"\n— আবু দাউদ';

  @override
  String get hadith77 =>
      '\"তোমরা যদি আল্লাহর উপর যথাযথ তাওয়াক্কুল করতে, তাহলে তিনি তোমাদের রিযিক দিতেন যেমন পাখিদের দেন।\"\n— তিরমিযী';

  @override
  String get hadith78 =>
      '\"যে ব্যক্তি কোনো অসুস্থ ব্যক্তিকে দেখতে যায়, সে ফিরে আসা পর্যন্ত জান্নাতের ফল আহরণে থাকে।\"\n— মুসলিম';

  @override
  String get hadith79 =>
      '\"সালামের প্রসার করো, অন্নদান করো এবং রাতে যখন মানুষ ঘুমায় তখন নামায পড়ো — শান্তিতে জান্নাতে প্রবেশ করবে।\"\n— তিরমিযী';

  @override
  String get hadith80 =>
      '\"যে মানুষের প্রতি কৃতজ্ঞ নয়, সে আল্লাহর প্রতিও কৃতজ্ঞ নয়।\"\n— তিরমিযী';

  @override
  String get hadith81 =>
      '\"হিংসা কেবল দুটি বিষয়ে বৈধ: এমন ব্যক্তি যাকে আল্লাহ সম্পদ দিয়েছেন এবং সে তা সৎপথে ব্যয় করে, এবং এমন ব্যক্তি যাকে আল্লাহ প্রজ্ঞা দিয়েছেন এবং সে তা দিয়ে বিচার ও শিক্ষা দেয়।\"\n— বুখারী ও মুসলিম';

  @override
  String get hadith82 =>
      '\"মানুষ তার বন্ধুর দ্বীনের উপর থাকে, তাই তোমাদের প্রত্যেকে দেখে নাও কাকে বন্ধু বানাচ্ছে।\"\n— আবু দাউদ ও তিরমিযী';

  @override
  String get hadith83 =>
      '\"মৃত্যুকে বেশি বেশি স্মরণ করো, কারণ এটি হৃদয়কে পরিশুদ্ধ করে।\"\n— তিরমিযী';

  @override
  String get hadith84 =>
      '\"সর্বোত্তম ইবাদত হলো স্বস্তির অপেক্ষায় থাকা।\"\n— তিরমিযী';

  @override
  String get hadith85 =>
      '\"যে ব্যক্তি আল্লাহর জন্য কিছু ত্যাগ করে, আল্লাহ তাকে তার চেয়ে উত্তম কিছু দান করেন।\"\n— আহমাদ';

  @override
  String get hadith86 =>
      '\"যে ব্যক্তি কোনো মুসলিমের দোষ গোপন রাখে, আল্লাহ কিয়ামতের দিন তার দোষ গোপন রাখবেন।\"\n— বুখারী ও মুসলিম';

  @override
  String get hadith87 =>
      '\"দুনিয়ায় এমনভাবে থাকো যেন তুমি একজন অপরিচিত বা পথিক।\"\n— বুখারী';

  @override
  String get hadith88 =>
      '\"যে ব্যক্তি কারো কষ্ট লাঘব করে, আল্লাহ দুনিয়া ও আখিরাতে তার জন্য সহজ করে দেন।\"\n— মুসলিম';

  @override
  String get hadith89 =>
      '\"আমলের প্রতিদান নিয়তের উপর নির্ভরশীল।\"\n— বুখারী ও মুসলিম';

  @override
  String get hadith90 =>
      '\"ধারণা থেকে বেঁচে থাকো, কারণ ধারণা হলো সবচেয়ে মিথ্যা কথা।\"\n— বুখারী ও মুসলিম';

  @override
  String get hadith91 =>
      '\"যে ব্যক্তি আল্লাহর জন্য মিথ্যা ত্যাগ করে, এমনকি রসিকতার সময়ও, আমি তার জন্য জান্নাতের প্রান্তে একটি প্রাসাদের জামানত দিচ্ছি।\"\n— আবু দাউদ';

  @override
  String get hadith92 =>
      '\"কল্যাণের দরজা অনেক: আল্লাহর তাসবীহ, তাঁর প্রশংসা, সাদাকাহ, সৎকাজের আদেশ এবং রাস্তা থেকে কষ্টদায়ক জিনিস সরানো।\"\n— মুসলিম';

  @override
  String get hadith93 =>
      '\"একসাথে খাও এবং আল্লাহর নাম নাও, তোমাদের জন্য বরকত দেওয়া হবে।\"\n— আবু দাউদ';

  @override
  String get hadith94 =>
      '\"সর্বোত্তম মজলিস হলো সবচেয়ে প্রশস্ত মজলিস।\"\n— আবু দাউদ';

  @override
  String get hadith95 => '\"ক্ষমা করো, তোমাদেরও ক্ষমা করা হবে।\"\n— আহমাদ';

  @override
  String get hadith96 =>
      '\"তোমার উট বেঁধে রাখো, তারপর আল্লাহর উপর ভরসা করো।\"\n— তিরমিযী';

  @override
  String get hadith97 =>
      '\"মুমিনের বিষয়টি আশ্চর্যজনক — তার সব কিছুই তার জন্য কল্যাণকর।\"\n— মুসলিম';

  @override
  String get hadith98 =>
      '\"মুসলিম মুসলিমের ভাই: সে তার উপর জুলুম করে না, তাকে পরিত্যাগ করে না এবং তাকে তুচ্ছ করে না।\"\n— মুসলিম';

  @override
  String get hadith99 =>
      '\"আল্লাহর কাছে সবচেয়ে প্রিয় কথা হলো: সুবহানাল্লাহি ওয়া বিহামদিহি, সুবহানাল্লাহিল আযীম।\"\n— বুখারী ও মুসলিম';
}
