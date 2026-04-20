import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_az.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_bs.dart';
import 'app_localizations_en.dart';
import 'app_localizations_fa.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_ha.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_id.dart';
import 'app_localizations_kk.dart';
import 'app_localizations_ku.dart';
import 'app_localizations_ky.dart';
import 'app_localizations_ms.dart';
import 'app_localizations_ps.dart';
import 'app_localizations_so.dart';
import 'app_localizations_sq.dart';
import 'app_localizations_sw.dart';
import 'app_localizations_tg.dart';
import 'app_localizations_tk.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_ur.dart';
import 'app_localizations_uz.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('az'),
    Locale('bn'),
    Locale('bs'),
    Locale('en'),
    Locale('fa'),
    Locale('fr'),
    Locale('ha'),
    Locale('hi'),
    Locale('id'),
    Locale('kk'),
    Locale('ku'),
    Locale('ky'),
    Locale('ms'),
    Locale('ps'),
    Locale('so'),
    Locale('sq'),
    Locale('sw'),
    Locale('tg'),
    Locale('tk'),
    Locale('tr'),
    Locale('ur'),
    Locale('uz'),
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Muhasaba'**
  String get appTitle;

  /// No description provided for @tabToday.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get tabToday;

  /// No description provided for @tabStats.
  ///
  /// In en, this message translates to:
  /// **'Stats'**
  String get tabStats;

  /// No description provided for @tabHistory.
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get tabHistory;

  /// No description provided for @tabSettings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get tabSettings;

  /// No description provided for @newAmal.
  ///
  /// In en, this message translates to:
  /// **'New amal'**
  String get newAmal;

  /// No description provided for @editAmal.
  ///
  /// In en, this message translates to:
  /// **'Edit amal'**
  String get editAmal;

  /// No description provided for @newAmalTitle.
  ///
  /// In en, this message translates to:
  /// **'New amal'**
  String get newAmalTitle;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @clear.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get clear;

  /// No description provided for @titleLabel.
  ///
  /// In en, this message translates to:
  /// **'Title'**
  String get titleLabel;

  /// No description provided for @titleRequired.
  ///
  /// In en, this message translates to:
  /// **'Title is required'**
  String get titleRequired;

  /// No description provided for @titleTooLong.
  ///
  /// In en, this message translates to:
  /// **'Title is too long'**
  String get titleTooLong;

  /// No description provided for @frequencyLabel.
  ///
  /// In en, this message translates to:
  /// **'Frequency'**
  String get frequencyLabel;

  /// No description provided for @frequencyDaily.
  ///
  /// In en, this message translates to:
  /// **'Daily'**
  String get frequencyDaily;

  /// No description provided for @frequencyWeekly.
  ///
  /// In en, this message translates to:
  /// **'Weekly'**
  String get frequencyWeekly;

  /// No description provided for @frequencyMonthly.
  ///
  /// In en, this message translates to:
  /// **'Monthly'**
  String get frequencyMonthly;

  /// No description provided for @categoryLabel.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get categoryLabel;

  /// No description provided for @categoryOther.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get categoryOther;

  /// No description provided for @categorySalah.
  ///
  /// In en, this message translates to:
  /// **'Salah'**
  String get categorySalah;

  /// No description provided for @categoryDhikr.
  ///
  /// In en, this message translates to:
  /// **'Dhikr'**
  String get categoryDhikr;

  /// No description provided for @categoryQuran.
  ///
  /// In en, this message translates to:
  /// **'Quran'**
  String get categoryQuran;

  /// No description provided for @categoryCharity.
  ///
  /// In en, this message translates to:
  /// **'Charity'**
  String get categoryCharity;

  /// No description provided for @timesPerPeriod.
  ///
  /// In en, this message translates to:
  /// **'Times per period'**
  String get timesPerPeriod;

  /// No description provided for @custom.
  ///
  /// In en, this message translates to:
  /// **'Custom'**
  String get custom;

  /// No description provided for @customTargetHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. 50'**
  String get customTargetHint;

  /// No description provided for @dayOfWeek.
  ///
  /// In en, this message translates to:
  /// **'Day of week'**
  String get dayOfWeek;

  /// No description provided for @anyDay.
  ///
  /// In en, this message translates to:
  /// **'Any'**
  String get anyDay;

  /// No description provided for @anyDayHint.
  ///
  /// In en, this message translates to:
  /// **'Any day (stays visible today, hides next day)'**
  String get anyDayHint;

  /// No description provided for @onlyDayHint.
  ///
  /// In en, this message translates to:
  /// **'Only {day}'**
  String onlyDayHint(String day);

  /// No description provided for @dateOfMonth.
  ///
  /// In en, this message translates to:
  /// **'Date of month'**
  String get dateOfMonth;

  /// No description provided for @anyDate.
  ///
  /// In en, this message translates to:
  /// **'Any'**
  String get anyDate;

  /// No description provided for @anyDateHint.
  ///
  /// In en, this message translates to:
  /// **'Any date (stays visible today, hides next day)'**
  String get anyDateHint;

  /// No description provided for @onlyDateHint.
  ///
  /// In en, this message translates to:
  /// **'Only on the {date}'**
  String onlyDateHint(String date);

  /// No description provided for @startPreChecked.
  ///
  /// In en, this message translates to:
  /// **'Start pre-checked'**
  String get startPreChecked;

  /// No description provided for @startPreCheckedSubtitle.
  ///
  /// In en, this message translates to:
  /// **'When a new period starts, this amal is marked complete by default until you uncheck it.'**
  String get startPreCheckedSubtitle;

  /// No description provided for @reminder.
  ///
  /// In en, this message translates to:
  /// **'Reminder'**
  String get reminder;

  /// No description provided for @reminderNone.
  ///
  /// In en, this message translates to:
  /// **'None'**
  String get reminderNone;

  /// No description provided for @reminderTime.
  ///
  /// In en, this message translates to:
  /// **'Reminder: {time}'**
  String reminderTime(String time);

  /// No description provided for @reminderPermissionWarning.
  ///
  /// In en, this message translates to:
  /// **'Reminder saved, but notifications are not permitted. Enable them in system settings to get alerts.'**
  String get reminderPermissionWarning;

  /// No description provided for @groupByCategory.
  ///
  /// In en, this message translates to:
  /// **'Group by category'**
  String get groupByCategory;

  /// No description provided for @flatList.
  ///
  /// In en, this message translates to:
  /// **'Flat list'**
  String get flatList;

  /// No description provided for @errorGeneric.
  ///
  /// In en, this message translates to:
  /// **'Error: {error}'**
  String errorGeneric(String error);

  /// No description provided for @todayEmptyHint.
  ///
  /// In en, this message translates to:
  /// **'Tap + to add your first amal.'**
  String get todayEmptyHint;

  /// No description provided for @noteLabel.
  ///
  /// In en, this message translates to:
  /// **'Note'**
  String get noteLabel;

  /// No description provided for @noteHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. Prayed at the masjid'**
  String get noteHint;

  /// No description provided for @completed.
  ///
  /// In en, this message translates to:
  /// **'completed'**
  String get completed;

  /// No description provided for @notCompleted.
  ///
  /// In en, this message translates to:
  /// **'not completed'**
  String get notCompleted;

  /// No description provided for @progressOf.
  ///
  /// In en, this message translates to:
  /// **'{progress} of {target} completed'**
  String progressOf(int progress, int target);

  /// No description provided for @removeFromToday.
  ///
  /// In en, this message translates to:
  /// **'Remove from today'**
  String get removeFromToday;

  /// No description provided for @removeFromTodaySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Hide just for this day. It returns tomorrow.'**
  String get removeFromTodaySubtitle;

  /// No description provided for @removeFromTracking.
  ///
  /// In en, this message translates to:
  /// **'Remove from tracking'**
  String get removeFromTracking;

  /// No description provided for @removeFromTrackingSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Permanently remove from your list. History is kept.'**
  String get removeFromTrackingSubtitle;

  /// No description provided for @chooseIcon.
  ///
  /// In en, this message translates to:
  /// **'Choose icon'**
  String get chooseIcon;

  /// No description provided for @iconNone.
  ///
  /// In en, this message translates to:
  /// **'None'**
  String get iconNone;

  /// No description provided for @recentlyUsed.
  ///
  /// In en, this message translates to:
  /// **'Recently Used'**
  String get recentlyUsed;

  /// No description provided for @emojiSectionGeneral.
  ///
  /// In en, this message translates to:
  /// **'General'**
  String get emojiSectionGeneral;

  /// No description provided for @categoryNameHint.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get categoryNameHint;

  /// No description provided for @categoryNew.
  ///
  /// In en, this message translates to:
  /// **'+ New'**
  String get categoryNew;

  /// No description provided for @categoryNewSheetTitle.
  ///
  /// In en, this message translates to:
  /// **'New category'**
  String get categoryNewSheetTitle;

  /// No description provided for @categoryEditSheetTitle.
  ///
  /// In en, this message translates to:
  /// **'Edit category'**
  String get categoryEditSheetTitle;

  /// No description provided for @addAmal.
  ///
  /// In en, this message translates to:
  /// **'Add Amal'**
  String get addAmal;

  /// No description provided for @customAmal.
  ///
  /// In en, this message translates to:
  /// **'Custom Amal'**
  String get customAmal;

  /// No description provided for @templateTasbih.
  ///
  /// In en, this message translates to:
  /// **'Tasbih 33x'**
  String get templateTasbih;

  /// No description provided for @templateIstighfar.
  ///
  /// In en, this message translates to:
  /// **'Istighfar 100x'**
  String get templateIstighfar;

  /// No description provided for @templateSurahKahf.
  ///
  /// In en, this message translates to:
  /// **'Surah Kahf'**
  String get templateSurahKahf;

  /// No description provided for @templateSadaqah.
  ///
  /// In en, this message translates to:
  /// **'Sadaqah'**
  String get templateSadaqah;

  /// No description provided for @templateTahajjud.
  ///
  /// In en, this message translates to:
  /// **'Tahajjud'**
  String get templateTahajjud;

  /// No description provided for @templateDuhaPrayer.
  ///
  /// In en, this message translates to:
  /// **'Duha Prayer'**
  String get templateDuhaPrayer;

  /// No description provided for @settingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsTitle;

  /// No description provided for @settingsLoadError.
  ///
  /// In en, this message translates to:
  /// **'Failed to load settings:\n{error}'**
  String settingsLoadError(String error);

  /// No description provided for @sectionDayBoundary.
  ///
  /// In en, this message translates to:
  /// **'Day boundary'**
  String get sectionDayBoundary;

  /// No description provided for @rolloverHour.
  ///
  /// In en, this message translates to:
  /// **'Rollover hour'**
  String get rolloverHour;

  /// No description provided for @rolloverAtMidnight.
  ///
  /// In en, this message translates to:
  /// **'Today ends at midnight.'**
  String get rolloverAtMidnight;

  /// No description provided for @rolloverSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Yesterday\'s amal stay editable until {time}.'**
  String rolloverSubtitle(String time);

  /// No description provided for @pickRolloverHour.
  ///
  /// In en, this message translates to:
  /// **'Pick the hour the day rolls over'**
  String get pickRolloverHour;

  /// No description provided for @sectionWeekMonth.
  ///
  /// In en, this message translates to:
  /// **'Week & month'**
  String get sectionWeekMonth;

  /// No description provided for @startOfWeek.
  ///
  /// In en, this message translates to:
  /// **'Start of week'**
  String get startOfWeek;

  /// No description provided for @startOfMonth.
  ///
  /// In en, this message translates to:
  /// **'Start of month'**
  String get startOfMonth;

  /// No description provided for @startOfMonthClamped.
  ///
  /// In en, this message translates to:
  /// **'Days past the 28th are clamped to the last day of shorter months.'**
  String get startOfMonthClamped;

  /// No description provided for @sectionAppearance.
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get sectionAppearance;

  /// No description provided for @theme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get theme;

  /// No description provided for @themeSystem.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get themeSystem;

  /// No description provided for @themeLight.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get themeLight;

  /// No description provided for @themeDark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get themeDark;

  /// No description provided for @sectionLanguage.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get sectionLanguage;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @systemDefault.
  ///
  /// In en, this message translates to:
  /// **'System default'**
  String get systemDefault;

  /// No description provided for @aboutTitle.
  ///
  /// In en, this message translates to:
  /// **'Muhasaba'**
  String get aboutTitle;

  /// No description provided for @aboutSubtitle.
  ///
  /// In en, this message translates to:
  /// **'A personal deen accountability journal. All data stays on this device.'**
  String get aboutSubtitle;

  /// No description provided for @statsTitle.
  ///
  /// In en, this message translates to:
  /// **'Stats'**
  String get statsTitle;

  /// No description provided for @statsLoadError.
  ///
  /// In en, this message translates to:
  /// **'Failed to load stats:\n{error}'**
  String statsLoadError(String error);

  /// No description provided for @perAmal.
  ///
  /// In en, this message translates to:
  /// **'Per amal'**
  String get perAmal;

  /// No description provided for @thisWeek.
  ///
  /// In en, this message translates to:
  /// **'This week'**
  String get thisWeek;

  /// No description provided for @thisMonth.
  ///
  /// In en, this message translates to:
  /// **'This month'**
  String get thisMonth;

  /// No description provided for @totalCompletions.
  ///
  /// In en, this message translates to:
  /// **'total completions'**
  String get totalCompletions;

  /// No description provided for @streakCurrent.
  ///
  /// In en, this message translates to:
  /// **'Current'**
  String get streakCurrent;

  /// No description provided for @streakLongest.
  ///
  /// In en, this message translates to:
  /// **'Longest'**
  String get streakLongest;

  /// No description provided for @ratioWeek.
  ///
  /// In en, this message translates to:
  /// **'Week'**
  String get ratioWeek;

  /// No description provided for @ratioMonth.
  ///
  /// In en, this message translates to:
  /// **'Month'**
  String get ratioMonth;

  /// No description provided for @streakDays.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{day} other{days}}'**
  String streakDays(int count);

  /// No description provided for @streakWeeks.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{week} other{weeks}}'**
  String streakWeeks(int count);

  /// No description provided for @streakMonths.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{month} other{months}}'**
  String streakMonths(int count);

  /// No description provided for @frequencyBadgeDaily.
  ///
  /// In en, this message translates to:
  /// **'daily'**
  String get frequencyBadgeDaily;

  /// No description provided for @frequencyBadgeWeekly.
  ///
  /// In en, this message translates to:
  /// **'weekly'**
  String get frequencyBadgeWeekly;

  /// No description provided for @frequencyBadgeMonthly.
  ///
  /// In en, this message translates to:
  /// **'monthly'**
  String get frequencyBadgeMonthly;

  /// No description provided for @statsEmpty.
  ///
  /// In en, this message translates to:
  /// **'No amal yet. Add one on Today to start tracking.'**
  String get statsEmpty;

  /// No description provided for @statsToday.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get statsToday;

  /// No description provided for @statsThisWeek.
  ///
  /// In en, this message translates to:
  /// **'This Week'**
  String get statsThisWeek;

  /// No description provided for @statsThisMonth.
  ///
  /// In en, this message translates to:
  /// **'This Month'**
  String get statsThisMonth;

  /// No description provided for @statsAllTime.
  ///
  /// In en, this message translates to:
  /// **'All Time'**
  String get statsAllTime;

  /// No description provided for @statsCustomRange.
  ///
  /// In en, this message translates to:
  /// **'Custom Range'**
  String get statsCustomRange;

  /// No description provided for @statsAllCategories.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get statsAllCategories;

  /// No description provided for @statsAllAmals.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get statsAllAmals;

  /// No description provided for @statsCompleted.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get statsCompleted;

  /// No description provided for @statsExpected.
  ///
  /// In en, this message translates to:
  /// **'Expected'**
  String get statsExpected;

  /// No description provided for @statsVsPrevious.
  ///
  /// In en, this message translates to:
  /// **'vs Previous'**
  String get statsVsPrevious;

  /// No description provided for @statsByCategory.
  ///
  /// In en, this message translates to:
  /// **'By Category'**
  String get statsByCategory;

  /// No description provided for @statsPerAmal.
  ///
  /// In en, this message translates to:
  /// **'Per Amal'**
  String get statsPerAmal;

  /// No description provided for @statsCurrentStreak.
  ///
  /// In en, this message translates to:
  /// **'Current Streak'**
  String get statsCurrentStreak;

  /// No description provided for @statsBestStreak.
  ///
  /// In en, this message translates to:
  /// **'Best Streak'**
  String get statsBestStreak;

  /// No description provided for @statsTotalDays.
  ///
  /// In en, this message translates to:
  /// **'Total Days'**
  String get statsTotalDays;

  /// No description provided for @statsConsistency.
  ///
  /// In en, this message translates to:
  /// **'Consistency'**
  String get statsConsistency;

  /// No description provided for @statsLast5Weeks.
  ///
  /// In en, this message translates to:
  /// **'Last 5 weeks'**
  String get statsLast5Weeks;

  /// No description provided for @statsDailyBreakdown.
  ///
  /// In en, this message translates to:
  /// **'Daily Breakdown'**
  String get statsDailyBreakdown;

  /// No description provided for @statsCompletionRate.
  ///
  /// In en, this message translates to:
  /// **'Completion rate'**
  String get statsCompletionRate;

  /// No description provided for @statsFilterTime.
  ///
  /// In en, this message translates to:
  /// **'Time'**
  String get statsFilterTime;

  /// No description provided for @statsFilterCategory.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get statsFilterCategory;

  /// No description provided for @statsFilterAmal.
  ///
  /// In en, this message translates to:
  /// **'Amal'**
  String get statsFilterAmal;

  /// No description provided for @statsStreaks.
  ///
  /// In en, this message translates to:
  /// **'Streaks'**
  String get statsStreaks;

  /// No description provided for @statsSelectDateRange.
  ///
  /// In en, this message translates to:
  /// **'Select date range'**
  String get statsSelectDateRange;

  /// No description provided for @historyTitle.
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get historyTitle;

  /// No description provided for @jumpToDate.
  ///
  /// In en, this message translates to:
  /// **'Jump to date'**
  String get jumpToDate;

  /// No description provided for @historyEmptyDay.
  ///
  /// In en, this message translates to:
  /// **'No amal tracked on {date}'**
  String historyEmptyDay(String date);

  /// No description provided for @streakUnitD.
  ///
  /// In en, this message translates to:
  /// **'d'**
  String get streakUnitD;

  /// No description provided for @streakUnitW.
  ///
  /// In en, this message translates to:
  /// **'w'**
  String get streakUnitW;

  /// No description provided for @streakUnitM.
  ///
  /// In en, this message translates to:
  /// **'m'**
  String get streakUnitM;

  /// No description provided for @mondayShort.
  ///
  /// In en, this message translates to:
  /// **'Mon'**
  String get mondayShort;

  /// No description provided for @tuesdayShort.
  ///
  /// In en, this message translates to:
  /// **'Tue'**
  String get tuesdayShort;

  /// No description provided for @wednesdayShort.
  ///
  /// In en, this message translates to:
  /// **'Wed'**
  String get wednesdayShort;

  /// No description provided for @thursdayShort.
  ///
  /// In en, this message translates to:
  /// **'Thu'**
  String get thursdayShort;

  /// No description provided for @fridayShort.
  ///
  /// In en, this message translates to:
  /// **'Fri'**
  String get fridayShort;

  /// No description provided for @saturdayShort.
  ///
  /// In en, this message translates to:
  /// **'Sat'**
  String get saturdayShort;

  /// No description provided for @sundayShort.
  ///
  /// In en, this message translates to:
  /// **'Sun'**
  String get sundayShort;

  /// No description provided for @mondayFull.
  ///
  /// In en, this message translates to:
  /// **'Monday'**
  String get mondayFull;

  /// No description provided for @tuesdayFull.
  ///
  /// In en, this message translates to:
  /// **'Tuesday'**
  String get tuesdayFull;

  /// No description provided for @wednesdayFull.
  ///
  /// In en, this message translates to:
  /// **'Wednesday'**
  String get wednesdayFull;

  /// No description provided for @thursdayFull.
  ///
  /// In en, this message translates to:
  /// **'Thursday'**
  String get thursdayFull;

  /// No description provided for @fridayFull.
  ///
  /// In en, this message translates to:
  /// **'Friday'**
  String get fridayFull;

  /// No description provided for @saturdayFull.
  ///
  /// In en, this message translates to:
  /// **'Saturday'**
  String get saturdayFull;

  /// No description provided for @sundayFull.
  ///
  /// In en, this message translates to:
  /// **'Sunday'**
  String get sundayFull;

  /// No description provided for @hadith0.
  ///
  /// In en, this message translates to:
  /// **'\"The most beloved deeds to Allah are those done consistently, even if small.\"\n— Bukhari & Muslim'**
  String get hadith0;

  /// No description provided for @hadith2.
  ///
  /// In en, this message translates to:
  /// **'\"When the son of Adam dies, his deeds come to an end except three: ongoing charity, beneficial knowledge, or a righteous child who prays for him.\"\n— Muslim'**
  String get hadith2;

  /// No description provided for @hadith3.
  ///
  /// In en, this message translates to:
  /// **'\"Whoever prays the two cool prayers (Fajr and Asr) will enter Paradise.\"\n— Bukhari'**
  String get hadith3;

  /// No description provided for @hadith4.
  ///
  /// In en, this message translates to:
  /// **'\"Allah does not look at your appearance or your wealth, but He looks at your hearts and your deeds.\"\n— Muslim'**
  String get hadith4;

  /// No description provided for @hadith6.
  ///
  /// In en, this message translates to:
  /// **'\"Make things easy and do not make them difficult; give glad tidings and do not scare people away.\"\n— Bukhari'**
  String get hadith6;

  /// No description provided for @hadith7.
  ///
  /// In en, this message translates to:
  /// **'\"He who treads a path in search of knowledge, Allah will make easy for him the path to Paradise.\"\n— Muslim'**
  String get hadith7;

  /// No description provided for @hadith8.
  ///
  /// In en, this message translates to:
  /// **'\"Charity does not decrease wealth.\"\n— Muslim'**
  String get hadith8;

  /// No description provided for @hadith9.
  ///
  /// In en, this message translates to:
  /// **'\"The strong believer is better and more beloved to Allah than the weak believer, while there is good in both.\"\n— Muslim'**
  String get hadith9;

  /// No description provided for @hadith10.
  ///
  /// In en, this message translates to:
  /// **'\"Whoever says \'SubhanAllah wa bihamdihi\' a hundred times a day will have his sins forgiven even if they were like the foam of the sea.\"\n— Bukhari & Muslim'**
  String get hadith10;

  /// No description provided for @hadith12.
  ///
  /// In en, this message translates to:
  /// **'\"Whoever recites Ayat al-Kursi after every obligatory prayer, nothing prevents him from entering Paradise except death.\"\n— Nasa\'i'**
  String get hadith12;

  /// No description provided for @hadith13.
  ///
  /// In en, this message translates to:
  /// **'\"A good word is charity.\"\n— Bukhari & Muslim'**
  String get hadith13;

  /// No description provided for @hadith14.
  ///
  /// In en, this message translates to:
  /// **'\"Whoever believes in Allah and the Last Day, let him speak good or remain silent.\"\n— Bukhari & Muslim'**
  String get hadith14;

  /// No description provided for @hadith15.
  ///
  /// In en, this message translates to:
  /// **'\"The one who looks after a widow or a poor person is like a warrior in the cause of Allah.\"\n— Bukhari & Muslim'**
  String get hadith15;

  /// No description provided for @hadith16.
  ///
  /// In en, this message translates to:
  /// **'\"Smiling at your brother is an act of charity.\"\n— Tirmidhi'**
  String get hadith16;

  /// No description provided for @hadith17.
  ///
  /// In en, this message translates to:
  /// **'\"The best among you are those who learn the Quran and teach it.\"\n— Bukhari'**
  String get hadith17;

  /// No description provided for @hadith18.
  ///
  /// In en, this message translates to:
  /// **'\"No one has eaten better food than what he earns from the work of his own hands.\"\n— Bukhari'**
  String get hadith18;

  /// No description provided for @hadith19.
  ///
  /// In en, this message translates to:
  /// **'\"Allah is gentle and loves gentleness in all things.\"\n— Bukhari & Muslim'**
  String get hadith19;

  /// No description provided for @historyDayCompleted.
  ///
  /// In en, this message translates to:
  /// **'{completed} of {total} completed'**
  String historyDayCompleted(int completed, int total);

  /// No description provided for @settingsSchedule.
  ///
  /// In en, this message translates to:
  /// **'Schedule'**
  String get settingsSchedule;

  /// No description provided for @settingsAppearance.
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get settingsAppearance;

  /// No description provided for @settingsAboutTagline.
  ///
  /// In en, this message translates to:
  /// **'Your daily deen companion'**
  String get settingsAboutTagline;

  /// No description provided for @settingsRolloverSub.
  ///
  /// In en, this message translates to:
  /// **'When the day resets'**
  String get settingsRolloverSub;

  /// No description provided for @settingsAbout.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get settingsAbout;

  /// No description provided for @settingsVersion.
  ///
  /// In en, this message translates to:
  /// **'Version'**
  String get settingsVersion;

  /// No description provided for @settingsDeveloper.
  ///
  /// In en, this message translates to:
  /// **'Developer'**
  String get settingsDeveloper;

  /// No description provided for @settingsSupport.
  ///
  /// In en, this message translates to:
  /// **'Support'**
  String get settingsSupport;

  /// No description provided for @settingsRate.
  ///
  /// In en, this message translates to:
  /// **'Rate the app'**
  String get settingsRate;

  /// No description provided for @settingsContact.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get settingsContact;

  /// No description provided for @settingsReportBug.
  ///
  /// In en, this message translates to:
  /// **'Report a bug'**
  String get settingsReportBug;

  /// No description provided for @settingsRequestFeature.
  ///
  /// In en, this message translates to:
  /// **'Request a feature'**
  String get settingsRequestFeature;

  /// No description provided for @settingsSupportFallback.
  ///
  /// In en, this message translates to:
  /// **'Could not open mail. Please email {email}.'**
  String settingsSupportFallback(String email);

  /// No description provided for @settingsPrivacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get settingsPrivacyPolicy;

  /// No description provided for @settingsPrivacyOpenFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not open the privacy policy.'**
  String get settingsPrivacyOpenFailed;

  /// No description provided for @hadith20.
  ///
  /// In en, this message translates to:
  /// **'\"Whoever fasts Ramadan out of faith and seeking reward, his past sins will be forgiven.\"\n— Bukhari & Muslim'**
  String get hadith20;

  /// No description provided for @hadith22.
  ///
  /// In en, this message translates to:
  /// **'\"The supplication between the adhan and iqamah is not rejected.\"\n— Abu Dawud'**
  String get hadith22;

  /// No description provided for @hadith23.
  ///
  /// In en, this message translates to:
  /// **'\"Whoever builds a mosque for Allah, Allah will build for him a house in Paradise.\"\n— Bukhari & Muslim'**
  String get hadith23;

  /// No description provided for @hadith24.
  ///
  /// In en, this message translates to:
  /// **'\"The best rows for men are the first rows, and the best rows for women are the last rows.\"\n— Muslim'**
  String get hadith24;

  /// No description provided for @hadith25.
  ///
  /// In en, this message translates to:
  /// **'\"Fasting is a shield from the Hellfire.\"\n— Nasa\'i'**
  String get hadith25;

  /// No description provided for @hadith26.
  ///
  /// In en, this message translates to:
  /// **'\"Whoever prays twelve rak\'ahs of Sunnah, a house will be built for him in Paradise.\"\n— Muslim'**
  String get hadith26;

  /// No description provided for @hadith27.
  ///
  /// In en, this message translates to:
  /// **'\"The one who is proficient in the Quran will be with the noble angels.\"\n— Bukhari & Muslim'**
  String get hadith27;

  /// No description provided for @hadith29.
  ///
  /// In en, this message translates to:
  /// **'\"The best of charity is giving water to drink.\"\n— Ahmad'**
  String get hadith29;

  /// No description provided for @hadith30.
  ///
  /// In en, this message translates to:
  /// **'\"Whoever removes a hardship from a believer, Allah will remove a hardship from him on the Day of Judgment.\"\n— Muslim'**
  String get hadith30;

  /// No description provided for @hadith32.
  ///
  /// In en, this message translates to:
  /// **'\"Modesty is part of faith.\"\n— Bukhari & Muslim'**
  String get hadith32;

  /// No description provided for @hadith34.
  ///
  /// In en, this message translates to:
  /// **'\"Whoever is patient, Allah will give him patience.\"\n— Bukhari & Muslim'**
  String get hadith34;

  /// No description provided for @hadith36.
  ///
  /// In en, this message translates to:
  /// **'\"None of you truly believes until he loves for his brother what he loves for himself.\"\n— Bukhari & Muslim'**
  String get hadith36;

  /// No description provided for @hadith37.
  ///
  /// In en, this message translates to:
  /// **'\"Feed the hungry, visit the sick, and free the captives.\"\n— Bukhari'**
  String get hadith37;

  /// No description provided for @hadith38.
  ///
  /// In en, this message translates to:
  /// **'\"The strong person is not the one who wrestles, but the one who controls himself in anger.\"\n— Bukhari & Muslim'**
  String get hadith38;

  /// No description provided for @hadith40.
  ///
  /// In en, this message translates to:
  /// **'\"Say \'SubhanAllah\', \'Alhamdulillah\', and \'Allahu Akbar\' thirty-three times each after every prayer.\"\n— Muslim'**
  String get hadith40;

  /// No description provided for @hadith41.
  ///
  /// In en, this message translates to:
  /// **'\"The best dhikr is La ilaha illallah.\"\n— Tirmidhi'**
  String get hadith41;

  /// No description provided for @hadith42.
  ///
  /// In en, this message translates to:
  /// **'\"There are two blessings which many people waste: health and free time.\"\n— Bukhari'**
  String get hadith42;

  /// No description provided for @hadith43.
  ///
  /// In en, this message translates to:
  /// **'\"Make use of five before five: youth before old age, health before sickness, wealth before poverty, free time before busyness, and life before death.\"\n— Hakim'**
  String get hadith43;

  /// No description provided for @hadith44.
  ///
  /// In en, this message translates to:
  /// **'\"Whoever recites Surah Al-Ikhlas ten times, Allah will build for him a house in Paradise.\"\n— Ahmad'**
  String get hadith44;

  /// No description provided for @hadith45.
  ///
  /// In en, this message translates to:
  /// **'\"The best prayer after the obligatory prayers is the night prayer.\"\n— Muslim'**
  String get hadith45;

  /// No description provided for @hadith46.
  ///
  /// In en, this message translates to:
  /// **'\"Charity extinguishes sins as water extinguishes fire.\"\n— Tirmidhi'**
  String get hadith46;

  /// No description provided for @hadith47.
  ///
  /// In en, this message translates to:
  /// **'\"The one who maintains family ties is not the one who reciprocates. It is the one who maintains them even when cut off.\"\n— Bukhari'**
  String get hadith47;

  /// No description provided for @hadith49.
  ///
  /// In en, this message translates to:
  /// **'\"Whoever eats food and says: \'Praise be to Allah who has fed me this and provided it without any power or strength on my part,\' his past sins will be forgiven.\"\n— Tirmidhi'**
  String get hadith49;

  /// No description provided for @hadith53.
  ///
  /// In en, this message translates to:
  /// **'\"Do not belittle any good deed, even meeting your brother with a cheerful face.\"\n— Muslim'**
  String get hadith53;

  /// No description provided for @hadith54.
  ///
  /// In en, this message translates to:
  /// **'\"The best of you are those who are best to their families.\"\n— Tirmidhi'**
  String get hadith54;

  /// No description provided for @hadith55.
  ///
  /// In en, this message translates to:
  /// **'\"Whoever recites the last two verses of Surah Al-Baqarah at night, they will suffice him.\"\n— Bukhari & Muslim'**
  String get hadith55;

  /// No description provided for @hadith56.
  ///
  /// In en, this message translates to:
  /// **'\"The world is a provision, and the best provision is a righteous wife.\"\n— Muslim'**
  String get hadith56;

  /// No description provided for @hadith57.
  ///
  /// In en, this message translates to:
  /// **'\"Three supplications are never rejected: the supplication of a fasting person, a just ruler, and the oppressed.\"\n— Tirmidhi'**
  String get hadith57;

  /// No description provided for @hadith58.
  ///
  /// In en, this message translates to:
  /// **'\"Whoever sends blessings upon me once, Allah will send blessings upon him tenfold.\"\n— Muslim'**
  String get hadith58;

  /// No description provided for @hadith65.
  ///
  /// In en, this message translates to:
  /// **'\"The believer is the mirror of the believer.\"\n— Abu Dawud'**
  String get hadith65;

  /// No description provided for @hadith66.
  ///
  /// In en, this message translates to:
  /// **'\"Truthfulness leads to righteousness, and righteousness leads to Paradise.\"\n— Bukhari & Muslim'**
  String get hadith66;

  /// No description provided for @hadith67.
  ///
  /// In en, this message translates to:
  /// **'\"Return the trust to the one who entrusted you, and do not betray the one who betrayed you.\"\n— Abu Dawud & Tirmidhi'**
  String get hadith67;

  /// No description provided for @hadith68.
  ///
  /// In en, this message translates to:
  /// **'\"No fatigue, disease, sorrow, sadness, hurt, or distress befalls a Muslim, even a prick of a thorn, except that Allah removes some of his sins thereby.\"\n— Bukhari & Muslim'**
  String get hadith68;

  /// No description provided for @hadith69.
  ///
  /// In en, this message translates to:
  /// **'\"The supplication of a Muslim for his brother in his absence is always answered.\"\n— Muslim'**
  String get hadith69;

  /// No description provided for @hadith70.
  ///
  /// In en, this message translates to:
  /// **'\"Whoever asks Allah for Paradise three times, Paradise says: O Allah, admit him to Paradise.\"\n— Tirmidhi'**
  String get hadith70;

  /// No description provided for @hadith71.
  ///
  /// In en, this message translates to:
  /// **'\"The most virtuous fast after Ramadan is fasting in the month of Allah, Muharram.\"\n— Muslim'**
  String get hadith71;

  /// No description provided for @hadith72.
  ///
  /// In en, this message translates to:
  /// **'\"Whoever performs Hajj and does not commit any obscenity or sin returns like the day his mother bore him.\"\n— Bukhari & Muslim'**
  String get hadith72;

  /// No description provided for @hadith73.
  ///
  /// In en, this message translates to:
  /// **'\"Umrah to Umrah is an expiation for what is between them.\"\n— Bukhari & Muslim'**
  String get hadith73;

  /// No description provided for @hadith74.
  ///
  /// In en, this message translates to:
  /// **'\"Hasten to do good deeds before trials come like portions of a dark night.\"\n— Muslim'**
  String get hadith74;

  /// No description provided for @hadith75.
  ///
  /// In en, this message translates to:
  /// **'\"The two rak\'ahs of Fajr are better than the world and everything in it.\"\n— Muslim'**
  String get hadith75;

  /// No description provided for @hadith77.
  ///
  /// In en, this message translates to:
  /// **'\"If you relied on Allah as He should be relied upon, He would provide for you as He provides for the birds.\"\n— Tirmidhi'**
  String get hadith77;

  /// No description provided for @hadith78.
  ///
  /// In en, this message translates to:
  /// **'\"Whoever visits a sick person is in the harvest of Paradise until he returns.\"\n— Muslim'**
  String get hadith78;

  /// No description provided for @hadith79.
  ///
  /// In en, this message translates to:
  /// **'\"Spread peace, feed the hungry, and pray at night when others sleep — you will enter Paradise in peace.\"\n— Tirmidhi'**
  String get hadith79;

  /// No description provided for @hadith80.
  ///
  /// In en, this message translates to:
  /// **'\"Whoever is not grateful to people is not grateful to Allah.\"\n— Tirmidhi'**
  String get hadith80;

  /// No description provided for @hadith81.
  ///
  /// In en, this message translates to:
  /// **'\"Envy is not permissible except in two cases: a man to whom Allah has given wealth and he spends it in the right way, and a man to whom Allah has given wisdom and he judges and teaches with it.\"\n— Bukhari & Muslim'**
  String get hadith81;

  /// No description provided for @hadith82.
  ///
  /// In en, this message translates to:
  /// **'\"A person is upon the religion of his close friend, so let each of you look at whom he befriends.\"\n— Abu Dawud & Tirmidhi'**
  String get hadith82;

  /// No description provided for @hadith85.
  ///
  /// In en, this message translates to:
  /// **'\"Whoever leaves something for the sake of Allah, Allah will replace it with something better.\"\n— Ahmad'**
  String get hadith85;

  /// No description provided for @hadith86.
  ///
  /// In en, this message translates to:
  /// **'\"Whoever conceals the faults of a Muslim, Allah will conceal his faults on the Day of Judgment.\"\n— Bukhari & Muslim'**
  String get hadith86;

  /// No description provided for @hadith87.
  ///
  /// In en, this message translates to:
  /// **'\"Be in this world as if you were a stranger or a traveler.\"\n— Bukhari'**
  String get hadith87;

  /// No description provided for @hadith88.
  ///
  /// In en, this message translates to:
  /// **'\"Whoever makes it easy for someone in difficulty, Allah will make it easy for him in this world and the hereafter.\"\n— Muslim'**
  String get hadith88;

  /// No description provided for @hadith89.
  ///
  /// In en, this message translates to:
  /// **'\"The reward of deeds depends upon the intentions.\"\n— Bukhari & Muslim'**
  String get hadith89;

  /// No description provided for @hadith90.
  ///
  /// In en, this message translates to:
  /// **'\"Avoid suspicion, for suspicion is the most false of speech.\"\n— Bukhari & Muslim'**
  String get hadith90;

  /// No description provided for @hadith93.
  ///
  /// In en, this message translates to:
  /// **'\"Eat together and mention the name of Allah, and it will be blessed for you.\"\n— Abu Dawud'**
  String get hadith93;

  /// No description provided for @hadith94.
  ///
  /// In en, this message translates to:
  /// **'\"No people sit remembering Allah except that the angels surround them, mercy covers them, and tranquility descends upon them.\"\n— Muslim'**
  String get hadith94;

  /// No description provided for @hadith95.
  ///
  /// In en, this message translates to:
  /// **'\"Allah does not increase a servant, through forgiving others, except in honor.\"\n— Muslim'**
  String get hadith95;

  /// No description provided for @hadith96.
  ///
  /// In en, this message translates to:
  /// **'\"Tie your camel and then put your trust in Allah.\"\n— Tirmidhi'**
  String get hadith96;

  /// No description provided for @hadith97.
  ///
  /// In en, this message translates to:
  /// **'\"Wondrous is the affair of the believer — everything is good for him.\"\n— Muslim'**
  String get hadith97;

  /// No description provided for @hadith98.
  ///
  /// In en, this message translates to:
  /// **'\"A Muslim is a brother to a Muslim: he does not wrong him, nor abandon him, nor despise him.\"\n— Muslim'**
  String get hadith98;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @remove.
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get remove;

  /// No description provided for @deleteAmalConfirmTitle.
  ///
  /// In en, this message translates to:
  /// **'Remove from tracking?'**
  String get deleteAmalConfirmTitle;

  /// No description provided for @deleteAmalConfirmBody.
  ///
  /// In en, this message translates to:
  /// **'\"{title}\" will be hidden from your list. Your history is kept.'**
  String deleteAmalConfirmBody(String title);

  /// No description provided for @genericError.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong. Please try again.'**
  String get genericError;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'ar',
    'az',
    'bn',
    'bs',
    'en',
    'fa',
    'fr',
    'ha',
    'hi',
    'id',
    'kk',
    'ku',
    'ky',
    'ms',
    'ps',
    'so',
    'sq',
    'sw',
    'tg',
    'tk',
    'tr',
    'ur',
    'uz',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'az':
      return AppLocalizationsAz();
    case 'bn':
      return AppLocalizationsBn();
    case 'bs':
      return AppLocalizationsBs();
    case 'en':
      return AppLocalizationsEn();
    case 'fa':
      return AppLocalizationsFa();
    case 'fr':
      return AppLocalizationsFr();
    case 'ha':
      return AppLocalizationsHa();
    case 'hi':
      return AppLocalizationsHi();
    case 'id':
      return AppLocalizationsId();
    case 'kk':
      return AppLocalizationsKk();
    case 'ku':
      return AppLocalizationsKu();
    case 'ky':
      return AppLocalizationsKy();
    case 'ms':
      return AppLocalizationsMs();
    case 'ps':
      return AppLocalizationsPs();
    case 'so':
      return AppLocalizationsSo();
    case 'sq':
      return AppLocalizationsSq();
    case 'sw':
      return AppLocalizationsSw();
    case 'tg':
      return AppLocalizationsTg();
    case 'tk':
      return AppLocalizationsTk();
    case 'tr':
      return AppLocalizationsTr();
    case 'ur':
      return AppLocalizationsUr();
    case 'uz':
      return AppLocalizationsUz();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
