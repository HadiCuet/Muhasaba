// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appTitle => 'Muhasaba';

  @override
  String get tabToday => 'आज';

  @override
  String get tabStats => 'आँकड़े';

  @override
  String get tabHistory => 'इतिहास';

  @override
  String get tabSettings => 'सेटिंग्स';

  @override
  String get newAmal => 'नया अमल';

  @override
  String get editAmal => 'अमल संपादित करें';

  @override
  String get newAmalTitle => 'नया अमल';

  @override
  String get save => 'सहेजें';

  @override
  String get cancel => 'रद्द करें';

  @override
  String get clear => 'साफ़ करें';

  @override
  String get titleLabel => 'शीर्षक';

  @override
  String get titleRequired => 'शीर्षक आवश्यक है';

  @override
  String get titleTooLong => 'शीर्षक बहुत लंबा है';

  @override
  String get frequencyLabel => 'आवृत्ति';

  @override
  String get frequencyDaily => 'रोज़ाना';

  @override
  String get frequencyWeekly => 'साप्ताहिक';

  @override
  String get frequencyMonthly => 'मासिक';

  @override
  String get categoryLabel => 'श्रेणी';

  @override
  String get categoryOther => 'अन्य';

  @override
  String get categorySalah => 'नमाज़';

  @override
  String get categoryDhikr => 'ज़िक्र';

  @override
  String get categoryQuran => 'कुरआन';

  @override
  String get categoryCharity => 'सदक़ा';

  @override
  String get timesPerPeriod => 'प्रति अवधि बार';

  @override
  String get custom => 'कस्टम';

  @override
  String get customTargetHint => 'जैसे 50';

  @override
  String get dayOfWeek => 'सप्ताह का दिन';

  @override
  String get anyDay => 'कोई भी';

  @override
  String get anyDayHint => 'कोई भी दिन (आज दिखेगा, अगले दिन छुप जाएगा)';

  @override
  String onlyDayHint(String day) {
    return 'केवल $day';
  }

  @override
  String get dateOfMonth => 'महीने की तारीख़';

  @override
  String get anyDate => 'कोई भी';

  @override
  String get anyDateHint => 'कोई भी तारीख़ (आज दिखेगी, अगले दिन छुप जाएगी)';

  @override
  String onlyDateHint(String date) {
    return 'केवल $date को';
  }

  @override
  String get startPreChecked => 'पहले से चेक किया हुआ शुरू करें';

  @override
  String get startPreCheckedSubtitle =>
      'जब नई अवधि शुरू होती है, तो यह अमल डिफ़ॉल्ट रूप से पूर्ण चिह्नित रहता है जब तक आप इसे अनचेक नहीं करते।';

  @override
  String get reminder => 'रिमाइंडर';

  @override
  String get reminderNone => 'कोई नहीं';

  @override
  String reminderTime(String time) {
    return 'रिमाइंडर: $time';
  }

  @override
  String get reminderPermissionWarning =>
      'रिमाइंडर सहेजा गया, लेकिन नोटिफ़िकेशन की अनुमति नहीं है। अलर्ट पाने के लिए सिस्टम सेटिंग्स में सक्षम करें।';

  @override
  String get groupByCategory => 'श्रेणी के अनुसार';

  @override
  String get flatList => 'सपाट सूची';

  @override
  String errorGeneric(String error) {
    return 'त्रुटि: $error';
  }

  @override
  String get todayEmptyHint => 'अपना पहला अमल जोड़ने के लिए + दबाएँ।';

  @override
  String get noteLabel => 'नोट';

  @override
  String get noteHint => 'जैसे मस्जिद में नमाज़ पढ़ी';

  @override
  String get completed => 'पूर्ण';

  @override
  String get notCompleted => 'अपूर्ण';

  @override
  String progressOf(int progress, int target) {
    return '$target में से $progress पूर्ण';
  }

  @override
  String get removeFromToday => 'आज से हटाएँ';

  @override
  String get removeFromTodaySubtitle =>
      'केवल आज के लिए छुपाएँ। कल वापस आ जाएगा।';

  @override
  String get removeFromTracking => 'ट्रैकिंग से हटाएँ';

  @override
  String get removeFromTrackingSubtitle =>
      'अपनी सूची से स्थायी रूप से हटाएँ। इतिहास सुरक्षित रहेगा।';

  @override
  String get chooseIcon => 'आइकन चुनें';

  @override
  String get iconNone => 'कोई नहीं';

  @override
  String get recentlyUsed => 'हाल ही में उपयोग किए गए';

  @override
  String get emojiSectionGeneral => 'सामान्य';

  @override
  String get categoryNameHint => 'नाम';

  @override
  String get categoryNew => '+ नई';

  @override
  String get addAmal => 'अमल जोड़ें';

  @override
  String get customAmal => 'कस्टम अमल';

  @override
  String get templateTasbih => 'तस्बीह 33x';

  @override
  String get templateIstighfar => 'इस्तिग़फ़ार 100x';

  @override
  String get templateSurahKahf => 'सूरह कहफ़';

  @override
  String get templateSadaqah => 'सदक़ा';

  @override
  String get templateTahajjud => 'तहज्जुद';

  @override
  String get templateDuhaPrayer => 'चाश्त की नमाज़';

  @override
  String get settingsTitle => 'सेटिंग्स';

  @override
  String settingsLoadError(String error) {
    return 'सेटिंग्स लोड करने में विफल:\n$error';
  }

  @override
  String get sectionDayBoundary => 'दिन की सीमा';

  @override
  String get rolloverHour => 'रोलओवर का समय';

  @override
  String get rolloverAtMidnight => 'आज आधी रात को समाप्त होता है।';

  @override
  String rolloverSubtitle(String time) {
    return 'कल के अमल $time तक संपादन योग्य रहेंगे।';
  }

  @override
  String get pickRolloverHour => 'दिन बदलने का समय चुनें';

  @override
  String get sectionWeekMonth => 'सप्ताह और महीना';

  @override
  String get startOfWeek => 'सप्ताह की शुरुआत';

  @override
  String get startOfMonth => 'महीने की शुरुआत';

  @override
  String get startOfMonthClamped =>
      '28 से ज़्यादा की तारीख़ छोटे महीनों के अंतिम दिन पर सेट हो जाती है।';

  @override
  String get sectionAppearance => 'रंगरूप';

  @override
  String get theme => 'थीम';

  @override
  String get themeSystem => 'सिस्टम';

  @override
  String get themeLight => 'लाइट';

  @override
  String get themeDark => 'डार्क';

  @override
  String get sectionLanguage => 'भाषा';

  @override
  String get language => 'भाषा';

  @override
  String get systemDefault => 'सिस्टम डिफ़ॉल्ट';

  @override
  String get aboutTitle => 'Muhasaba';

  @override
  String get aboutSubtitle =>
      'एक निजी दीन की जवाबदेही डायरी। सारा डेटा इस डिवाइस पर ही रहता है।';

  @override
  String get statsTitle => 'आँकड़े';

  @override
  String statsLoadError(String error) {
    return 'आँकड़े लोड करने में विफल:\n$error';
  }

  @override
  String get perAmal => 'प्रति अमल';

  @override
  String get thisWeek => 'इस सप्ताह';

  @override
  String get thisMonth => 'इस महीने';

  @override
  String get totalCompletions => 'कुल पूर्णताएँ';

  @override
  String get streakCurrent => 'वर्तमान';

  @override
  String get streakLongest => 'सबसे लंबी';

  @override
  String get ratioWeek => 'सप्ताह';

  @override
  String get ratioMonth => 'महीना';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'दिन',
      one: 'दिन',
    );
    return '$_temp0';
  }

  @override
  String streakWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'सप्ताह',
      one: 'सप्ताह',
    );
    return '$_temp0';
  }

  @override
  String streakMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'महीने',
      one: 'महीना',
    );
    return '$_temp0';
  }

  @override
  String get frequencyBadgeDaily => 'रोज़ाना';

  @override
  String get frequencyBadgeWeekly => 'साप्ताहिक';

  @override
  String get frequencyBadgeMonthly => 'मासिक';

  @override
  String get statsEmpty =>
      'अभी कोई अमल नहीं है। ट्रैकिंग शुरू करने के लिए आज में एक जोड़ें।';

  @override
  String get statsToday => 'आज';

  @override
  String get statsThisWeek => 'इस सप्ताह';

  @override
  String get statsThisMonth => 'इस महीने';

  @override
  String get statsAllTime => 'सभी समय';

  @override
  String get statsCustomRange => 'कस्टम अवधि';

  @override
  String get statsAllCategories => 'सभी';

  @override
  String get statsAllAmals => 'सभी';

  @override
  String get statsCompleted => 'पूर्ण';

  @override
  String get statsExpected => 'अपेक्षित';

  @override
  String get statsVsPrevious => 'पिछले की तुलना में';

  @override
  String get statsByCategory => 'श्रेणी अनुसार';

  @override
  String get statsPerAmal => 'प्रति अमल';

  @override
  String get statsCurrentStreak => 'वर्तमान लकीर';

  @override
  String get statsBestStreak => 'सर्वश्रेष्ठ लकीर';

  @override
  String get statsTotalDays => 'कुल दिन';

  @override
  String get statsConsistency => 'नियमितता';

  @override
  String get statsLast5Weeks => 'पिछले 5 सप्ताह';

  @override
  String get statsDailyBreakdown => 'दैनिक विश्लेषण';

  @override
  String get statsCompletionRate => 'पूर्णता दर';

  @override
  String get statsFilterTime => 'समय';

  @override
  String get statsFilterCategory => 'श्रेणी';

  @override
  String get statsFilterAmal => 'अमल';

  @override
  String get statsStreaks => 'लकीरें';

  @override
  String get statsSelectDateRange => 'तारीख़ की अवधि चुनें';

  @override
  String get historyTitle => 'इतिहास';

  @override
  String get jumpToDate => 'तारीख़ पर जाएँ';

  @override
  String historyEmptyDay(String date) {
    return '$date को कोई अमल ट्रैक नहीं किया गया';
  }

  @override
  String get streakUnitD => 'दि';

  @override
  String get streakUnitW => 'स';

  @override
  String get streakUnitM => 'म';

  @override
  String get mondayShort => 'सोम';

  @override
  String get tuesdayShort => 'मंगल';

  @override
  String get wednesdayShort => 'बुध';

  @override
  String get thursdayShort => 'गुरु';

  @override
  String get fridayShort => 'शुक्र';

  @override
  String get saturdayShort => 'शनि';

  @override
  String get sundayShort => 'रवि';

  @override
  String get mondayFull => 'सोमवार';

  @override
  String get tuesdayFull => 'मंगलवार';

  @override
  String get wednesdayFull => 'बुधवार';

  @override
  String get thursdayFull => 'गुरुवार';

  @override
  String get fridayFull => 'शुक्रवार';

  @override
  String get saturdayFull => 'शनिवार';

  @override
  String get sundayFull => 'रविवार';

  @override
  String get hadith0 =>
      '\"अल्लाह को सबसे प्रिय अमल वे हैं जो लगातार किए जाएँ, भले ही छोटे हों।\"\n— बुख़ारी व मुस्लिम';

  @override
  String get hadith1 =>
      '\"उतने ही नेक अमल करो जितने तुमसे हो सकें, क्योंकि सबसे अच्छे अमल वे हैं जो लगातार किए जाएँ, भले ही थोड़े हों।\"\n— इब्ने माजह';

  @override
  String get hadith2 =>
      '\"जब आदम की संतान मरती है तो उसके अमल रुक जाते हैं सिवाय तीन के: सदक़ा-ए-जारिया, फ़ायदेमंद इल्म, या नेक संतान जो उसके लिए दुआ करे।\"\n— मुस्लिम';

  @override
  String get hadith3 =>
      '\"जो व्यक्ति दो ठंडी नमाज़ें (फ़ज्र और अस्र) पढ़ेगा, वह जन्नत में दाख़िल होगा।\"\n— बुख़ारी';

  @override
  String get hadith4 =>
      '\"अल्लाह तुम्हारी शक्ल और दौलत नहीं देखता, बल्कि वह तुम्हारे दिलों और अमलों को देखता है।\"\n— मुस्लिम';

  @override
  String get hadith5 =>
      '\"लोगों में सबसे अच्छे वे हैं जो लोगों के लिए सबसे ज़्यादा फ़ायदेमंद हों।\"\n— दारक़ुतनी';

  @override
  String get hadith6 =>
      '\"आसानी पैदा करो और मुश्किल न बनाओ; ख़ुशख़बरी दो और लोगों को दूर मत भगाओ।\"\n— बुख़ारी';

  @override
  String get hadith7 =>
      '\"जो इल्म की तलाश में रास्ता चलता है, अल्लाह उसके लिए जन्नत का रास्ता आसान कर देता है।\"\n— मुस्लिम';

  @override
  String get hadith8 => '\"सदक़ा माल को कम नहीं करता।\"\n— मुस्लिम';

  @override
  String get hadith9 =>
      '\"ताक़तवर मोमिन कमज़ोर मोमिन से अल्लाह को ज़्यादा प्रिय और बेहतर है, जबकि दोनों में ख़ैर है।\"\n— मुस्लिम';

  @override
  String historyDayCompleted(int completed, int total) {
    return '$total में से $completed पूर्ण';
  }

  @override
  String get settingsSchedule => 'अनुसूची';

  @override
  String get settingsAppearance => 'दिखावट';

  @override
  String get settingsAboutTagline => 'आपका दैनिक दीन साथी';

  @override
  String get settingsRolloverSub => 'दिन कब रीसेट होता है';
}
