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
  String get categoryNewSheetTitle => 'नई श्रेणी';

  @override
  String get categoryEditSheetTitle => 'श्रेणी संपादित करें';

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
  String get hadith2 =>
      '\"जब आदम की संतान मरती है तो उसके अमल रुक जाते हैं सिवाय तीन के: सदक़ा-ए-जारिया, फ़ायदेमंद इल्म, या नेक संतान जो उसके लिए दुआ करे।\"\n— मुस्लिम';

  @override
  String get hadith3 =>
      '\"जो व्यक्ति दो ठंडी नमाज़ें (फ़ज्र और अस्र) पढ़ेगा, वह जन्नत में दाख़िल होगा।\"\n— बुख़ारी';

  @override
  String get hadith4 =>
      '\"अल्लाह तुम्हारी शक्ल और दौलत नहीं देखता, बल्कि वह तुम्हारे दिलों और अमलों को देखता है।\"\n— मुस्लिम';

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
  String get hadith10 =>
      '\"जो व्यक्ति दिन में सौ बार \'सुबहानअल्लाह व बिहम्दिहि\' कहे, उसके पाप क्षमा कर दिए जाएंगे चाहे समुद्र की झाग जितने हों।\"\n— बुखारी';

  @override
  String get hadith12 =>
      '\"जो व्यक्ति हर फ़र्ज़ नमाज़ के बाद आयतुल कुर्सी पढ़े, उसे जन्नत में प्रवेश से केवल मृत्यु ही रोकती है।\"\n— नसई';

  @override
  String get hadith13 => '\"अच्छी बात सदका है।\"\n— बुखारी व मुस्लिम';

  @override
  String get hadith14 =>
      '\"जो अल्लाह और अंतिम दिन पर विश्वास रखता है, वह अच्छी बात कहे या चुप रहे।\"\n— बुखारी व मुस्लिम';

  @override
  String get hadith15 =>
      '\"विधवा और मिसकीन की देखभाल करने वाला अल्लाह के रास्ते में मुजाहिद जैसा है।\"\n— बुखारी';

  @override
  String get hadith16 =>
      '\"अपने भाई के सामने मुस्कुराना सदका है।\"\n— तिर्मिज़ी';

  @override
  String get hadith17 =>
      '\"तुम में सबसे अच्छा वह है जो कुरआन सीखे और सिखाए।\"\n— बुखारी';

  @override
  String get hadith18 =>
      '\"किसी ने अपने हाथों की कमाई से बेहतर खाना नहीं खाया।\"\n— बुखारी';

  @override
  String get hadith19 =>
      '\"अल्लाह नरम है और हर मामले में नरमी पसंद करता है।\"\n— बुखारी व मुस्लिम';

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

  @override
  String get settingsAbout => 'जानकारी';

  @override
  String get settingsVersion => 'संस्करण';

  @override
  String get settingsDeveloper => 'डेवलपर';

  @override
  String get settingsSupport => 'सहायता';

  @override
  String get settingsRate => 'ऐप को रेट करें';

  @override
  String get settingsContact => 'हमसे संपर्क करें';

  @override
  String get settingsReportBug => 'बग रिपोर्ट करें';

  @override
  String get settingsRequestFeature => 'फ़ीचर का अनुरोध करें';

  @override
  String settingsSupportFallback(String email) {
    return 'मेल नहीं खुल सका। कृपया $email पर ईमेल करें।';
  }

  @override
  String get settingsPrivacyPolicy => 'गोपनीयता नीति';

  @override
  String get settingsPrivacyOpenFailed => 'गोपनीयता नीति नहीं खोली जा सकी।';

  @override
  String get hadith20 =>
      '\"जो रमज़ान के रोज़े ईमान और सवाब की उम्मीद से रखे, उसके पिछले गुनाह माफ़ कर दिए जाएंगे।\"\n— बुख़ारी व मुस्लिम';

  @override
  String get hadith22 =>
      '\"अज़ान और इक़ामत के बीच की दुआ रद्द नहीं होती।\"\n— अबू दाऊद';

  @override
  String get hadith23 =>
      '\"जो अल्लाह के लिए मस्जिद बनाए, अल्लाह उसके लिए जन्नत में घर बनाएगा।\"\n— बुख़ारी व मुस्लिम';

  @override
  String get hadith24 =>
      '\"मर्दों के लिए सबसे अच्छी सफ़ें पहली हैं, और औरतों के लिए सबसे अच्छी सफ़ें आख़िरी हैं।\"\n— मुस्लिम';

  @override
  String get hadith25 => '\"रोज़ा जहन्नम की आग से ढाल है।\"\n— नसई';

  @override
  String get hadith26 =>
      '\"जो बारह रकअत सुन्नत नमाज़ पढ़े, उसके लिए जन्नत में घर बनाया जाएगा।\"\n— मुस्लिम';

  @override
  String get hadith27 =>
      '\"जो क़ुरआन पढ़ने में माहिर है, वह इज़्ज़तदार फ़रिश्तों के साथ होगा।\"\n— बुख़ारी व मुस्लिम';

  @override
  String get hadith29 => '\"सबसे अच्छा सदक़ा पानी पिलाना है।\"\n— अहमद';

  @override
  String get hadith30 =>
      '\"जो किसी मोमिन की कोई तकलीफ़ दूर करे, अल्लाह क़यामत के दिन उसकी तकलीफ़ दूर करेगा।\"\n— मुस्लिम';

  @override
  String get hadith32 => '\"हया ईमान का हिस्सा है।\"\n— बुख़ारी व मुस्लिम';

  @override
  String get hadith34 =>
      '\"जो सब्र करे, अल्लाह उसे सब्र देता है।\"\n— बुख़ारी व मुस्लिम';

  @override
  String get hadith36 =>
      '\"तुम में से कोई सच्चा मोमिन नहीं जब तक वह अपने भाई के लिए वही न चाहे जो अपने लिए चाहता है।\"\n— बुख़ारी व मुस्लिम';

  @override
  String get hadith37 =>
      '\"भूखों को खिलाओ, बीमारों की अयादत करो और क़ैदियों को आज़ाद करो।\"\n— बुख़ारी';

  @override
  String get hadith38 =>
      '\"ताक़तवर वह नहीं जो कुश्ती में जीते, बल्कि वह है जो ग़ुस्से में ख़ुद पर क़ाबू रखे।\"\n— बुख़ारी व मुस्लिम';

  @override
  String get hadith40 =>
      '\"हर नमाज़ के बाद तैंतीस बार \'सुबहानअल्लाह\', \'अलहम्दुलिल्लाह\' और \'अल्लाहु अकबर\' कहो।\"\n— मुस्लिम';

  @override
  String get hadith41 =>
      '\"सबसे अच्छा ज़िक्र ला इलाहा इल्लल्लाह है।\"\n— तिर्मिज़ी';

  @override
  String get hadith42 =>
      '\"दो नेमतें हैं जिनमें बहुत से लोग घाटे में हैं: सेहत और फ़ुरसत।\"\n— बुख़ारी';

  @override
  String get hadith43 =>
      '\"पाँच चीज़ों को पाँच से पहले ग़नीमत जानो: बुढ़ापे से पहले जवानी, बीमारी से पहले सेहत, ग़रीबी से पहले अमीरी, मशग़ूलियत से पहले फ़ुरसत, और मौत से पहले ज़िंदगी।\"\n— हाकिम';

  @override
  String get hadith44 =>
      '\"जो सूरह इख़लास दस बार पढ़े, अल्लाह उसके लिए जन्नत में घर बनाएगा।\"\n— अहमद';

  @override
  String get hadith45 =>
      '\"फ़र्ज़ नमाज़ के बाद सबसे अच्छी नमाज़ तहज्जुद है।\"\n— मुस्लिम';

  @override
  String get hadith46 =>
      '\"सदक़ा गुनाहों को ऐसे मिटाता है जैसे पानी आग बुझाता है।\"\n— तिर्मिज़ी';

  @override
  String get hadith47 =>
      '\"सिला-ए-रहमी करने वाला वह नहीं जो बदले में करे, बल्कि वह है जो रिश्ता तोड़े जाने पर भी जोड़े।\"\n— बुख़ारी';

  @override
  String get hadith49 =>
      '\"जो खाना खाकर कहे: \'उस अल्लाह की हम्द जिसने मुझे यह खिलाया और मेरी किसी ताक़त या ज़ोर के बिना मुझे यह रोज़ी दी,\' उसके पिछले गुनाह माफ़ कर दिए जाएंगे।\"\n— तिर्मिज़ी';

  @override
  String get hadith53 =>
      '\"किसी भी नेकी को छोटा मत समझो, चाहे वह अपने भाई से मुस्कुराते चेहरे से मिलना ही हो।\"\n— मुस्लिम';

  @override
  String get hadith54 =>
      '\"तुममें से सबसे अच्छा वह है जो अपने परिवार के लिए सबसे अच्छा है।\"\n— तिर्मिज़ी';

  @override
  String get hadith55 =>
      '\"जो व्यक्ति रात को सूरह बक़रह की अंतिम दो आयतें पढ़ले, वे उसके लिए काफ़ी हैं।\"\n— बुख़ारी और मुस्लिम';

  @override
  String get hadith56 =>
      '\"दुनिया एक साधन है, और सबसे अच्छा साधन नेक पत्नी है।\"\n— मुस्लिम';

  @override
  String get hadith57 =>
      '\"तीन दुआएँ रद नहीं होतीं: रोज़ेदार की दुआ, न्यायी शासक की दुआ और मज़लूम की दुआ।\"\n— तिर्मिज़ी';

  @override
  String get hadith58 =>
      '\"जो मुझ पर एक बार दरूद भेजे, अल्लाह उस पर दस बार रहमत भेजता है।\"\n— मुस्लिम';

  @override
  String get hadith65 => '\"मोमिन मोमिन का आईना है।\"\n— अबू दाऊद';

  @override
  String get hadith66 =>
      '\"सच्चाई नेकी की ओर ले जाती है, और नेकी जन्नत की ओर ले जाती है।\"\n— बुख़ारी और मुस्लिम';

  @override
  String get hadith67 =>
      '\"अमानत उसे लौटाओ जिसने तुम पर भरोसा किया, और जिसने तुम्हारे साथ ख़ियानत की उसके साथ ख़ियानत मत करो।\"\n— अबू दाऊद और तिर्मिज़ी';

  @override
  String get hadith68 =>
      '\"किसी मुसलमान को जो भी थकान, बीमारी, ग़म, दुख, तकलीफ़ या परेशानी पहुँचती है, यहाँ तक कि एक काँटा भी चुभ जाए, अल्लाह उसके बदले उसके कुछ गुनाह माफ़ कर देता है।\"\n— बुख़ारी और मुस्लिम';

  @override
  String get hadith69 =>
      '\"एक मुसलमान की अपने भाई की ग़ैर-हाज़िरी में दुआ हमेशा क़बूल होती है।\"\n— मुस्लिम';

  @override
  String get hadith70 =>
      '\"जो अल्लाह से तीन बार जन्नत माँगे, जन्नत कहती है: ऐ अल्लाह, इसे जन्नत में दाख़िल कर।\"\n— तिर्मिज़ी';

  @override
  String get hadith71 =>
      '\"रमज़ान के बाद सबसे उत्तम रोज़ा अल्लाह के महीने मुहर्रम का रोज़ा है।\"\n— मुस्लिम';

  @override
  String get hadith72 =>
      '\"जिसने हज किया और कोई अश्लील बात या गुनाह नहीं किया, वह उस दिन की तरह लौटता है जिस दिन उसकी माँ ने उसे जन्म दिया था।\"\n— बुख़ारी और मुस्लिम';

  @override
  String get hadith73 =>
      '\"एक उमरा से दूसरे उमरा तक दोनों के बीच के गुनाहों का कफ़्फ़ारा है।\"\n— बुख़ारी और मुस्लिम';

  @override
  String get hadith74 =>
      '\"अँधेरी रात के टुकड़ों जैसी आज़माइशें आने से पहले नेक कामों की ओर दौड़ो।\"\n— मुस्लिम';

  @override
  String get hadith75 =>
      '\"फज्र की दो रकातें दुनिया और उसमें जो कुछ है उससे बेहतर हैं।\"\n— मुस्लिम';

  @override
  String get hadith77 =>
      '\"अगर तुम अल्लाह पर उस तरह भरोसा करते जैसा करना चाहिए, तो वह तुम्हें ऐसे रिज़्क़ देता जैसे पक्षियों को देता है।\"\n— तिर्मिज़ी';

  @override
  String get hadith78 =>
      '\"जो व्यक्ति किसी बीमार की देखभाल करने जाता है, वह लौटने तक जन्नत के बाग़ में रहता है।\"\n— मुस्लिम';

  @override
  String get hadith79 =>
      '\"सलाम फैलाओ, भूखों को खिलाओ और रात को नमाज़ पढ़ो जब लोग सोए हों — तुम शांति से जन्नत में दाख़िल होगे।\"\n— तिर्मिज़ी';

  @override
  String get hadith80 =>
      '\"जो लोगों का शुक्र नहीं करता, वह अल्लाह का भी शुक्र नहीं करता।\"\n— तिर्मिज़ी';

  @override
  String get hadith81 =>
      '\"ईर्ष्या केवल दो मामलों में जायज़ है: वह व्यक्ति जिसे अल्लाह ने धन दिया और वह उसे सत्य के मार्ग में ख़र्च करता है, और वह व्यक्ति जिसे अल्लाह ने हिक्मत दी और वह उससे फ़ैसला करता है और सिखाता है।\"\n— बुख़ारी व मुस्लिम';

  @override
  String get hadith82 =>
      '\"इंसान अपने दोस्त के दीन पर होता है, इसलिए तुम में से हर कोई देखे कि वह किससे दोस्ती करता है।\"\n— अबू दाऊद व तिर्मिज़ी';

  @override
  String get hadith85 =>
      '\"जो अल्लाह की ख़ातिर कोई चीज़ छोड़ देता है, अल्लाह उसे उससे बेहतर चीज़ देता है।\"\n— अहमद';

  @override
  String get hadith86 =>
      '\"जो व्यक्ति किसी मुसलमान के दोष छुपाता है, अल्लाह क़ियामत के दिन उसके दोष छुपाएगा।\"\n— बुख़ारी व मुस्लिम';

  @override
  String get hadith87 =>
      '\"दुनिया में ऐसे रहो जैसे तुम अजनबी हो या मुसाफ़िर।\"\n— बुख़ारी';

  @override
  String get hadith88 =>
      '\"जो व्यक्ति किसी मुश्किल में फंसे हुए के लिए आसानी करता है, अल्लाह दुनिया और आख़िरत में उसके लिए आसानी करेगा।\"\n— मुस्लिम';

  @override
  String get hadith89 =>
      '\"अमल का दारोमदार नीयतों पर है।\"\n— बुख़ारी व मुस्लिम';

  @override
  String get hadith90 =>
      '\"बदगुमानी से बचो क्योंकि बदगुमानी सबसे झूठी बात है।\"\n— बुख़ारी व मुस्लिम';

  @override
  String get hadith93 =>
      '\"मिलकर खाओ और अल्लाह का नाम लो, तुम्हारे लिए बरकत होगी।\"\n— अबू दाऊद';

  @override
  String get hadith94 =>
      '\"सबसे अच्छी मजलिस वह है जो सबसे कुशादा हो।\"\n— अबू दाऊद';

  @override
  String get hadith95 => '\"माफ़ करो, तुम्हें भी माफ़ किया जाएगा।\"\n— अहमद';

  @override
  String get hadith96 =>
      '\"अपना ऊँट बाँधो, फिर अल्लाह पर भरोसा करो।\"\n— तिर्मिज़ी';

  @override
  String get hadith97 =>
      '\"मोमिन का मामला अजीब है — उसकी हर चीज़ उसके लिए ख़ैर है।\"\n— मुस्लिम';

  @override
  String get hadith98 =>
      '\"मुसलमान मुसलमान का भाई है: वह उस पर ज़ुल्म नहीं करता, न उसे छोड़ता है, न उसे तुच्छ समझता है।\"\n— मुस्लिम';
}
