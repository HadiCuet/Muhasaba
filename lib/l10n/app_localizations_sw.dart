// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swahili (`sw`).
class AppLocalizationsSw extends AppLocalizations {
  AppLocalizationsSw([String locale = 'sw']) : super(locale);

  @override
  String get repeatsOnDaysHint => 'Hurudiwa katika siku zilizochaguliwa';

  @override
  String get newDayStarted => 'Siku mpya imeanza';

  @override
  String get appTitle => 'Muhasaba';

  @override
  String get tabToday => 'Leo';

  @override
  String get tabStats => 'Takwimu';

  @override
  String get tabHistory => 'Historia';

  @override
  String get tabSettings => 'Mipangilio';

  @override
  String get tabChallenge => 'Changamoto';

  @override
  String get tabInsights => 'Takwimu';

  @override
  String get insightsTitle => 'Takwimu';

  @override
  String get insightsOverview => 'Muhtasari';

  @override
  String get insightsDaily => 'Kwa siku';

  @override
  String get insightsArchive => 'Kumbukumbu';

  @override
  String get archivedEmpty =>
      'Bado hakuna kitu hapa. Amali unazoacha kufuatilia huonekana hapa, ili uweze kuzirudisha.';

  @override
  String archivedStoppedOn(String date) {
    return 'Iliondolewa tarehe $date';
  }

  @override
  String get archivedRestore => 'Rudisha';

  @override
  String archivedRestored(String title) {
    return '\"$title\" imerudishwa kwenye orodha yako.';
  }

  @override
  String get newChallenge => 'Changamoto mpya';

  @override
  String get newAmal => 'Amali mpya';

  @override
  String get editAmal => 'Hariri amali';

  @override
  String get newAmalTitle => 'Amali mpya';

  @override
  String get save => 'Hifadhi';

  @override
  String get cancel => 'Ghairi';

  @override
  String get ok => 'Sawa';

  @override
  String get clear => 'Futa';

  @override
  String get titleLabel => 'Kichwa';

  @override
  String get titleRequired => 'Kichwa kinahitajika';

  @override
  String get titleTooLong => 'Kichwa ni kirefu sana';

  @override
  String get frequencyLabel => 'Mzunguko';

  @override
  String get frequencyDaily => 'Kila siku';

  @override
  String get frequencyWeekly => 'Kila wiki';

  @override
  String get frequencyMonthly => 'Kila mwezi';

  @override
  String get categoryLabel => 'Aina';

  @override
  String get categoryOther => 'Nyingine';

  @override
  String get categorySalah => 'Swala';

  @override
  String get categoryDhikr => 'Dhikri';

  @override
  String get categoryQuran => 'Qurani';

  @override
  String get categoryCharity => 'Sadaka';

  @override
  String get categorySunnah => 'Sunna';

  @override
  String get timesPerPeriod => 'Mara kwa kipindi';

  @override
  String get custom => 'Maalum';

  @override
  String get customTargetHint => 'mf. 50';

  @override
  String get targetAny => 'Kiasi chochote';

  @override
  String get targetAnyHelp => 'Hakuna lengo — kiasi chochote kinaikamilisha';

  @override
  String get dayOfWeek => 'Siku ya wiki';

  @override
  String get anyDay => 'Yoyote';

  @override
  String get anyDayHint => 'Siku yoyote (inaonekana leo, inafichwa kesho)';

  @override
  String onlyDayHint(String day) {
    return '$day pekee';
  }

  @override
  String get dateOfMonth => 'Tarehe ya mwezi';

  @override
  String get repeatMode => 'Kurudia';

  @override
  String get onSetDays => 'Siku maalum';

  @override
  String get onSetDates => 'Tarehe maalum';

  @override
  String get anyDayMode => 'Siku yoyote';

  @override
  String get datesOfMonth => 'Tarehe';

  @override
  String get daysPerWeekQuestion => 'Siku ngapi kwa wiki?';

  @override
  String get daysPerMonthQuestion => 'Siku ngapi kwa mwezi?';

  @override
  String get pickAtLeastOneDay => 'Chagua angalau siku moja';

  @override
  String get pickAtLeastOneDate => 'Chagua angalau tarehe moja';

  @override
  String get previewDaily => 'Hurudiwa kila siku';

  @override
  String previewWeeklyDays(String days) {
    return 'Hurudiwa kila $days';
  }

  @override
  String previewWeeklyAny(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'siku $count zozote',
      one: 'siku moja yoyote',
    );
    return 'Hurudiwa $_temp0 kwa wiki';
  }

  @override
  String previewMonthlyDates(int count, String dates) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Hurudiwa tarehe $dates za kila mwezi',
      one: 'Hurudiwa tarehe $dates ya kila mwezi',
    );
    return '$_temp0';
  }

  @override
  String previewMonthlyAny(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'siku $count zozote',
      one: 'siku moja yoyote',
    );
    return 'Hurudiwa $_temp0 kwa mwezi';
  }

  @override
  String get anyDate => 'Yoyote';

  @override
  String get anyDateHint => 'Tarehe yoyote (inaonekana leo, inafichwa kesho)';

  @override
  String onlyDateHint(String date) {
    return 'Tarehe $date pekee';
  }

  @override
  String get startPreChecked => 'Anza ikiwa imetiwa alama';

  @override
  String get startPreCheckedSubtitle =>
      'Kipindi kipya kinapoanza, amali hii hutiwa alama ya kukamilika moja kwa moja hadi uiondoe alama hiyo.';

  @override
  String get reminder => 'Kikumbusho';

  @override
  String get reminderNone => 'Hakuna';

  @override
  String reminderTime(String time) {
    return 'Kikumbusho: $time';
  }

  @override
  String get reminderPermissionWarning =>
      'Kikumbusho kimehifadhiwa, lakini arifa hazijaruhusiwa. Ziwashe kwenye mipangilio ya mfumo ili upokee arifa.';

  @override
  String get settingsReminders => 'Vikumbusho';

  @override
  String get dailyReminder => 'Kikumbusho cha kila siku';

  @override
  String get dailyReminderSubtitle =>
      'Kikumbusho cha upole cha kufuatilia amali zako';

  @override
  String get dailyReminderTimeLabel => 'Muda wa kikumbusho';

  @override
  String get dailyReminderBody => 'Chukua muda kufuatilia amali za leo.';

  @override
  String get groupByCategory => 'Panga kwa aina';

  @override
  String get flatList => 'Orodha moja';

  @override
  String errorGeneric(String error) {
    return 'Hitilafu: $error';
  }

  @override
  String get todayEmptyHint => 'Bonyeza + kuongeza amali yako ya kwanza.';

  @override
  String get noteLabel => 'Dokezo';

  @override
  String get noteHint => 'mf. Niliswali msikitini';

  @override
  String get completed => 'imekamilika';

  @override
  String get notCompleted => 'haijakamilika';

  @override
  String progressOf(String progress, String target) {
    return '$progress kati ya $target zimekamilika';
  }

  @override
  String progressOpen(String count) {
    return '$count zimekamilika';
  }

  @override
  String get removeFromToday => 'Ondoa kwa leo';

  @override
  String get removeFromTodaySubtitle => 'Ficha kwa siku hii tu. Inarudi kesho.';

  @override
  String get removeFromTracking => 'Acha kufuatilia';

  @override
  String get removeFromTrackingSubtitle =>
      'Ondoa kabisa kwenye orodha yako. Historia itabaki.';

  @override
  String get chooseIcon => 'Chagua ikoni';

  @override
  String get iconNone => 'Hakuna';

  @override
  String get recentlyUsed => 'Zilizotumika hivi karibuni';

  @override
  String get emojiSectionGeneral => 'Kwa ujumla';

  @override
  String get categoryNameHint => 'Jina';

  @override
  String get categoryNew => '+ Mpya';

  @override
  String get categoryNewSheetTitle => 'Aina mpya';

  @override
  String get categoryEditSheetTitle => 'Hariri aina';

  @override
  String get addAmal => 'Ongeza Amali';

  @override
  String get customAmal => 'Amali Maalum';

  @override
  String get amalTasbih => 'Tasbihi 33x';

  @override
  String get amalIstighfar => 'Istighfari';

  @override
  String get amalSurahKahf => 'Suratul Kahfi';

  @override
  String get amalSadaqah => 'Sadaka';

  @override
  String get amalTahajjud => 'Tahajudi';

  @override
  String get amalDuha => 'Swala ya Dhuha';

  @override
  String get amalFajr => 'Alfajiri';

  @override
  String get amalDhuhr => 'Adhuhuri';

  @override
  String get amalAsr => 'Alasiri';

  @override
  String get amalMaghrib => 'Magharibi';

  @override
  String get amalIsha => 'Isha';

  @override
  String get amalMorningAdhkar => 'Adhkari za asubuhi';

  @override
  String get amalEveningAdhkar => 'Adhkari za jioni';

  @override
  String get amalTilawah => 'Tilawa';

  @override
  String get settingsTitle => 'Mipangilio';

  @override
  String settingsLoadError(String error) {
    return 'Imeshindwa kupakia mipangilio:\n$error';
  }

  @override
  String get sectionDayBoundary => 'Mpaka wa siku';

  @override
  String get rolloverHour => 'Saa ya kuanza siku mpya';

  @override
  String get rolloverAtMidnight => 'Siku inaisha saa sita usiku.';

  @override
  String rolloverSubtitle(String time) {
    return 'Amali za jana zinaweza kuhaririwa hadi $time.';
  }

  @override
  String get pickRolloverHour => 'Chagua saa ambayo siku mpya inaanza';

  @override
  String get sectionWeekMonth => 'Wiki na mwezi';

  @override
  String get startOfWeek => 'Mwanzo wa wiki';

  @override
  String get startOfMonth => 'Mwanzo wa mwezi';

  @override
  String get startOfMonthClamped =>
      'Tarehe zinazozidi 28 huhamishiwa siku ya mwisho katika miezi mifupi.';

  @override
  String get sectionAppearance => 'Mwonekano';

  @override
  String get theme => 'Mandhari';

  @override
  String get themeSystem => 'Mfumo';

  @override
  String get themeLight => 'Mwanga';

  @override
  String get themeDark => 'Giza';

  @override
  String get sectionLanguage => 'Lugha';

  @override
  String get language => 'Lugha';

  @override
  String get systemDefault => 'Chaguo-msingi la mfumo';

  @override
  String get aboutTitle => 'Muhasaba';

  @override
  String get aboutSubtitle =>
      'Daftari lako binafsi la kujihesabu katika dini. Data yote inabaki kwenye kifaa hiki.';

  @override
  String get statsTitle => 'Takwimu';

  @override
  String statsLoadError(String error) {
    return 'Imeshindwa kupakia takwimu:\n$error';
  }

  @override
  String get perAmal => 'Kwa kila amali';

  @override
  String get thisWeek => 'Wiki hii';

  @override
  String get thisMonth => 'Mwezi huu';

  @override
  String get totalCompletions => 'jumla ya mara zilizokamilika';

  @override
  String get streakCurrent => 'Wa sasa';

  @override
  String get streakLongest => 'Mrefu zaidi';

  @override
  String get ratioWeek => 'Wiki';

  @override
  String get ratioMonth => 'Mwezi';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'siku',
      one: 'siku',
    );
    return '$_temp0';
  }

  @override
  String streakWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'wiki',
      one: 'wiki',
    );
    return '$_temp0';
  }

  @override
  String streakMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'miezi',
      one: 'mwezi',
    );
    return '$_temp0';
  }

  @override
  String get frequencyBadgeDaily => 'kila siku';

  @override
  String get frequencyBadgeWeekly => 'kila wiki';

  @override
  String get frequencyBadgeMonthly => 'kila mwezi';

  @override
  String get statsEmpty =>
      'Hakuna amali bado. Ongeza moja kwenye Leo ili kuanza kufuatilia.';

  @override
  String get statsToday => 'Leo';

  @override
  String get statsThisWeek => 'Wiki hii';

  @override
  String get statsThisMonth => 'Mwezi huu';

  @override
  String get statsAllTime => 'Wakati wote';

  @override
  String get statsCustomRange => 'Kipindi maalum';

  @override
  String get statsAllCategories => 'Zote';

  @override
  String get statsAllAmals => 'Zote';

  @override
  String get statsCompleted => 'Zilizokamilika';

  @override
  String get statsExpected => 'Zinazotarajiwa';

  @override
  String get statsVsPrevious => 'Dhidi ya awali';

  @override
  String get statsByCategory => 'Kwa aina';

  @override
  String get statsPerAmal => 'Kwa kila amali';

  @override
  String get statsTotalCaption => 'jumla';

  @override
  String statsDaysFraction(String done, String expectedText, num expected) {
    String _temp0 = intl.Intl.pluralLogic(
      expected,
      locale: localeName,
      other: 'siku $done/$expectedText',
      one: 'siku $done/$expectedText',
    );
    return '$_temp0';
  }

  @override
  String get statsCurrentStreak => 'Mfululizo wa sasa';

  @override
  String get statsBestStreak => 'Mfululizo mrefu zaidi';

  @override
  String get statsTotalDays => 'Jumla ya siku';

  @override
  String get statsConsistency => 'Uthabiti';

  @override
  String get statsLast5Weeks => 'Wiki 5 zilizopita';

  @override
  String get statsDailyBreakdown => 'Uchambuzi wa kila siku';

  @override
  String get statsCompletionRate => 'Kiwango cha kukamilika';

  @override
  String get statsAmountPerDay => 'Kiasi kwa siku';

  @override
  String statsCountTotal(String count) {
    return 'Jumla $count';
  }

  @override
  String statsCountAvg(String amount) {
    return 'Wastani $amount/siku';
  }

  @override
  String statsCountBest(String count, String day) {
    return 'Juu zaidi $count · $day';
  }

  @override
  String get statsFilterTime => 'Wakati';

  @override
  String get statsFilterCategory => 'Aina';

  @override
  String get statsFilterAmal => 'Amali';

  @override
  String get statsStreaks => 'Mifululizo';

  @override
  String get statsSelectDateRange => 'Chagua kipindi cha tarehe';

  @override
  String get historyTitle => 'Historia';

  @override
  String get jumpToDate => 'Nenda kwenye tarehe';

  @override
  String historyEmptyDay(String date) {
    return 'Hakuna amali iliyofuatiliwa tarehe $date';
  }

  @override
  String get streakUnitD => 's';

  @override
  String get streakUnitW => 'w';

  @override
  String get streakUnitM => 'm';

  @override
  String get mondayShort => 'Jtt';

  @override
  String get tuesdayShort => 'Jnn';

  @override
  String get wednesdayShort => 'Jtn';

  @override
  String get thursdayShort => 'Alh';

  @override
  String get fridayShort => 'Iju';

  @override
  String get saturdayShort => 'Jms';

  @override
  String get sundayShort => 'Jpi';

  @override
  String get mondayFull => 'Jumatatu';

  @override
  String get tuesdayFull => 'Jumanne';

  @override
  String get wednesdayFull => 'Jumatano';

  @override
  String get thursdayFull => 'Alhamisi';

  @override
  String get fridayFull => 'Ijumaa';

  @override
  String get saturdayFull => 'Jumamosi';

  @override
  String get sundayFull => 'Jumapili';

  @override
  String get hadith0 =>
      '\"Amali zinazopendwa zaidi na Mwenyezi Mungu ni zile zinazodumishwa, hata zikiwa ndogo.\"\n— Bukhari na Muslim';

  @override
  String get hadith2 =>
      '\"Mwanaadamu anapokufa, amali zake zinakoma isipokuwa tatu: sadaka jariya, elimu yenye manufaa, au mtoto mwema anayemuombea dua.\"\n— Muslim';

  @override
  String get hadith3 =>
      '\"Anayeswali swala mbili za baridi (Alfajiri na Alasiri) ataingia Peponi.\"\n— Bukhari';

  @override
  String get hadith4 =>
      '\"Mwenyezi Mungu haangalii sura zenu wala mali zenu, bali anaangalia nyoyo zenu na amali zenu.\"\n— Muslim';

  @override
  String get hadith6 =>
      '\"Rahisisheni mambo wala msiyafanye magumu; toeni bishara njema wala msiwakimbize watu.\"\n— Bukhari';

  @override
  String get hadith7 =>
      '\"Anayeshika njia ya kutafuta elimu, Mwenyezi Mungu atamrahisishia njia ya kwenda Peponi.\"\n— Muslim';

  @override
  String get hadith8 => '\"Sadaka haipunguzi mali.\"\n— Muslim';

  @override
  String get hadith9 =>
      '\"Muumini mwenye nguvu ni bora na mpendwa zaidi kwa Mwenyezi Mungu kuliko muumini dhaifu, ingawa wote wana kheri.\"\n— Muslim';

  @override
  String get hadith10 =>
      '\"Mtu anayesema \'SubhanAllah wa bihamdihi\' mara mia kwa siku, dhambi zake zitasamehewa hata kama zingekuwa kama povu la bahari.\"\n— Bukhari na Muslim';

  @override
  String get hadith12 =>
      '\"Mtu anayesoma Ayatul Kursi baada ya kila swala ya faradhi, hakuna kinachomzuia kuingia Peponi isipokuwa kifo.\"\n— Nasa\'i';

  @override
  String get hadith13 => '\"Neno jema ni sadaka.\"\n— Bukhari na Muslim';

  @override
  String get hadith14 =>
      '\"Mwenye kuamini Mwenyezi Mungu na Siku ya Mwisho, na aseme jema au anyamaze.\"\n— Bukhari na Muslim';

  @override
  String get hadith15 =>
      '\"Anayemtunza mjane au maskini ni kama mpiganaji katika njia ya Mwenyezi Mungu.\"\n— Bukhari na Muslim';

  @override
  String get hadith16 =>
      '\"Tabasamu lako mbele ya ndugu yako ni sadaka.\"\n— Tirmidhi';

  @override
  String get hadith17 =>
      '\"Bora kati yenu ni yule anayejifunza Qurani na kuifundisha.\"\n— Bukhari';

  @override
  String get hadith18 =>
      '\"Hakuna mtu aliyekula chakula bora kuliko kile alichokipata kwa kazi ya mikono yake.\"\n— Bukhari';

  @override
  String get hadith19 =>
      '\"Mwenyezi Mungu ni mpole na anapenda upole katika kila jambo.\"\n— Bukhari na Muslim';

  @override
  String historyDayCompleted(String completed, String total) {
    return '$completed kati ya $total yamekamilika';
  }

  @override
  String get settingsSchedule => 'Ratiba';

  @override
  String get settingsAppearance => 'Mwonekano';

  @override
  String get settingsAboutTagline => 'Msaidizi wako wa kila siku katika dini';

  @override
  String get settingsRolloverSub => 'Siku mpya inapoanza';

  @override
  String get settingsAbout => 'Kuhusu';

  @override
  String get settingsVersion => 'Toleo';

  @override
  String get settingsDeveloper => 'Msanidi';

  @override
  String get settingsSupport => 'Usaidizi';

  @override
  String get settingsRate => 'Kadiria programu';

  @override
  String get settingsContact => 'Wasiliana nasi';

  @override
  String get settingsReportBug => 'Ripoti hitilafu';

  @override
  String get settingsRequestFeature => 'Omba kipengele';

  @override
  String settingsSupportFallback(String email) {
    return 'Imeshindwa kufungua barua. Tafadhali tuma barua pepe kwa $email.';
  }

  @override
  String get settingsPrivacyPolicy => 'Sera ya Faragha';

  @override
  String get settingsPrivacyOpenFailed =>
      'Sera ya faragha haikuweza kufunguliwa.';

  @override
  String get hadith20 =>
      '\"Anayefunga Ramadhani kwa imani na kutaraji thawabu, dhambi zake zilizopita zitasamehewa.\"\n— Bukhari na Muslim';

  @override
  String get hadith22 =>
      '\"Dua kati ya adhana na iqama hairudishwi.\"\n— Abu Dawud';

  @override
  String get hadith23 =>
      '\"Anayejenga msikiti kwa ajili ya Mwenyezi Mungu, Mwenyezi Mungu atamjengea nyumba Peponi.\"\n— Bukhari na Muslim';

  @override
  String get hadith24 =>
      '\"Safu bora kwa wanaume ni za mbele, na safu bora kwa wanawake ni za nyuma.\"\n— Muslim';

  @override
  String get hadith25 =>
      '\"Kufunga ni ngao dhidi ya Moto wa Jahannam.\"\n— Nasa\'i';

  @override
  String get hadith26 =>
      '\"Anayeswali rakaa kumi na mbili za sunna, atajengewa nyumba Peponi.\"\n— Muslim';

  @override
  String get hadith27 =>
      '\"Aliye hodari katika Qurani atakuwa pamoja na malaika watukufu.\"\n— Bukhari na Muslim';

  @override
  String get hadith29 => '\"Sadaka bora ni kutoa maji ya kunywa.\"\n— Ahmad';

  @override
  String get hadith30 =>
      '\"Anayemwondolea muumini shida, Mwenyezi Mungu atamwondolea shida Siku ya Kiyama.\"\n— Muslim';

  @override
  String get hadith32 => '\"Haya ni sehemu ya imani.\"\n— Bukhari na Muslim';

  @override
  String get hadith34 =>
      '\"Anayesubiri, Mwenyezi Mungu atampa subira.\"\n— Bukhari na Muslim';

  @override
  String get hadith36 =>
      '\"Hataamini kikweli mmoja wenu mpaka ampendee ndugu yake anachokipenda kwa nafsi yake.\"\n— Bukhari na Muslim';

  @override
  String get hadith37 =>
      '\"Walisheni wenye njaa, watembeleeni wagonjwa, na wakomboeni mateka.\"\n— Bukhari';

  @override
  String get hadith38 =>
      '\"Mtu mwenye nguvu si yule anayeshinda katika mieleka, bali ni yule anayejizuia wakati wa hasira.\"\n— Bukhari na Muslim';

  @override
  String get hadith40 =>
      '\"Semeni \'SubhanAllah\', \'Alhamdulillah\', na \'Allahu Akbar\' mara thelathini na tatu baada ya kila swala.\"\n— Muslim';

  @override
  String get hadith41 => '\"Dhikri bora ni La ilaha illallah.\"\n— Tirmidhi';

  @override
  String get hadith42 =>
      '\"Kuna neema mbili ambazo watu wengi huzipoteza: afya na faragha.\"\n— Bukhari';

  @override
  String get hadith43 =>
      '\"Tumieni tano kabla ya tano: ujana kabla ya uzee, afya kabla ya ugonjwa, utajiri kabla ya umaskini, faragha kabla ya shughuli, na uhai kabla ya kifo.\"\n— Hakim';

  @override
  String get hadith44 =>
      '\"Anayesoma Suratul Ikhlas mara kumi, Mwenyezi Mungu atamjengea nyumba Peponi.\"\n— Ahmad';

  @override
  String get hadith45 =>
      '\"Swala bora baada ya swala za faradhi ni swala ya usiku.\"\n— Muslim';

  @override
  String get hadith46 =>
      '\"Sadaka inazima dhambi kama maji yanavyozima moto.\"\n— Tirmidhi';

  @override
  String get hadith47 =>
      '\"Anayeunga udugu si yule anayerudisha wema, bali ni yule anayeunga udugu hata anapokatiwa.\"\n— Bukhari';

  @override
  String get hadith49 =>
      '\"Anayekula chakula na kusema: \'Sifa zote njema ni za Mwenyezi Mungu aliyenilisha hiki na kuniruzuku bila nguvu wala uwezo wowote kutoka kwangu,\' dhambi zake zilizopita zitasamehewa.\"\n— Tirmidhi';

  @override
  String get hadith53 =>
      '\"Usidharau jambo lolote jema, hata kukutana na ndugu yako kwa uso wenye tabasamu.\"\n— Muslim';

  @override
  String get hadith54 =>
      '\"Bora wenu ni yule aliye bora kwa familia yake.\"\n— Tirmidhi';

  @override
  String get hadith55 =>
      '\"Anayesoma aya mbili za mwisho za Suratul Baqara usiku, zinamtosha.\"\n— Bukhari na Muslim';

  @override
  String get hadith56 =>
      '\"Dunia ni starehe, na starehe bora zaidi ni mke mwema.\"\n— Muslim';

  @override
  String get hadith57 =>
      '\"Dua tatu hazikataliwi: dua ya mfungaji, ya kiongozi mwadilifu, na ya aliyedhulumiwa.\"\n— Tirmidhi';

  @override
  String get hadith58 =>
      '\"Anayeniswalia mara moja, Mwenyezi Mungu humteremshia rehema mara kumi.\"\n— Muslim';

  @override
  String get hadith65 => '\"Muumini ni kioo cha muumini.\"\n— Abu Dawud';

  @override
  String get hadith66 =>
      '\"Ukweli unaongoza kwenye wema, na wema unaongoza kwenye Pepo.\"\n— Bukhari na Muslim';

  @override
  String get hadith67 =>
      '\"Rudisha amana kwa aliyekuamini, na usimsaliti aliyekusaliti.\"\n— Abu Dawud na Tirmidhi';

  @override
  String get hadith68 =>
      '\"Hakuna uchovu, ugonjwa, huzuni, msongo, madhara au wasiwasi unaompata Mwislamu, hata mchomo wa mwiba, isipokuwa Mwenyezi Mungu humfutia kwa hilo baadhi ya dhambi zake.\"\n— Bukhari na Muslim';

  @override
  String get hadith69 =>
      '\"Dua ya Mwislamu kwa ndugu yake asiyekuwepo hukubaliwa daima.\"\n— Muslim';

  @override
  String get hadith70 =>
      '\"Yeyote anayemuomba Mwenyezi Mungu Pepo mara tatu, Pepo husema: Ee Mwenyezi Mungu, mwingize Peponi.\"\n— Tirmidhi';

  @override
  String get hadith71 =>
      '\"Saumu bora zaidi baada ya Ramadhani ni saumu ya mwezi wa Mwenyezi Mungu, Muharram.\"\n— Muslim';

  @override
  String get hadith72 =>
      '\"Anayehiji bila kusema maneno machafu wala kutenda dhambi, hurudi kama siku aliyozaliwa na mama yake.\"\n— Bukhari na Muslim';

  @override
  String get hadith73 =>
      '\"Umra hadi Umra nyingine ni kafara ya dhambi zilizo kati yake.\"\n— Bukhari na Muslim';

  @override
  String get hadith74 =>
      '\"Harakisheni kufanya matendo mema kabla ya kuja fitna kama vipande vya usiku wa giza.\"\n— Muslim';

  @override
  String get hadith75 =>
      '\"Rakaa mbili za Alfajiri ni bora kuliko dunia na vyote vilivyomo.\"\n— Muslim';

  @override
  String get hadith77 =>
      '\"Kama mngemtegemea Mwenyezi Mungu ipasavyo, angewaruzuku kama anavyowaruzuku ndege.\"\n— Tirmidhi';

  @override
  String get hadith78 =>
      '\"Anayemtembelea mgonjwa huwa katika kuchuma matunda ya Peponi mpaka arudi.\"\n— Muslim';

  @override
  String get hadith79 =>
      '\"Enezeni salamu, lisheni wenye njaa, na swalini usiku watu wakiwa wamelala — mtaingia Peponi kwa amani.\"\n— Tirmidhi';

  @override
  String get hadith80 =>
      '\"Asiyewashukuru watu hamshukuru Mwenyezi Mungu.\"\n— Tirmidhi';

  @override
  String get hadith81 =>
      '\"Husuda haifai isipokuwa katika mambo mawili: mtu aliyepewa mali na Mwenyezi Mungu naye akaitumia katika njia ya haki, na mtu aliyepewa hekima naye akahukumu na kufundisha kwayo.\"\n— Bukhari na Muslim';

  @override
  String get hadith82 =>
      '\"Mtu anafuata dini ya rafiki yake wa karibu, basi kila mmoja wenu aangalie anayemfanya rafiki.\"\n— Abu Dawud na Tirmidhi';

  @override
  String get hadith85 =>
      '\"Anayeacha kitu kwa ajili ya Mwenyezi Mungu, Mwenyezi Mungu atambadilishia kitu bora zaidi.\"\n— Ahmad';

  @override
  String get hadith86 =>
      '\"Anayesitiri aibu za Mwislamu, Mwenyezi Mungu atamsitiri aibu zake Siku ya Kiyama.\"\n— Bukhari na Muslim';

  @override
  String get hadith87 =>
      '\"Kuwa katika dunia hii kana kwamba wewe ni mgeni au msafiri.\"\n— Bukhari';

  @override
  String get hadith88 =>
      '\"Anayemfanyia urahisi mtu aliye katika ugumu, Mwenyezi Mungu atamfanyia urahisi duniani na akhera.\"\n— Muslim';

  @override
  String get hadith89 =>
      '\"Malipo ya matendo yanategemea nia.\"\n— Bukhari na Muslim';

  @override
  String get hadith90 =>
      '\"Jiepusheni na dhana, kwani dhana ndiyo maneno ya uongo kuliko yote.\"\n— Bukhari na Muslim';

  @override
  String get hadith93 =>
      '\"Kuleni pamoja na litajeni jina la Mwenyezi Mungu; chakula chenu kitabarikiwa.\"\n— Abu Dawud';

  @override
  String get hadith94 =>
      '\"Hakuna kaumu inayokaa ikimtaja Mwenyezi Mungu isipokuwa malaika wanawazunguka, rehema inawafunika, na utulivu unawashukia.\"\n— Muslim';

  @override
  String get hadith95 =>
      '\"Mwenyezi Mungu hamzidishii mja kwa kusamehe isipokuwa heshima.\"\n— Muslim';

  @override
  String get hadith96 =>
      '\"Mfunge ngamia wako kisha umtegemee Mwenyezi Mungu.\"\n— Tirmidhi';

  @override
  String get hadith97 =>
      '\"Ajabu ya jambo la muumini — mambo yake yote ni kheri kwake.\"\n— Muslim';

  @override
  String get hadith98 =>
      '\"Mwislamu ni ndugu wa Mwislamu: hamdhulumu, hamtelekezi, wala hamdharau.\"\n— Muslim';

  @override
  String get delete => 'Futa';

  @override
  String get remove => 'Ondoa';

  @override
  String get deleteAmalConfirmTitle => 'Acha kufuatilia?';

  @override
  String deleteAmalConfirmBody(String title) {
    return '\"$title\" itafichwa kwenye orodha yako. Historia yako itahifadhiwa.';
  }

  @override
  String get genericError => 'Hitilafu imetokea. Tafadhali jaribu tena.';

  @override
  String get notificationChannelName => 'Vikumbusho vya amali';

  @override
  String get notificationChannelDescription =>
      'Vikumbusho vya kila siku vya amali unazofuatilia.';

  @override
  String get invalidAmalId => 'Kitambulisho batili cha amali';

  @override
  String get tutorialSettingsRow => 'Jinsi ya kutumia Muhasaba';

  @override
  String get tutorialSkip => 'Ruka';

  @override
  String get tutorialNext => 'Endelea';

  @override
  String get tutorialDone => 'Maliza';

  @override
  String get tutorialTapTitle => 'Gusa ili kukamilisha';

  @override
  String get tutorialTapBody =>
      'Kugusa mara moja huweka alama kuwa amali imekamilika leo. Gusa tena ili kutendua.';

  @override
  String get tutorialEditTitle => 'Gusa mara mbili ili kuhariri';

  @override
  String get tutorialEditBody =>
      'Hufungua fomu ya kuhariri — badilisha jina, au badilisha jinsi inavyojirudia.';

  @override
  String get tutorialReorderTitle => 'Bonyeza na ushikilie ili kupanga upya';

  @override
  String get tutorialReorderBody =>
      'Shikilia safu, kisha uiburute. Mpangilio wako huhifadhiwa.';

  @override
  String get tutorialRemoveTitle => 'Telezesha ili kuondoa';

  @override
  String get tutorialRemoveBody =>
      'Telezesha safu kando ili kuificha kwa leo, au kuacha kuifuatilia.';

  @override
  String get tutorialCountTitle => 'Kuhesabu marudio';

  @override
  String get tutorialCountBody =>
      'Kwa amali yenye lengo zaidi ya moja, tumia − na + kwa kila rudio.';

  @override
  String get tutorialViewTitle => 'Vikundi au orodha moja';

  @override
  String get tutorialViewBody =>
      'Badilisha kati ya kupanga kwa aina na orodha moja.';

  @override
  String get tutorialLibraryTitle => 'Ongeza amali zilizo tayari';

  @override
  String get tutorialLibraryBody =>
      'Vinjari Maktaba ya Amali kwa aina, kisha bonyeza + kuongeza amali kwenye Leo.';

  @override
  String get tutorialChallengeLogTitle => 'Gusa ili kurekodi leo';

  @override
  String get tutorialChallengeLogBody =>
      'Kugusa mara moja hurekodi leo. Kwa changamoto ya kuhesabu, kila mguso huongeza hatua moja.';

  @override
  String get tutorialChallengeOpenTitle => 'Gusa mara mbili ili kufungua';

  @override
  String get tutorialChallengeOpenBody =>
      'Hufungua changamoto — ona kila siku, rekebisha siku uliyokosa, au uifute.';

  @override
  String get tutorialChallengeDeleteBody =>
      'Telezesha kadi kando ili kufuta changamoto.';

  @override
  String get tutorialChallengeAmountTitle => 'Kurekodi kiasi kamili';

  @override
  String get tutorialChallengeAmountBody =>
      'Tumia − na + kubadilisha, au gusa nambari ili kuandika kiasi kamili.';

  @override
  String get challengeOpenDetailsAction => 'Fungua maelezo ya changamoto';

  @override
  String get challengesActive => 'Zinazoendelea';

  @override
  String get challengesPast => 'Zilizopita';

  @override
  String challengeJustFinished(int count, String title) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Changamoto $count zimemalizika — ya mwisho ni $title',
      one: '$title imemalizika',
    );
    return '$_temp0';
  }

  @override
  String get challengeSectionEnded => 'Imeisha';

  @override
  String get challengesPastEmpty => 'Bado hakuna iliyomalizika.';

  @override
  String get challengesEmptyTitle => 'Bado hakuna changamoto';

  @override
  String get challengesEmptyBody =>
      'Jiwekee lengo — kama rakaa 20 ndani ya siku 7 — na ulifuatilie hapa.';

  @override
  String get editChallenge => 'Hariri changamoto';

  @override
  String get deleteChallenge => 'Futa changamoto';

  @override
  String get deleteChallengeConfirm =>
      'Ufute changamoto hii pamoja na maendeleo yote uliyorekodi?';

  @override
  String get challengeShapeQuestion => 'Hii ni changamoto ya aina gani?';

  @override
  String get challengeShapeTotal => 'Jumla ya kufikia';

  @override
  String get challengeShapeTotalBody =>
      'Swalawat 1000, juzuu 30. Unarekodi kiasi na jumla inaongezeka.';

  @override
  String get challengeShapeStreak => 'Mfululizo wa kila siku';

  @override
  String get challengeShapeStreakBody =>
      'Tahajudi, Alfajiri kwa jamaa. Alama moja kwa siku, kiasi hakijalishi.';

  @override
  String get challengeTargetLabel => 'Lengo';

  @override
  String get challengeTargetRequired => 'Weka lengo lililo zaidi ya sifuri';

  @override
  String get challengeUnitLabel => 'Kipimo (hiari)';

  @override
  String get challengeUnitHint => 'rakaa, kurasa, mara';

  @override
  String get challengeOneTapAdds => 'Mguso mmoja huongeza';

  @override
  String get challengeHowManyDays => 'Siku ngapi?';

  @override
  String get challengeReachHowMuch => 'Kufikia kiasi gani?';

  @override
  String get challengeSpreadOver => 'Kipindi';

  @override
  String get challengeSpreadEveryDay => 'Kila siku';

  @override
  String get challengeSpreadLonger => 'Muda mrefu zaidi';

  @override
  String get challengeByWhen => 'Hadi lini?';

  @override
  String get challengeWindowDuration => 'Maliza ndani ya';

  @override
  String get challengeByDate => 'Hadi tarehe';

  @override
  String challengePlanRange(String start, String end) {
    return '$start hadi $end';
  }

  @override
  String challengePlanExact(String start, String end) {
    return '$start hadi $end · moja kwa siku, kila siku';
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
    return '$start hadi $end · $target kati ya siku $window — $slack unaweza kukosa';
  }

  @override
  String challengePlanRate(String start, String end, String rate) {
    return '$start hadi $end · takriban $rate kwa siku';
  }

  @override
  String challengePlanOpen(String start) {
    return 'Huanza $start · bila kikomo';
  }

  @override
  String challengeTooTight(
    String target,
    String window,
    num targetCount,
    num windowCount,
  ) {
    return 'Siku $target haziingii katika siku $window — mfululizo huhesabu moja kwa siku.';
  }

  @override
  String challengeDurationLabel(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'siku $count',
      one: 'siku $count',
    );
    return '$_temp0';
  }

  @override
  String get challengeStartDate => 'Huanza';

  @override
  String get challengeEndDate => 'Huisha';

  @override
  String challengeProgressCount(String done, String target, String unit) {
    return '$done kati ya $unit $target';
  }

  @override
  String challengeProgressPlain(String done, String target) {
    return '$done kati ya $target';
  }

  @override
  String challengeProgressDays(String done, String target) {
    return '$done kati ya siku $target';
  }

  @override
  String challengeDaysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Zimebaki siku $count',
      one: 'Imebaki siku 1',
    );
    return '$_temp0';
  }

  @override
  String get challengeNoDeadline => 'Bila kikomo';

  @override
  String challengeOnTrack(String rate) {
    return 'Kwa ratiba · $rate/siku';
  }

  @override
  String challengeBehind(String rate) {
    return 'Uko nyuma · $rate/siku kumaliza';
  }

  @override
  String challengeLastDay(String remaining) {
    return 'Siku ya mwisho · $remaining zimebaki';
  }

  @override
  String get challengeReached => 'Lengo limefikiwa';

  @override
  String get challengeCompleted => 'Imekamilika';

  @override
  String challengeEnded(String done, String target) {
    return 'Imeisha · $done/$target';
  }

  @override
  String get challengeExpiredTitle => 'Changamoto imeisha';

  @override
  String challengeExpiredBody(String title, String done, String target) {
    return '$title imeisha kwa $done kati ya $target.';
  }

  @override
  String get challengeExtend => 'Ongeza muda';

  @override
  String get challengeRestart => 'Anza upya';

  @override
  String get challengeArchive => 'Weka kwenye kumbukumbu';

  @override
  String get challengeDailyBreakdown => 'Rekodi ya kila siku';

  @override
  String challengeNudgeBody(String title, String rate) {
    return '$title: $rate kwa siku ili kumaliza kwa wakati.';
  }

  @override
  String challengeLastDayBody(String title, String remaining) {
    return '$title: siku ya mwisho — $remaining zimebaki.';
  }

  @override
  String get challengeGroupGoal => 'Lengo';

  @override
  String get challengeGroupShape => 'Muundo';

  @override
  String get challengeGroupPlan => 'Mpango';

  @override
  String get challengeGroupReminders => 'Vikumbusho';

  @override
  String get challengeStartFromTemplate => 'Anza na kiolezo';

  @override
  String get challengeTemplateBlank => 'Tupu';

  @override
  String get challengePreview => 'Onyesho la awali';

  @override
  String get challengeTmplTahajjud => 'Tahajudi usiku 40';

  @override
  String get challengeTmplSalawat => 'Swalawat 1000';

  @override
  String get challengeTmplKhatm => 'Hitima kwa siku 30';

  @override
  String get challengeTmplFajrJamaah => 'Alfajiri kwa jamaa siku 30';

  @override
  String get challengeTmplSadaqah => 'Sadaka siku 30';

  @override
  String get listSeparator => ' · ';

  @override
  String get tierRafiq => 'Rafiq';

  @override
  String get tierNasir => 'Nasir';

  @override
  String get tierMuhsin => 'Muhsin';

  @override
  String get tierAnsar => 'Ansar';

  @override
  String get tierRafiqMeaning => 'rafiki';

  @override
  String get tierNasirMeaning => 'mwungaji mkono';

  @override
  String get tierMuhsinMeaning => 'mfadhili';

  @override
  String get tierAnsarMeaning => 'msaidizi';

  @override
  String get supportCardBody =>
      'Ni bure, bila matangazo na bila akaunti. Unaweza kuunga mkono maendeleo yake kwa zawadi ndogo — kiasi chochote, wakati wowote.';

  @override
  String get supportCta => 'Unga mkono Muhasaba';

  @override
  String get supportAgain => 'Unga mkono tena';

  @override
  String get supporterThanks =>
      'Allah akulipeni kheri — inshallah Muhasaba itaendelea kuwa bure na bila matangazo.';

  @override
  String supporterSince(String tier, String month) {
    return '$tier tangu $month';
  }

  @override
  String get supportPromptTitle => 'Unga mkono Muhasaba';

  @override
  String get supportPromptBody =>
      'Muhasaba ni bure, haina matangazo wala akaunti. Unaweza kuunga mkono maendeleo yake kwa zawadi ndogo — kiasi chochote, wakati wowote. Hakuna kitu kinachofungwa kwa sababu hiyo.';

  @override
  String get supportPromptNow => 'Unga mkono sasa';

  @override
  String get supportPromptLater => 'Nikumbushe baadaye';

  @override
  String get supportPromptNever => 'Usiulize tena';

  @override
  String get tipSheetTitle => 'Unga mkono Muhasaba';

  @override
  String get tipSheetBody =>
      'Chagua kiasi chochote, mara nyingi upendavyo. Zawadi hizi hutumika kutunza programu — inshallah itaendelea kuwa bure na bila matangazo. Kama shukrani, utaonyeshwa kama mwungaji mkono katika Mipangilio.';

  @override
  String tipSheetSupporterLine(String tier) {
    return '$tier — Allah akulipeni kheri.';
  }

  @override
  String get tipSheetSupporterAgain =>
      'Unga mkono tena wakati wowote upendavyo.';

  @override
  String tipSheetStoreNote(String store) {
    return 'Inashughulikiwa na $store — hatuoni kamwe maelezo yako ya malipo.';
  }

  @override
  String get tipSheetOtherWays => 'Huoni chaguo linalokufaa?';

  @override
  String get tipSheetWriteToUs => 'Tuandikie';

  @override
  String get supportEmailBody =>
      'Assalamu alaikum,\n\nNingependa kuunga mkono maendeleo ya Muhasaba moja kwa moja.\n\nNchi:\nJinsi ningependa kutuma:\nKiasi (si lazima):';

  @override
  String tipBusy(String store) {
    return 'Inafungua $store…';
  }

  @override
  String get tipThanks =>
      'Allah akulipeni kheri — Allah aikubali kutoka kwenu.';

  @override
  String get tipDone => 'Maliza';

  @override
  String get tipFailed => 'Ununuzi haukukamilika. Hukutozwa chochote.';

  @override
  String tipPending(String store) {
    return 'Zawadi yako bado inasubiri uthibitisho kutoka $store — beji yako itaongezwa mara itakapothibitishwa.';
  }

  @override
  String get tipUnavailable =>
      'Ununuzi haupatikani kwenye kifaa hiki kwa sasa.';

  @override
  String get optionSetJamaa => 'Jamaa';

  @override
  String get optionJamaaAlone => 'Peke yangu';

  @override
  String get optionJamaaHome => 'Jamaa nyumbani';

  @override
  String get optionJamaaMasjid => 'Jamaa msikitini';

  @override
  String get optionSetOnTime => 'Kwa wakati';

  @override
  String get optionOnTimeOnTime => 'Kwa wakati';

  @override
  String get optionOnTimeLate => 'Kwa kuchelewa';

  @override
  String get optionOnTimeQada => 'Kadha';

  @override
  String get optionSetQuranSession => 'Kipindi cha Qurani';

  @override
  String get optionQuranRecited => 'Kusoma';

  @override
  String get optionQuranMemorised => 'Kuhifadhi';

  @override
  String get optionQuranMeaning => 'Kwa maana';

  @override
  String get optionQuranListened => 'Kusikiliza';

  @override
  String get optionSetSadaqahType => 'Aina ya sadaka';

  @override
  String get optionSadaqahMoney => 'Pesa';

  @override
  String get optionSadaqahFood => 'Chakula';

  @override
  String get optionSadaqahTime => 'Muda';

  @override
  String get optionSadaqahOther => 'Nyingine';

  @override
  String get optionSetIntensity => 'Kiwango';

  @override
  String get optionIntensityLight => 'Nyepesi';

  @override
  String get optionIntensityModerate => 'Wastani';

  @override
  String get optionIntensityIntense => 'Kali';

  @override
  String get optionSetNewTitle => 'Seti mpya ya chaguo';

  @override
  String get optionSetEditTitle => 'Hariri seti ya chaguo';

  @override
  String get optionSetNameLabel => 'Jina la seti';

  @override
  String get optionSetNameHint => 'mf. Jamaa';

  @override
  String get optionsLabel => 'Chaguo';

  @override
  String get optionAdd => 'Ongeza chaguo';

  @override
  String optionHint(int index) {
    return 'Chaguo $index';
  }

  @override
  String optionsMaxReached(int max) {
    return 'Upeo ni chaguo $max.';
  }

  @override
  String get optionSetPreviewLabel => 'Onyesho la awali — safu ya Leo';

  @override
  String optionSetKeptForHistory(String labels) {
    return 'Imehifadhiwa kwa historia: $labels';
  }

  @override
  String get optionSetDelete => 'Futa seti';

  @override
  String get optionSetDeleteConfirm =>
      'Amali zinazotumia seti hii hazitaonyesha tena chaguo. Siku ulizokwisha kurekodi zitabaki na chaguo zake.';

  @override
  String get optionSetNameRequired => 'Ipe seti jina';

  @override
  String get optionsMinRequired => 'Ongeza angalau chaguo mbili';

  @override
  String get optionSetNameTooLong => 'Jina la seti ni refu sana';

  @override
  String optionTooLong(int index) {
    return 'Chaguo $index ni refu sana';
  }

  @override
  String get optionSetNone => 'Hakuna';

  @override
  String get optionSetNew => 'Seti mpya';

  @override
  String get requireChoiceLabel => 'Chaguo ni lazima';

  @override
  String get requireChoiceHelp =>
      'Safu haitatiwa alama hadi chaguo lichaguliwe';

  @override
  String get requireChoicePickSetFirst => 'Chagua seti kwanza';

  @override
  String get requireChoiceCountHelp =>
      'Amali zenye kuhesabu hukamilishwa na − na +';

  @override
  String optionsUsedOf(int used, int max) {
    return 'Chaguo $used kati ya $max zimetumika.';
  }

  @override
  String get choiceNeeded => 'Chaguo linahitajika';

  @override
  String optionSelected(String label) {
    return '$label, limechaguliwa';
  }

  @override
  String optionNotSelected(String label) {
    return '$label, halijachaguliwa';
  }

  @override
  String optionBreakdownTitle(String set) {
    return 'Mgawanyo wa chaguo — $set';
  }

  @override
  String optionBreakdownCaption(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Mgawanyo kati ya mara $count zilizorekodi chaguo',
      one: 'Mgawanyo kati ya mara 1 iliyorekodi chaguo',
    );
    return '$_temp0';
  }

  @override
  String optionNoChoiceRecorded(int none, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other: 'siku $total zilizokamilika',
      one: 'siku 1 iliyokamilika',
    );
    return 'Hakuna chaguo lililorekodiwa — $none kati ya $_temp0';
  }

  @override
  String get optionRemovedSuffix => 'limeondolewa';

  @override
  String get optionAllAmals => 'Zote';

  @override
  String optionScopedCaption(String amal, int count) {
    return '$amal · rekodi $count';
  }

  @override
  String get optionBreakdownSectionTitle => 'Mgawanyo wa chaguo';

  @override
  String optionBreakdownSwipeHint(int count) {
    return 'Seti $count · telezesha';
  }

  @override
  String get optionDetailEmpty =>
      'Bado hakuna chaguo lililorekodiwa kwa seti hii.';

  @override
  String get optionDetailTrendHeading => 'Jinsi ilivyobadilika';

  @override
  String optionDetailTrendReadout(String option, String from, String to) {
    return 'Sehemu ya $option ilibadilika kutoka $from hadi $to kati ya wiki ya kwanza na ya mwisho.';
  }

  @override
  String get optionDetailByAmalHeading => 'Kwa kila amali';

  @override
  String optionDetailByAmalReadout(
    String best,
    String bestShare,
    String worst,
    String worstShare,
  ) {
    return 'Juu zaidi ni $best kwa $bestShare; chini zaidi ni $worst kwa $worstShare.';
  }

  @override
  String get optionDetailRecordsHeading => 'Rekodi';

  @override
  String get optionDetailLongestRun => 'Mfululizo mrefu zaidi';

  @override
  String get optionDetailBestWeek => 'Wiki bora';

  @override
  String get optionDetailCurrentRun => 'Mfululizo wa sasa';

  @override
  String get optionDetailRecordsCaption =>
      'Kulingana na mwaka uliopita, bila kujali kichujio cha kipindi hapo juu.';

  @override
  String get optionDetailRecentDaysHeading => 'Siku za hivi karibuni';

  @override
  String optionDetailRecentDaysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Siku $count zilizopita',
      one: 'Siku 1 iliyopita',
    );
    return '$_temp0';
  }

  @override
  String get amalFivePrayers => 'Swala tano';

  @override
  String get amalJumuah => 'Swala ya Ijumaa';

  @override
  String get amalWitr => 'Swala ya Witri';

  @override
  String get amalQada => 'Kulipa swala zilizopita';

  @override
  String get amalFajrSunnah => 'Sunna ya Alfajiri';

  @override
  String get amalDhuhrSunnah => 'Sunna ya Adhuhuri';

  @override
  String get amalAsrSunnah => 'Sunna ya Alasiri';

  @override
  String get amalMaghribSunnah => 'Sunna ya Magharibi';

  @override
  String get amalIshaSunnah => 'Sunna ya Isha';

  @override
  String get amalRawatib => 'Sunna za Rawatib';

  @override
  String get amalSiwak => 'Mswaki';

  @override
  String get amalWuduSleep => 'Udhu kabla ya kulala';

  @override
  String get amalFridayGhusl => 'Josho la Ijumaa';

  @override
  String get amalIshraq => 'Swala ya Ishraki';

  @override
  String get amalWuduPrayer => 'Rakaa mbili baada ya udhu';

  @override
  String get amalTahiyyah => 'Tahiyyatul Masjid';

  @override
  String get amalEarlyJumuah => 'Kuwahi swala ya Ijumaa';

  @override
  String get amalAfterSalah => 'Adhkari baada ya swala';

  @override
  String get amalAfterFajr => 'Adhkari baada ya Alfajiri';

  @override
  String get amalAfterDhuhr => 'Adhkari baada ya Adhuhuri';

  @override
  String get amalAfterAsr => 'Adhkari baada ya Alasiri';

  @override
  String get amalAfterMaghrib => 'Adhkari baada ya Magharibi';

  @override
  String get amalAfterIsha => 'Adhkari baada ya Isha';

  @override
  String get amalAyatKursi => 'Ayatul Kursi';

  @override
  String get amalKursiFajr => 'Ayatul Kursi baada ya Alfajiri';

  @override
  String get amalKursiDhuhr => 'Ayatul Kursi baada ya Adhuhuri';

  @override
  String get amalKursiAsr => 'Ayatul Kursi baada ya Alasiri';

  @override
  String get amalKursiMaghrib => 'Ayatul Kursi baada ya Magharibi';

  @override
  String get amalKursiIsha => 'Ayatul Kursi baada ya Isha';

  @override
  String get amalSayyidIstighfar => 'Sayyidul Istighfar';

  @override
  String get amalSalawat => 'Swalawat kwa Mtume ﷺ';

  @override
  String get amalSubhanallah => 'Subhanallahi wa bihamdihi';

  @override
  String get amalTahlil => 'La ilaha illallah';

  @override
  String get amalBedtimeAdhkar => 'Adhkari za kulala';

  @override
  String get amalFridaySalawat => 'Swalawat za Ijumaa';

  @override
  String get amalHawqala => 'La hawla wa la quwwata';

  @override
  String get amalTasbihFatimah => 'Tasbihi ya Fatima';

  @override
  String get amalWakingAdhkar => 'Adhkari za kuamka';

  @override
  String get amalDuaAdhan => 'Dua baada ya adhana';

  @override
  String get amalDuaIqamah => 'Dua kati ya adhana na iqama';

  @override
  String get amalDuaSujood => 'Dua katika sijda';

  @override
  String get amalDuaParents => 'Dua kwa wazazi';

  @override
  String get amalDuaOthers => 'Dua kwa wengine';

  @override
  String get amalFridayHour => 'Dua katika saa ya mwisho ya Ijumaa';

  @override
  String get amalLastThird => 'Dua ya usiku (theluthi ya mwisho)';

  @override
  String get amalMulk => 'Suratul Mulk';

  @override
  String get amalBaqarahEnd => 'Aya mbili za mwisho za Al-Baqara';

  @override
  String get amalSajdah => 'Suratus Sajda';

  @override
  String get amalQuls => 'Al-Ikhlas, Al-Falaq na An-Nas';

  @override
  String get amalYasin => 'Suratu Yasin';

  @override
  String get amalWaqiah => 'Suratul Waqi\'a';

  @override
  String get amalHifz => 'Kuhifadhi Qurani';

  @override
  String get amalMurajaah => 'Kurudia hifdhi';

  @override
  String get amalTafsir => 'Tafsiri ya Qurani';

  @override
  String get amalListenQuran => 'Kusikiliza Qurani';

  @override
  String get amalTeachQuran => 'Kufundisha Qurani';

  @override
  String get amalMonThu => 'Funga ya Jumatatu na Alhamisi';

  @override
  String get amalThreeDays => 'Funga siku tatu kila mwezi';

  @override
  String get amalDailySadaqah => 'Sadaka ya kila siku';

  @override
  String get amalFeed => 'Kumlisha mtu';

  @override
  String get amalHelpNeed => 'Kumsaidia mwenye shida';

  @override
  String get amalOrphan => 'Kumsaidia yatima';

  @override
  String get amalGiveWater => 'Kutoa maji';

  @override
  String get amalLearnHadith => 'Kujifunza hadithi';

  @override
  String get amalReadBook => 'Kusoma kitabu cha Kiislamu';

  @override
  String get amalSeerah => 'Kujifunza Sira';

  @override
  String get amalClass => 'Kuhudhuria darsa';

  @override
  String get amalArabic => 'Kujifunza Kiarabu';

  @override
  String get amalLearnDua => 'Kujifunza dua mpya';

  @override
  String get amalShare => 'Kushiriki elimu';

  @override
  String get amalFiqh => 'Kujifunza fiqhi';

  @override
  String get amalMuhasaba => 'Muhasaba ya usiku';

  @override
  String get amalSpeakGood => 'Sema la kheri au nyamaza';

  @override
  String get amalNoBackbiting => 'Kuepuka kusengenya';

  @override
  String get amalAnger => 'Kuzuia hasira';

  @override
  String get amalGaze => 'Kuinamisha macho';

  @override
  String get amalTruthful => 'Kusema kweli';

  @override
  String get amalSmile => 'Kutabasamu';

  @override
  String get amalSalam => 'Kueneza salamu';

  @override
  String get amalForgive => 'Kuwasamehe wengine';

  @override
  String get amalGratitude => 'Kushukuru';

  @override
  String get amalVisitSick => 'Kumtembelea mgonjwa';

  @override
  String get amalNeighbours => 'Wema kwa jirani';

  @override
  String get amalRemoveHarm => 'Kuondoa udhia njiani';

  @override
  String get amalParents => 'Wema kwa wazazi';

  @override
  String get amalFamilyTies => 'Kuunga udugu';

  @override
  String get amalHelpHome => 'Kusaidia kazi za nyumbani';

  @override
  String get amalTeachChildren => 'Kuwafundisha watoto dini';

  @override
  String get amalSpouse => 'Wema kwa mwenzi';

  @override
  String get categoryDua => 'Dua';

  @override
  String get categoryFasting => 'Funga';

  @override
  String get categoryKnowledge => 'Elimu';

  @override
  String get categoryCharacter => 'Tabia';

  @override
  String get categoryFamily => 'Familia';

  @override
  String get libraryTitle => 'Maktaba ya Amali';

  @override
  String get librarySearchHint => 'Tafuta amali';

  @override
  String get libraryAll => 'Zote';

  @override
  String get libraryAdded => 'Imeongezwa kwenye Leo';

  @override
  String libraryAddedShowsOn(String days) {
    return 'Imeongezwa · itaonekana $days';
  }

  @override
  String libraryNoMatch(String query) {
    return 'Hakuna amali inayolingana na “$query”';
  }

  @override
  String libraryCreateNamed(String query) {
    return 'Unda “$query”';
  }

  @override
  String get libraryPickBanner => 'Chagua kutoka Maktaba ya Amali';

  @override
  String libraryPickBannerSubtitle(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Amali $countText zilizo tayari',
      one: 'Amali $countText iliyo tayari',
    );
    return '$_temp0';
  }

  @override
  String get libraryFilledIn => 'Imejazwa kutoka Maktaba ya Amali';

  @override
  String get libraryChange => 'Badilisha';

  @override
  String get libraryEditAction => 'Hariri';

  @override
  String libraryWeeklyAny(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Siku $countText kwa wiki',
      one: 'Mara moja kwa wiki',
    );
    return '$_temp0';
  }

  @override
  String libraryMonthlyAny(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Siku $countText kwa mwezi',
      one: 'Mara moja kwa mwezi',
    );
    return '$_temp0';
  }

  @override
  String libraryTimes(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Mara $countText',
    );
    return '$_temp0';
  }

  @override
  String get libraryAnyAmount => 'Kiasi chochote';

  @override
  String libraryAddTooltip(String title) {
    return 'Ongeza $title';
  }

  @override
  String get libraryOnList => 'Iko kwenye orodha yako';

  @override
  String get todayEmptyBrowse => 'Vinjari Maktaba ya Amali';
}
