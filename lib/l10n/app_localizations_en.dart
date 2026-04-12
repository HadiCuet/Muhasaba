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
  String get hadith1 =>
      '\"Take up good deeds only as much as you are able, for the best deeds are those done consistently even if they are few.\"\n— Ibn Majah';

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
  String get hadith5 =>
      '\"The best of people are those who are most beneficial to people.\"\n— Daraqutni';

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
}
