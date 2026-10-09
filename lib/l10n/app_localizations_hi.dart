// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get repeatsOnDaysHint => 'चुने हुए दिनों पर दोहराया जाता है';

  @override
  String get newDayStarted => 'एक नया दिन शुरू हो गया है';

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
  String get tabChallenge => 'चैलेंज';

  @override
  String get tabInsights => 'आँकड़े';

  @override
  String get insightsTitle => 'आँकड़े';

  @override
  String get insightsOverview => 'सारांश';

  @override
  String get insightsDaily => 'दैनिक';

  @override
  String get insightsArchive => 'आर्काइव';

  @override
  String get archivedEmpty =>
      'यहाँ अभी कुछ नहीं है। ट्रैकिंग से हटाए गए अमल यहाँ दिखते हैं, ताकि आप उन्हें वापस ला सकें।';

  @override
  String archivedStoppedOn(String date) {
    return '$date को हटाया गया';
  }

  @override
  String get archivedRestore => 'वापस लाएँ';

  @override
  String archivedRestored(String title) {
    return '\"$title\" फिर से आपकी सूची में आ गया।';
  }

  @override
  String get newChallenge => 'नया चैलेंज';

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
  String get ok => 'ठीक है';

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
  String get categoryQuran => 'क़ुरआन';

  @override
  String get categoryCharity => 'सदक़ा';

  @override
  String get categorySunnah => 'सुन्नत';

  @override
  String get timesPerPeriod => 'हर अवधि में कितनी बार';

  @override
  String get custom => 'कस्टम';

  @override
  String get customTargetHint => 'जैसे 50';

  @override
  String get targetAny => 'कोई भी';

  @override
  String get targetAnyHelp =>
      'कोई लक्ष्य नहीं — जितना भी करें, पूरा माना जाएगा';

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
  String get repeatMode => 'दोहराव';

  @override
  String get onSetDays => 'तय दिनों पर';

  @override
  String get onSetDates => 'तय तारीख़ों पर';

  @override
  String get anyDayMode => 'कोई भी दिन';

  @override
  String get datesOfMonth => 'तारीख़ें';

  @override
  String get daysPerWeekQuestion => 'सप्ताह में कितने दिन?';

  @override
  String get daysPerMonthQuestion => 'महीने में कितने दिन?';

  @override
  String get pickAtLeastOneDay => 'कम से कम एक दिन चुनें';

  @override
  String get pickAtLeastOneDate => 'कम से कम एक तारीख़ चुनें';

  @override
  String get previewDaily => 'हर दिन दोहराया जाता है';

  @override
  String previewWeeklyDays(String days) {
    return 'हर $days को दोहराया जाता है';
  }

  @override
  String previewWeeklyAny(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count दिन',
      one: 'एक दिन',
    );
    return 'सप्ताह में किसी भी $_temp0 दोहराया जाता है';
  }

  @override
  String previewMonthlyDates(int count, String dates) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'हर महीने की $dates तारीख़ों को दोहराया जाता है',
      one: 'हर महीने की $dates तारीख़ को दोहराया जाता है',
    );
    return '$_temp0';
  }

  @override
  String previewMonthlyAny(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count दिन',
      one: 'एक दिन',
    );
    return 'महीने में किसी भी $_temp0 दोहराया जाता है';
  }

  @override
  String get anyDate => 'कोई भी';

  @override
  String get anyDateHint => 'कोई भी तारीख़ (आज दिखेगी, अगले दिन छुप जाएगी)';

  @override
  String onlyDateHint(String date) {
    return 'केवल $date को';
  }

  @override
  String get startPreChecked => 'पहले से टिक लगा हुआ';

  @override
  String get startPreCheckedSubtitle =>
      'नई अवधि शुरू होते ही यह अमल अपने-आप पूरा माना जाएगा, जब तक आप टिक न हटाएँ।';

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
  String get settingsReminders => 'रिमाइंडर';

  @override
  String get dailyReminder => 'दैनिक रिमाइंडर';

  @override
  String get dailyReminderSubtitle => 'अपने अमल ट्रैक करने की एक हल्की-सी याद';

  @override
  String get dailyReminderTimeLabel => 'रिमाइंडर का समय';

  @override
  String get dailyReminderBody => 'थोड़ा समय निकालकर आज के अमल ट्रैक कर लें।';

  @override
  String get groupByCategory => 'श्रेणी के अनुसार';

  @override
  String get flatList => 'सीधी सूची';

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
  String progressOf(String progress, String target) {
    return '$target में से $progress पूर्ण';
  }

  @override
  String progressOpen(String count) {
    return '$count पूर्ण';
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
  String get amalTasbih => 'तस्बीह 33x';

  @override
  String get amalIstighfar => 'इस्तिग़फ़ार';

  @override
  String get amalSurahKahf => 'सूरह कहफ़';

  @override
  String get amalSadaqah => 'सदक़ा';

  @override
  String get amalTahajjud => 'तहज्जुद';

  @override
  String get amalDuha => 'चाश्त की नमाज़';

  @override
  String get amalFajr => 'फ़ज्र';

  @override
  String get amalDhuhr => 'ज़ुहर';

  @override
  String get amalAsr => 'अस्र';

  @override
  String get amalMaghrib => 'मग़रिब';

  @override
  String get amalIsha => 'ईशा';

  @override
  String get amalMorningAdhkar => 'सुबह के अज़कार';

  @override
  String get amalEveningAdhkar => 'शाम के अज़कार';

  @override
  String get amalTilawah => 'तिलावत';

  @override
  String get settingsTitle => 'सेटिंग्स';

  @override
  String settingsLoadError(String error) {
    return 'सेटिंग्स लोड करने में विफल:\n$error';
  }

  @override
  String get sectionDayBoundary => 'दिन की सीमा';

  @override
  String get rolloverHour => 'दिन बदलने का समय';

  @override
  String get rolloverAtMidnight => 'दिन आधी रात को ख़त्म होता है।';

  @override
  String rolloverSubtitle(String time) {
    return 'कल के अमल $time तक बदले जा सकते हैं।';
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
      'आपके दीनी अमल का निजी हिसाब-किताब। सारा डेटा इसी डिवाइस पर रहता है।';

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
  String get totalCompletions => 'कुल बार पूरा किया';

  @override
  String get streakCurrent => 'मौजूदा';

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
      'अभी कोई अमल नहीं है। \"आज\" में एक अमल जोड़कर ट्रैकिंग शुरू करें।';

  @override
  String get statsToday => 'आज';

  @override
  String get statsThisWeek => 'इस सप्ताह';

  @override
  String get statsThisMonth => 'इस महीने';

  @override
  String get statsAllTime => 'अब तक';

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
  String get statsVsPrevious => 'पिछली अवधि से';

  @override
  String get statsByCategory => 'श्रेणी के अनुसार';

  @override
  String get statsPerAmal => 'प्रति अमल';

  @override
  String get statsTotalCaption => 'कुल';

  @override
  String statsDaysFraction(String done, String expectedText, num expected) {
    String _temp0 = intl.Intl.pluralLogic(
      expected,
      locale: localeName,
      other: 'दिन',
      one: 'दिन',
    );
    return '$done/$expectedText $_temp0';
  }

  @override
  String get statsCurrentStreak => 'मौजूदा स्ट्रीक';

  @override
  String get statsBestStreak => 'सबसे लंबी स्ट्रीक';

  @override
  String get statsTotalDays => 'कुल दिन';

  @override
  String get statsConsistency => 'नियमितता';

  @override
  String get statsLast5Weeks => 'पिछले 5 सप्ताह';

  @override
  String get statsDailyBreakdown => 'रोज़ का ब्योरा';

  @override
  String get statsCompletionRate => 'पूर्णता दर';

  @override
  String get statsAmountPerDay => 'हर दिन की मात्रा';

  @override
  String statsCountTotal(String count) {
    return 'कुल $count';
  }

  @override
  String statsCountAvg(String amount) {
    return 'औसत $amount/दिन';
  }

  @override
  String statsCountBest(String count, String day) {
    return 'सबसे ज़्यादा $count · $day';
  }

  @override
  String get statsFilterTime => 'समय';

  @override
  String get statsFilterCategory => 'श्रेणी';

  @override
  String get statsFilterAmal => 'अमल';

  @override
  String get statsStreaks => 'स्ट्रीक';

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
      '\"अल्लाह को सबसे पसंदीदा अमल वह है जो लगातार किया जाए, चाहे थोड़ा ही हो।\"\n— बुख़ारी व मुस्लिम';

  @override
  String get hadith2 =>
      '\"जब इंसान मर जाता है तो उसके अमल का सिलसिला रुक जाता है, सिवाय तीन के: सदक़ा-ए-जारिया, फ़ायदेमंद इल्म, या नेक औलाद जो उसके लिए दुआ करे।\"\n— मुस्लिम';

  @override
  String get hadith3 =>
      '\"जिसने दो ठंडी नमाज़ें (फ़ज्र और अस्र) पढ़ीं, वह जन्नत में दाख़िल होगा।\"\n— बुख़ारी';

  @override
  String get hadith4 =>
      '\"अल्लाह तुम्हारी शक्ल और दौलत नहीं देखता, बल्कि वह तुम्हारे दिलों और अमलों को देखता है।\"\n— मुस्लिम';

  @override
  String get hadith6 =>
      '\"आसानी करो, सख़्ती न करो; ख़ुशख़बरी सुनाओ, नफ़रत न दिलाओ।\"\n— बुख़ारी';

  @override
  String get hadith7 =>
      '\"जो इल्म की तलाश में रास्ता चलता है, अल्लाह उसके लिए जन्नत का रास्ता आसान कर देता है।\"\n— मुस्लिम';

  @override
  String get hadith8 => '\"सदक़ा माल को कम नहीं करता।\"\n— मुस्लिम';

  @override
  String get hadith9 =>
      '\"ताक़तवर मोमिन कमज़ोर मोमिन से बेहतर और अल्लाह को ज़्यादा महबूब है, जबकि दोनों में भलाई है।\"\n— मुस्लिम';

  @override
  String get hadith10 =>
      '\"जो दिन में सौ बार \'सुब्हानल्लाहि व बिहम्दिही\' कहे, उसके गुनाह माफ़ कर दिए जाते हैं, चाहे वे समुद्र के झाग के बराबर हों।\"\n— बुख़ारी व मुस्लिम';

  @override
  String get hadith12 =>
      '\"जो हर फ़र्ज़ नमाज़ के बाद आयतुल कुर्सी पढ़े, उसे जन्नत में दाख़िल होने से सिर्फ़ मौत ही रोकती है।\"\n— नसई';

  @override
  String get hadith13 => '\"अच्छी बात सदक़ा है।\"\n— बुख़ारी व मुस्लिम';

  @override
  String get hadith14 =>
      '\"जो अल्लाह और आख़िरत के दिन पर ईमान रखता है, वह भली बात कहे या चुप रहे।\"\n— बुख़ारी व मुस्लिम';

  @override
  String get hadith15 =>
      '\"बेवा या मिस्कीन की देखभाल करने वाला अल्लाह की राह में जिहाद करने वाले की तरह है।\"\n— बुख़ारी व मुस्लिम';

  @override
  String get hadith16 =>
      '\"अपने भाई को देखकर मुस्कुराना सदक़ा है।\"\n— तिर्मिज़ी';

  @override
  String get hadith17 =>
      '\"तुम में सबसे बेहतर वह है जो क़ुरआन सीखे और सिखाए।\"\n— बुख़ारी';

  @override
  String get hadith18 =>
      '\"किसी ने अपने हाथ की कमाई से बेहतर खाना कभी नहीं खाया।\"\n— बुख़ारी';

  @override
  String get hadith19 =>
      '\"अल्लाह नर्मी करने वाला है और हर मामले में नर्मी पसंद करता है।\"\n— बुख़ारी व मुस्लिम';

  @override
  String historyDayCompleted(String completed, String total) {
    return '$total में से $completed पूर्ण';
  }

  @override
  String get settingsSchedule => 'शेड्यूल';

  @override
  String get settingsAppearance => 'रंगरूप';

  @override
  String get settingsAboutTagline => 'आपका रोज़ का दीनी साथी';

  @override
  String get settingsRolloverSub => 'दिन कब बदलता है';

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
      '\"जो रमज़ान के रोज़े ईमान और सवाब की उम्मीद से रखे, उसके पिछले गुनाह माफ़ कर दिए जाएँगे।\"\n— बुख़ारी व मुस्लिम';

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
      '\"भूखों को खाना खिलाओ, बीमारों की इयादत करो और क़ैदियों को आज़ाद करो।\"\n— बुख़ारी';

  @override
  String get hadith38 =>
      '\"ताक़तवर वह नहीं जो कुश्ती में जीते, बल्कि वह है जो ग़ुस्से में ख़ुद पर क़ाबू रखे।\"\n— बुख़ारी व मुस्लिम';

  @override
  String get hadith40 =>
      '\"हर नमाज़ के बाद तैंतीस-तैंतीस बार \'सुब्हानल्लाह\', \'अल्हम्दुलिल्लाह\' और \'अल्लाहु अकबर\' कहो।\"\n— मुस्लिम';

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
      '\"फ़र्ज़ नमाज़ों के बाद सबसे अफ़ज़ल नमाज़ रात की नमाज़ है।\"\n— मुस्लिम';

  @override
  String get hadith46 =>
      '\"सदक़ा गुनाहों को ऐसे मिटाता है जैसे पानी आग बुझाता है।\"\n— तिर्मिज़ी';

  @override
  String get hadith47 =>
      '\"सिला-ए-रहमी करने वाला वह नहीं जो बदले में करे, बल्कि वह है जो रिश्ता तोड़े जाने पर भी जोड़े।\"\n— बुख़ारी';

  @override
  String get hadith49 =>
      '\"जो खाना खाकर कहे: \'तमाम तारीफ़ें उस अल्लाह के लिए हैं जिसने मुझे यह खिलाया और मेरी किसी ताक़त और क़ुव्वत के बिना मुझे यह रोज़ी दी,\' उसके पिछले गुनाह माफ़ कर दिए जाएँगे।\"\n— तिर्मिज़ी';

  @override
  String get hadith53 =>
      '\"किसी भी नेकी को छोटा मत समझो, चाहे वह अपने भाई से मुस्कुराते चेहरे से मिलना ही हो।\"\n— मुस्लिम';

  @override
  String get hadith54 =>
      '\"तुममें से सबसे अच्छा वह है जो अपने परिवार के लिए सबसे अच्छा है।\"\n— तिर्मिज़ी';

  @override
  String get hadith55 =>
      '\"जो रात को सूरह बक़रह की आख़िरी दो आयतें पढ़ ले, वे उसके लिए काफ़ी होंगी।\"\n— बुख़ारी व मुस्लिम';

  @override
  String get hadith56 =>
      '\"दुनिया एक सामान है, और उसका सबसे बेहतर सामान नेक बीवी है।\"\n— मुस्लिम';

  @override
  String get hadith57 =>
      '\"तीन दुआएँ रद्द नहीं होतीं: रोज़ेदार की दुआ, इंसाफ़ करने वाले हाकिम की दुआ और मज़लूम की दुआ।\"\n— तिर्मिज़ी';

  @override
  String get hadith58 =>
      '\"जो मुझ पर एक बार दुरूद भेजे, अल्लाह उस पर दस रहमतें भेजता है।\"\n— मुस्लिम';

  @override
  String get hadith65 => '\"मोमिन मोमिन का आईना है।\"\n— अबू दाऊद';

  @override
  String get hadith66 =>
      '\"सच्चाई नेकी की तरफ़ ले जाती है, और नेकी जन्नत की तरफ़ ले जाती है।\"\n— बुख़ारी व मुस्लिम';

  @override
  String get hadith67 =>
      '\"अमानत उसे लौटाओ जिसने तुम पर भरोसा किया, और जिसने तुम्हारे साथ ख़ियानत की उसके साथ ख़ियानत मत करो।\"\n— अबू दाऊद व तिर्मिज़ी';

  @override
  String get hadith68 =>
      '\"किसी मुसलमान को जो भी थकान, बीमारी, ग़म, दुख, तकलीफ़ या परेशानी पहुँचती है, यहाँ तक कि एक काँटा भी चुभ जाए, अल्लाह उसके बदले उसके कुछ गुनाह माफ़ कर देता है।\"\n— बुख़ारी व मुस्लिम';

  @override
  String get hadith69 =>
      '\"मुसलमान की अपने भाई के लिए उसकी ग़ैर-मौजूदगी में की गई दुआ हमेशा क़बूल होती है।\"\n— मुस्लिम';

  @override
  String get hadith70 =>
      '\"जो अल्लाह से तीन बार जन्नत माँगे, जन्नत कहती है: ऐ अल्लाह, इसे जन्नत में दाख़िल कर।\"\n— तिर्मिज़ी';

  @override
  String get hadith71 =>
      '\"रमज़ान के बाद सबसे अफ़ज़ल रोज़ा अल्लाह के महीने मुहर्रम का रोज़ा है।\"\n— मुस्लिम';

  @override
  String get hadith72 =>
      '\"जिसने हज किया और न कोई बेहयाई की बात की, न गुनाह किया, वह ऐसे लौटता है जैसे उस दिन था जिस दिन उसकी माँ ने उसे जन्म दिया था।\"\n— बुख़ारी व मुस्लिम';

  @override
  String get hadith73 =>
      '\"एक उमरा से दूसरा उमरा, दोनों के बीच के गुनाहों का कफ़्फ़ारा है।\"\n— बुख़ारी व मुस्लिम';

  @override
  String get hadith74 =>
      '\"अँधेरी रात के टुकड़ों जैसे फ़ित्ने आने से पहले नेक अमल में जल्दी करो।\"\n— मुस्लिम';

  @override
  String get hadith75 =>
      '\"फ़ज्र की दो रकअतें दुनिया और उसमें जो कुछ है, उससे बेहतर हैं।\"\n— मुस्लिम';

  @override
  String get hadith77 =>
      '\"अगर तुम अल्लाह पर वैसा भरोसा करो जैसा उसका हक़ है, तो वह तुम्हें ऐसे रिज़्क़ दे जैसे परिंदों को देता है।\"\n— तिर्मिज़ी';

  @override
  String get hadith78 =>
      '\"जो किसी बीमार की इयादत करता है, वह लौटने तक जन्नत के मेवे चुनता रहता है।\"\n— मुस्लिम';

  @override
  String get hadith79 =>
      '\"सलाम फैलाओ, भूखों को खाना खिलाओ और रात को जब लोग सो रहे हों, नमाज़ पढ़ो — तुम सलामती के साथ जन्नत में दाख़िल होगे।\"\n— तिर्मिज़ी';

  @override
  String get hadith80 =>
      '\"जो लोगों का शुक्र नहीं करता, वह अल्लाह का भी शुक्र नहीं करता।\"\n— तिर्मिज़ी';

  @override
  String get hadith81 =>
      '\"रश्क सिर्फ़ दो लोगों पर जायज़ है: एक वह जिसे अल्लाह ने माल दिया और वह उसे हक़ की राह में ख़र्च करता है, और दूसरा वह जिसे अल्लाह ने हिकमत दी और वह उसके ज़रिए फ़ैसले करता है और उसे सिखाता है।\"\n— बुख़ारी व मुस्लिम';

  @override
  String get hadith82 =>
      '\"इंसान अपने दोस्त के दीन पर होता है, इसलिए तुम में से हर कोई देखे कि वह किससे दोस्ती करता है।\"\n— अबू दाऊद व तिर्मिज़ी';

  @override
  String get hadith85 =>
      '\"जो अल्लाह की ख़ातिर कोई चीज़ छोड़ देता है, अल्लाह उसे उससे बेहतर चीज़ देता है।\"\n— अहमद';

  @override
  String get hadith86 =>
      '\"जो किसी मुसलमान के ऐब छुपाता है, अल्लाह क़यामत के दिन उसके ऐब छुपाएगा।\"\n— बुख़ारी व मुस्लिम';

  @override
  String get hadith87 =>
      '\"दुनिया में ऐसे रहो जैसे तुम अजनबी हो या मुसाफ़िर।\"\n— बुख़ारी';

  @override
  String get hadith88 =>
      '\"जो किसी मुश्किल में पड़े इंसान के लिए आसानी करे, अल्लाह दुनिया और आख़िरत में उसके लिए आसानी करेगा।\"\n— मुस्लिम';

  @override
  String get hadith89 =>
      '\"अमलों का दारोमदार नीयतों पर है।\"\n— बुख़ारी व मुस्लिम';

  @override
  String get hadith90 =>
      '\"बदगुमानी से बचो क्योंकि बदगुमानी सबसे झूठी बात है।\"\n— बुख़ारी व मुस्लिम';

  @override
  String get hadith93 =>
      '\"मिलकर खाओ और अल्लाह का नाम लो, तुम्हारे लिए बरकत होगी।\"\n— अबू दाऊद';

  @override
  String get hadith94 =>
      '\"जब भी कोई क़ौम बैठकर अल्लाह का ज़िक्र करती है, फ़रिश्ते उन्हें घेर लेते हैं, रहमत उन्हें ढाँप लेती है और उन पर सकीनत नाज़िल होती है।\"\n— मुस्लिम';

  @override
  String get hadith95 =>
      '\"माफ़ करने से अल्लाह बंदे की इज़्ज़त ही बढ़ाता है।\"\n— मुस्लिम';

  @override
  String get hadith96 =>
      '\"अपना ऊँट बाँधो, फिर अल्लाह पर भरोसा करो।\"\n— तिर्मिज़ी';

  @override
  String get hadith97 =>
      '\"मोमिन का मामला भी अजीब है — उसके हर मामले में उसके लिए भलाई है।\"\n— मुस्लिम';

  @override
  String get hadith98 =>
      '\"मुसलमान मुसलमान का भाई है: न वह उस पर ज़ुल्म करता है, न उसे बेसहारा छोड़ता है, न उसे हक़ीर समझता है।\"\n— मुस्लिम';

  @override
  String get delete => 'मिटाएँ';

  @override
  String get remove => 'हटाएँ';

  @override
  String get deleteAmalConfirmTitle => 'ट्रैकिंग से हटाएँ?';

  @override
  String deleteAmalConfirmBody(String title) {
    return '\"$title\" आपकी सूची से छिपा दिया जाएगा। आपका इतिहास सुरक्षित रहेगा।';
  }

  @override
  String get genericError => 'कुछ गड़बड़ हो गई। कृपया फिर से कोशिश करें।';

  @override
  String get notificationChannelName => 'अमल रिमाइंडर';

  @override
  String get notificationChannelDescription =>
      'आपके ट्रैक किए गए अमल के लिए दैनिक रिमाइंडर।';

  @override
  String get invalidAmalId => 'अमान्य अमल आईडी';

  @override
  String get tutorialSettingsRow => 'Muhasaba कैसे इस्तेमाल करें';

  @override
  String get tutorialSkip => 'छोड़ें';

  @override
  String get tutorialNext => 'आगे';

  @override
  String get tutorialDone => 'हो गया';

  @override
  String get tutorialTapTitle => 'पूरा करने के लिए टैप करें';

  @override
  String get tutorialTapBody =>
      'एक टैप से अमल आज के लिए पूरा हो जाता है। वापस लेने के लिए फिर से टैप करें।';

  @override
  String get tutorialEditTitle => 'संपादित करने के लिए डबल-टैप करें';

  @override
  String get tutorialEditBody =>
      'संपादन फ़ॉर्म खुलता है — नाम बदलें, या यह कितनी बार दोहराया जाए, यह तय करें।';

  @override
  String get tutorialReorderTitle => 'क्रम बदलने के लिए दबाकर रखें';

  @override
  String get tutorialReorderBody =>
      'पंक्ति को दबाकर रखें, फिर खींचें। आपका क्रम सहेजा जाता है।';

  @override
  String get tutorialRemoveTitle => 'हटाने के लिए स्वाइप करें';

  @override
  String get tutorialRemoveBody =>
      'पंक्ति को एक तरफ़ स्वाइप करके आज के लिए छुपाएँ, या उसकी ट्रैकिंग बंद करें।';

  @override
  String get tutorialCountTitle => 'बार-बार की गिनती';

  @override
  String get tutorialCountBody =>
      'जिन अमल का लक्ष्य एक से ज़्यादा बार है, उनमें हर बार के लिए − और + दबाएँ।';

  @override
  String get tutorialViewTitle => 'समूह या सीधी सूची';

  @override
  String get tutorialViewBody =>
      'श्रेणी के अनुसार समूह और एक सीधी सूची के बीच बदलें।';

  @override
  String get tutorialChallengeLogTitle => 'आज दर्ज करने के लिए टैप करें';

  @override
  String get tutorialChallengeLogBody =>
      'एक टैप से आज दर्ज हो जाता है। गिनती वाले चैलेंज में हर टैप एक क़दम जोड़ता है।';

  @override
  String get tutorialChallengeOpenTitle => 'खोलने के लिए डबल-टैप करें';

  @override
  String get tutorialChallengeOpenBody =>
      'चैलेंज खुलता है — हर दिन देखें, छूटा हुआ दिन ठीक करें, या उसे मिटाएँ।';

  @override
  String get tutorialChallengeDeleteBody =>
      'चैलेंज मिटाने के लिए कार्ड को एक तरफ़ स्वाइप करें।';

  @override
  String get tutorialChallengeAmountTitle => 'सटीक मात्रा दर्ज करना';

  @override
  String get tutorialChallengeAmountBody =>
      'एक-एक करके बदलने के लिए − और + दबाएँ, या संख्या पर टैप करके सटीक मात्रा लिखें।';

  @override
  String get challengeOpenDetailsAction => 'चैलेंज का ब्योरा खोलें';

  @override
  String get challengesActive => 'चालू';

  @override
  String get challengesPast => 'पिछले';

  @override
  String challengeJustFinished(int count, String title) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count चैलेंज समाप्त हुए — सबसे हाल में $title',
      one: '$title समाप्त हुआ',
    );
    return '$_temp0';
  }

  @override
  String get challengeSectionEnded => 'समाप्त';

  @override
  String get challengesPastEmpty => 'अभी कुछ समाप्त नहीं हुआ।';

  @override
  String get challengesEmptyTitle => 'अभी कोई चैलेंज नहीं';

  @override
  String get challengesEmptyBody =>
      'अपने लिए एक लक्ष्य तय करें — जैसे 7 दिनों में 20 रकअत — और उसे यहाँ ट्रैक करें।';

  @override
  String get editChallenge => 'चैलेंज संपादित करें';

  @override
  String get deleteChallenge => 'चैलेंज मिटाएँ';

  @override
  String get deleteChallengeConfirm =>
      'यह चैलेंज और इसकी सारी दर्ज प्रगति मिटा दें?';

  @override
  String get challengeShapeQuestion => 'यह किस तरह का चैलेंज है?';

  @override
  String get challengeShapeTotal => 'एक कुल लक्ष्य';

  @override
  String get challengeShapeTotalBody =>
      '1000 दुरूद, 30 पारे। आप मात्रा दर्ज करते हैं और गिनती बढ़ती जाती है।';

  @override
  String get challengeShapeStreak => 'रोज़ाना की स्ट्रीक';

  @override
  String get challengeShapeStreakBody =>
      'तहज्जुद, जमात से फ़ज्र। दिन में एक टिक, मात्रा से फ़र्क़ नहीं पड़ता।';

  @override
  String get challengeTargetLabel => 'लक्ष्य';

  @override
  String get challengeTargetRequired => 'शून्य से बड़ा लक्ष्य दर्ज करें';

  @override
  String get challengeUnitLabel => 'इकाई (वैकल्पिक)';

  @override
  String get challengeUnitHint => 'रकअत, पन्ने, बार';

  @override
  String get challengeOneTapAdds => 'एक टैप में जुड़ेगा';

  @override
  String get challengeHowManyDays => 'कितने दिन?';

  @override
  String get challengeReachHowMuch => 'कहाँ तक पहुँचना है?';

  @override
  String get challengeSpreadOver => 'अवधि';

  @override
  String get challengeSpreadEveryDay => 'हर दिन';

  @override
  String get challengeSpreadLonger => 'लंबी अवधि';

  @override
  String get challengeByWhen => 'कब तक?';

  @override
  String get challengeWindowDuration => 'इतने दिनों में';

  @override
  String get challengeByDate => 'एक तारीख़ तक';

  @override
  String challengePlanRange(String start, String end) {
    return '$start से $end';
  }

  @override
  String challengePlanExact(String start, String end) {
    return '$start से $end · रोज़ एक, हर दिन';
  }

  @override
  String challengePlanSlack(
    String start,
    String end,
    String target,
    String window,
    String slack,
  ) {
    return '$start से $end · $window दिनों में $target — $slack छोड़ सकते हैं';
  }

  @override
  String challengePlanRate(String start, String end, String rate) {
    return '$start से $end · रोज़ लगभग $rate';
  }

  @override
  String challengePlanOpen(String start) {
    return '$start से शुरू · कोई समय-सीमा नहीं';
  }

  @override
  String challengeTooTight(String target, String window) {
    return '$target दिन $window दिनों में नहीं समा सकते — स्ट्रीक में रोज़ एक ही दिन गिना जाता है।';
  }

  @override
  String challengeDurationLabel(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count दिन',
      one: '$count दिन',
    );
    return '$_temp0';
  }

  @override
  String get challengeStartDate => 'शुरू';

  @override
  String get challengeEndDate => 'समाप्त';

  @override
  String challengeProgressCount(String done, String target, String unit) {
    return '$target $unit में से $done';
  }

  @override
  String challengeProgressPlain(String done, String target) {
    return '$target में से $done';
  }

  @override
  String challengeProgressDays(String done, String target) {
    return '$target दिनों में से $done';
  }

  @override
  String challengeDaysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count दिन बाक़ी',
      one: '$count दिन बाक़ी',
    );
    return '$_temp0';
  }

  @override
  String get challengeNoDeadline => 'कोई समय-सीमा नहीं';

  @override
  String challengeOnTrack(String rate) {
    return 'सही रफ़्तार · $rate/दिन';
  }

  @override
  String challengeBehind(String rate) {
    return 'पीछे · $rate/दिन चाहिए';
  }

  @override
  String challengeLastDay(String remaining) {
    return 'आख़िरी दिन · $remaining बाक़ी';
  }

  @override
  String get challengeReached => 'लक्ष्य पूरा';

  @override
  String get challengeCompleted => 'पूर्ण';

  @override
  String challengeEnded(String done, String target) {
    return 'समाप्त · $done/$target';
  }

  @override
  String get challengeExpiredTitle => 'चैलेंज समाप्त';

  @override
  String challengeExpiredBody(String title, String done, String target) {
    return '$title $target में से $done पर समाप्त हुआ।';
  }

  @override
  String get challengeExtend => 'अवधि बढ़ाएँ';

  @override
  String get challengeRestart => 'फिर से शुरू करें';

  @override
  String get challengeArchive => 'आर्काइव करें';

  @override
  String get challengeDailyBreakdown => 'रोज़ का रिकॉर्ड';

  @override
  String challengeNudgeBody(String title, String rate) {
    return '$title: समय पर पूरा करने के लिए रोज़ $rate।';
  }

  @override
  String challengeLastDayBody(String title, String remaining) {
    return '$title: आख़िरी दिन — $remaining बाक़ी।';
  }

  @override
  String get challengeGroupGoal => 'आपका लक्ष्य';

  @override
  String get challengeGroupShape => 'प्रकार';

  @override
  String get challengeGroupPlan => 'योजना';

  @override
  String get challengeGroupReminders => 'रिमाइंडर';

  @override
  String get challengeStartFromTemplate => 'टेम्पलेट से शुरू करें';

  @override
  String get challengeTemplateBlank => 'खाली';

  @override
  String get challengePreview => 'पूर्वावलोकन';

  @override
  String get challengeTmplTahajjud => '40 रातें तहज्जुद';

  @override
  String get challengeTmplSalawat => '1000 दुरूद';

  @override
  String get challengeTmplKhatm => '30 दिन में क़ुरआन ख़त्म';

  @override
  String get challengeTmplFajrJamaah => '30 दिन फ़ज्र जमात से';

  @override
  String get challengeTmplSadaqah => '30 दिन सदक़ा';

  @override
  String get listSeparator => ' · ';

  @override
  String get tierRafiq => 'रफ़ीक़';

  @override
  String get tierNasir => 'नासिर';

  @override
  String get tierMuhsin => 'मुहसिन';

  @override
  String get tierAnsar => 'अंसार';

  @override
  String get tierRafiqMeaning => 'साथी';

  @override
  String get tierNasirMeaning => 'सहायक';

  @override
  String get tierMuhsinMeaning => 'उपकारी';

  @override
  String get tierAnsarMeaning => 'मददगार';

  @override
  String get supportCardBody =>
      'मुफ़्त, बिना विज्ञापन और बिना अकाउंट के। आप चाहें तो थोड़ी-सी राशि से इसके विकास में सहयोग कर सकते हैं — जितनी चाहें, जब चाहें।';

  @override
  String get supportCta => 'Muhasaba को सहयोग दें';

  @override
  String get supportAgain => 'फिर से सहयोग दें';

  @override
  String get supporterThanks =>
      'जज़ाकुमुल्लाहु ख़ैरन — इंशाअल्लाह Muhasaba मुफ़्त और विज्ञापन-मुक्त रहेगा।';

  @override
  String supporterSince(String tier, String month) {
    return '$month से $tier';
  }

  @override
  String get supportPromptTitle => 'Muhasaba को सहयोग दें';

  @override
  String get supportPromptBody =>
      'Muhasaba मुफ़्त है, बिना विज्ञापन और बिना अकाउंट के। आप चाहें तो थोड़ी-सी राशि से इसके विकास में सहयोग कर सकते हैं — जितनी चाहें, जब चाहें। इसके बिना भी हर फ़ीचर खुला है।';

  @override
  String get supportPromptNow => 'अभी सहयोग दें';

  @override
  String get supportPromptLater => 'बाद में याद दिलाएँ';

  @override
  String get supportPromptNever => 'दोबारा न पूछें';

  @override
  String get tipSheetTitle => 'Muhasaba को सहयोग दें';

  @override
  String get tipSheetBody =>
      'कोई भी राशि चुनें, जितनी बार चाहें। यह राशि ऐप के रख-रखाव पर ख़र्च होती है — इंशाअल्लाह यह मुफ़्त और विज्ञापन-मुक्त रहेगा। धन्यवाद के रूप में, सेटिंग्स में आपको सहयोगी के तौर पर दिखाया जाएगा।';

  @override
  String tipSheetSupporterLine(String tier) {
    return '$tier — जज़ाकुमुल्लाहु ख़ैरन।';
  }

  @override
  String get tipSheetSupporterAgain => 'जब चाहें फिर से सहयोग दें।';

  @override
  String tipSheetStoreNote(String store) {
    return 'भुगतान $store के ज़रिए होता है — आपके भुगतान की जानकारी हम कभी नहीं देखते।';
  }

  @override
  String get tipSheetOtherWays => 'आपके लिए सही विकल्प नहीं दिख रहा?';

  @override
  String get tipSheetWriteToUs => 'हमें लिखें';

  @override
  String get supportEmailBody =>
      'अस्सलामु अलैकुम,\n\nमुझे सीधे Muhasaba के विकास में सहयोग देना है।\n\nदेश:\nकैसे भेजना है:\nराशि (वैकल्पिक):';

  @override
  String tipBusy(String store) {
    return '$store खुल रहा है…';
  }

  @override
  String get tipThanks =>
      'जज़ाकुमुल्लाहु ख़ैरन — अल्लाह आपकी ओर से क़बूल फ़रमाए।';

  @override
  String get tipDone => 'हो गया';

  @override
  String get tipFailed => 'ख़रीदारी पूरी नहीं हो सकी। कोई पैसा नहीं कटा।';

  @override
  String tipPending(String store) {
    return 'आपका भुगतान $store पर अभी लंबित है — पुष्टि होते ही आपका बैज जोड़ दिया जाएगा।';
  }

  @override
  String get tipUnavailable => 'इस डिवाइस पर अभी ख़रीदारी उपलब्ध नहीं है।';

  @override
  String get optionSetJamaa => 'जमात';

  @override
  String get optionJamaaAlone => 'अकेले';

  @override
  String get optionJamaaHome => 'घर में जमात';

  @override
  String get optionJamaaMasjid => 'मस्जिद में जमात';

  @override
  String get optionSetOnTime => 'समय पर';

  @override
  String get optionOnTimeOnTime => 'समय पर';

  @override
  String get optionOnTimeLate => 'देर से';

  @override
  String get optionOnTimeQada => 'क़ज़ा';

  @override
  String get optionSetQuranSession => 'क़ुरआन सत्र';

  @override
  String get optionQuranRecited => 'तिलावत की';

  @override
  String get optionQuranMemorised => 'हिफ़्ज़ किया';

  @override
  String get optionQuranMeaning => 'तर्जुमे के साथ';

  @override
  String get optionQuranListened => 'सुना';

  @override
  String get optionSetSadaqahType => 'सदक़े का प्रकार';

  @override
  String get optionSadaqahMoney => 'पैसा';

  @override
  String get optionSadaqahFood => 'खाना';

  @override
  String get optionSadaqahTime => 'समय';

  @override
  String get optionSadaqahOther => 'अन्य';

  @override
  String get optionSetIntensity => 'तीव्रता';

  @override
  String get optionIntensityLight => 'हल्का';

  @override
  String get optionIntensityModerate => 'मध्यम';

  @override
  String get optionIntensityIntense => 'गहन';

  @override
  String get optionSetNewTitle => 'नया विकल्प सेट';

  @override
  String get optionSetEditTitle => 'विकल्प सेट संपादित करें';

  @override
  String get optionSetNameLabel => 'सेट का नाम';

  @override
  String get optionSetNameHint => 'जैसे जमात';

  @override
  String get optionsLabel => 'विकल्प';

  @override
  String get optionAdd => 'विकल्प जोड़ें';

  @override
  String optionHint(int index) {
    return 'विकल्प $index';
  }

  @override
  String optionsMaxReached(int max) {
    return 'अधिकतम $max विकल्प।';
  }

  @override
  String get optionSetPreviewLabel => 'पूर्वावलोकन — आज की पंक्ति';

  @override
  String optionSetKeptForHistory(String labels) {
    return 'इतिहास के लिए रखा गया: $labels';
  }

  @override
  String get optionSetDelete => 'सेट मिटाएँ';

  @override
  String get optionSetDeleteConfirm =>
      'इस सेट वाले अमल अब विकल्प नहीं दिखाएँगे। जो दिन आप पहले दर्ज कर चुके हैं, उनका चयन बना रहेगा।';

  @override
  String get optionSetNameRequired => 'सेट को एक नाम दें';

  @override
  String get optionsMinRequired => 'कम से कम दो विकल्प जोड़ें';

  @override
  String get optionSetNameTooLong => 'सेट का नाम बहुत लंबा है';

  @override
  String optionTooLong(int index) {
    return 'विकल्प $index बहुत लंबा है';
  }

  @override
  String get optionSetNone => 'कोई नहीं';

  @override
  String get optionSetNew => 'नया सेट';

  @override
  String get requireChoiceLabel => 'चयन ज़रूरी करें';

  @override
  String get requireChoiceHelp =>
      'जब तक कोई विकल्प न चुना जाए, पंक्ति पर टिक नहीं लगेगा';

  @override
  String get requireChoicePickSetFirst => 'पहले एक सेट चुनें';

  @override
  String get requireChoiceCountHelp => 'गिनती वाले अमल काउंटर से पूरे होते हैं';

  @override
  String optionsUsedOf(int used, int max) {
    return '$max में से $used विकल्प उपयोग किए गए।';
  }

  @override
  String get choiceNeeded => 'चयन ज़रूरी';

  @override
  String optionSelected(String label) {
    return '$label, चयनित';
  }

  @override
  String optionNotSelected(String label) {
    return '$label, चयनित नहीं';
  }

  @override
  String optionBreakdownTitle(String set) {
    return 'विकल्पों का ब्योरा — $set';
  }

  @override
  String optionBreakdownCaption(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'जिन $count बार चयन दर्ज हुआ, उनमें हिस्सा',
      one: 'जिस एक बार चयन दर्ज हुआ, उसमें हिस्सा',
    );
    return '$_temp0';
  }

  @override
  String optionNoChoiceRecorded(int none, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other: '$total पूर्ण दिनों',
      one: 'एक पूर्ण दिन',
    );
    return 'कोई चयन दर्ज नहीं — $_temp0 में से $none';
  }

  @override
  String get optionRemovedSuffix => 'हटाया गया';

  @override
  String get optionAllAmals => 'सभी';

  @override
  String optionScopedCaption(String amal, int count) {
    return '$amal · $count दर्ज';
  }

  @override
  String get optionBreakdownSectionTitle => 'विकल्पों का ब्योरा';

  @override
  String optionBreakdownSwipeHint(int count) {
    return '$count सेट · स्वाइप करें';
  }

  @override
  String get optionDetailEmpty => 'इस सेट के लिए अभी तक कोई चयन दर्ज नहीं हुआ।';

  @override
  String get optionDetailTrendHeading => 'समय के साथ बदलाव';

  @override
  String optionDetailTrendReadout(String option, String from, String to) {
    return 'पहले और आख़िरी सप्ताह के बीच $option का हिस्सा $from से $to हो गया।';
  }

  @override
  String get optionDetailByAmalHeading => 'अमल के अनुसार';

  @override
  String optionDetailByAmalReadout(
    String best,
    String bestShare,
    String worst,
    String worstShare,
  ) {
    return 'सबसे अधिक: $best ($bestShare); सबसे कम: $worst ($worstShare)।';
  }

  @override
  String get optionDetailRecordsHeading => 'रिकॉर्ड';

  @override
  String get optionDetailLongestRun => 'सबसे लंबी स्ट्रीक';

  @override
  String get optionDetailBestWeek => 'सबसे अच्छा सप्ताह';

  @override
  String get optionDetailCurrentRun => 'मौजूदा स्ट्रीक';

  @override
  String get optionDetailRecordsCaption =>
      'पिछले एक साल के आधार पर; ऊपर चुनी गई अवधि से स्वतंत्र।';

  @override
  String get optionDetailRecentDaysHeading => 'हाल के दिन';

  @override
  String optionDetailRecentDaysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'पिछले $count दिन',
      one: 'पिछला $count दिन',
    );
    return '$_temp0';
  }

  @override
  String get amalFivePrayers => 'पाँच वक़्त की नमाज़';

  @override
  String get amalJumuah => 'जुमे की नमाज़';

  @override
  String get amalWitr => 'वित्र';

  @override
  String get amalQada => 'क़ज़ा नमाज़ें';

  @override
  String get amalFajrSunnah => 'फ़ज्र की सुन्नतें';

  @override
  String get amalDhuhrSunnah => 'ज़ुहर की सुन्नतें';

  @override
  String get amalAsrSunnah => 'अस्र की सुन्नतें';

  @override
  String get amalMaghribSunnah => 'मग़रिब की सुन्नतें';

  @override
  String get amalIshaSunnah => 'ईशा की सुन्नतें';

  @override
  String get amalRawatib => 'सुन्नत-ए-मुअक्कदा';

  @override
  String get amalSiwak => 'मिसवाक';

  @override
  String get amalWuduSleep => 'सोने से पहले वुज़ू';

  @override
  String get amalFridayGhusl => 'जुमे का ग़ुस्ल';

  @override
  String get amalIshraq => 'इशराक़ की नमाज़';

  @override
  String get amalWuduPrayer => 'तहिय्यतुल वुज़ू';

  @override
  String get amalTahiyyah => 'तहिय्यतुल मस्जिद';

  @override
  String get amalEarlyJumuah => 'जुमे के लिए जल्दी जाना';

  @override
  String get amalAfterSalah => 'नमाज़ के बाद के अज़कार';

  @override
  String get amalAfterFajr => 'फ़ज्र के बाद के अज़कार';

  @override
  String get amalAfterDhuhr => 'ज़ुहर के बाद के अज़कार';

  @override
  String get amalAfterAsr => 'अस्र के बाद के अज़कार';

  @override
  String get amalAfterMaghrib => 'मग़रिब के बाद के अज़कार';

  @override
  String get amalAfterIsha => 'ईशा के बाद के अज़कार';

  @override
  String get amalAyatKursi => 'आयतुल कुर्सी';

  @override
  String get amalKursiFajr => 'फ़ज्र के बाद आयतुल कुर्सी';

  @override
  String get amalKursiDhuhr => 'ज़ुहर के बाद आयतुल कुर्सी';

  @override
  String get amalKursiAsr => 'अस्र के बाद आयतुल कुर्सी';

  @override
  String get amalKursiMaghrib => 'मग़रिब के बाद आयतुल कुर्सी';

  @override
  String get amalKursiIsha => 'ईशा के बाद आयतुल कुर्सी';

  @override
  String get amalSayyidIstighfar => 'सय्यिदुल इस्तिग़फ़ार';

  @override
  String get amalSalawat => 'दुरूद शरीफ़';

  @override
  String get amalSubhanallah => 'सुब्हानल्लाहि व बिहम्दिही';

  @override
  String get amalTahlil => 'ला इलाहा इल्लल्लाह';

  @override
  String get amalBedtimeAdhkar => 'सोने से पहले के अज़कार';

  @override
  String get amalFridaySalawat => 'जुमे के दिन दुरूद';

  @override
  String get amalHawqala => 'ला हौला व ला क़ुव्वता';

  @override
  String get amalTasbihFatimah => 'तस्बीह-ए-फ़ातिमा';

  @override
  String get amalWakingAdhkar => 'जागने के अज़कार';

  @override
  String get amalDuaAdhan => 'अज़ान के बाद की दुआ';

  @override
  String get amalDuaIqamah => 'अज़ान और इक़ामत के बीच दुआ';

  @override
  String get amalDuaSujood => 'सजदे में दुआ';

  @override
  String get amalDuaParents => 'माँ-बाप के लिए दुआ';

  @override
  String get amalDuaOthers => 'दूसरों के लिए दुआ';

  @override
  String get amalFridayHour => 'जुमे की आख़िरी घड़ी में दुआ';

  @override
  String get amalLastThird => 'रात के आख़िरी पहर की दुआ';

  @override
  String get amalMulk => 'सूरह मुल्क';

  @override
  String get amalBaqarahEnd => 'सूरह बक़रह की आख़िरी दो आयतें';

  @override
  String get amalSajdah => 'सूरह सजदा';

  @override
  String get amalQuls => 'तीनों क़ुल';

  @override
  String get amalYasin => 'सूरह यासीन';

  @override
  String get amalWaqiah => 'सूरह वाक़िआ';

  @override
  String get amalHifz => 'हिफ़्ज़';

  @override
  String get amalMurajaah => 'हिफ़्ज़ का दोहराव';

  @override
  String get amalTafsir => 'तफ़सीर';

  @override
  String get amalListenQuran => 'क़ुरआन सुनना';

  @override
  String get amalTeachQuran => 'क़ुरआन पढ़ाना';

  @override
  String get amalMonThu => 'पीर और जुमेरात का रोज़ा';

  @override
  String get amalThreeDays => 'हर महीने तीन रोज़े';

  @override
  String get amalDailySadaqah => 'रोज़ का सदक़ा';

  @override
  String get amalFeed => 'किसी को खाना खिलाना';

  @override
  String get amalHelpNeed => 'ज़रूरतमंद की मदद';

  @override
  String get amalOrphan => 'यतीम की किफ़ालत';

  @override
  String get amalGiveWater => 'पानी पिलाना';

  @override
  String get amalLearnHadith => 'एक हदीस सीखना';

  @override
  String get amalReadBook => 'इस्लामी किताब पढ़ना';

  @override
  String get amalSeerah => 'सीरत पढ़ना';

  @override
  String get amalClass => 'दर्स में शामिल होना';

  @override
  String get amalArabic => 'अरबी सीखना';

  @override
  String get amalLearnDua => 'नई दुआ सीखना';

  @override
  String get amalShare => 'सीखी बात आगे पहुँचाना';

  @override
  String get amalFiqh => 'फ़िक़्ह पढ़ना';

  @override
  String get amalMuhasaba => 'रात का मुहासबा';

  @override
  String get amalSpeakGood => 'अच्छी बात कहो या चुप रहो';

  @override
  String get amalNoBackbiting => 'ग़ीबत से बचना';

  @override
  String get amalAnger => 'ग़ुस्से पर क़ाबू';

  @override
  String get amalGaze => 'नज़र नीची रखना';

  @override
  String get amalTruthful => 'सच बोलना';

  @override
  String get amalSmile => 'मुस्कुराना';

  @override
  String get amalSalam => 'सलाम आम करना';

  @override
  String get amalForgive => 'दूसरों को माफ़ करना';

  @override
  String get amalGratitude => 'शुक्रगुज़ारी';

  @override
  String get amalVisitSick => 'बीमार की इयादत';

  @override
  String get amalNeighbours => 'पड़ोसियों से अच्छा सुलूक';

  @override
  String get amalRemoveHarm => 'रास्ते से तकलीफ़ देने वाली चीज़ हटाना';

  @override
  String get amalParents => 'माँ-बाप से अच्छा सुलूक';

  @override
  String get amalFamilyTies => 'रिश्ते-नाते निभाना';

  @override
  String get amalHelpHome => 'घर के कामों में हाथ बँटाना';

  @override
  String get amalTeachChildren => 'बच्चों को दीन सिखाना';

  @override
  String get amalSpouse => 'जीवनसाथी से अच्छा सुलूक';

  @override
  String get categoryDua => 'दुआ';

  @override
  String get categoryFasting => 'रोज़ा';

  @override
  String get categoryKnowledge => 'इल्म';

  @override
  String get categoryCharacter => 'अख़लाक़';

  @override
  String get categoryFamily => 'परिवार';

  @override
  String get libraryTitle => 'अमल लाइब्रेरी';

  @override
  String get librarySearchHint => 'अमल खोजें';

  @override
  String get libraryAll => 'सभी';

  @override
  String get libraryAdded => 'आज की सूची में जोड़ा गया';

  @override
  String libraryAddedShowsOn(String days) {
    return 'जोड़ा गया · दिखेगा: $days';
  }

  @override
  String libraryNoMatch(String query) {
    return '“$query” से मिलता कोई अमल नहीं';
  }

  @override
  String libraryCreateNamed(String query) {
    return '“$query” बनाएँ';
  }

  @override
  String get libraryPickBanner => 'अमल लाइब्रेरी से चुनें';

  @override
  String libraryPickBannerSubtitle(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countText तैयार अमल',
      one: '$countText तैयार अमल',
    );
    return '$_temp0';
  }

  @override
  String get libraryFilledIn => 'अमल लाइब्रेरी से भरा गया';

  @override
  String get libraryChange => 'बदलें';

  @override
  String get libraryEditAction => 'संपादित करें';

  @override
  String libraryWeeklyAny(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'सप्ताह में $countText दिन',
      one: 'सप्ताह में एक बार',
    );
    return '$_temp0';
  }

  @override
  String libraryMonthlyAny(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'महीने में $countText दिन',
      one: 'महीने में एक बार',
    );
    return '$_temp0';
  }

  @override
  String libraryTimes(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countText बार',
    );
    return '$_temp0';
  }

  @override
  String get libraryAnyAmount => 'कितना भी';

  @override
  String libraryAddTooltip(String title) {
    return '$title जोड़ें';
  }

  @override
  String get libraryOnList => 'आपकी सूची में है';

  @override
  String get todayEmptyBrowse => 'अमल लाइब्रेरी देखें';
}
