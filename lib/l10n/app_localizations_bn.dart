// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get repeatsOnDaysHint => 'নির্বাচিত দিনগুলিতে পুনরাবৃত্তি হয়';

  @override
  String get newDayStarted => 'নতুন একটি দিন শুরু হয়েছে';

  @override
  String get appTitle => 'মুহাসাবা';

  @override
  String get tabToday => 'আজ';

  @override
  String get tabStats => 'পরিসংখ্যান';

  @override
  String get tabHistory => 'ইতিহাস';

  @override
  String get tabSettings => 'সেটিংস';

  @override
  String get tabChallenge => 'সংকল্প';

  @override
  String get tabInsights => 'পরিসংখ্যান';

  @override
  String get insightsTitle => 'পরিসংখ্যান';

  @override
  String get insightsOverview => 'সারসংক্ষেপ';

  @override
  String get insightsDaily => 'দৈনিক';

  @override
  String get insightsArchive => 'আর্কাইভ';

  @override
  String get archivedEmpty =>
      'এখানে এখনো কিছু নেই। ট্র্যাকিং থেকে সরানো আমল এখানে জমা থাকে, যাতে আপনি সেগুলো আবার ফিরিয়ে আনতে পারেন।';

  @override
  String archivedStoppedOn(String date) {
    return '$date তারিখে সরানো হয়েছে';
  }

  @override
  String get archivedRestore => 'ফিরিয়ে আনুন';

  @override
  String archivedRestored(String title) {
    return '\"$title\" আবার আপনার তালিকায় ফিরে এসেছে।';
  }

  @override
  String get newChallenge => 'নতুন সংকল্প';

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
  String get ok => 'ঠিক আছে';

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
  String get categoryDhikr => 'যিকির';

  @override
  String get categoryQuran => 'কুরআন';

  @override
  String get categoryCharity => 'দান';

  @override
  String get categorySunnah => 'সুন্নত';

  @override
  String get timesPerPeriod => 'প্রতি সময়কালে কতবার';

  @override
  String get custom => 'কাস্টম';

  @override
  String get customTargetHint => 'যেমন ৫০';

  @override
  String get targetAny => 'যেকোনো';

  @override
  String get targetAnyHelp =>
      'কোনো লক্ষ্য নেই — যেকোনো পরিমাণেই সম্পন্ন ধরা হবে';

  @override
  String get dayOfWeek => 'সপ্তাহের দিন';

  @override
  String get anyDay => 'যেকোনো';

  @override
  String get anyDayHint => 'যেকোনো দিন (আজ দেখা যাবে, পরদিন লুকিয়ে যাবে)';

  @override
  String onlyDayHint(String day) {
    return 'শুধু $day';
  }

  @override
  String get dateOfMonth => 'মাসের তারিখ';

  @override
  String get repeatMode => 'পুনরাবৃত্তির ধরন';

  @override
  String get onSetDays => 'নির্দিষ্ট দিনে';

  @override
  String get onSetDates => 'নির্দিষ্ট তারিখে';

  @override
  String get anyDayMode => 'যেকোনো দিন';

  @override
  String get datesOfMonth => 'তারিখ';

  @override
  String get daysPerWeekQuestion => 'সপ্তাহে কয় দিন?';

  @override
  String get daysPerMonthQuestion => 'মাসে কয় দিন?';

  @override
  String get pickAtLeastOneDay => 'অন্তত একটি দিন নির্বাচন করুন';

  @override
  String get pickAtLeastOneDate => 'অন্তত একটি তারিখ নির্বাচন করুন';

  @override
  String get previewDaily => 'প্রতিদিন পুনরাবৃত্তি হয়';

  @override
  String previewWeeklyDays(String days) {
    return 'প্রতি $days পুনরাবৃত্তি হয়';
  }

  @override
  String previewWeeklyAny(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count দিন',
      one: 'এক দিন',
    );
    return 'সপ্তাহে যেকোনো $_temp0 পুনরাবৃত্তি হয়';
  }

  @override
  String previewMonthlyDates(int count, String dates) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'প্রতি মাসের $dates তারিখে পুনরাবৃত্তি হয়',
    );
    return '$_temp0';
  }

  @override
  String previewMonthlyAny(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count দিন',
      one: 'এক দিন',
    );
    return 'মাসে যেকোনো $_temp0 পুনরাবৃত্তি হয়';
  }

  @override
  String get anyDate => 'যেকোনো';

  @override
  String get anyDateHint => 'যেকোনো তারিখ (আজ দেখা যাবে, পরদিন লুকিয়ে যাবে)';

  @override
  String onlyDateHint(String date) {
    return 'শুধু $date তারিখে';
  }

  @override
  String get startPreChecked => 'আগে থেকেই টিক দেওয়া';

  @override
  String get startPreCheckedSubtitle =>
      'নতুন সময়কাল শুরু হলে এই আমল আপনাআপনি সম্পন্ন হিসেবে টিক দেওয়া থাকবে, যতক্ষণ না আপনি টিক তুলে দেন।';

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
      'রিমাইন্ডার সংরক্ষণ হয়েছে, তবে নোটিফিকেশনের অনুমতি দেওয়া নেই। নোটিফিকেশন পেতে সিস্টেম সেটিংস থেকে তা চালু করুন।';

  @override
  String get settingsReminders => 'রিমাইন্ডার';

  @override
  String get dailyReminder => 'দৈনিক রিমাইন্ডার';

  @override
  String get dailyReminderSubtitle => 'আমলের হিসাব রাখতে মৃদু তাগিদ';

  @override
  String get dailyReminderTimeLabel => 'রিমাইন্ডারের সময়';

  @override
  String get dailyReminderBody => 'একটু সময় নিয়ে আজকের আমলের হিসাব রাখুন।';

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
  String progressOf(String progress, String target) {
    return '$target-এর মধ্যে $progress সম্পন্ন';
  }

  @override
  String progressOpen(String count) {
    return '$count সম্পন্ন';
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
      'আপনার তালিকা থেকে স্থায়ীভাবে সরিয়ে দিন। ইতিহাস মুছবে না।';

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
  String get categoryNewSheetTitle => 'নতুন বিভাগ';

  @override
  String get categoryEditSheetTitle => 'বিভাগ সম্পাদনা';

  @override
  String get addAmal => 'আমল যোগ করুন';

  @override
  String get customAmal => 'কাস্টম আমল';

  @override
  String get amalTasbih => 'তাসবিহ ৩৩ বার';

  @override
  String get amalIstighfar => 'ইস্তিগফার';

  @override
  String get amalSurahKahf => 'সূরা কাহফ';

  @override
  String get amalSadaqah => 'সদকা';

  @override
  String get amalTahajjud => 'তাহাজ্জুদ';

  @override
  String get amalDuha => 'চাশতের নামাজ';

  @override
  String get amalFajr => 'ফজর';

  @override
  String get amalDhuhr => 'যোহর';

  @override
  String get amalAsr => 'আসর';

  @override
  String get amalMaghrib => 'মাগরিব';

  @override
  String get amalIsha => 'এশা';

  @override
  String get amalMorningAdhkar => 'সকালের যিকির';

  @override
  String get amalEveningAdhkar => 'সন্ধ্যার যিকির';

  @override
  String get amalTilawah => 'তিলাওয়াত';

  @override
  String get settingsTitle => 'সেটিংস';

  @override
  String settingsLoadError(String error) {
    return 'সেটিংস লোড করা যায়নি:\n$error';
  }

  @override
  String get sectionDayBoundary => 'দিনের সীমা';

  @override
  String get rolloverHour => 'দিন পরিবর্তনের সময়';

  @override
  String get rolloverAtMidnight => 'আজকের দিন মধ্যরাতে শেষ হবে।';

  @override
  String rolloverSubtitle(String time) {
    return 'গতকালের আমল $time পর্যন্ত সম্পাদনা করা যাবে।';
  }

  @override
  String get pickRolloverHour => 'কখন দিন বদলাবে, সেই সময় বেছে নিন';

  @override
  String get sectionWeekMonth => 'সপ্তাহ ও মাস';

  @override
  String get startOfWeek => 'সপ্তাহের শুরু';

  @override
  String get startOfMonth => 'মাসের শুরু';

  @override
  String get startOfMonthClamped =>
      '২৮ তারিখের পরের কোনো দিন বেছে নিলে, ছোট মাসগুলোতে মাসের শেষ দিনটিকেই ধরা হবে।';

  @override
  String get sectionAppearance => 'প্রদর্শন';

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
  String get aboutTitle => 'মুহাসাবা';

  @override
  String get aboutSubtitle =>
      'দ্বীনি আমলের হিসাব রাখার একটি ব্যক্তিগত ডায়েরি। সব তথ্য এই ডিভাইসেই থাকে।';

  @override
  String get statsTitle => 'পরিসংখ্যান';

  @override
  String statsLoadError(String error) {
    return 'পরিসংখ্যান লোড করা যায়নি:\n$error';
  }

  @override
  String get perAmal => 'আমলভিত্তিক';

  @override
  String get thisWeek => 'এই সপ্তাহ';

  @override
  String get thisMonth => 'এই মাস';

  @override
  String get totalCompletions => 'মোট সম্পন্ন';

  @override
  String get streakCurrent => 'বর্তমান';

  @override
  String get streakLongest => 'দীর্ঘতম';

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
  String get statsAllTime => 'শুরু থেকে';

  @override
  String get statsCustomRange => 'কাস্টম সময়সীমা';

  @override
  String get statsAllCategories => 'সব';

  @override
  String get statsAllAmals => 'সব';

  @override
  String get statsCompleted => 'সম্পন্ন';

  @override
  String get statsExpected => 'প্রত্যাশিত';

  @override
  String get statsVsPrevious => 'আগের তুলনায়';

  @override
  String get statsByCategory => 'বিভাগ অনুযায়ী';

  @override
  String get statsPerAmal => 'আমলভিত্তিক';

  @override
  String get statsTotalCaption => 'মোট';

  @override
  String statsDaysFraction(String done, String expectedText, num expected) {
    String _temp0 = intl.Intl.pluralLogic(
      expected,
      locale: localeName,
      other: 'দিন',
      one: 'দিন',
    );
    return '$done/$expectedText $_temp0';
  }

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
  String get statsCompletionRate => 'সম্পন্ন করার হার';

  @override
  String get statsAmountPerDay => 'প্রতিদিনের পরিমাণ';

  @override
  String statsCountTotal(String count) {
    return 'মোট $count';
  }

  @override
  String statsCountAvg(String amount) {
    return 'গড় $amount/দিন';
  }

  @override
  String statsCountBest(String count, String day) {
    return 'সেরা $count · $day';
  }

  @override
  String get statsFilterTime => 'সময়';

  @override
  String get statsFilterCategory => 'বিভাগ';

  @override
  String get statsFilterAmal => 'আমল';

  @override
  String get statsStreaks => 'ধারা';

  @override
  String get statsSelectDateRange => 'সময়সীমা নির্বাচন করুন';

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
  String get thursdayShort => 'বৃহঃ';

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
      '\"আল্লাহর কাছে সবচেয়ে প্রিয় আমল হলো যা নিয়মিত করা হয়, যদিও তা অল্প হোক।\"\n— বুখারী ও মুসলিম';

  @override
  String get hadith2 =>
      '\"আদম সন্তান মারা গেলে তার আমল বন্ধ হয়ে যায়, তিনটি ছাড়া: সদকায়ে জারিয়া, উপকারী ইলম, অথবা এমন নেক সন্তান যে তার জন্য দোয়া করে।\"\n— মুসলিম';

  @override
  String get hadith3 =>
      '\"যে ব্যক্তি দুই শীতল সময়ের নামাজ (ফজর ও আসর) আদায় করবে, সে জান্নাতে প্রবেশ করবে।\"\n— বুখারী';

  @override
  String get hadith4 =>
      '\"আল্লাহ তোমাদের চেহারা বা সম্পদের দিকে তাকান না, বরং তিনি তোমাদের অন্তর ও আমলের দিকে তাকান।\"\n— মুসলিম';

  @override
  String get hadith6 =>
      '\"সহজ করো, কঠিন করো না; সুসংবাদ দাও, ভয় দেখিয়ে মানুষকে দূরে সরিয়ে দিও না।\"\n— বুখারী';

  @override
  String get hadith7 =>
      '\"যে ব্যক্তি ইলম অর্জনের পথে চলে, আল্লাহ তার জন্য জান্নাতের পথ সহজ করে দেন।\"\n— মুসলিম';

  @override
  String get hadith8 => '\"সদকা সম্পদ কমায় না।\"\n— মুসলিম';

  @override
  String get hadith9 =>
      '\"শক্তিশালী মুমিন দুর্বল মুমিনের চেয়ে আল্লাহর কাছে উত্তম ও বেশি প্রিয়, তবে উভয়ের মধ্যেই কল্যাণ রয়েছে।\"\n— মুসলিম';

  @override
  String get hadith10 =>
      '\"যে ব্যক্তি দিনে একশত বার \'সুবহানাল্লাহি ওয়া বিহামদিহি\' বলবে, তার গুনাহ মাফ করে দেওয়া হবে, যদিও তা সমুদ্রের ফেনার সমান হয়।\"\n— বুখারী ও মুসলিম';

  @override
  String get hadith12 =>
      '\"যে ব্যক্তি প্রতি ফরজ নামাজের পর আয়াতুল কুরসি পড়বে, মৃত্যু ছাড়া আর কিছুই তাকে জান্নাতে প্রবেশে বাধা দেবে না।\"\n— নাসায়ী';

  @override
  String get hadith13 => '\"ভালো কথাও সদকা।\"\n— বুখারী ও মুসলিম';

  @override
  String get hadith14 =>
      '\"যে ব্যক্তি আল্লাহ ও শেষ দিবসের প্রতি ঈমান রাখে, সে যেন ভালো কথা বলে অথবা চুপ থাকে।\"\n— বুখারী ও মুসলিম';

  @override
  String get hadith15 =>
      '\"যে ব্যক্তি বিধবা ও মিসকিনের দেখাশোনা করে, সে আল্লাহর পথে জিহাদকারীর মতো।\"\n— বুখারী ও মুসলিম';

  @override
  String get hadith16 =>
      '\"তোমার ভাইয়ের দিকে চেয়ে মুচকি হাসাও সদকা।\"\n— তিরমিযী';

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
  String historyDayCompleted(String completed, String total) {
    return '$total-এর মধ্যে $completed সম্পন্ন';
  }

  @override
  String get settingsSchedule => 'সময়সূচি';

  @override
  String get settingsAppearance => 'প্রদর্শন';

  @override
  String get settingsAboutTagline => 'আপনার প্রতিদিনের দ্বীনি সঙ্গী';

  @override
  String get settingsRolloverSub => 'কখন নতুন দিন শুরু হবে';

  @override
  String get settingsAbout => 'সম্পর্কে';

  @override
  String get settingsVersion => 'সংস্করণ';

  @override
  String get settingsDeveloper => 'ডেভেলপার';

  @override
  String get settingsSupport => 'সহায়তা';

  @override
  String get settingsRate => 'অ্যাপটিকে রেটিং দিন';

  @override
  String get settingsContact => 'যোগাযোগ করুন';

  @override
  String get settingsReportBug => 'বাগ রিপোর্ট করুন';

  @override
  String get settingsRequestFeature => 'নতুন ফিচারের অনুরোধ জানান';

  @override
  String settingsSupportFallback(String email) {
    return 'মেইল অ্যাপ খোলা যায়নি। অনুগ্রহ করে $email-এ ইমেইল করুন।';
  }

  @override
  String get settingsPrivacyPolicy => 'গোপনীয়তা নীতি';

  @override
  String get settingsPrivacyOpenFailed => 'গোপনীয়তা নীতি খোলা যায়নি।';

  @override
  String get hadith20 =>
      '\"যে ব্যক্তি ঈমান ও সওয়াবের আশায় রমজানের রোজা রাখবে, তার আগের গুনাহ মাফ করে দেওয়া হবে।\"\n— বুখারী ও মুসলিম';

  @override
  String get hadith22 =>
      '\"আজান ও ইকামতের মাঝের দোয়া ফিরিয়ে দেওয়া হয় না।\"\n— আবু দাউদ';

  @override
  String get hadith23 =>
      '\"যে ব্যক্তি আল্লাহর জন্য একটি মসজিদ নির্মাণ করবে, আল্লাহ তার জন্য জান্নাতে একটি ঘর নির্মাণ করবেন।\"\n— বুখারী ও মুসলিম';

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
      '\"কুরআনে দক্ষ ব্যক্তি সম্মানিত ফেরেশতাদের সাথে থাকবে।\"\n— বুখারী ও মুসলিম';

  @override
  String get hadith29 => '\"সর্বোত্তম সদকা হলো পানি পান করানো।\"\n— আহমাদ';

  @override
  String get hadith30 =>
      '\"যে ব্যক্তি কোনো মুমিনের কষ্ট দূর করে, আল্লাহ কিয়ামতের দিন তার কষ্ট দূর করবেন।\"\n— মুসলিম';

  @override
  String get hadith32 => '\"লজ্জা ঈমানের অংশ।\"\n— বুখারী ও মুসলিম';

  @override
  String get hadith34 =>
      '\"যে ধৈর্য ধারণ করে, আল্লাহ তাকে ধৈর্য দান করেন।\"\n— বুখারী ও মুসলিম';

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
  String get hadith40 =>
      '\"প্রতি নামাজের পর তেত্রিশবার করে \'সুবহানাল্লাহ\', \'আলহামদুলিল্লাহ\' এবং \'আল্লাহু আকবার\' বলো।\"\n— মুসলিম';

  @override
  String get hadith41 =>
      '\"সর্বোত্তম যিকির হলো লা ইলাহা ইল্লাল্লাহ।\"\n— তিরমিযী';

  @override
  String get hadith42 =>
      '\"দুটি নিয়ামত এমন, যে ব্যাপারে অনেক মানুষ ক্ষতিগ্রস্ত: সুস্থতা ও অবসর।\"\n— বুখারী';

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
      '\"সদকা গুনাহকে এমনভাবে নিভিয়ে দেয়, যেমন পানি আগুনকে নিভিয়ে দেয়।\"\n— তিরমিযী';

  @override
  String get hadith47 =>
      '\"আত্মীয়তার সম্পর্ক রক্ষাকারী সে নয়, যে প্রতিদান দেয়; বরং সে-ই, যে সম্পর্ক ছিন্ন করা হলেও তা বজায় রাখে।\"\n— বুখারী';

  @override
  String get hadith49 =>
      '\"যে ব্যক্তি খাবার খেয়ে বলে: \'সমস্ত প্রশংসা আল্লাহর, যিনি আমাকে এটি খাইয়েছেন এবং আমার কোনো শক্তি ও সামর্থ্য ছাড়াই আমাকে তা দান করেছেন\', তার আগের গুনাহ মাফ করে দেওয়া হবে।\"\n— তিরমিযী';

  @override
  String get hadith53 =>
      '\"কোনো ভালো কাজকে তুচ্ছ মনে করো না, এমনকি তোমার ভাইয়ের সাথে হাসিমুখে সাক্ষাৎ করাও।\"\n— মুসলিম';

  @override
  String get hadith54 =>
      '\"তোমাদের মধ্যে সর্বোত্তম সেই ব্যক্তি, যে তার পরিবারের প্রতি সর্বোত্তম।\"\n— তিরমিযী';

  @override
  String get hadith55 =>
      '\"যে ব্যক্তি রাতে সূরা বাকারার শেষ দুই আয়াত পড়বে, তা তার জন্য যথেষ্ট হবে।\"\n— বুখারী ও মুসলিম';

  @override
  String get hadith56 =>
      '\"দুনিয়া হলো ভোগের সামগ্রী, আর দুনিয়ার সর্বোত্তম সামগ্রী হলো নেককার স্ত্রী।\"\n— মুসলিম';

  @override
  String get hadith57 =>
      '\"তিনটি দোয়া কখনো ফিরিয়ে দেওয়া হয় না: রোজাদারের দোয়া, ন্যায়পরায়ণ শাসকের দোয়া এবং মজলুমের দোয়া।\"\n— তিরমিযী';

  @override
  String get hadith58 =>
      '\"যে ব্যক্তি আমার উপর একবার দরুদ পাঠায়, আল্লাহ তার উপর দশবার রহমত বর্ষণ করেন।\"\n— মুসলিম';

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
      '\"কোনো মুসলিমের উপর যে ক্লান্তি, রোগ, দুশ্চিন্তা, দুঃখ, কষ্ট বা মনোবেদনা আসে, এমনকি একটি কাঁটাও যদি বিঁধে, আল্লাহ এর দ্বারা তার কিছু গুনাহ মাফ করে দেন।\"\n— বুখারী ও মুসলিম';

  @override
  String get hadith69 =>
      '\"একজন মুসলিম তার ভাইয়ের অনুপস্থিতিতে তার জন্য যে দোয়া করে, তা সর্বদা কবুল হয়।\"\n— মুসলিম';

  @override
  String get hadith70 =>
      '\"যে ব্যক্তি আল্লাহর কাছে তিনবার জান্নাত চায়, জান্নাত বলে: হে আল্লাহ, তাকে জান্নাতে প্রবেশ করান।\"\n— তিরমিযী';

  @override
  String get hadith71 =>
      '\"রমজানের পর সবচেয়ে উত্তম রোজা হলো আল্লাহর মাস মুহাররমের রোজা।\"\n— মুসলিম';

  @override
  String get hadith72 =>
      '\"যে ব্যক্তি হজ করে এবং কোনো অশ্লীলতা বা গুনাহ করে না, সে সেই দিনের মতো ফিরে আসে যেদিন তার মা তাকে জন্ম দিয়েছিলেন।\"\n— বুখারী ও মুসলিম';

  @override
  String get hadith73 =>
      '\"এক উমরা থেকে আরেক উমরা — এ দুয়ের মাঝের গুনাহের কাফফারা।\"\n— বুখারী ও মুসলিম';

  @override
  String get hadith74 =>
      '\"অন্ধকার রাতের খণ্ডের মতো ফিতনা আসার আগেই দ্রুত নেক আমল করে নাও।\"\n— মুসলিম';

  @override
  String get hadith75 =>
      '\"ফজরের দুই রাকাত দুনিয়া ও তার মধ্যে যা কিছু আছে তার চেয়ে উত্তম।\"\n— মুসলিম';

  @override
  String get hadith77 =>
      '\"তোমরা যদি আল্লাহর উপর যথাযথ তাওয়াক্কুল করতে, তাহলে তিনি তোমাদের সেভাবে রিযিক দিতেন, যেভাবে পাখিদের রিযিক দেন।\"\n— তিরমিযী';

  @override
  String get hadith78 =>
      '\"যে ব্যক্তি কোনো অসুস্থ ব্যক্তিকে দেখতে যায়, সে ফিরে আসা পর্যন্ত জান্নাতের ফল আহরণে থাকে।\"\n— মুসলিম';

  @override
  String get hadith79 =>
      '\"সালামের প্রসার করো, খাবার খাওয়াও এবং মানুষ যখন ঘুমিয়ে থাকে তখন রাতে নামাজ পড়ো — নিরাপদে জান্নাতে প্রবেশ করবে।\"\n— তিরমিযী';

  @override
  String get hadith80 =>
      '\"যে মানুষের প্রতি কৃতজ্ঞ নয়, সে আল্লাহর প্রতিও কৃতজ্ঞ নয়।\"\n— তিরমিযী';

  @override
  String get hadith81 =>
      '\"দুই ব্যক্তি ছাড়া আর কারো প্রতি ঈর্ষা করা বৈধ নয়: এক ব্যক্তি, যাকে আল্লাহ সম্পদ দিয়েছেন এবং সে তা সঠিক পথে ব্যয় করে; আরেক ব্যক্তি, যাকে আল্লাহ প্রজ্ঞা দিয়েছেন এবং সে তা দিয়ে ফয়সালা করে ও তা শিক্ষা দেয়।\"\n— বুখারী ও মুসলিম';

  @override
  String get hadith82 =>
      '\"মানুষ তার বন্ধুর দ্বীনের উপর থাকে, তাই তোমাদের প্রত্যেকের খেয়াল রাখা উচিত, সে কার সাথে বন্ধুত্ব করছে।\"\n— আবু দাউদ ও তিরমিযী';

  @override
  String get hadith85 =>
      '\"যে ব্যক্তি আল্লাহর জন্য কিছু ত্যাগ করে, আল্লাহ তাকে তার চেয়ে উত্তম কিছু দান করেন।\"\n— আহমাদ';

  @override
  String get hadith86 =>
      '\"যে ব্যক্তি কোনো মুসলিমের দোষ গোপন রাখে, আল্লাহ কিয়ামতের দিন তার দোষ গোপন রাখবেন।\"\n— বুখারী ও মুসলিম';

  @override
  String get hadith87 =>
      '\"দুনিয়াতে এমনভাবে থাকো, যেন তুমি একজন অপরিচিত অথবা মুসাফির।\"\n— বুখারী';

  @override
  String get hadith88 =>
      '\"যে ব্যক্তি কারো কষ্ট লাঘব করে, আল্লাহ দুনিয়া ও আখিরাতে তার জন্য সহজ করে দেন।\"\n— মুসলিম';

  @override
  String get hadith89 =>
      '\"আমলের প্রতিদান নিয়তের উপর নির্ভরশীল।\"\n— বুখারী ও মুসলিম';

  @override
  String get hadith90 =>
      '\"তোমরা কুধারণা থেকে বেঁচে থাকো, কারণ কুধারণা সবচেয়ে বড় মিথ্যা কথা।\"\n— বুখারী ও মুসলিম';

  @override
  String get hadith93 =>
      '\"একসাথে খাও এবং আল্লাহর নাম নাও, এতে তোমাদের জন্য বরকত হবে।\"\n— আবু দাউদ';

  @override
  String get hadith94 =>
      '\"যখনই কোনো দল বসে আল্লাহর যিকির করে, ফেরেশতারা তাদের ঘিরে রাখেন, রহমত তাদের ঢেকে নেয় এবং তাদের উপর প্রশান্তি নাজিল হয়।\"\n— মুসলিম';

  @override
  String get hadith95 =>
      '\"ক্ষমা করার মাধ্যমে আল্লাহ বান্দার সম্মানই বৃদ্ধি করেন।\"\n— মুসলিম';

  @override
  String get hadith96 =>
      '\"তোমার উট বেঁধে রাখো, তারপর আল্লাহর উপর ভরসা করো।\"\n— তিরমিযী';

  @override
  String get hadith97 =>
      '\"মুমিনের ব্যাপারটি কতই না চমৎকার — তার সবকিছুই তার জন্য কল্যাণকর।\"\n— মুসলিম';

  @override
  String get hadith98 =>
      '\"মুসলিম মুসলিমের ভাই: সে তার উপর জুলুম করে না, তাকে পরিত্যাগ করে না এবং তাকে তুচ্ছ করে না।\"\n— মুসলিম';

  @override
  String get delete => 'মুছুন';

  @override
  String get remove => 'সরান';

  @override
  String get deleteAmalConfirmTitle => 'ট্র্যাকিং থেকে সরাবেন?';

  @override
  String deleteAmalConfirmBody(String title) {
    return '\"$title\" আপনার তালিকায় আর দেখা যাবে না। আপনার ইতিহাস থেকে যাবে।';
  }

  @override
  String get genericError =>
      'কোনো সমস্যা হয়েছে। অনুগ্রহ করে আবার চেষ্টা করুন।';

  @override
  String get notificationChannelName => 'আমলের রিমাইন্ডার';

  @override
  String get notificationChannelDescription =>
      'আপনার ট্র্যাক করা আমলের দৈনিক রিমাইন্ডার।';

  @override
  String get invalidAmalId => 'আমল আইডি সঠিক নয়';

  @override
  String get tutorialSettingsRow => 'মুহাসাবা কীভাবে ব্যবহার করবেন';

  @override
  String get tutorialSkip => 'এড়িয়ে যান';

  @override
  String get tutorialNext => 'পরবর্তী';

  @override
  String get tutorialDone => 'সম্পন্ন';

  @override
  String get tutorialTapTitle => 'সম্পন্ন করতে ট্যাপ করুন';

  @override
  String get tutorialTapBody =>
      'একবার ট্যাপ করলে আজকের জন্য আমল সম্পন্ন হিসেবে চিহ্নিত হয়। আবার ট্যাপ করলে বাতিল হয়।';

  @override
  String get tutorialEditTitle => 'সম্পাদনা করতে ডাবল-ট্যাপ করুন';

  @override
  String get tutorialEditBody =>
      'সম্পাদনার ফর্ম খুলবে — নাম বদলাতে পারেন, বা কত ঘন ঘন পুনরাবৃত্তি হবে তা বদলাতে পারেন।';

  @override
  String get tutorialReorderTitle => 'ক্রম বদলাতে চেপে ধরুন';

  @override
  String get tutorialReorderBody =>
      'একটি সারি চেপে ধরে টেনে সরান। আপনার সাজানো ক্রম সংরক্ষিত থাকবে।';

  @override
  String get tutorialRemoveTitle => 'সরাতে সোয়াইপ করুন';

  @override
  String get tutorialRemoveBody =>
      'সারিটি পাশে সোয়াইপ করে আজকের জন্য লুকান, বা ট্র্যাক করা বন্ধ করুন।';

  @override
  String get tutorialCountTitle => 'পুনরাবৃত্তি গণনা';

  @override
  String get tutorialCountBody =>
      'যেসব আমলের লক্ষ্য একের বেশি, প্রতিটি পুনরাবৃত্তির জন্য − ও + ব্যবহার করুন।';

  @override
  String get tutorialViewTitle => 'গ্রুপ বা সাধারণ তালিকা';

  @override
  String get tutorialViewBody =>
      'বিভাগ অনুযায়ী গ্রুপ করা আর একটি সাধারণ তালিকার মধ্যে বদল করুন।';

  @override
  String get tutorialLibraryTitle => 'প্রস্তুত আমল যোগ করুন';

  @override
  String get tutorialLibraryBody =>
      'আমল লাইব্রেরিতে বিভাগ অনুযায়ী আমল দেখুন, তারপর আজকের তালিকায় যোগ করতে + চাপুন।';

  @override
  String get tutorialChallengeLogTitle => 'আজকের হিসাব রাখতে ট্যাপ করুন';

  @override
  String get tutorialChallengeLogBody =>
      'একবার ট্যাপ করলে আজকের হিসাব উঠে যায়। গণনাভিত্তিক সংকল্পে প্রতি ট্যাপে এক ধাপ যোগ হয়।';

  @override
  String get tutorialChallengeOpenTitle => 'খুলতে ডাবল-ট্যাপ করুন';

  @override
  String get tutorialChallengeOpenBody =>
      'সংকল্পটি খুলবে — প্রতিটি দিন দেখুন, বাদ পড়া দিন ঠিক করুন, বা এটি মুছে ফেলুন।';

  @override
  String get tutorialChallengeDeleteBody =>
      'সংকল্পটি মুছতে কার্ডটি পাশে সোয়াইপ করুন।';

  @override
  String get tutorialChallengeAmountTitle => 'নির্দিষ্ট পরিমাণ লেখা';

  @override
  String get tutorialChallengeAmountBody =>
      '− ও + দিয়ে বাড়ান-কমান, বা সংখ্যায় ট্যাপ করে নির্দিষ্ট পরিমাণ লিখুন।';

  @override
  String get challengeOpenDetailsAction => 'সংকল্পের বিবরণ খুলুন';

  @override
  String get challengesActive => 'চলমান';

  @override
  String get challengesPast => 'আগের';

  @override
  String challengeJustFinished(int count, String title) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটি সংকল্প শেষ হয়েছে — সর্বশেষ $title',
      one: '$title শেষ হয়েছে',
    );
    return '$_temp0';
  }

  @override
  String get challengeSectionEnded => 'সময় শেষ';

  @override
  String get challengesPastEmpty => 'এখনো কিছু শেষ হয়নি।';

  @override
  String get challengesEmptyTitle => 'এখনো কোনো সংকল্প নেই';

  @override
  String get challengesEmptyBody =>
      'নিজের জন্য একটি লক্ষ্য ঠিক করুন — যেমন ৭ দিনে ২০ রাকাত — এবং এখানে তার হিসাব রাখুন।';

  @override
  String get editChallenge => 'সংকল্প সম্পাদনা';

  @override
  String get deleteChallenge => 'সংকল্প মুছুন';

  @override
  String get deleteChallengeConfirm =>
      'এই সংকল্প ও এর সব অগ্রগতির হিসাব মুছে ফেলবেন?';

  @override
  String get challengeShapeQuestion => 'এটি কোন ধরনের সংকল্প?';

  @override
  String get challengeShapeTotal => 'মোট সংখ্যায় পৌঁছানো';

  @override
  String get challengeShapeTotalBody =>
      '১০০০ দরুদ, ৩০ পারা। পরিমাণ লিখলে তা যোগ হতে থাকে।';

  @override
  String get challengeShapeStreak => 'প্রতিদিনের ধারাবাহিকতা';

  @override
  String get challengeShapeStreakBody =>
      'তাহাজ্জুদ, জামাতে ফজর। দিনে একটি টিক, পরিমাণ যা-ই হোক।';

  @override
  String get challengeTargetLabel => 'লক্ষ্য';

  @override
  String get challengeTargetRequired => 'শূন্যের বেশি লক্ষ্য দিন';

  @override
  String get challengeUnitLabel => 'একক (ঐচ্ছিক)';

  @override
  String get challengeUnitHint => 'রাকাত, পৃষ্ঠা, বার';

  @override
  String get challengeOneTapAdds => 'প্রতি ট্যাপে যোগ হবে';

  @override
  String get challengeHowManyDays => 'কত দিন?';

  @override
  String get challengeReachHowMuch => 'কত পর্যন্ত?';

  @override
  String get challengeSpreadOver => 'মেয়াদ';

  @override
  String get challengeSpreadEveryDay => 'প্রতিদিন';

  @override
  String get challengeSpreadLonger => 'আরও বেশি সময়';

  @override
  String get challengeByWhen => 'কবের মধ্যে?';

  @override
  String get challengeWindowDuration => 'নির্দিষ্ট দিনের মধ্যে';

  @override
  String get challengeByDate => 'নির্দিষ্ট তারিখের মধ্যে';

  @override
  String challengePlanRange(String start, String end) {
    return '$start থেকে $end';
  }

  @override
  String challengePlanExact(String start, String end) {
    return '$start থেকে $end · দিনে একটি, একদিনও বাদ নয়';
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
    return '$start থেকে $end · $window দিনের মধ্যে $target দিন — $slack দিন বাদ গেলেও চলবে';
  }

  @override
  String challengePlanRate(String start, String end, String rate) {
    return '$start থেকে $end · দিনে প্রায় $rate';
  }

  @override
  String challengePlanOpen(String start) {
    return '$start থেকে শুরু · সময়সীমা নেই';
  }

  @override
  String challengeTooTight(
    String target,
    String window,
    num targetCount,
    num windowCount,
  ) {
    return '$window দিনের মধ্যে $target দিন সম্ভব নয় — টানা ধারায় দিনে একটিই গোনা হয়।';
  }

  @override
  String challengeDurationLabel(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count দিন',
      one: 'এক দিন',
    );
    return '$_temp0';
  }

  @override
  String get challengeStartDate => 'শুরু';

  @override
  String get challengeEndDate => 'শেষ';

  @override
  String challengeProgressCount(String done, String target, String unit) {
    return '$target $unit-এর মধ্যে $done';
  }

  @override
  String challengeProgressPlain(String done, String target) {
    return '$target-এর মধ্যে $done';
  }

  @override
  String challengeProgressDays(String done, String target) {
    return '$target দিনের মধ্যে $done';
  }

  @override
  String challengeDaysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count দিন বাকি',
      one: 'এক দিন বাকি',
    );
    return '$_temp0';
  }

  @override
  String get challengeNoDeadline => 'সময়সীমা নেই';

  @override
  String challengeOnTrack(String rate) {
    return 'ঠিকঠাক চলছে · $rate/দিন';
  }

  @override
  String challengeBehind(String rate) {
    return 'পিছিয়ে · দিনে $rate দরকার';
  }

  @override
  String challengeLastDay(String remaining) {
    return 'শেষ দিন · $remaining বাকি';
  }

  @override
  String get challengeReached => 'লক্ষ্য পূরণ হয়েছে';

  @override
  String get challengeCompleted => 'সম্পন্ন';

  @override
  String challengeEnded(String done, String target) {
    return 'সময় শেষ · $done/$target';
  }

  @override
  String get challengeExpiredTitle => 'সংকল্পের সময় শেষ';

  @override
  String challengeExpiredBody(String title, String done, String target) {
    return '$title-এর সময় শেষ: $target-এর মধ্যে $done হয়েছে।';
  }

  @override
  String get challengeExtend => 'সময় বাড়ান';

  @override
  String get challengeRestart => 'আবার শুরু করুন';

  @override
  String get challengeArchive => 'আর্কাইভ করুন';

  @override
  String get challengeDailyBreakdown => 'দৈনিক হিসাব';

  @override
  String challengeNudgeBody(String title, String rate) {
    return '$title: সময়মতো শেষ করতে দিনে $rate করে লাগবে।';
  }

  @override
  String challengeLastDayBody(String title, String remaining) {
    return '$title: শেষ দিন — আর $remaining বাকি।';
  }

  @override
  String get challengeGroupGoal => 'লক্ষ্য';

  @override
  String get challengeGroupShape => 'ধরন';

  @override
  String get challengeGroupPlan => 'পরিকল্পনা';

  @override
  String get challengeGroupReminders => 'রিমাইন্ডার';

  @override
  String get challengeStartFromTemplate => 'টেমপ্লেট থেকে শুরু করুন';

  @override
  String get challengeTemplateBlank => 'খালি';

  @override
  String get challengePreview => 'প্রিভিউ';

  @override
  String get challengeTmplTahajjud => '৪০ রাত তাহাজ্জুদ';

  @override
  String get challengeTmplSalawat => '১০০০ দরুদ';

  @override
  String get challengeTmplKhatm => '৩০ দিনে কুরআন খতম';

  @override
  String get challengeTmplFajrJamaah => '৩০ দিন জামাতে ফজর';

  @override
  String get challengeTmplSadaqah => '৩০ দিন সদকা';

  @override
  String get listSeparator => ' · ';

  @override
  String get tierRafiq => 'রফিক';

  @override
  String get tierNasir => 'নাসির';

  @override
  String get tierMuhsin => 'মুহসিন';

  @override
  String get tierAnsar => 'আনসার';

  @override
  String get tierRafiqMeaning => 'সঙ্গী';

  @override
  String get tierNasirMeaning => 'সহযোগী';

  @override
  String get tierMuhsinMeaning => 'হিতৈষী';

  @override
  String get tierAnsarMeaning => 'সাহায্যকারী';

  @override
  String get supportCardBody =>
      'বিনামূল্যে, কোনো বিজ্ঞাপন নেই, অ্যাকাউন্টও লাগে না। চাইলে সামান্য কিছু দিয়ে এর উন্নয়নে সহযোগিতা করতে পারেন — যেকোনো পরিমাণ, যখন খুশি।';

  @override
  String get supportCta => 'মুহাসাবাকে সহযোগিতা করুন';

  @override
  String get supportAgain => 'আবার সহযোগিতা করুন';

  @override
  String get supporterThanks =>
      'জাযাকুমুল্লাহু খাইরান — ইনশাআল্লাহ মুহাসাবা বিনামূল্যে ও বিজ্ঞাপনমুক্ত থাকবে।';

  @override
  String supporterSince(String tier, String month) {
    return '$month থেকে $tier';
  }

  @override
  String get supportPromptTitle => 'মুহাসাবাকে সহযোগিতা করুন';

  @override
  String get supportPromptBody =>
      'মুহাসাবা বিনামূল্যে, কোনো বিজ্ঞাপন নেই, অ্যাকাউন্টও লাগে না। চাইলে সামান্য কিছু দিয়ে এর উন্নয়নে সহযোগিতা করতে পারেন — যেকোনো পরিমাণ, যখন খুশি। এর জন্য কোনো ফিচার আটকে রাখা হয়নি।';

  @override
  String get supportPromptNow => 'এখনই সহযোগিতা করুন';

  @override
  String get supportPromptLater => 'পরে মনে করিয়ে দিন';

  @override
  String get supportPromptNever => 'আর জিজ্ঞেস করবেন না';

  @override
  String get tipSheetTitle => 'মুহাসাবাকে সহযোগিতা করুন';

  @override
  String get tipSheetBody =>
      'যেকোনো পরিমাণ বেছে নিন, যতবার খুশি। এই অর্থ অ্যাপটির রক্ষণাবেক্ষণে ব্যয় হয় — ইনশাআল্লাহ এটি বিনামূল্যে ও বিজ্ঞাপনমুক্ত থাকবে। কৃতজ্ঞতাস্বরূপ, সেটিংসে আপনাকে সহযোগী হিসেবে দেখানো হবে।';

  @override
  String tipSheetSupporterLine(String tier) {
    return '$tier — জাযাকুমুল্লাহু খাইরান।';
  }

  @override
  String get tipSheetSupporterAgain => 'যখন খুশি আবার সহযোগিতা করতে পারেন।';

  @override
  String tipSheetStoreNote(String store) {
    return 'লেনদেনটি $store-এর মাধ্যমে হয় — আপনার পেমেন্টের তথ্য আমরা কখনো দেখি না।';
  }

  @override
  String get tipSheetOtherWays => 'আপনার জন্য উপযুক্ত কোনো অপশন পাচ্ছেন না?';

  @override
  String get tipSheetWriteToUs => 'আমাদের লিখুন';

  @override
  String get supportEmailBody =>
      'আসসালামু আলাইকুম,\n\nআমি সরাসরি মুহাসাবার উন্নয়নে সহযোগিতা করতে চাই।\n\nদেশ:\nযেভাবে পাঠাতে চাই:\nপরিমাণ (ঐচ্ছিক):';

  @override
  String tipBusy(String store) {
    return '$store খোলা হচ্ছে…';
  }

  @override
  String get tipThanks =>
      'জাযাকুমুল্লাহু খাইরান — আল্লাহ আপনার কাছ থেকে তা কবুল করুন।';

  @override
  String get tipDone => 'সম্পন্ন';

  @override
  String get tipFailed => 'কেনাকাটা সম্পন্ন হয়নি। কোনো টাকা কাটা হয়নি।';

  @override
  String tipPending(String store) {
    return 'আপনার পেমেন্ট $store-এ এখনো প্রক্রিয়াধীন — নিশ্চিত হলেই আপনার ব্যাজ যোগ হয়ে যাবে।';
  }

  @override
  String get tipUnavailable => 'এই ডিভাইসে এখন কেনাকাটা করা যাচ্ছে না।';

  @override
  String get optionSetJamaa => 'জামাত';

  @override
  String get optionJamaaAlone => 'একা';

  @override
  String get optionJamaaHome => 'ঘরে জামাতে';

  @override
  String get optionJamaaMasjid => 'মসজিদে জামাতে';

  @override
  String get optionSetOnTime => 'সময়মতো';

  @override
  String get optionOnTimeOnTime => 'সময়মতো';

  @override
  String get optionOnTimeLate => 'দেরিতে';

  @override
  String get optionOnTimeQada => 'কাজা';

  @override
  String get optionSetQuranSession => 'কুরআন চর্চা';

  @override
  String get optionQuranRecited => 'তিলাওয়াত';

  @override
  String get optionQuranMemorised => 'হিফজ';

  @override
  String get optionQuranMeaning => 'অর্থসহ';

  @override
  String get optionQuranListened => 'শ্রবণ';

  @override
  String get optionSetSadaqahType => 'সদকার ধরন';

  @override
  String get optionSadaqahMoney => 'টাকা';

  @override
  String get optionSadaqahFood => 'খাবার';

  @override
  String get optionSadaqahTime => 'সময়';

  @override
  String get optionSadaqahOther => 'অন্যান্য';

  @override
  String get optionSetIntensity => 'মাত্রা';

  @override
  String get optionIntensityLight => 'হালকা';

  @override
  String get optionIntensityModerate => 'মাঝারি';

  @override
  String get optionIntensityIntense => 'তীব্র';

  @override
  String get optionSetNewTitle => 'নতুন বিকল্প সেট';

  @override
  String get optionSetEditTitle => 'বিকল্প সেট সম্পাদনা';

  @override
  String get optionSetNameLabel => 'সেটের নাম';

  @override
  String get optionSetNameHint => 'যেমন জামাত';

  @override
  String get optionsLabel => 'বিকল্প';

  @override
  String get optionAdd => 'বিকল্প যোগ করুন';

  @override
  String optionHint(int index) {
    return 'বিকল্প $index';
  }

  @override
  String optionsMaxReached(int max) {
    return 'সর্বোচ্চ $maxটি বিকল্প।';
  }

  @override
  String get optionSetPreviewLabel => 'প্রিভিউ — আজকের সারি';

  @override
  String optionSetKeptForHistory(String labels) {
    return 'ইতিহাসের জন্য রাখা হয়েছে: $labels';
  }

  @override
  String get optionSetDelete => 'সেট মুছুন';

  @override
  String get optionSetDeleteConfirm =>
      'এই সেট ব্যবহার করা আমলগুলোতে আর বিকল্প দেখানো হবে না। আগে রেকর্ড করা দিনগুলোর নির্বাচন ঠিকই থাকবে।';

  @override
  String get optionSetNameRequired => 'সেটের একটি নাম দিন';

  @override
  String get optionsMinRequired => 'অন্তত দুটি বিকল্প যোগ করুন';

  @override
  String get optionSetNameTooLong => 'সেটের নাম অনেক বড়';

  @override
  String optionTooLong(int index) {
    return '$index নম্বর বিকল্পটি অনেক বড়';
  }

  @override
  String get optionSetNone => 'কোনোটি নয়';

  @override
  String get optionSetNew => 'নতুন সেট';

  @override
  String get requireChoiceLabel => 'নির্বাচন আবশ্যক';

  @override
  String get requireChoiceHelp =>
      'বিকল্প বেছে না নেওয়া পর্যন্ত সারিটি সম্পন্ন হবে না';

  @override
  String get requireChoicePickSetFirst => 'আগে একটি সেট বেছে নিন';

  @override
  String get requireChoiceCountHelp =>
      'সংখ্যাভিত্তিক আমল গণনা দিয়েই সম্পন্ন হয়';

  @override
  String optionsUsedOf(int used, int max) {
    return '$maxটির মধ্যে $usedটি বিকল্প ব্যবহৃত।';
  }

  @override
  String get choiceNeeded => 'নির্বাচন প্রয়োজন';

  @override
  String optionSelected(String label) {
    return '$label, নির্বাচিত';
  }

  @override
  String optionNotSelected(String label) {
    return '$label, নির্বাচিত নয়';
  }

  @override
  String optionBreakdownTitle(String set) {
    return 'বিকল্পের বিভাজন — $set';
  }

  @override
  String optionBreakdownCaption(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count বার',
      one: 'একবার',
    );
    return 'যে $_temp0 সম্পন্ন করার সময় বিকল্প বেছে নেওয়া হয়েছে, তার মধ্যে অনুপাত';
  }

  @override
  String optionNoChoiceRecorded(int none, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other: '$totalটি সম্পন্ন দিনের',
      one: 'একটি সম্পন্ন দিনের',
    );
    return 'নির্বাচন রেকর্ড হয়নি — $_temp0 মধ্যে $noneটি';
  }

  @override
  String get optionRemovedSuffix => 'সরানো';

  @override
  String get optionAllAmals => 'সব';

  @override
  String optionScopedCaption(String amal, int count) {
    return '$amal · $countটি রেকর্ড';
  }

  @override
  String get optionBreakdownSectionTitle => 'বিকল্পের বিভাজন';

  @override
  String optionBreakdownSwipeHint(int count) {
    return '$countটি সেট · সোয়াইপ করুন';
  }

  @override
  String get optionDetailEmpty => 'এই সেটে এখনো কোনো নির্বাচন রেকর্ড হয়নি।';

  @override
  String get optionDetailTrendHeading => 'সময়ের সাথে পরিবর্তন';

  @override
  String optionDetailTrendReadout(String option, String from, String to) {
    return 'প্রথম ও শেষ সপ্তাহের মধ্যে $option $from থেকে $to হয়েছে।';
  }

  @override
  String get optionDetailByAmalHeading => 'আমল অনুযায়ী';

  @override
  String optionDetailByAmalReadout(
    String best,
    String bestShare,
    String worst,
    String worstShare,
  ) {
    return 'সবচেয়ে বেশি: $best ($bestShare); সবচেয়ে কম: $worst ($worstShare)।';
  }

  @override
  String get optionDetailRecordsHeading => 'রেকর্ড';

  @override
  String get optionDetailLongestRun => 'দীর্ঘতম ধারা';

  @override
  String get optionDetailBestWeek => 'সেরা সপ্তাহ';

  @override
  String get optionDetailCurrentRun => 'বর্তমান ধারা';

  @override
  String get optionDetailRecordsCaption =>
      'গত এক বছরের ভিত্তিতে; উপরে বাছাই করা সময়সীমার ওপর নির্ভর করে না।';

  @override
  String get optionDetailRecentDaysHeading => 'সাম্প্রতিক দিনগুলো';

  @override
  String optionDetailRecentDaysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'গত $count দিন',
      one: 'গত এক দিন',
    );
    return '$_temp0';
  }

  @override
  String get amalFivePrayers => 'পাঁচ ওয়াক্ত নামাজ';

  @override
  String get amalJumuah => 'জুমার নামাজ';

  @override
  String get amalWitr => 'বিতর নামাজ';

  @override
  String get amalQada => 'কাজা নামাজ';

  @override
  String get amalFajrSunnah => 'ফজরের সুন্নত';

  @override
  String get amalDhuhrSunnah => 'যোহরের সুন্নত';

  @override
  String get amalAsrSunnah => 'আসরের সুন্নত';

  @override
  String get amalMaghribSunnah => 'মাগরিবের সুন্নত';

  @override
  String get amalIshaSunnah => 'এশার সুন্নত';

  @override
  String get amalRawatib => 'সুন্নতে মুয়াক্কাদা';

  @override
  String get amalSiwak => 'মিসওয়াক';

  @override
  String get amalWuduSleep => 'ঘুমানোর আগে ওযু';

  @override
  String get amalFridayGhusl => 'জুমার দিনের গোসল';

  @override
  String get amalIshraq => 'ইশরাকের নামাজ';

  @override
  String get amalWuduPrayer => 'তাহিয়্যাতুল ওযু';

  @override
  String get amalTahiyyah => 'তাহিয়্যাতুল মসজিদ';

  @override
  String get amalEarlyJumuah => 'জুমায় আগেভাগে যাওয়া';

  @override
  String get amalAfterSalah => 'নামাজের পরের যিকির';

  @override
  String get amalAfterFajr => 'ফজরের পরের যিকির';

  @override
  String get amalAfterDhuhr => 'যোহরের পরের যিকির';

  @override
  String get amalAfterAsr => 'আসরের পরের যিকির';

  @override
  String get amalAfterMaghrib => 'মাগরিবের পরের যিকির';

  @override
  String get amalAfterIsha => 'এশার পরের যিকির';

  @override
  String get amalAyatKursi => 'আয়াতুল কুরসি';

  @override
  String get amalKursiFajr => 'ফজরের পর আয়াতুল কুরসি';

  @override
  String get amalKursiDhuhr => 'যোহরের পর আয়াতুল কুরসি';

  @override
  String get amalKursiAsr => 'আসরের পর আয়াতুল কুরসি';

  @override
  String get amalKursiMaghrib => 'মাগরিবের পর আয়াতুল কুরসি';

  @override
  String get amalKursiIsha => 'এশার পর আয়াতুল কুরসি';

  @override
  String get amalSayyidIstighfar => 'সাইয়্যিদুল ইস্তিগফার';

  @override
  String get amalSalawat => 'দরুদ শরীফ';

  @override
  String get amalSubhanallah => 'সুবহানাল্লাহি ওয়া বিহামদিহি';

  @override
  String get amalTahlil => 'লা ইলাহা ইল্লাল্লাহ';

  @override
  String get amalBedtimeAdhkar => 'ঘুমানোর আগের যিকির';

  @override
  String get amalFridaySalawat => 'জুমার দিনে দরুদ';

  @override
  String get amalHawqala => 'লা হাওলা ওয়ালা কুওয়াতা';

  @override
  String get amalTasbihFatimah => 'তাসবিহে ফাতেমি';

  @override
  String get amalWakingAdhkar => 'ঘুম থেকে ওঠার যিকির';

  @override
  String get amalDuaAdhan => 'আজানের পরের দোয়া';

  @override
  String get amalDuaIqamah => 'আজান ও ইকামতের মাঝে দোয়া';

  @override
  String get amalDuaSujood => 'সিজদায় দোয়া';

  @override
  String get amalDuaParents => 'বাবা-মায়ের জন্য দোয়া';

  @override
  String get amalDuaOthers => 'অন্যদের জন্য দোয়া';

  @override
  String get amalFridayHour => 'জুমার দিনের শেষ প্রহরে দোয়া';

  @override
  String get amalLastThird => 'শেষ রাতের দোয়া';

  @override
  String get amalMulk => 'সূরা মুলক';

  @override
  String get amalBaqarahEnd => 'সূরা বাকারার শেষ দুই আয়াত';

  @override
  String get amalSajdah => 'সূরা সাজদাহ';

  @override
  String get amalQuls => 'তিন কুল';

  @override
  String get amalYasin => 'সূরা ইয়াসিন';

  @override
  String get amalWaqiah => 'সূরা ওয়াকিয়া';

  @override
  String get amalHifz => 'হিফজ';

  @override
  String get amalMurajaah => 'হিফজ দোহরানো';

  @override
  String get amalTafsir => 'তাফসির';

  @override
  String get amalListenQuran => 'কুরআন শোনা';

  @override
  String get amalTeachQuran => 'কুরআন শেখানো';

  @override
  String get amalMonThu => 'সোম ও বৃহস্পতিবারের রোজা';

  @override
  String get amalThreeDays => 'মাসে তিনটি রোজা';

  @override
  String get amalDailySadaqah => 'প্রতিদিন সদকা';

  @override
  String get amalFeed => 'কাউকে খাবার খাওয়ানো';

  @override
  String get amalHelpNeed => 'অভাবীকে সাহায্য';

  @override
  String get amalOrphan => 'এতিমের দায়িত্ব নেওয়া';

  @override
  String get amalGiveWater => 'পানি পান করানো';

  @override
  String get amalLearnHadith => 'একটি হাদিস শেখা';

  @override
  String get amalReadBook => 'ইসলামি বই পড়া';

  @override
  String get amalSeerah => 'সীরাত পড়া';

  @override
  String get amalClass => 'দ্বীনি মজলিসে অংশ নেওয়া';

  @override
  String get amalArabic => 'আরবি শেখা';

  @override
  String get amalLearnDua => 'নতুন দোয়া শেখা';

  @override
  String get amalShare => 'যা শিখলেন তা অন্যকে জানানো';

  @override
  String get amalFiqh => 'ফিকহ শেখা';

  @override
  String get amalMuhasaba => 'রাতের মুহাসাবা';

  @override
  String get amalSpeakGood => 'ভালো কথা বলা, নয়তো চুপ থাকা';

  @override
  String get amalNoBackbiting => 'গিবত থেকে বেঁচে থাকা';

  @override
  String get amalAnger => 'রাগ নিয়ন্ত্রণ';

  @override
  String get amalGaze => 'দৃষ্টি সংযত রাখা';

  @override
  String get amalTruthful => 'সত্য বলা';

  @override
  String get amalSmile => 'হাসিমুখে থাকা';

  @override
  String get amalSalam => 'সালামের প্রসার';

  @override
  String get amalForgive => 'অন্যকে ক্ষমা করা';

  @override
  String get amalGratitude => 'শুকরিয়া আদায়';

  @override
  String get amalVisitSick => 'অসুস্থকে দেখতে যাওয়া';

  @override
  String get amalNeighbours => 'প্রতিবেশীর সাথে সদাচরণ';

  @override
  String get amalRemoveHarm => 'রাস্তা থেকে কষ্টদায়ক জিনিস সরানো';

  @override
  String get amalParents => 'বাবা-মায়ের সাথে সদাচরণ';

  @override
  String get amalFamilyTies => 'আত্মীয়তার সম্পর্ক রক্ষা';

  @override
  String get amalHelpHome => 'ঘরের কাজে সাহায্য';

  @override
  String get amalTeachChildren => 'সন্তানদের দ্বীন শেখানো';

  @override
  String get amalSpouse => 'জীবনসঙ্গীর সাথে সদাচরণ';

  @override
  String get categoryDua => 'দোয়া';

  @override
  String get categoryFasting => 'রোজা';

  @override
  String get categoryKnowledge => 'ইলম';

  @override
  String get categoryCharacter => 'আখলাক';

  @override
  String get categoryFamily => 'পরিবার';

  @override
  String get libraryTitle => 'আমল লাইব্রেরি';

  @override
  String get librarySearchHint => 'আমল খুঁজুন';

  @override
  String get libraryAll => 'সব';

  @override
  String get libraryAdded => 'আজকের তালিকায় যোগ হয়েছে';

  @override
  String libraryAddedShowsOn(String days) {
    return 'যোগ হয়েছে · দেখা যাবে: $days';
  }

  @override
  String libraryNoMatch(String query) {
    return '“$query”-এর সাথে মেলে এমন কোনো আমল নেই';
  }

  @override
  String libraryCreateNamed(String query) {
    return '“$query” তৈরি করুন';
  }

  @override
  String get libraryPickBanner => 'আমল লাইব্রেরি থেকে বেছে নিন';

  @override
  String libraryPickBannerSubtitle(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countTextটি প্রস্তুত আমল',
      one: '$countTextটি প্রস্তুত আমল',
    );
    return '$_temp0';
  }

  @override
  String get libraryFilledIn => 'আমল লাইব্রেরি থেকে পূরণ করা হয়েছে';

  @override
  String get libraryChange => 'পরিবর্তন';

  @override
  String get libraryEditAction => 'সম্পাদনা';

  @override
  String libraryWeeklyAny(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'সপ্তাহে $countText দিন',
      one: 'সপ্তাহে একবার',
    );
    return '$_temp0';
  }

  @override
  String libraryMonthlyAny(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'মাসে $countText দিন',
      one: 'মাসে একবার',
    );
    return '$_temp0';
  }

  @override
  String libraryTimes(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countText বার',
    );
    return '$_temp0';
  }

  @override
  String get libraryAnyAmount => 'যেকোনো পরিমাণ';

  @override
  String libraryAddTooltip(String title) {
    return '$title যোগ করুন';
  }

  @override
  String get libraryOnList => 'আপনার তালিকায় আছে';

  @override
  String get todayEmptyBrowse => 'আমল লাইব্রেরি দেখুন';
}
