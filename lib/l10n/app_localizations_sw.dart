// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swahili (`sw`).
class AppLocalizationsSw extends AppLocalizations {
  AppLocalizationsSw([String locale = 'sw']) : super(locale);

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
  String get timesPerPeriod => 'Mara kwa kipindi';

  @override
  String get custom => 'Maalum';

  @override
  String get customTargetHint => 'mf. 50';

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
  String get anyDate => 'Yoyote';

  @override
  String get anyDateHint => 'Tarehe yoyote (inaonekana leo, inafichwa kesho)';

  @override
  String onlyDateHint(String date) {
    return 'Tarehe $date pekee';
  }

  @override
  String get startPreChecked => 'Anza ikitiwa alama';

  @override
  String get startPreCheckedSubtitle =>
      'Kipindi kipya kinapoanza, amali hii inawekwa alama ya kukamilika kwa chaguo-msingi hadi uitoe alama.';

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
      'Kikumbusho kimehifadhiwa, lakini arifa hazijaruhusiwa. Ziruhusu kwenye mipangilio ya mfumo ili kupata tahadhari.';

  @override
  String get groupByCategory => 'Pangilia kwa aina';

  @override
  String get flatList => 'Orodha tambarare';

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
  String progressOf(int progress, int target) {
    return '$progress kati ya $target zimekamilika';
  }

  @override
  String get removeFromToday => 'Ondoa leo';

  @override
  String get removeFromTodaySubtitle => 'Ficha kwa siku hii tu. Inarudi kesho.';

  @override
  String get removeFromTracking => 'Ondoa kutoka ufuatiliaji';

  @override
  String get removeFromTrackingSubtitle =>
      'Ondoa kabisa kutoka orodha yako. Historia inabaki.';

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
  String get categoryNewSheetTitle => 'Kategoria mpya';

  @override
  String get categoryEditSheetTitle => 'Hariri kategoria';

  @override
  String get addAmal => 'Ongeza Amali';

  @override
  String get customAmal => 'Amali Maalum';

  @override
  String get templateTasbih => 'Tasbihi 33x';

  @override
  String get templateIstighfar => 'Istighfari 100x';

  @override
  String get templateSurahKahf => 'Suratul Kahf';

  @override
  String get templateSadaqah => 'Sadaka';

  @override
  String get templateTahajjud => 'Tahajudi';

  @override
  String get templateDuhaPrayer => 'Swala ya Dhuha';

  @override
  String get settingsTitle => 'Mipangilio';

  @override
  String settingsLoadError(String error) {
    return 'Imeshindwa kupakia mipangilio:\n$error';
  }

  @override
  String get sectionDayBoundary => 'Mpaka wa siku';

  @override
  String get rolloverHour => 'Saa ya mabadiliko';

  @override
  String get rolloverAtMidnight => 'Leo inaisha usiku wa manane.';

  @override
  String rolloverSubtitle(String time) {
    return 'Amali za jana zinabaki zikiweza kuhaririwa hadi $time.';
  }

  @override
  String get pickRolloverHour => 'Chagua saa ambayo siku inabadilika';

  @override
  String get sectionWeekMonth => 'Wiki na mwezi';

  @override
  String get startOfWeek => 'Mwanzo wa wiki';

  @override
  String get startOfMonth => 'Mwanzo wa mwezi';

  @override
  String get startOfMonthClamped =>
      'Siku baada ya 28 zinabadilishwa kuwa siku ya mwisho ya miezi mifupi.';

  @override
  String get sectionAppearance => 'Muonekano';

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
      'Jarida la kibinafsi la uwajibikaji wa dini. Data yote inabaki kwenye kifaa hiki.';

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
  String get totalCompletions => 'jumla ya kukamilika';

  @override
  String get streakCurrent => 'Sasa hivi';

  @override
  String get streakLongest => 'Ndefu zaidi';

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
  String get statsCompleted => 'Imekamilika';

  @override
  String get statsExpected => 'Inayotarajiwa';

  @override
  String get statsVsPrevious => 'dhidi ya Awali';

  @override
  String get statsByCategory => 'Kwa Aina';

  @override
  String get statsPerAmal => 'Kwa kila Amali';

  @override
  String get statsCurrentStreak => 'Mfululizo wa sasa';

  @override
  String get statsBestStreak => 'Mfululizo bora';

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
  String get jumpToDate => 'Ruka hadi tarehe';

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
      '\"Amali zinazopendwa zaidi na Mwenyezi Mungu ni zile zinazofanywa kwa uthabiti, hata zikiwa ndogo.\"\n— Bukhari na Muslim';

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
      '\"Rahisisheni mambo wala msiyafanye kuwa magumu; peeni habari njema wala msiwaogoneshe watu.\"\n— Bukhari';

  @override
  String get hadith7 =>
      '\"Anayepita njia kutafuta elimu, Mwenyezi Mungu atamrahisishia njia ya Peponi.\"\n— Muslim';

  @override
  String get hadith8 => '\"Sadaka haipunguzi mali.\"\n— Muslim';

  @override
  String get hadith9 =>
      '\"Muumini mwenye nguvu ni bora na mpendwa zaidi kwa Mwenyezi Mungu kuliko muumini dhaifu, ingawa wote wana kheri.\"\n— Muslim';

  @override
  String get hadith10 =>
      '\"Mtu anayesema \'SubhanAllah wa bihamdihi\' mara mia kwa siku, dhambi zake zitasamehewa hata kama zingekuwa kama povu la bahari.\"\n— Bukhari';

  @override
  String get hadith12 =>
      '\"Mtu anayesoma Ayatul-Kursi baada ya kila swala ya faradhi, hakuna kinachomzuia kuingia Peponi isipokuwa kifo.\"\n— Nasa\'i';

  @override
  String get hadith13 => '\"Neno jema ni sadaka.\"\n— Bukhari & Muslim';

  @override
  String get hadith14 =>
      '\"Mwenye kuamini Mwenyezi Mungu na Siku ya Mwisho, na aseme jema au anyamaze.\"\n— Bukhari & Muslim';

  @override
  String get hadith15 =>
      '\"Anayemtunza mjane au maskini ni kama mpiganaji katika njia ya Mwenyezi Mungu.\"\n— Bukhari';

  @override
  String get hadith16 => '\"Kutabasamu kwa ndugu yako ni sadaka.\"\n— Tirmidhi';

  @override
  String get hadith17 =>
      '\"Bora kati yenu ni yule anayejifunza Qurani na kuifundisha.\"\n— Bukhari';

  @override
  String get hadith18 =>
      '\"Hakuna mtu aliyekula chakula bora kuliko kile alichokipata kwa kazi ya mikono yake.\"\n— Bukhari';

  @override
  String get hadith19 =>
      '\"Mwenyezi Mungu ni mpole na anapenda upole katika kila jambo.\"\n— Bukhari & Muslim';

  @override
  String historyDayCompleted(int completed, int total) {
    return '$completed kati ya $total yamekamilika';
  }

  @override
  String get settingsSchedule => 'Ratiba';

  @override
  String get settingsAppearance => 'Mwonekano';

  @override
  String get settingsAboutTagline => 'Mwenzi wako wa kila siku wa dini';

  @override
  String get settingsRolloverSub => 'Siku inaposeti lini';

  @override
  String get settingsAbout => 'Kuhusu';

  @override
  String get settingsVersion => 'Toleo';

  @override
  String get settingsDeveloper => 'Msanidi';

  @override
  String get settingsSupport => 'Usaidizi';

  @override
  String get settingsRate => 'Kagua programu';

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
      '\"Dua kati ya adhana na iqama hairudiwi.\"\n— Abu Dawud';

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
      '\"Anayemuondolea muumini shida, Mwenyezi Mungu atamwondolea shida Siku ya Hukumu.\"\n— Muslim';

  @override
  String get hadith32 => '\"Haya ni sehemu ya imani.\"\n— Bukhari na Muslim';

  @override
  String get hadith34 =>
      '\"Anayesubiri, Mwenyezi Mungu atampa subira.\"\n— Bukhari na Muslim';

  @override
  String get hadith36 =>
      '\"Hakuna yeyote kati yenu atakayeamini kweli kweli hadi ampendelee ndugu yake kile anachojipendea mwenyewe.\"\n— Bukhari na Muslim';

  @override
  String get hadith37 =>
      '\"Walisheni wenye njaa, watembeleni wagonjwa, na waacheni huru mateka.\"\n— Bukhari';

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
      '\"Kuna neema mbili ambazo watu wengi huzipoteza: afya na wakati wa ziada.\"\n— Bukhari';

  @override
  String get hadith43 =>
      '\"Tumieni tano kabla ya tano: ujana kabla ya uzee, afya kabla ya ugonjwa, utajiri kabla ya umaskini, wakati wa ziada kabla ya shughuli, na uhai kabla ya kifo.\"\n— Hakim';

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
      '\"Anayeunga udugu si yule anayerudisha, bali ni yule anayeendelea kuunga hata unapokatwa.\"\n— Bukhari';

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
      '\"Yeyote anayesoma aya mbili za mwisho za Sura Al-Baqarah usiku, zinamtosha.\"\n— Bukhari na Muslim';

  @override
  String get hadith56 =>
      '\"Dunia ni starehe, na starehe bora zaidi ni mke mwema.\"\n— Muslim';

  @override
  String get hadith57 =>
      '\"Dua tatu hazikataliwa: dua ya mfungaji, kiongozi mwadilifu, na mtu aliyedhulumiwa.\"\n— Tirmidhi';

  @override
  String get hadith58 =>
      '\"Yeyote anayenitumia salawati mara moja, Mwenyezi Mungu anamtumia rehema mara kumi.\"\n— Muslim';

  @override
  String get hadith65 => '\"Muumini ni kioo cha muumini.\"\n— Abu Dawud';

  @override
  String get hadith66 =>
      '\"Ukweli unaongoza kwenye wema, na wema unaongoza kwenye Pepo.\"\n— Bukhari na Muslim';

  @override
  String get hadith67 =>
      '\"Rudisha amana kwa aliyekuamini, na usimusaliti aliyekusaliti.\"\n— Abu Dawud na Tirmidhi';

  @override
  String get hadith68 =>
      '\"Hakuna uchovu, ugonjwa, huzuni, msongo, madhara au wasiwasi unaompata Muislamu, hata mchomo wa mwiba, isipokuwa Mwenyezi Mungu humfutia baadhi ya dhambi zake.\"\n— Bukhari na Muslim';

  @override
  String get hadith69 =>
      '\"Dua ya Muislamu kwa ndugu yake ambaye hayupo daima inakubaliwa.\"\n— Muslim';

  @override
  String get hadith70 =>
      '\"Yeyote anayemuomba Mwenyezi Mungu Pepo mara tatu, Pepo husema: Ee Mwenyezi Mungu, mwingize Peponi.\"\n— Tirmidhi';

  @override
  String get hadith71 =>
      '\"Saumu bora zaidi baada ya Ramadani ni saumu ya mwezi wa Mwenyezi Mungu, Muharram.\"\n— Muslim';

  @override
  String get hadith72 =>
      '\"Yeyote anayefanya Haji na hasemi maneno machafu wala hatendi dhambi, anarudi kama siku aliyozaliwa na mama yake.\"\n— Bukhari na Muslim';

  @override
  String get hadith73 =>
      '\"Umra hadi Umra nyingine ni kafara ya dhambi zilizo kati yake.\"\n— Bukhari na Muslim';

  @override
  String get hadith74 =>
      '\"Harakisheni kufanya matendo mema kabla ya kuja mitihani kama vipande vya usiku wa giza.\"\n— Muslim';

  @override
  String get hadith75 =>
      '\"Rakaa mbili za Alfajiri ni bora kuliko dunia na vyote vilivyomo.\"\n— Muslim';

  @override
  String get hadith77 =>
      '\"Kama mngemtegemea Mwenyezi Mungu kama inavyostahili, Angewapa riziki kama Anavyowapa ndege.\"\n— Tirmidhi';

  @override
  String get hadith78 =>
      '\"Anayemtembelea mgonjwa anakuwa katika bustani ya Pepo hadi anarudi.\"\n— Muslim';

  @override
  String get hadith79 =>
      '\"Enezeni salamu, lisheni wenye njaa, na salini usiku watu wanapokuwa wamelala — mtaingia Peponi kwa amani.\"\n— Tirmidhi';

  @override
  String get hadith80 =>
      '\"Asiyeshukuru kwa watu hashukuru kwa Mwenyezi Mungu.\"\n— Tirmidhi';

  @override
  String get hadith81 =>
      '\"Wivu hauruhusiwi isipokuwa katika mambo mawili: mtu aliyepewa mali na Mwenyezi Mungu naye akaitumia katika njia ya haki, na mtu aliyepewa hekima naye akahukumu na kufundisha nayo.\"\n— Bukhari na Muslim';

  @override
  String get hadith82 =>
      '\"Mtu anafuata dini ya rafiki yake wa karibu, basi kila mmoja wenu aangalie anayemfanya rafiki.\"\n— Abu Dawud na Tirmidhi';

  @override
  String get hadith85 =>
      '\"Anayeacha kitu kwa ajili ya Mwenyezi Mungu, Mwenyezi Mungu atambadilishia kitu bora zaidi.\"\n— Ahmad';

  @override
  String get hadith86 =>
      '\"Anayeficha makosa ya Mwislamu, Mwenyezi Mungu ataficha makosa yake Siku ya Hukumu.\"\n— Bukhari na Muslim';

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
      '\"Jiepusheni na dhana, kwani dhana ni usemi wa uongo zaidi.\"\n— Bukhari na Muslim';

  @override
  String get hadith93 =>
      '\"Kuleni pamoja na mtajeni jina la Mwenyezi Mungu, mtabarikiwa.\"\n— Abu Dawud';

  @override
  String get hadith94 =>
      '\"Mkutano bora ni ule wenye wasaa zaidi.\"\n— Abu Dawud';

  @override
  String get hadith95 => '\"Sameheni na mtasamehewa.\"\n— Ahmad';

  @override
  String get hadith96 =>
      '\"Mfunge ngamia wako kisha umtegemee Mwenyezi Mungu.\"\n— Tirmidhi';

  @override
  String get hadith97 =>
      '\"Ni ajabu mambo ya muumini — kila kitu ni kheri kwake.\"\n— Muslim';

  @override
  String get hadith98 =>
      '\"Mwislamu ni ndugu wa Mwislamu: hamdhulumu, hamtelekezi, wala hamdharau.\"\n— Muslim';
}
