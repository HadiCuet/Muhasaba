// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkmen (`tk`).
class AppLocalizationsTk extends AppLocalizations {
  AppLocalizationsTk([String locale = 'tk']) : super(locale);

  @override
  String get repeatsOnDaysHint => 'Saýlanan günlerde gaýtalanýar';

  @override
  String get newDayStarted => 'Täze gün başlady';

  @override
  String get appTitle => 'Muhasaba';

  @override
  String get tabToday => 'Bu gün';

  @override
  String get tabStats => 'Statistika';

  @override
  String get tabHistory => 'Taryh';

  @override
  String get tabSettings => 'Sazlamalar';

  @override
  String get tabChallenge => 'Maksat';

  @override
  String get tabInsights => 'Statistika';

  @override
  String get insightsTitle => 'Statistika';

  @override
  String get insightsOverview => 'Umumy';

  @override
  String get insightsDaily => 'Gündelik';

  @override
  String get insightsArchive => 'Arhiw';

  @override
  String get archivedEmpty =>
      'Bu ýerde entek zat ýok. Yzarlamadan aýran amallaryňyz şu ýerde saklanýar, olary yzyna gaýtaryp bilersiňiz.';

  @override
  String archivedStoppedOn(String date) {
    return '$date senesinde aýryldy';
  }

  @override
  String get archivedRestore => 'Dikeltmek';

  @override
  String archivedRestored(String title) {
    return '\"$title\" sanawyňyza gaýtaryldy.';
  }

  @override
  String get newChallenge => 'Täze maksat';

  @override
  String get newAmal => 'Täze amal';

  @override
  String get editAmal => 'Amaly üýtgetmek';

  @override
  String get newAmalTitle => 'Täze amal';

  @override
  String get save => 'Saklamak';

  @override
  String get cancel => 'Goýbolsun';

  @override
  String get ok => 'OK';

  @override
  String get clear => 'Arassalamak';

  @override
  String get titleLabel => 'At';

  @override
  String get titleRequired => 'Ady ýazyň';

  @override
  String get titleTooLong => 'At gaty uzyn';

  @override
  String get frequencyLabel => 'Ýygylyk';

  @override
  String get frequencyDaily => 'Her gün';

  @override
  String get frequencyWeekly => 'Her hepde';

  @override
  String get frequencyMonthly => 'Her aý';

  @override
  String get categoryLabel => 'Kategoriýa';

  @override
  String get categoryOther => 'Beýleki';

  @override
  String get categorySalah => 'Namaz';

  @override
  String get categoryDhikr => 'Zikir';

  @override
  String get categoryQuran => 'Kuran';

  @override
  String get categoryCharity => 'Sadaka';

  @override
  String get categorySunnah => 'Sünnet';

  @override
  String get timesPerPeriod => 'Döwürde näçe gezek';

  @override
  String get custom => 'Başga';

  @override
  String get customTargetHint => 'mes. 50';

  @override
  String get targetAny => 'Islendik';

  @override
  String get targetAnyHelp =>
      'San bellenmedik — islendik mukdar ýerine ýetirilen hasaplanýar';

  @override
  String get dayOfWeek => 'Hepdäniň güni';

  @override
  String get anyDay => 'Islendik';

  @override
  String get anyDayHint => 'Islendik gün (bu gün görkezilýär, ertir gizlenýär)';

  @override
  String onlyDayHint(String day) {
    return 'Diňe $day';
  }

  @override
  String get dateOfMonth => 'Aýyň senesi';

  @override
  String get repeatMode => 'Gaýtalanma';

  @override
  String get onSetDays => 'Bellenen günlerde';

  @override
  String get onSetDates => 'Bellenen senelerde';

  @override
  String get anyDayMode => 'Islendik gün';

  @override
  String get datesOfMonth => 'Seneler';

  @override
  String get daysPerWeekQuestion => 'Hepdede näçe gün?';

  @override
  String get daysPerMonthQuestion => 'Aýda näçe gün?';

  @override
  String get pickAtLeastOneDay => 'Iň bolmanda bir gün saýlaň';

  @override
  String get pickAtLeastOneDate => 'Iň bolmanda bir sene saýlaň';

  @override
  String get previewDaily => 'Her gün gaýtalanýar';

  @override
  String previewWeeklyDays(String days) {
    return 'Gaýtalanýan günleri: $days';
  }

  @override
  String previewWeeklyAny(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gün',
    );
    return 'Hepdede islendik $_temp0 gaýtalanýar';
  }

  @override
  String previewMonthlyDates(int count, String dates) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Her aýyň $dates günlerinde gaýtalanýar',
      one: 'Her aýyň $dates gününde gaýtalanýar',
    );
    return '$_temp0';
  }

  @override
  String previewMonthlyAny(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gün',
    );
    return 'Aýda islendik $_temp0 gaýtalanýar';
  }

  @override
  String get anyDate => 'Islendik';

  @override
  String get anyDateHint =>
      'Islendik sene (bu gün görkezilýär, ertir gizlenýär)';

  @override
  String onlyDateHint(String date) {
    return 'Diňe şu sene: $date';
  }

  @override
  String get startPreChecked => 'Başdan belgili bolsun';

  @override
  String get startPreCheckedSubtitle =>
      'Täze döwür başlanda, bu amal siz belgini aýyrýançaňyz ýerine ýetirilen hasaplanýar.';

  @override
  String get reminder => 'Ýatlatma';

  @override
  String get reminderNone => 'Ýok';

  @override
  String reminderTime(String time) {
    return 'Ýatlatma: $time';
  }

  @override
  String get reminderPermissionWarning =>
      'Ýatlatma saklandy, emma bildirişlere rugsat berilmedi. Duýduryş almak üçin ulgam sazlamalarynda açyň.';

  @override
  String get settingsReminders => 'Ýatlatmalar';

  @override
  String get dailyReminder => 'Gündelik ýatlatma';

  @override
  String get dailyReminderSubtitle =>
      'Amallaryňyzy yzarlamak üçin mylaýym ýatlatma';

  @override
  String get dailyReminderTimeLabel => 'Ýatlatma wagty';

  @override
  String get dailyReminderBody =>
      'Bu günki amallaryňyzy bellemäge birsalym wagt bölüň.';

  @override
  String get groupByCategory => 'Kategoriýa boýunça toparlamak';

  @override
  String get flatList => 'Düz sanaw';

  @override
  String errorGeneric(String error) {
    return 'Ýalňyşlyk: $error';
  }

  @override
  String get todayEmptyHint => 'Ilkinji amalyňyzy goşmak üçin + basyň.';

  @override
  String get noteLabel => 'Bellik';

  @override
  String get noteHint => 'mes. Metjitde namaz okadym';

  @override
  String get completed => 'ýerine ýetirildi';

  @override
  String get notCompleted => 'ýerine ýetirilmedi';

  @override
  String progressOf(String progress, String target) {
    return '$progress/$target ýerine ýetirildi';
  }

  @override
  String progressOpen(String count) {
    return '$count ýerine ýetirildi';
  }

  @override
  String get removeFromToday => 'Bu günden aýyrmak';

  @override
  String get removeFromTodaySubtitle =>
      'Diňe bu gün üçin gizlenýär. Ertir gaýdyp gelýär.';

  @override
  String get removeFromTracking => 'Yzarlamadan aýyrmak';

  @override
  String get removeFromTrackingSubtitle =>
      'Sanawyňyzdan hemişelik aýrylýar. Taryh saklanýar.';

  @override
  String get chooseIcon => 'Nyşan saýlaň';

  @override
  String get iconNone => 'Ýok';

  @override
  String get recentlyUsed => 'Soňky ulanylanlar';

  @override
  String get emojiSectionGeneral => 'Umumy';

  @override
  String get categoryNameHint => 'At';

  @override
  String get categoryNew => '+ Täze';

  @override
  String get categoryNewSheetTitle => 'Täze kategoriýa';

  @override
  String get categoryEditSheetTitle => 'Kategoriýany üýtgetmek';

  @override
  String get addAmal => 'Amal goşmak';

  @override
  String get customAmal => 'Öz amalyňyz';

  @override
  String get amalTasbih => 'Tesbih 33x';

  @override
  String get amalIstighfar => 'Istigfar';

  @override
  String get amalSurahKahf => 'Kehf süresi';

  @override
  String get amalSadaqah => 'Sadaka';

  @override
  String get amalTahajjud => 'Tähejjüd namazy';

  @override
  String get amalDuha => 'Duha namazy';

  @override
  String get amalFajr => 'Bamdat';

  @override
  String get amalDhuhr => 'Öýle';

  @override
  String get amalAsr => 'Ikindi';

  @override
  String get amalMaghrib => 'Agşam';

  @override
  String get amalIsha => 'Ýassy';

  @override
  String get amalMorningAdhkar => 'Ertirki zikirler';

  @override
  String get amalEveningAdhkar => 'Agşamky zikirler';

  @override
  String get amalTilawah => 'Tilawat';

  @override
  String get settingsTitle => 'Sazlamalar';

  @override
  String settingsLoadError(String error) {
    return 'Sazlamalary ýüklemek başartmady:\n$error';
  }

  @override
  String get sectionDayBoundary => 'Günüň çägi';

  @override
  String get rolloverHour => 'Günüň çalyşýan sagady';

  @override
  String get rolloverAtMidnight => 'Gün ýary gijede gutarýar.';

  @override
  String rolloverSubtitle(String time) {
    return 'Düýnki amallary sagat $time bolýança üýtgedip bolýar.';
  }

  @override
  String get pickRolloverHour => 'Täze günüň başlaýan sagadyny saýlaň';

  @override
  String get sectionWeekMonth => 'Hepde we aý';

  @override
  String get startOfWeek => 'Hepdäniň başy';

  @override
  String get startOfMonth => 'Aýyň başy';

  @override
  String get startOfMonthClamped =>
      'Gysga aýlarda 28-den soňky günler aýyň soňky gününe süýşürilýär.';

  @override
  String get sectionAppearance => 'Daşky görnüş';

  @override
  String get theme => 'Tema';

  @override
  String get themeSystem => 'Ulgam';

  @override
  String get themeLight => 'Ýagty';

  @override
  String get themeDark => 'Garaňky';

  @override
  String get sectionLanguage => 'Dil';

  @override
  String get language => 'Dil';

  @override
  String get systemDefault => 'Ulgam boýunça';

  @override
  String get aboutTitle => 'Muhasaba';

  @override
  String get aboutSubtitle =>
      'Din boýunça özüňizi hasaba çekmek üçin şahsy depder. Ähli maglumatlar diňe şu enjamda saklanýar.';

  @override
  String get statsTitle => 'Statistika';

  @override
  String statsLoadError(String error) {
    return 'Statistikany ýüklemek başartmady:\n$error';
  }

  @override
  String get perAmal => 'Her amal boýunça';

  @override
  String get thisWeek => 'Bu hepde';

  @override
  String get thisMonth => 'Bu aý';

  @override
  String get totalCompletions => 'jemi ýerine ýetirme';

  @override
  String get streakCurrent => 'Häzirki';

  @override
  String get streakLongest => 'Iň uzyn';

  @override
  String get ratioWeek => 'Hepde';

  @override
  String get ratioMonth => 'Aý';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'gün',
      one: 'gün',
    );
    return '$_temp0';
  }

  @override
  String streakWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'hepde',
      one: 'hepde',
    );
    return '$_temp0';
  }

  @override
  String streakMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'aý',
      one: 'aý',
    );
    return '$_temp0';
  }

  @override
  String get frequencyBadgeDaily => 'gündelik';

  @override
  String get frequencyBadgeWeekly => 'hepdelik';

  @override
  String get frequencyBadgeMonthly => 'aýlyk';

  @override
  String get statsEmpty =>
      'Entek amal ýok. Yzarlamaga başlamak üçin «Bu gün» sahypasynda goşuň.';

  @override
  String get statsToday => 'Bu gün';

  @override
  String get statsThisWeek => 'Bu hepde';

  @override
  String get statsThisMonth => 'Bu aý';

  @override
  String get statsAllTime => 'Ähli döwür';

  @override
  String get statsCustomRange => 'Saýlanan aralyk';

  @override
  String get statsAllCategories => 'Hemmesi';

  @override
  String get statsAllAmals => 'Hemmesi';

  @override
  String get statsCompleted => 'Ýerine ýetirildi';

  @override
  String get statsExpected => 'Garaşylýan';

  @override
  String get statsVsPrevious => 'Öňküsine görä';

  @override
  String get statsByCategory => 'Kategoriýa boýunça';

  @override
  String get statsPerAmal => 'Her amal boýunça';

  @override
  String get statsTotalCaption => 'jemi';

  @override
  String statsDaysFraction(String done, String expectedText, num expected) {
    String _temp0 = intl.Intl.pluralLogic(
      expected,
      locale: localeName,
      other: 'gün',
      one: 'gün',
    );
    return '$done/$expectedText $_temp0';
  }

  @override
  String get statsCurrentStreak => 'Häzirki tapgyr';

  @override
  String get statsBestStreak => 'Iň gowy tapgyr';

  @override
  String get statsTotalDays => 'Jemi günler';

  @override
  String get statsConsistency => 'Yzygiderlilik';

  @override
  String get statsLast5Weeks => 'Soňky 5 hepde';

  @override
  String get statsDailyBreakdown => 'Gündelik jikme-jiklik';

  @override
  String get statsCompletionRate => 'Ýerine ýetirme derejesi';

  @override
  String get statsAmountPerDay => 'Gündelik mukdar';

  @override
  String statsCountTotal(String count) {
    return 'Jemi $count';
  }

  @override
  String statsCountAvg(String amount) {
    return 'Ortaça $amount/gün';
  }

  @override
  String statsCountBest(String count, String day) {
    return 'Iň köp $count · $day';
  }

  @override
  String get statsFilterTime => 'Wagt';

  @override
  String get statsFilterCategory => 'Kategoriýa';

  @override
  String get statsFilterAmal => 'Amal';

  @override
  String get statsStreaks => 'Tapgyrlar';

  @override
  String get statsSelectDateRange => 'Sene aralygyny saýlaň';

  @override
  String get historyTitle => 'Taryh';

  @override
  String get jumpToDate => 'Senä geçmek';

  @override
  String historyEmptyDay(String date) {
    return '$date senesinde amal yzarlanmady';
  }

  @override
  String get streakUnitD => 'g';

  @override
  String get streakUnitW => 'h';

  @override
  String get streakUnitM => 'a';

  @override
  String get mondayShort => 'Duş';

  @override
  String get tuesdayShort => 'Siş';

  @override
  String get wednesdayShort => 'Çar';

  @override
  String get thursdayShort => 'Pen';

  @override
  String get fridayShort => 'Ann';

  @override
  String get saturdayShort => 'Şen';

  @override
  String get sundayShort => 'Ýek';

  @override
  String get mondayFull => 'Duşenbe';

  @override
  String get tuesdayFull => 'Sişenbe';

  @override
  String get wednesdayFull => 'Çarşenbe';

  @override
  String get thursdayFull => 'Penşenbe';

  @override
  String get fridayFull => 'Anna';

  @override
  String get saturdayFull => 'Şenbe';

  @override
  String get sundayFull => 'Ýekşenbe';

  @override
  String get hadith0 =>
      '\"Allanyň iň söýýän amallary, az hem bolsa, yzygiderli edilýän amallardyr.\"\n— Buhary we Muslim';

  @override
  String get hadith2 =>
      '\"Adam ogly ölende, onuň amaly kesilýär, diňe üç zat muňa girmeýär: dowamly sadaka, peýdaly ylym ýa-da onuň üçin doga edýän salyh perzent.\"\n— Muslim';

  @override
  String get hadith3 =>
      '\"Kim iki salkyn namazy (bamdat we ikindi) okasa, jennete girer.\"\n— Buhary';

  @override
  String get hadith4 =>
      '\"Alla siziň daşky görnüşiňize ýa-da baýlygyňyza däl, ýüregiňize we amallaryňyza seredýär.\"\n— Muslim';

  @override
  String get hadith6 =>
      '\"Aňsatlaşdyryň, kynlaşdyrmaň; buşlaň, adamlary ürküzmäň.\"\n— Buhary';

  @override
  String get hadith7 =>
      '\"Kim ylym gözläp ýola çyksa, Alla onuň üçin jennete barýan ýoly aňsatlaşdyrar.\"\n— Muslim';

  @override
  String get hadith8 => '\"Sadaka baýlygy azaltmaz.\"\n— Muslim';

  @override
  String get hadith9 =>
      '\"Güýçli mömin ejiz möminden has haýyrly we Alla has söýgülidir, emma her ikisinde-de haýyr bar.\"\n— Muslim';

  @override
  String get hadith10 =>
      '\"Kim günde ýüz gezek \'Subhanallahi we bihamdihi\' diýse, günäleri deňziň köpügi ýaly köp bolsa-da bagyşlanar.\"\n— Buhary we Muslim';

  @override
  String get hadith12 =>
      '\"Kim her parz namazdan soň Aýatul-Kürsi okasa, ony jennete girmekden diňe ölüm saklar.\"\n— Nesaýy';

  @override
  String get hadith13 => '\"Ýagşy söz sadakadyr.\"\n— Buhary we Muslim';

  @override
  String get hadith14 =>
      '\"Alla we ahyret gününe iman eden ýagşy söz aýtsyn ýa-da dymsyn.\"\n— Buhary we Muslim';

  @override
  String get hadith15 =>
      '\"Dul aýala ýa-da garyba hossarlyk edýän Alla ýolunda göreşýän ýalydyr.\"\n— Buhary we Muslim';

  @override
  String get hadith16 => '\"Doganyňa ýylgyrmagyň sadakadyr.\"\n— Tirmizi';

  @override
  String get hadith17 =>
      '\"Siziň iň gowuňyz Kurany öwrenýän we öwredýändir.\"\n— Buhary';

  @override
  String get hadith18 =>
      '\"Hiç kim öz eli bilen gazananyndan has gowy nahar iýen däldir.\"\n— Buhary';

  @override
  String get hadith19 =>
      '\"Alla ýumşakdyr we ähli işde ýumşaklygy söýýär.\"\n— Buhary we Muslim';

  @override
  String historyDayCompleted(String completed, String total) {
    return '$completed/$total ýerine ýetirildi';
  }

  @override
  String get settingsSchedule => 'Wagt tertibi';

  @override
  String get settingsAppearance => 'Daşky görnüş';

  @override
  String get settingsAboutTagline => 'Gündelik din ýoldaşyňyz';

  @override
  String get settingsRolloverSub => 'Günüň täzelenýän wagty';

  @override
  String get settingsAbout => 'Goşundy barada';

  @override
  String get settingsVersion => 'Wersiýa';

  @override
  String get settingsDeveloper => 'Işläp düzüji';

  @override
  String get settingsSupport => 'Goldaw';

  @override
  String get settingsRate => 'Goşundyny bahalandyryň';

  @override
  String get settingsContact => 'Biz bilen habarlaşyň';

  @override
  String get settingsReportBug => 'Ýalňyşlyk barada habar beriň';

  @override
  String get settingsRequestFeature => 'Täze mümkinçilik teklip ediň';

  @override
  String settingsSupportFallback(String email) {
    return 'Poçtany açyp bolmady. Haýyş edýäris, $email salgysyna ýazyň.';
  }

  @override
  String get settingsPrivacyPolicy => 'Gizlilik syýasaty';

  @override
  String get settingsPrivacyOpenFailed => 'Gizlilik syýasatyny açyp bolmady.';

  @override
  String get hadith20 =>
      '\"Kim Ramazan orazasyny iman bilen we sogabyny umyt edip tutsa, onuň geçen günäleri bagyşlanar.\"\n— Buhary we Muslim';

  @override
  String get hadith22 =>
      '\"Azan bilen kamatyň arasyndaky doga ret edilmeýär.\"\n— Abu Dawud';

  @override
  String get hadith23 =>
      '\"Kim Alla üçin metjit gursa, Alla oňa jennetde öý gurar.\"\n— Buhary we Muslim';

  @override
  String get hadith24 =>
      '\"Erkekler üçin iň gowy hatarlar — öňki hatarlar, zenanlar üçin iň gowy hatarlar — yzky hatarlardyr.\"\n— Muslim';

  @override
  String get hadith25 => '\"Oraza dowzahdan galkandyr.\"\n— Nesaýy';

  @override
  String get hadith26 =>
      '\"Kim on iki rekagat sünnet namaz okasa, oňa jennetde öý gurulýar.\"\n— Muslim';

  @override
  String get hadith27 =>
      '\"Kurany gowy okaýan belent perişdeler bilen bile bolar.\"\n— Buhary we Muslim';

  @override
  String get hadith29 => '\"Iň gowy sadaka — suw bermekdir.\"\n— Ahmad';

  @override
  String get hadith30 =>
      '\"Kim möminden bir kynçylygy aýyrsa, Alla Kyýamat gününde ondan bir kynçylygy aýyrar.\"\n— Muslim';

  @override
  String get hadith32 => '\"Haýa imanyň bir bölegidir.\"\n— Buhary we Muslim';

  @override
  String get hadith34 =>
      '\"Kim sabyr etse, Alla oňa sabyr berer.\"\n— Buhary we Muslim';

  @override
  String get hadith36 =>
      '\"Siziň hiç biriňiz özi üçin halaýan zadyny doganyna-da halamaýança, hakyky mömin bolmaz.\"\n— Buhary we Muslim';

  @override
  String get hadith37 =>
      '\"Açlary doýuryň, syrkawlaryň halyny soraň we ýesirleri azat ediň.\"\n— Buhary';

  @override
  String get hadith38 =>
      '\"Güýçli adam göreşde ýeňýän däl, eýsem gaharlananda özüne erk edýändir.\"\n— Buhary we Muslim';

  @override
  String get hadith40 =>
      '\"Her namazdan soň otuz üç gezekden \'SubhanAllah\', \'Alhamdulillah\' we \'Allahu Akbar\' diýiň.\"\n— Muslim';

  @override
  String get hadith41 => '\"Iň gowy zikir — La ilähe illallah.\"\n— Tirmizi';

  @override
  String get hadith42 =>
      '\"Iki nygmat bar, köp adam olary biderek geçirýär: saglyk we boş wagt.\"\n— Buhary';

  @override
  String get hadith43 =>
      '\"Bäş zat gelmänkä bäş zadyň gadyryny biliň: garrylykdan öň ýaşlygyňyzyň, keselden öň saglygyňyzyň, garyplykdan öň baýlygyňyzyň, meşgullykdan öň boş wagtyňyzyň we ölümden öň ömrüňiziň.\"\n— Hakim';

  @override
  String get hadith44 =>
      '\"Kim Yhlas süresini on gezek okasa, Alla oňa jennetde öý gurar.\"\n— Ahmad';

  @override
  String get hadith45 =>
      '\"Parz namazlardan soň iň gowy namaz — gije namazydyr.\"\n— Muslim';

  @override
  String get hadith46 =>
      '\"Sadaka günäleri suw ody öçürişi ýaly öçürýär.\"\n— Tirmizi';

  @override
  String get hadith47 =>
      '\"Garyndaşlyk gatnaşygyny saklaýan ýagşylyga ýagşylyk bilen jogap berýän däl, eýsem garyndaşlary ondan aragatnaşygy üzende-de ony saklaýandyr.\"\n— Buhary';

  @override
  String get hadith49 =>
      '\"Kim nahar iýip: \'Maňa muny iýdiren we meniň hiç hili güýç-kuwwatym bolmazdan muny nesip eden Alla hamd bolsun\' diýse, onuň geçen günäleri bagyşlanar.\"\n— Tirmizi';

  @override
  String get hadith53 =>
      '\"Hiç bir ýagşylygy kiçi görme, hatda doganyň bilen güler ýüz bilen duşuşmak bolsa-da.\"\n— Muslim';

  @override
  String get hadith54 =>
      '\"Siziň iň gowuňyz maşgalasyna iň gowy garaýanyňyzdyr.\"\n— Tirmizi';

  @override
  String get hadith55 =>
      '\"Kim gije Bakara süresiniň soňky iki aýatyny okasa, olar oňa ýeterlik bolar.\"\n— Buhary we Muslim';

  @override
  String get hadith56 =>
      '\"Dünýä peýdalanylýan nygmatdyr, onuň iň haýyrlysy salyha aýaldyr.\"\n— Muslim';

  @override
  String get hadith57 =>
      '\"Üç doga ret edilmez: oraza tutýanyň dogasy, adalatly ýolbaşçynyň dogasy we mazlumyň dogasy.\"\n— Tirmizi';

  @override
  String get hadith58 =>
      '\"Kim maňa bir gezek salawat aýtsa, Alla oňa on gezek rehmet iberer.\"\n— Muslim';

  @override
  String get hadith65 => '\"Mömin möminiň aýnasydyr.\"\n— Abu Dawud';

  @override
  String get hadith66 =>
      '\"Dogruçyllyk ýagşylyga eltýär, ýagşylyk bolsa jennete eltýär.\"\n— Buhary we Muslim';

  @override
  String get hadith67 =>
      '\"Amanaty saňa ynanana gaýtar, saňa hyýanat edene hyýanat etme.\"\n— Abu Dawud we Tirmizi';

  @override
  String get hadith68 =>
      '\"Musulmana ýetýän ýadawlyk, kesel, gaýgy, hasrat, azar ýa-da alada, hatda oňa batan tiken üçin hem Alla onuň käbir günälerini öçürer.\"\n— Buhary we Muslim';

  @override
  String get hadith69 =>
      '\"Musulmanyň doganyna gaýybana eden dogasy hemişe kabul bolýar.\"\n— Muslim';

  @override
  String get hadith70 =>
      '\"Kim Alladan üç gezek jennet sorasa, jennet: «Allahym, ony jennete girizgin» diýer.\"\n— Tirmizi';

  @override
  String get hadith71 =>
      '\"Ramazandan soňky iň fazylatly oraza Allanyň aýy Muharremde tutulýan orazadyr.\"\n— Muslim';

  @override
  String get hadith72 =>
      '\"Kim haj edip, edepsiz söz aýtmasa we günä etmese, ejesinden doglan günündäki ýaly bolup gaýdyp geler.\"\n— Buhary we Muslim';

  @override
  String get hadith73 =>
      '\"Umra indiki umra çenli arasyndaky günäleriň keffaratydyr.\"\n— Buhary we Muslim';

  @override
  String get hadith74 =>
      '\"Garaňky gijäniň bölekleri ýaly pitneler gelmänkä ýagşy amallara howlugyň.\"\n— Muslim';

  @override
  String get hadith75 =>
      '\"Bamdat namazynyň iki rekagaty dünýäden we ondaky ähli zatdan gowudyr.\"\n— Muslim';

  @override
  String get hadith77 =>
      '\"Eger siz Alla hakyky tewekkül etmeli derejede tewekkül etseňiz, Ol guşlary rysgallandyryşy ýaly sizi hem rysgallandyrardy.\"\n— Tirmizi';

  @override
  String get hadith78 =>
      '\"Kim syrkawa baryp görse, gaýdýança jennet bagynda bolar.\"\n— Muslim';

  @override
  String get hadith79 =>
      '\"Salamy ýaýradyň, nahar beriň we adamlar ýatyrka gije namaz okaň — jennete salamatlyk bilen girersiňiz.\"\n— Tirmizi';

  @override
  String get hadith80 =>
      '\"Adamlara şükür etmeýän, Allaha-da şükür etmez.\"\n— Tirmizi';

  @override
  String get hadith81 =>
      '\"Göriplik diňe iki ýagdaýda jaýyzdyr: Alla baýlyk beren we ony hak ýolda sarp edýän adama, Alla hikmet beren we onuň bilen höküm edip, ony öwredýän adama.\"\n— Buhary we Muslim';

  @override
  String get hadith82 =>
      '\"Adam dostunyň dinindedir, şonuň üçin her biriňiz kimi dost tutýandygyna seretsin.\"\n— Abu Dawud we Tirmizi';

  @override
  String get hadith85 =>
      '\"Kim Alla üçin bir zady taşlasa, Alla oňa ondan gowusyny berer.\"\n— Ahmad';

  @override
  String get hadith86 =>
      '\"Kim musulmanyň aýbyny gizlese, Alla Kyýamat gününde onuň aýbyny gizlär.\"\n— Buhary we Muslim';

  @override
  String get hadith87 =>
      '\"Dünýäde ýat adam ýa-da ýolagçy ýaly bol.\"\n— Buhary';

  @override
  String get hadith88 =>
      '\"Kim kynçylykdaky adama aňsatlyk etse, Alla oňa dünýäde we ahyretde aňsatlyk eder.\"\n— Muslim';

  @override
  String get hadith89 =>
      '\"Amallaryň sylagy niýetlere baglydyr.\"\n— Buhary we Muslim';

  @override
  String get hadith90 =>
      '\"Gümandan gaça duruň, sebäbi güman iň ýalan sözdür.\"\n— Buhary we Muslim';

  @override
  String get hadith93 =>
      '\"Bile nahar iýiň we Allanyň adyny tutuň, şonda ol size bereketli bolar.\"\n— Abu Dawud';

  @override
  String get hadith94 =>
      '\"Allany ýatlap oturan adamlary perişdeler gurşap alýar, rahmet olary örtýär we olaryň üstüne rahatlyk iner.\"\n— Muslim';

  @override
  String get hadith95 =>
      '\"Alla bagyşlaýan gulunyň diňe hormatyny artdyrar.\"\n— Muslim';

  @override
  String get hadith96 => '\"Düýäňi daň, soňra Alla tewekkül et.\"\n— Tirmizi';

  @override
  String get hadith97 =>
      '\"Möminiň işi nähili täsin — onuň her bir işi özi üçin haýyrdyr.\"\n— Muslim';

  @override
  String get hadith98 =>
      '\"Musulman musulmanyň doganydyr: oňa zulum etmez, taşlamaz, äsgermezlik etmez.\"\n— Muslim';

  @override
  String get delete => 'Pozmak';

  @override
  String get remove => 'Aýyrmak';

  @override
  String get deleteAmalConfirmTitle => 'Yzarlamadan aýrylsynmy?';

  @override
  String deleteAmalConfirmBody(String title) {
    return '\"$title\" sanawyňyzdan gizlener. Taryhyňyz saklanar.';
  }

  @override
  String get genericError => 'Näsazlyk ýüze çykdy. Gaýtadan synanyşyň.';

  @override
  String get notificationChannelName => 'Amal ýatlatmalary';

  @override
  String get notificationChannelDescription =>
      'Yzarlaýan amallaryňyz üçin gündelik ýatlatmalar.';

  @override
  String get invalidAmalId => 'Nädogry amal ID-si';

  @override
  String get tutorialSettingsRow => 'Muhasabany nädip ulanmaly';

  @override
  String get tutorialSkip => 'Geçmek';

  @override
  String get tutorialNext => 'Indiki';

  @override
  String get tutorialDone => 'Taýýar';

  @override
  String get tutorialTapTitle => 'Ýerine ýetirmek üçin basyň';

  @override
  String get tutorialTapBody =>
      'Bir gezek bassaňyz, amal şu gün üçin ýerine ýetirildi diýip bellenýär. Yzyna almak üçin ýene basyň.';

  @override
  String get tutorialEditTitle => 'Üýtgetmek üçin iki gezek basyň';

  @override
  String get tutorialEditBody =>
      'Üýtgetmek formasyny açýar — adyny ýa-da näçe wagtdan bir gaýtalanýandygyny üýtgedip bilersiňiz.';

  @override
  String get tutorialReorderTitle => 'Tertibi üýtgetmek üçin basyp saklaň';

  @override
  String get tutorialReorderBody =>
      'Setiri basyp saklaň, soňra süýşüriň. Tertibiňiz ýatda saklanýar.';

  @override
  String get tutorialRemoveTitle => 'Aýyrmak üçin süýşüriň';

  @override
  String get tutorialRemoveBody =>
      'Setiri gyra süýşürip, ony şu gün üçin gizläň ýa-da yzarlamagy bes ediň.';

  @override
  String get tutorialCountTitle => 'Gaýtalanmalary sanamak';

  @override
  String get tutorialCountBody =>
      'Birden köp gezek ýerine ýetirilýän amallarda her gezek üçin − we + ulanyň.';

  @override
  String get tutorialViewTitle => 'Toparlamak ýa-da düz sanaw';

  @override
  String get tutorialViewBody =>
      'Kategoriýalar boýunça toparlanan görnüş bilen düz sanawyň arasynda geçiň.';

  @override
  String get tutorialChallengeLogTitle => 'Şu güni bellemek üçin basyň';

  @override
  String get tutorialChallengeLogBody =>
      'Bir basyş şu güni belleýär. Sanalýan maksatda her basyş bir ädim goşýar.';

  @override
  String get tutorialChallengeOpenTitle => 'Açmak üçin iki gezek basyň';

  @override
  String get tutorialChallengeOpenBody =>
      'Maksady açýar — her güni görüň, sypdyran günüňizi düzediň ýa-da ony pozuň.';

  @override
  String get tutorialChallengeDeleteBody =>
      'Maksady pozmak üçin kartany gyra süýşüriň.';

  @override
  String get tutorialChallengeAmountTitle => 'Takyk mukdary bellemek';

  @override
  String get tutorialChallengeAmountBody =>
      'Bir-birden üýtgetmek üçin − we + ulanyň ýa-da takyk mukdary ýazmak üçin sana basyň.';

  @override
  String get challengeOpenDetailsAction => 'Maksadyň jikme-jikliklerini açmak';

  @override
  String get challengesActive => 'Dowam edýän';

  @override
  String get challengesPast => 'Geçen';

  @override
  String challengeJustFinished(int count, String title) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count maksat gutardy — iň soňkusy: $title',
      one: 'Gutardy: $title',
    );
    return '$_temp0';
  }

  @override
  String get challengeSectionEnded => 'Möhleti geçen';

  @override
  String get challengesPastEmpty => 'Entek gutaran maksat ýok.';

  @override
  String get challengesEmptyTitle => 'Entek maksat ýok';

  @override
  String get challengesEmptyBody =>
      'Özüňize bir maksat goýuň — meselem, 7 günde 20 rekagat — we ony şu ýerde yzarlaň.';

  @override
  String get editChallenge => 'Maksady üýtgetmek';

  @override
  String get deleteChallenge => 'Maksady pozmak';

  @override
  String get deleteChallengeConfirm =>
      'Bu maksat we onuň ähli bellenen öňegidişligi pozulsynmy?';

  @override
  String get challengeShapeQuestion => 'Bu nähili maksat?';

  @override
  String get challengeShapeTotal => 'Ýetilmeli umumy san';

  @override
  String get challengeShapeTotalBody =>
      '1000 salawat, 30 jüz. Mukdary ýazýarsyňyz, ol jemlenýär.';

  @override
  String get challengeShapeStreak => 'Gündelik tapgyr';

  @override
  String get challengeShapeStreakBody =>
      'Tähejjüd, jemagat bilen bamdat namazy. Günde bir bellik, mukdary möhüm däl.';

  @override
  String get challengeTargetLabel => 'Ýetilmeli san';

  @override
  String get challengeTargetRequired => 'Noldan uly san giriziň';

  @override
  String get challengeUnitLabel => 'Birlik (islege bagly)';

  @override
  String get challengeUnitHint => 'rekagat, sahypa, gezek';

  @override
  String get challengeOneTapAdds => 'Bir basyş goşýar';

  @override
  String get challengeHowManyDays => 'Näçe gün?';

  @override
  String get challengeReachHowMuch => 'Näçä ýetmeli?';

  @override
  String get challengeSpreadOver => 'Möhlet';

  @override
  String get challengeSpreadEveryDay => 'Her gün';

  @override
  String get challengeSpreadLonger => 'Has uzyn möhlet';

  @override
  String get challengeByWhen => 'Haçana çenli?';

  @override
  String get challengeWindowDuration => 'Möhlet içinde';

  @override
  String get challengeByDate => 'Belli senä çenli';

  @override
  String challengePlanRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String challengePlanExact(String start, String end) {
    return '$start – $end · günde bir, her gün';
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
    return '$start – $end · $window günüň $target güni — $slack güni sypdyryp bilersiňiz';
  }

  @override
  String challengePlanRate(String start, String end, String rate) {
    return '$start – $end · günde takmynan $rate';
  }

  @override
  String challengePlanOpen(String start) {
    return '$start başlaýar · möhletsiz';
  }

  @override
  String challengeTooTight(
    String target,
    String window,
    num targetCount,
    num windowCount,
  ) {
    return '$target gün $window güne sygmaýar — tapgyrda günde diňe bir gün hasaplanýar.';
  }

  @override
  String challengeDurationLabel(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gün',
    );
    return '$_temp0';
  }

  @override
  String get challengeStartDate => 'Başlaýar';

  @override
  String get challengeEndDate => 'Gutarýar';

  @override
  String challengeProgressCount(String done, String target, String unit) {
    return '$done/$target $unit';
  }

  @override
  String challengeProgressPlain(String done, String target) {
    return '$done/$target';
  }

  @override
  String challengeProgressDays(String done, String target) {
    return '$done/$target gün';
  }

  @override
  String challengeDaysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gün galdy',
    );
    return '$_temp0';
  }

  @override
  String get challengeNoDeadline => 'Möhletsiz';

  @override
  String challengeOnTrack(String rate) {
    return 'Meýilnama boýunça · $rate/gün';
  }

  @override
  String challengeBehind(String rate) {
    return 'Yzda · $rate/gün gerek';
  }

  @override
  String challengeLastDay(String remaining) {
    return 'Soňky gün · $remaining galdy';
  }

  @override
  String get challengeReached => 'Maksada ýetildi';

  @override
  String get challengeCompleted => 'Tamamlandy';

  @override
  String challengeEnded(String done, String target) {
    return 'Möhleti geçdi · $done/$target';
  }

  @override
  String get challengeExpiredTitle => 'Maksadyň möhleti gutardy';

  @override
  String challengeExpiredBody(String title, String done, String target) {
    return '$title: möhlet gutardy, netije $done/$target.';
  }

  @override
  String get challengeExtend => 'Uzaltmak';

  @override
  String get challengeRestart => 'Täzeden başlamak';

  @override
  String get challengeArchive => 'Arhiwe geçirmek';

  @override
  String get challengeDailyBreakdown => 'Gündelik ýazgylar';

  @override
  String challengeNudgeBody(String title, String rate) {
    return '$title: wagtynda tamamlamak üçin günde $rate.';
  }

  @override
  String challengeLastDayBody(String title, String remaining) {
    return '$title: soňky gün — $remaining galdy.';
  }

  @override
  String get challengeGroupGoal => 'Maksat';

  @override
  String get challengeGroupShape => 'Görnüşi';

  @override
  String get challengeGroupPlan => 'Meýilnama';

  @override
  String get challengeGroupReminders => 'Ýatlatmalar';

  @override
  String get challengeStartFromTemplate => 'Şablondan başlaň';

  @override
  String get challengeTemplateBlank => 'Boş';

  @override
  String get challengePreview => 'Deslapky görnüş';

  @override
  String get challengeTmplTahajjud => '40 gije tähejjüd';

  @override
  String get challengeTmplSalawat => '1000 salawat';

  @override
  String get challengeTmplKhatm => '30 günde Kuran hatymy';

  @override
  String get challengeTmplFajrJamaah => '30 gün bamdady jemagat bilen';

  @override
  String get challengeTmplSadaqah => '30 gün sadaka';

  @override
  String get listSeparator => ' · ';

  @override
  String get tierRafiq => 'Rafyk';

  @override
  String get tierNasir => 'Nasyr';

  @override
  String get tierMuhsin => 'Muhsin';

  @override
  String get tierAnsar => 'Ensar';

  @override
  String get tierRafiqMeaning => 'ýoldaş';

  @override
  String get tierNasirMeaning => 'goldawçy';

  @override
  String get tierMuhsinMeaning => 'haýyr-sahawatly';

  @override
  String get tierAnsarMeaning => 'kömekçi';

  @override
  String get supportCardBody =>
      'Mugt, mahabatsyz, hasap açmak hem gerek däl. Isleseňiz, goşant bilen onuň ösüşini goldap bilersiňiz — islendik möçberde, islän wagtyňyz.';

  @override
  String get supportCta => 'Muhasabany goldaň';

  @override
  String get supportAgain => 'Ýene goldaň';

  @override
  String get supporterThanks =>
      'Alla razy bolsun — inşalla, Muhasaba mugt we mahabatsyz bolup galar.';

  @override
  String supporterSince(String tier, String month) {
    return '$month aýyndan bäri $tier';
  }

  @override
  String get supportPromptTitle => 'Muhasabany goldaň';

  @override
  String get supportPromptBody =>
      'Muhasaba mugt, mahabatsyz, hasap açmak hem gerek däl. Isleseňiz, goşant bilen onuň ösüşini goldap bilersiňiz — islendik möçberde, islän wagtyňyz. Hiç bir mümkinçilik muňa bagly däl.';

  @override
  String get supportPromptNow => 'Häzir goldaň';

  @override
  String get supportPromptLater => 'Soňrak ýatladyň';

  @override
  String get supportPromptNever => 'Gaýtadan soramaň';

  @override
  String get tipSheetTitle => 'Muhasabany goldaň';

  @override
  String get tipSheetBody =>
      'Islendik möçberi, isleseňiz näçe gezek bolsa-da saýlaň. Goşantlar goşundynyň işlemegine sarp edilýär — inşalla, ol mugt we mahabatsyz bolup galar. Minnetdarlyk hökmünde Sazlamalarda goldawçy diýip bellenersiňiz.';

  @override
  String tipSheetSupporterLine(String tier) {
    return '$tier — Alla razy bolsun.';
  }

  @override
  String get tipSheetSupporterAgain => 'Islän wagtyňyz ýene goldap bilersiňiz.';

  @override
  String tipSheetStoreNote(String store) {
    return 'Töleg $store arkaly amala aşyrylýar — töleg maglumatlaryňyzy biz hiç haçan görmeýäris.';
  }

  @override
  String get tipSheetOtherWays => 'Size laýyk wariant tapmadyňyzmy?';

  @override
  String get tipSheetWriteToUs => 'Bize ýazyň';

  @override
  String get supportEmailBody =>
      'Essalamu aleýkum,\n\nMuhasabanyň ösüşini gönüden-göni goldamak isleýärin.\n\nÝurt:\nNädip ibermek isleýärin:\nMöçber (islege bagly):';

  @override
  String tipBusy(String store) {
    return '$store açylýar…';
  }

  @override
  String get tipThanks => 'Alla razy bolsun — Alla sizden kabul etsin.';

  @override
  String get tipDone => 'Taýýar';

  @override
  String get tipFailed => 'Satyn alma tamamlanmady. Töleg alynmady.';

  @override
  String tipPending(String store) {
    return 'Goşandyňyz $store tarapyndan tassyklanmagyna garaşýar — tassyklanandan soň nyşanyňyz goşular.';
  }

  @override
  String get tipUnavailable => 'Häzir bu enjamda satyn almak mümkin däl.';

  @override
  String get optionSetJamaa => 'Jemagat';

  @override
  String get optionJamaaAlone => 'Ýeke';

  @override
  String get optionJamaaHome => 'Öýde jemagat';

  @override
  String get optionJamaaMasjid => 'Metjitde jemagat';

  @override
  String get optionSetOnTime => 'Okalan wagty';

  @override
  String get optionOnTimeOnTime => 'Wagtynda';

  @override
  String get optionOnTimeLate => 'Giç';

  @override
  String get optionOnTimeQada => 'Kaza';

  @override
  String get optionSetQuranSession => 'Kuran sapagy';

  @override
  String get optionQuranRecited => 'Okaldy';

  @override
  String get optionQuranMemorised => 'Ýat tutuldy';

  @override
  String get optionQuranMeaning => 'Manysy bilen';

  @override
  String get optionQuranListened => 'Diňlenildi';

  @override
  String get optionSetSadaqahType => 'Sadaka görnüşi';

  @override
  String get optionSadaqahMoney => 'Pul';

  @override
  String get optionSadaqahFood => 'Iýmit';

  @override
  String get optionSadaqahTime => 'Wagt';

  @override
  String get optionSadaqahOther => 'Beýleki';

  @override
  String get optionSetIntensity => 'Dereje';

  @override
  String get optionIntensityLight => 'Ýeňil';

  @override
  String get optionIntensityModerate => 'Orta';

  @override
  String get optionIntensityIntense => 'Güýçli';

  @override
  String get optionSetNewTitle => 'Täze wariantlar toplumy';

  @override
  String get optionSetEditTitle => 'Wariantlar toplumyny üýtgetmek';

  @override
  String get optionSetNameLabel => 'Toplumyň ady';

  @override
  String get optionSetNameHint => 'mes. Jemagat';

  @override
  String get optionsLabel => 'Wariantlar';

  @override
  String get optionAdd => 'Wariant goşmak';

  @override
  String optionHint(int index) {
    return 'Wariant $index';
  }

  @override
  String optionsMaxReached(int max) {
    return 'Iň köp $max wariant.';
  }

  @override
  String get optionSetPreviewLabel => 'Deslapky görnüş — Bu gün setiri';

  @override
  String optionSetKeptForHistory(String labels) {
    return 'Taryh üçin saklanan: $labels';
  }

  @override
  String get optionSetDelete => 'Toplumy pozmak';

  @override
  String get optionSetDeleteConfirm =>
      'Bu toplumy ulanýan amallarda indi wariantlar görkezilmez. Eýýäm bellenen günlerde saýlanan wariant saklanýar.';

  @override
  String get optionSetNameRequired => 'Topluma at beriň';

  @override
  String get optionsMinRequired => 'Iň azyndan iki wariant goşuň';

  @override
  String get optionSetNameTooLong => 'Toplumyň ady gaty uzyn';

  @override
  String optionTooLong(int index) {
    return 'Wariant $index gaty uzyn';
  }

  @override
  String get optionSetNone => 'Ýok';

  @override
  String get optionSetNew => 'Täze toplum';

  @override
  String get requireChoiceLabel => 'Wariant saýlamak hökmany';

  @override
  String get requireChoiceHelp => 'Wariant saýlanmasa, setir bellenmez';

  @override
  String get requireChoicePickSetFirst => 'Ilki toplumy saýlaň';

  @override
  String get requireChoiceCountHelp =>
      'Sanalýan amallar − we + arkaly ýerine ýetirilýär';

  @override
  String optionsUsedOf(int used, int max) {
    return '$max wariantdan $used ulanyldy.';
  }

  @override
  String get choiceNeeded => 'Saýlamaly';

  @override
  String optionSelected(String label) {
    return '$label, saýlandy';
  }

  @override
  String optionNotSelected(String label) {
    return '$label, saýlanmadyk';
  }

  @override
  String optionBreakdownTitle(String set) {
    return 'Wariantlar boýunça — $set';
  }

  @override
  String optionBreakdownCaption(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Wariant saýlanan $count gezek boýunça paýlar',
    );
    return '$_temp0';
  }

  @override
  String optionNoChoiceRecorded(int none, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other: '$total günüň',
    );
    return 'Wariant bellenmedi — ýerine ýetirilen $_temp0 $none güni';
  }

  @override
  String get optionRemovedSuffix => 'aýrylan';

  @override
  String get optionAllAmals => 'Hemmesi';

  @override
  String optionScopedCaption(String amal, int count) {
    return '$amal · $count bellenen';
  }

  @override
  String get optionBreakdownSectionTitle => 'Wariantlar boýunça';

  @override
  String optionBreakdownSwipeHint(int count) {
    return '$count toplum · süýşüriň';
  }

  @override
  String get optionDetailEmpty => 'Bu toplum üçin entek wariant bellenmedi.';

  @override
  String get optionDetailTrendHeading => 'Nähili üýtgedi';

  @override
  String optionDetailTrendReadout(String option, String from, String to) {
    return '$option paýy birinji hepdede $from, soňky hepdede $to boldy.';
  }

  @override
  String get optionDetailByAmalHeading => 'Amal boýunça';

  @override
  String optionDetailByAmalReadout(
    String best,
    String bestShare,
    String worst,
    String worstShare,
  ) {
    return 'Iň ýokary: $best ($bestShare); iň pes: $worst ($worstShare).';
  }

  @override
  String get optionDetailRecordsHeading => 'Rekordlar';

  @override
  String get optionDetailLongestRun => 'Iň uzyn tapgyr';

  @override
  String get optionDetailBestWeek => 'Iň gowy hepde';

  @override
  String get optionDetailCurrentRun => 'Häzirki tapgyr';

  @override
  String get optionDetailRecordsCaption =>
      'Soňky bir ýyl esasynda hasaplanýar; ýokardaky döwür süzgüjine bagly däl.';

  @override
  String get optionDetailRecentDaysHeading => 'Soňky günler';

  @override
  String optionDetailRecentDaysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Soňky $count gün',
      one: 'Soňky 1 gün',
    );
    return '$_temp0';
  }

  @override
  String get amalFivePrayers => 'Bäş wagt namaz';

  @override
  String get amalJumuah => 'Juma namazy';

  @override
  String get amalWitr => 'Witr namazy';

  @override
  String get amalQada => 'Kaza namazlary';

  @override
  String get amalFajrSunnah => 'Bamdat namazynyň sünneti';

  @override
  String get amalDhuhrSunnah => 'Öýle namazynyň sünneti';

  @override
  String get amalAsrSunnah => 'Ikindi namazynyň sünneti';

  @override
  String get amalMaghribSunnah => 'Agşam namazynyň sünneti';

  @override
  String get amalIshaSunnah => 'Ýassy namazynyň sünneti';

  @override
  String get amalRawatib => 'Müekked sünnetler';

  @override
  String get amalSiwak => 'Miswak';

  @override
  String get amalWuduSleep => 'Ýatmazdan öň täret';

  @override
  String get amalFridayGhusl => 'Juma güni gusul';

  @override
  String get amalIshraq => 'Işrak namazy';

  @override
  String get amalWuduPrayer => 'Täretden soň iki rekagat';

  @override
  String get amalTahiyyah => 'Tahiýýetul-mesjid';

  @override
  String get amalEarlyJumuah => 'Juma namazyna ir gitmek';

  @override
  String get amalAfterSalah => 'Namazdan soňky zikirler';

  @override
  String get amalAfterFajr => 'Bamdatdan soňky zikirler';

  @override
  String get amalAfterDhuhr => 'Öýleden soňky zikirler';

  @override
  String get amalAfterAsr => 'Ikindiden soňky zikirler';

  @override
  String get amalAfterMaghrib => 'Agşamdan soňky zikirler';

  @override
  String get amalAfterIsha => 'Ýassydan soňky zikirler';

  @override
  String get amalAyatKursi => 'Aýatul-Kürsi';

  @override
  String get amalKursiFajr => 'Bamdatdan soň Aýatul-Kürsi';

  @override
  String get amalKursiDhuhr => 'Öýleden soň Aýatul-Kürsi';

  @override
  String get amalKursiAsr => 'Ikindiden soň Aýatul-Kürsi';

  @override
  String get amalKursiMaghrib => 'Agşamdan soň Aýatul-Kürsi';

  @override
  String get amalKursiIsha => 'Ýassydan soň Aýatul-Kürsi';

  @override
  String get amalSayyidIstighfar => 'Seýýidul-istigfar';

  @override
  String get amalSalawat => 'Salawat';

  @override
  String get amalSubhanallah => 'Subhanallahi we bihamdihi';

  @override
  String get amalTahlil => 'La ilähe illallah';

  @override
  String get amalBedtimeAdhkar => 'Ýatmazdan öňki zikirler';

  @override
  String get amalFridaySalawat => 'Juma güni salawat';

  @override
  String get amalHawqala => 'La hawla we la kuwwata';

  @override
  String get amalTasbihFatimah => 'Fatimanyň tesbihi';

  @override
  String get amalWakingAdhkar => 'Oýanandaky zikirler';

  @override
  String get amalDuaAdhan => 'Azandan soňky doga';

  @override
  String get amalDuaIqamah => 'Azan bilen kamatyň arasyndaky doga';

  @override
  String get amalDuaSujood => 'Sejdedäki doga';

  @override
  String get amalDuaParents => 'Ata-ene üçin doga';

  @override
  String get amalDuaOthers => 'Başgalar üçin doga';

  @override
  String get amalFridayHour => 'Jumanyň soňky sagadyndaky doga';

  @override
  String get amalLastThird => 'Gijäniň soňky üçden birinde doga';

  @override
  String get amalMulk => 'Mülk süresi';

  @override
  String get amalBaqarahEnd => 'Bakaranyň soňky iki aýaty';

  @override
  String get amalSajdah => 'Sejde süresi';

  @override
  String get amalQuls => 'Yhlas, Falak we Nas';

  @override
  String get amalYasin => 'Ýasin süresi';

  @override
  String get amalWaqiah => 'Wakyga süresi';

  @override
  String get amalHifz => 'Kuran ýatlamak';

  @override
  String get amalMurajaah => 'Ýatlananlary gaýtalamak';

  @override
  String get amalTafsir => 'Tefsir';

  @override
  String get amalListenQuran => 'Kuran diňlemek';

  @override
  String get amalTeachQuran => 'Kuran öwretmek';

  @override
  String get amalMonThu => 'Duşenbe we penşenbe orazasy';

  @override
  String get amalThreeDays => 'Aýda üç gün oraza';

  @override
  String get amalDailySadaqah => 'Gündelik sadaka';

  @override
  String get amalFeed => 'Birine nahar bermek';

  @override
  String get amalHelpNeed => 'Mätäje kömek';

  @override
  String get amalOrphan => 'Ýetime howandarlyk';

  @override
  String get amalGiveWater => 'Suw bermek';

  @override
  String get amalLearnHadith => 'Bir hadys öwrenmek';

  @override
  String get amalReadBook => 'Dini kitap okamak';

  @override
  String get amalSeerah => 'Siýeri öwrenmek';

  @override
  String get amalClass => 'Sapaga gatnaşmak';

  @override
  String get amalArabic => 'Arap dilini öwrenmek';

  @override
  String get amalLearnDua => 'Täze doga öwrenmek';

  @override
  String get amalShare => 'Öwrenenleriňizi paýlaşmak';

  @override
  String get amalFiqh => 'Fykh öwrenmek';

  @override
  String get amalMuhasaba => 'Gijeki muhasaba';

  @override
  String get amalSpeakGood => 'Ýagşy söz aýtmak ýa-da dymmak';

  @override
  String get amalNoBackbiting => 'Gybatdan saklanmak';

  @override
  String get amalAnger => 'Gahary ýeňmek';

  @override
  String get amalGaze => 'Gözi haramdan saklamak';

  @override
  String get amalTruthful => 'Dogruçyllyk';

  @override
  String get amalSmile => 'Ýylgyrmak';

  @override
  String get amalSalam => 'Salamy ýaýratmak';

  @override
  String get amalForgive => 'Başgalary bagyşlamak';

  @override
  String get amalGratitude => 'Şükür';

  @override
  String get amalVisitSick => 'Näsagyň halyny soramak';

  @override
  String get amalNeighbours => 'Goňşa ýagşylyk';

  @override
  String get amalRemoveHarm => 'Ýoldan zyýanly zady aýyrmak';

  @override
  String get amalParents => 'Ata-enä ýagşylyk';

  @override
  String get amalFamilyTies => 'Garyndaşlyk gatnaşygyny saklamak';

  @override
  String get amalHelpHome => 'Öý işlerine kömek';

  @override
  String get amalTeachChildren => 'Çagalara din öwretmek';

  @override
  String get amalSpouse => 'Ýanýoldaşa ýagşy garamak';

  @override
  String get categoryDua => 'Doga';

  @override
  String get categoryFasting => 'Oraza';

  @override
  String get categoryKnowledge => 'Ylym';

  @override
  String get categoryCharacter => 'Ahlak';

  @override
  String get categoryFamily => 'Maşgala';

  @override
  String get libraryTitle => 'Amallar kitaphanasy';

  @override
  String get librarySearchHint => 'Amal gözläň';

  @override
  String get libraryAll => 'Hemmesi';

  @override
  String get libraryAdded => '«Bu gün» sanawyna goşuldy';

  @override
  String libraryAddedShowsOn(String days) {
    return 'Goşuldy · görkeziljek günler: $days';
  }

  @override
  String libraryNoMatch(String query) {
    return '“$query” boýunça amal tapylmady';
  }

  @override
  String libraryCreateNamed(String query) {
    return 'Döretmek: “$query”';
  }

  @override
  String get libraryPickBanner => 'Amallar kitaphanasyndan saýlaň';

  @override
  String libraryPickBannerSubtitle(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countText taýýar amal',
      one: '$countText taýýar amal',
    );
    return '$_temp0';
  }

  @override
  String get libraryFilledIn => 'Amallar kitaphanasyndan dolduryldy';

  @override
  String get libraryChange => 'Üýtgetmek';

  @override
  String get libraryEditAction => 'Üýtgetmek';

  @override
  String libraryWeeklyAny(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Hepdede $countText gün',
      one: 'Hepdede bir gezek',
    );
    return '$_temp0';
  }

  @override
  String libraryMonthlyAny(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Aýda $countText gün',
      one: 'Aýda bir gezek',
    );
    return '$_temp0';
  }

  @override
  String libraryTimes(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countText gezek',
    );
    return '$_temp0';
  }

  @override
  String get libraryAnyAmount => 'Islendik mukdar';

  @override
  String libraryAddTooltip(String title) {
    return 'Goşmak: $title';
  }

  @override
  String get libraryOnList => 'Sanawyňyzda bar';

  @override
  String get todayEmptyBrowse => 'Amallar kitaphanasyny açmak';
}
