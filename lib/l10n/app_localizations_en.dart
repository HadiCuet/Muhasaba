// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Muhasaba';

  @override
  String get tabToday => 'Today';

  @override
  String get tabStats => 'Stats';

  @override
  String get tabHistory => 'History';

  @override
  String get tabSettings => 'Settings';

  @override
  String get newAmal => 'New amal';

  @override
  String get editAmal => 'Edit amal';

  @override
  String get newAmalTitle => 'New amal';

  @override
  String get save => 'Save';

  @override
  String get cancel => 'Cancel';

  @override
  String get clear => 'Clear';

  @override
  String get titleLabel => 'Title';

  @override
  String get titleRequired => 'Title is required';

  @override
  String get titleTooLong => 'Title is too long';

  @override
  String get frequencyLabel => 'Frequency';

  @override
  String get frequencyDaily => 'Daily';

  @override
  String get frequencyWeekly => 'Weekly';

  @override
  String get frequencyMonthly => 'Monthly';

  @override
  String get categoryLabel => 'Category';

  @override
  String get categoryOther => 'Other';

  @override
  String get categorySalah => 'Salah';

  @override
  String get categoryDhikr => 'Dhikr';

  @override
  String get categoryQuran => 'Quran';

  @override
  String get categoryCharity => 'Charity';

  @override
  String get timesPerPeriod => 'Times per period';

  @override
  String get custom => 'Custom';

  @override
  String get customTargetHint => 'e.g. 50';

  @override
  String get dayOfWeek => 'Day of week';

  @override
  String get anyDay => 'Any';

  @override
  String get anyDayHint => 'Any day (stays visible today, hides next day)';

  @override
  String onlyDayHint(String day) {
    return 'Only $day';
  }

  @override
  String get dateOfMonth => 'Date of month';

  @override
  String get anyDate => 'Any';

  @override
  String get anyDateHint => 'Any date (stays visible today, hides next day)';

  @override
  String onlyDateHint(String date) {
    return 'Only on the $date';
  }

  @override
  String get startPreChecked => 'Start pre-checked';

  @override
  String get startPreCheckedSubtitle =>
      'When a new period starts, this amal is marked complete by default until you uncheck it.';

  @override
  String get reminder => 'Reminder';

  @override
  String get reminderNone => 'None';

  @override
  String reminderTime(String time) {
    return 'Reminder: $time';
  }

  @override
  String get reminderPermissionWarning =>
      'Reminder saved, but notifications are not permitted. Enable them in system settings to get alerts.';

  @override
  String get groupByCategory => 'Group by category';

  @override
  String get flatList => 'Flat list';

  @override
  String errorGeneric(String error) {
    return 'Error: $error';
  }

  @override
  String get todayEmptyHint => 'Tap + to add your first amal.';

  @override
  String get noteLabel => 'Note';

  @override
  String get noteHint => 'e.g. Prayed at the masjid';

  @override
  String get completed => 'completed';

  @override
  String get notCompleted => 'not completed';

  @override
  String progressOf(int progress, int target) {
    return '$progress of $target completed';
  }

  @override
  String get removeFromToday => 'Remove from today';

  @override
  String get removeFromTodaySubtitle =>
      'Hide just for this day. It returns tomorrow.';

  @override
  String get removeFromTracking => 'Remove from tracking';

  @override
  String get removeFromTrackingSubtitle =>
      'Permanently remove from your list. History is kept.';

  @override
  String get chooseIcon => 'Choose icon';

  @override
  String get iconNone => 'None';

  @override
  String get recentlyUsed => 'Recently Used';

  @override
  String get emojiSectionGeneral => 'General';

  @override
  String get categoryNameHint => 'Name';

  @override
  String get categoryNew => '+ New';

  @override
  String get categoryNewSheetTitle => 'New category';

  @override
  String get categoryEditSheetTitle => 'Edit category';

  @override
  String get addAmal => 'Add Amal';

  @override
  String get customAmal => 'Custom Amal';

  @override
  String get templateTasbih => 'Tasbih 33x';

  @override
  String get templateIstighfar => 'Istighfar 100x';

  @override
  String get templateSurahKahf => 'Surah Kahf';

  @override
  String get templateSadaqah => 'Sadaqah';

  @override
  String get templateTahajjud => 'Tahajjud';

  @override
  String get templateDuhaPrayer => 'Duha Prayer';

  @override
  String get settingsTitle => 'Settings';

  @override
  String settingsLoadError(String error) {
    return 'Failed to load settings:\n$error';
  }

  @override
  String get sectionDayBoundary => 'Day boundary';

  @override
  String get rolloverHour => 'Rollover hour';

  @override
  String get rolloverAtMidnight => 'Today ends at midnight.';

  @override
  String rolloverSubtitle(String time) {
    return 'Yesterday\'s amal stay editable until $time.';
  }

  @override
  String get pickRolloverHour => 'Pick the hour the day rolls over';

  @override
  String get sectionWeekMonth => 'Week & month';

  @override
  String get startOfWeek => 'Start of week';

  @override
  String get startOfMonth => 'Start of month';

  @override
  String get startOfMonthClamped =>
      'Days past the 28th are clamped to the last day of shorter months.';

  @override
  String get sectionAppearance => 'Appearance';

  @override
  String get theme => 'Theme';

  @override
  String get themeSystem => 'System';

  @override
  String get themeLight => 'Light';

  @override
  String get themeDark => 'Dark';

  @override
  String get sectionLanguage => 'Language';

  @override
  String get language => 'Language';

  @override
  String get systemDefault => 'System default';

  @override
  String get aboutTitle => 'Muhasaba';

  @override
  String get aboutSubtitle =>
      'A personal deen accountability journal. All data stays on this device.';

  @override
  String get statsTitle => 'Stats';

  @override
  String statsLoadError(String error) {
    return 'Failed to load stats:\n$error';
  }

  @override
  String get perAmal => 'Per amal';

  @override
  String get thisWeek => 'This week';

  @override
  String get thisMonth => 'This month';

  @override
  String get totalCompletions => 'total completions';

  @override
  String get streakCurrent => 'Current';

  @override
  String get streakLongest => 'Longest';

  @override
  String get ratioWeek => 'Week';

  @override
  String get ratioMonth => 'Month';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'days',
      one: 'day',
    );
    return '$_temp0';
  }

  @override
  String streakWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'weeks',
      one: 'week',
    );
    return '$_temp0';
  }

  @override
  String streakMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'months',
      one: 'month',
    );
    return '$_temp0';
  }

  @override
  String get frequencyBadgeDaily => 'daily';

  @override
  String get frequencyBadgeWeekly => 'weekly';

  @override
  String get frequencyBadgeMonthly => 'monthly';

  @override
  String get statsEmpty => 'No amal yet. Add one on Today to start tracking.';

  @override
  String get statsToday => 'Today';

  @override
  String get statsThisWeek => 'This Week';

  @override
  String get statsThisMonth => 'This Month';

  @override
  String get statsAllTime => 'All Time';

  @override
  String get statsCustomRange => 'Custom Range';

  @override
  String get statsAllCategories => 'All';

  @override
  String get statsAllAmals => 'All';

  @override
  String get statsCompleted => 'Completed';

  @override
  String get statsExpected => 'Expected';

  @override
  String get statsVsPrevious => 'vs Previous';

  @override
  String get statsByCategory => 'By Category';

  @override
  String get statsPerAmal => 'Per Amal';

  @override
  String get statsCurrentStreak => 'Current Streak';

  @override
  String get statsBestStreak => 'Best Streak';

  @override
  String get statsTotalDays => 'Total Days';

  @override
  String get statsConsistency => 'Consistency';

  @override
  String get statsLast5Weeks => 'Last 5 weeks';

  @override
  String get statsDailyBreakdown => 'Daily Breakdown';

  @override
  String get statsCompletionRate => 'Completion rate';

  @override
  String get statsFilterTime => 'Time';

  @override
  String get statsFilterCategory => 'Category';

  @override
  String get statsFilterAmal => 'Amal';

  @override
  String get statsStreaks => 'Streaks';

  @override
  String get statsSelectDateRange => 'Select date range';

  @override
  String get historyTitle => 'History';

  @override
  String get jumpToDate => 'Jump to date';

  @override
  String historyEmptyDay(String date) {
    return 'No amal tracked on $date';
  }

  @override
  String get streakUnitD => 'd';

  @override
  String get streakUnitW => 'w';

  @override
  String get streakUnitM => 'm';

  @override
  String get mondayShort => 'Mon';

  @override
  String get tuesdayShort => 'Tue';

  @override
  String get wednesdayShort => 'Wed';

  @override
  String get thursdayShort => 'Thu';

  @override
  String get fridayShort => 'Fri';

  @override
  String get saturdayShort => 'Sat';

  @override
  String get sundayShort => 'Sun';

  @override
  String get mondayFull => 'Monday';

  @override
  String get tuesdayFull => 'Tuesday';

  @override
  String get wednesdayFull => 'Wednesday';

  @override
  String get thursdayFull => 'Thursday';

  @override
  String get fridayFull => 'Friday';

  @override
  String get saturdayFull => 'Saturday';

  @override
  String get sundayFull => 'Sunday';

  @override
  String get hadith0 =>
      '\"The most beloved deeds to Allah are those done consistently, even if small.\"\n— Bukhari & Muslim';

  @override
  String get hadith2 =>
      '\"When the son of Adam dies, his deeds come to an end except three: ongoing charity, beneficial knowledge, or a righteous child who prays for him.\"\n— Muslim';

  @override
  String get hadith3 =>
      '\"Whoever prays the two cool prayers (Fajr and Asr) will enter Paradise.\"\n— Bukhari';

  @override
  String get hadith4 =>
      '\"Allah does not look at your appearance or your wealth, but He looks at your hearts and your deeds.\"\n— Muslim';

  @override
  String get hadith6 =>
      '\"Make things easy and do not make them difficult; give glad tidings and do not scare people away.\"\n— Bukhari';

  @override
  String get hadith7 =>
      '\"He who treads a path in search of knowledge, Allah will make easy for him the path to Paradise.\"\n— Muslim';

  @override
  String get hadith8 => '\"Charity does not decrease wealth.\"\n— Muslim';

  @override
  String get hadith9 =>
      '\"The strong believer is better and more beloved to Allah than the weak believer, while there is good in both.\"\n— Muslim';

  @override
  String get hadith10 =>
      '\"Whoever says \'SubhanAllah wa bihamdihi\' a hundred times a day will have his sins forgiven even if they were like the foam of the sea.\"\n— Bukhari & Muslim';

  @override
  String get hadith12 =>
      '\"Whoever recites Ayat al-Kursi after every obligatory prayer, nothing prevents him from entering Paradise except death.\"\n— Nasa\'i';

  @override
  String get hadith13 => '\"A good word is charity.\"\n— Bukhari & Muslim';

  @override
  String get hadith14 =>
      '\"Whoever believes in Allah and the Last Day, let him speak good or remain silent.\"\n— Bukhari & Muslim';

  @override
  String get hadith15 =>
      '\"The one who looks after a widow or a poor person is like a warrior in the cause of Allah.\"\n— Bukhari & Muslim';

  @override
  String get hadith16 =>
      '\"Smiling at your brother is an act of charity.\"\n— Tirmidhi';

  @override
  String get hadith17 =>
      '\"The best among you are those who learn the Quran and teach it.\"\n— Bukhari';

  @override
  String get hadith18 =>
      '\"No one has eaten better food than what he earns from the work of his own hands.\"\n— Bukhari';

  @override
  String get hadith19 =>
      '\"Allah is gentle and loves gentleness in all things.\"\n— Bukhari & Muslim';

  @override
  String historyDayCompleted(int completed, int total) {
    return '$completed of $total completed';
  }

  @override
  String get settingsSchedule => 'Schedule';

  @override
  String get settingsAppearance => 'Appearance';

  @override
  String get settingsAboutTagline => 'Your daily deen companion';

  @override
  String get settingsRolloverSub => 'When the day resets';

  @override
  String get settingsAbout => 'About';

  @override
  String get settingsVersion => 'Version';

  @override
  String get settingsDeveloper => 'Developer';

  @override
  String get settingsSupport => 'Support';

  @override
  String get settingsRate => 'Rate the app';

  @override
  String get settingsContact => 'Contact us';

  @override
  String get settingsReportBug => 'Report a bug';

  @override
  String get settingsRequestFeature => 'Request a feature';

  @override
  String settingsSupportFallback(String email) {
    return 'Could not open mail. Please email $email.';
  }

  @override
  String get settingsPrivacyPolicy => 'Privacy Policy';

  @override
  String get settingsPrivacyOpenFailed => 'Could not open the privacy policy.';

  @override
  String get hadith20 =>
      '\"Whoever fasts Ramadan out of faith and seeking reward, his past sins will be forgiven.\"\n— Bukhari & Muslim';

  @override
  String get hadith22 =>
      '\"The supplication between the adhan and iqamah is not rejected.\"\n— Abu Dawud';

  @override
  String get hadith23 =>
      '\"Whoever builds a mosque for Allah, Allah will build for him a house in Paradise.\"\n— Bukhari & Muslim';

  @override
  String get hadith24 =>
      '\"The best rows for men are the first rows, and the best rows for women are the last rows.\"\n— Muslim';

  @override
  String get hadith25 =>
      '\"Fasting is a shield from the Hellfire.\"\n— Nasa\'i';

  @override
  String get hadith26 =>
      '\"Whoever prays twelve rak\'ahs of Sunnah, a house will be built for him in Paradise.\"\n— Muslim';

  @override
  String get hadith27 =>
      '\"The one who is proficient in the Quran will be with the noble angels.\"\n— Bukhari & Muslim';

  @override
  String get hadith29 =>
      '\"The best of charity is giving water to drink.\"\n— Ahmad';

  @override
  String get hadith30 =>
      '\"Whoever removes a hardship from a believer, Allah will remove a hardship from him on the Day of Judgment.\"\n— Muslim';

  @override
  String get hadith32 => '\"Modesty is part of faith.\"\n— Bukhari & Muslim';

  @override
  String get hadith34 =>
      '\"Whoever is patient, Allah will give him patience.\"\n— Bukhari & Muslim';

  @override
  String get hadith36 =>
      '\"None of you truly believes until he loves for his brother what he loves for himself.\"\n— Bukhari & Muslim';

  @override
  String get hadith37 =>
      '\"Feed the hungry, visit the sick, and free the captives.\"\n— Bukhari';

  @override
  String get hadith38 =>
      '\"The strong person is not the one who wrestles, but the one who controls himself in anger.\"\n— Bukhari & Muslim';

  @override
  String get hadith40 =>
      '\"Say \'SubhanAllah\', \'Alhamdulillah\', and \'Allahu Akbar\' thirty-three times each after every prayer.\"\n— Muslim';

  @override
  String get hadith41 => '\"The best dhikr is La ilaha illallah.\"\n— Tirmidhi';

  @override
  String get hadith42 =>
      '\"There are two blessings which many people waste: health and free time.\"\n— Bukhari';

  @override
  String get hadith43 =>
      '\"Make use of five before five: youth before old age, health before sickness, wealth before poverty, free time before busyness, and life before death.\"\n— Hakim';

  @override
  String get hadith44 =>
      '\"Whoever recites Surah Al-Ikhlas ten times, Allah will build for him a house in Paradise.\"\n— Ahmad';

  @override
  String get hadith45 =>
      '\"The best prayer after the obligatory prayers is the night prayer.\"\n— Muslim';

  @override
  String get hadith46 =>
      '\"Charity extinguishes sins as water extinguishes fire.\"\n— Tirmidhi';

  @override
  String get hadith47 =>
      '\"The one who maintains family ties is not the one who reciprocates. It is the one who maintains them even when cut off.\"\n— Bukhari';

  @override
  String get hadith49 =>
      '\"Whoever eats food and says: \'Praise be to Allah who has fed me this and provided it without any power or strength on my part,\' his past sins will be forgiven.\"\n— Tirmidhi';

  @override
  String get hadith53 =>
      '\"Do not belittle any good deed, even meeting your brother with a cheerful face.\"\n— Muslim';

  @override
  String get hadith54 =>
      '\"The best of you are those who are best to their families.\"\n— Tirmidhi';

  @override
  String get hadith55 =>
      '\"Whoever recites the last two verses of Surah Al-Baqarah at night, they will suffice him.\"\n— Bukhari & Muslim';

  @override
  String get hadith56 =>
      '\"The world is a provision, and the best provision is a righteous wife.\"\n— Muslim';

  @override
  String get hadith57 =>
      '\"Three supplications are never rejected: the supplication of a fasting person, a just ruler, and the oppressed.\"\n— Tirmidhi';

  @override
  String get hadith58 =>
      '\"Whoever sends blessings upon me once, Allah will send blessings upon him tenfold.\"\n— Muslim';

  @override
  String get hadith65 =>
      '\"The believer is the mirror of the believer.\"\n— Abu Dawud';

  @override
  String get hadith66 =>
      '\"Truthfulness leads to righteousness, and righteousness leads to Paradise.\"\n— Bukhari & Muslim';

  @override
  String get hadith67 =>
      '\"Return the trust to the one who entrusted you, and do not betray the one who betrayed you.\"\n— Abu Dawud & Tirmidhi';

  @override
  String get hadith68 =>
      '\"No fatigue, disease, sorrow, sadness, hurt, or distress befalls a Muslim, even a prick of a thorn, except that Allah removes some of his sins thereby.\"\n— Bukhari & Muslim';

  @override
  String get hadith69 =>
      '\"The supplication of a Muslim for his brother in his absence is always answered.\"\n— Muslim';

  @override
  String get hadith70 =>
      '\"Whoever asks Allah for Paradise three times, Paradise says: O Allah, admit him to Paradise.\"\n— Tirmidhi';

  @override
  String get hadith71 =>
      '\"The most virtuous fast after Ramadan is fasting in the month of Allah, Muharram.\"\n— Muslim';

  @override
  String get hadith72 =>
      '\"Whoever performs Hajj and does not commit any obscenity or sin returns like the day his mother bore him.\"\n— Bukhari & Muslim';

  @override
  String get hadith73 =>
      '\"Umrah to Umrah is an expiation for what is between them.\"\n— Bukhari & Muslim';

  @override
  String get hadith74 =>
      '\"Hasten to do good deeds before trials come like portions of a dark night.\"\n— Muslim';

  @override
  String get hadith75 =>
      '\"The two rak\'ahs of Fajr are better than the world and everything in it.\"\n— Muslim';

  @override
  String get hadith77 =>
      '\"If you relied on Allah as He should be relied upon, He would provide for you as He provides for the birds.\"\n— Tirmidhi';

  @override
  String get hadith78 =>
      '\"Whoever visits a sick person is in the harvest of Paradise until he returns.\"\n— Muslim';

  @override
  String get hadith79 =>
      '\"Spread peace, feed the hungry, and pray at night when others sleep — you will enter Paradise in peace.\"\n— Tirmidhi';

  @override
  String get hadith80 =>
      '\"Whoever is not grateful to people is not grateful to Allah.\"\n— Tirmidhi';

  @override
  String get hadith81 =>
      '\"Envy is not permissible except in two cases: a man to whom Allah has given wealth and he spends it in the right way, and a man to whom Allah has given wisdom and he judges and teaches with it.\"\n— Bukhari & Muslim';

  @override
  String get hadith82 =>
      '\"A person is upon the religion of his close friend, so let each of you look at whom he befriends.\"\n— Abu Dawud & Tirmidhi';

  @override
  String get hadith85 =>
      '\"Whoever leaves something for the sake of Allah, Allah will replace it with something better.\"\n— Ahmad';

  @override
  String get hadith86 =>
      '\"Whoever conceals the faults of a Muslim, Allah will conceal his faults on the Day of Judgment.\"\n— Bukhari & Muslim';

  @override
  String get hadith87 =>
      '\"Be in this world as if you were a stranger or a traveler.\"\n— Bukhari';

  @override
  String get hadith88 =>
      '\"Whoever makes it easy for someone in difficulty, Allah will make it easy for him in this world and the hereafter.\"\n— Muslim';

  @override
  String get hadith89 =>
      '\"The reward of deeds depends upon the intentions.\"\n— Bukhari & Muslim';

  @override
  String get hadith90 =>
      '\"Avoid suspicion, for suspicion is the most false of speech.\"\n— Bukhari & Muslim';

  @override
  String get hadith93 =>
      '\"Eat together and mention the name of Allah, and it will be blessed for you.\"\n— Abu Dawud';

  @override
  String get hadith94 =>
      '\"No people sit remembering Allah except that the angels surround them, mercy covers them, and tranquility descends upon them.\"\n— Muslim';

  @override
  String get hadith95 =>
      '\"Allah does not increase a servant, through forgiving others, except in honor.\"\n— Muslim';

  @override
  String get hadith96 =>
      '\"Tie your camel and then put your trust in Allah.\"\n— Tirmidhi';

  @override
  String get hadith97 =>
      '\"Wondrous is the affair of the believer — everything is good for him.\"\n— Muslim';

  @override
  String get hadith98 =>
      '\"A Muslim is a brother to a Muslim: he does not wrong him, nor abandon him, nor despise him.\"\n— Muslim';

  @override
  String get delete => 'Delete';

  @override
  String get remove => 'Remove';

  @override
  String get deleteAmalConfirmTitle => 'Remove from tracking?';

  @override
  String deleteAmalConfirmBody(String title) {
    return '\"$title\" will be hidden from your list. Your history is kept.';
  }

  @override
  String get genericError => 'Something went wrong. Please try again.';
}
