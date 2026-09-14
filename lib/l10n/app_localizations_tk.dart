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
  String get insightsDaily => 'Günlük';

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
  String get archivedRestore => 'Yzyna gaýtar';

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
  String get titleRequired => 'At gerek';

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
  String get timesPerPeriod => 'Döwür boýunça gezek';

  @override
  String get custom => 'Özbaşdak';

  @override
  String get customTargetHint => 'mes. 50';

  @override
  String get targetAny => 'Islendik';

  @override
  String get targetAnyHelp =>
      'Maksat ýok — islendik mukdar ýerine ýetirilen hasaplanýar';

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
    return 'Her $days gaýtalanýar';
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
    return 'Diňe $date-de';
  }

  @override
  String get startPreChecked => 'Belgilenen bolup başla';

  @override
  String get startPreCheckedSubtitle =>
      'Täze döwür başlanda, bu amal siz pozýançaňyz ýerine ýetirilen hasaplanýar.';

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
      'Amallaryňyzy yzarlamak üçin ýumşak ýatlatma';

  @override
  String get dailyReminderTimeLabel => 'Ýatlatma wagty';

  @override
  String get dailyReminderBody =>
      'Bu günki amallaryňyzy yzarlamak üçin biraz wagt aýryň.';

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
    return '$target-dan $progress ýerine ýetirildi';
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
  String get categoryEditSheetTitle => 'Kategoriýany redaktirlemek';

  @override
  String get addAmal => 'Amal goşmak';

  @override
  String get customAmal => 'Özbaşdak amal';

  @override
  String get amalTasbih => 'Tesbih 33x';

  @override
  String get amalIstighfar => 'Istigfar 100x';

  @override
  String get amalSurahKahf => 'Kehf süresi';

  @override
  String get amalSadaqah => 'Sadaka';

  @override
  String get amalTahajjud => 'Tähejjüd';

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
  String get sectionDayBoundary => 'Gün arasy';

  @override
  String get rolloverHour => 'Geçiş sagady';

  @override
  String get rolloverAtMidnight => 'Bu gün ýary gijede gutarýar.';

  @override
  String rolloverSubtitle(String time) {
    return 'Düýnki amallar $time-a çenli üýtgedilip bilinýär.';
  }

  @override
  String get pickRolloverHour => 'Günüň geçýän sagadyny saýlaň';

  @override
  String get sectionWeekMonth => 'Hepde we aý';

  @override
  String get startOfWeek => 'Hepdäniň başy';

  @override
  String get startOfMonth => 'Aýyň başy';

  @override
  String get startOfMonthClamped =>
      '28-den soňky günler gysga aýlarda aýyň soňky gününe laýyklaşdyrylýar.';

  @override
  String get sectionAppearance => 'Görkez';

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
      'Şahsy dini jogapkärçilik žurnalyňyz. Ähli maglumatlar bu enjamdadyr.';

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
      'Entek amal ýok. Yzarlamaga başlamak üçin Bu gün sahypasynda goşuň.';

  @override
  String get statsToday => 'Bu gün';

  @override
  String get statsThisWeek => 'Bu hepde';

  @override
  String get statsThisMonth => 'Bu aý';

  @override
  String get statsAllTime => 'Ähli wagt';

  @override
  String get statsCustomRange => 'Özbaşdak aralyk';

  @override
  String get statsAllCategories => 'Hemmesi';

  @override
  String get statsAllAmals => 'Hemmesi';

  @override
  String get statsCompleted => 'Ýerine ýetirildi';

  @override
  String get statsExpected => 'Garaşylýan';

  @override
  String get statsVsPrevious => 'Öňküsi bilen';

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
  String get statsAmountPerDay => 'Günlük mukdar';

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
      '\"Allanyň iň söýýän amallary, az hem bolsa, yzygiderli edilýän amallardyr.\"\n— Buhari we Muslim';

  @override
  String get hadith2 =>
      '\"Adam ogly ölende, amallary üç zatdan başga kesilýär: dowamly sadaka, peýdaly ylym ýa-da onuň üçin doga edýän salyh perzent.\"\n— Muslim';

  @override
  String get hadith3 =>
      '\"Kim iki salkyn namazy (Ertir we Ikindi) okasa, jennete girer.\"\n— Buhari';

  @override
  String get hadith4 =>
      '\"Alla siziň daşky görnüşiňize ýa-da baýlygyňyza däl, ýüregiňize we amallaryňyza seredýär.\"\n— Muslim';

  @override
  String get hadith6 =>
      '\"Aňsatlaşdyryň, kynlaşdyrmaň; buşluk habar beriň, adamlary gaýtarmaň.\"\n— Buhari';

  @override
  String get hadith7 =>
      '\"Kim ylym gözläp ýola çyksa, Alla onuň üçin jennete barýan ýoly aňsatlaşdyrar.\"\n— Muslim';

  @override
  String get hadith8 => '\"Sadaka baýlygy azaltmaz.\"\n— Muslim';

  @override
  String get hadith9 =>
      '\"Güýçli mömin ejiz möminden gowusy hem Alla has söýgülisidir, her ikisinde hem haýyr bardyr.\"\n— Muslim';

  @override
  String get hadith10 =>
      '\"Kim günde ýüz gezek \'SubhanAllahi we bihamdihi\' diýse, günäleri bagyşlanar, deňziň köpügi ýaly bolsa-da.\"\n— Buhari we Muslim';

  @override
  String get hadith12 =>
      '\"Kim her parz namazdan soň Aýat al-Kursi okasa, ony jennete girmekden diňe ölüm saklar.\"\n— Nesaýy';

  @override
  String get hadith13 => '\"Ýagşy söz sadakadyr.\"\n— Buhari we Muslim';

  @override
  String get hadith14 =>
      '\"Allaha we ahyret gününe iman eden, ýagşylyk aýtsyn ýa-da dymyp otursyn.\"\n— Buhari we Muslim';

  @override
  String get hadith15 =>
      '\"Dul aýala we garyba seretýän, Allah ýolunda söweşiji ýalydyr.\"\n— Buhari we Muslim';

  @override
  String get hadith16 => '\"Doganyňa ýylgyrmagyň sadakadyr.\"\n— Tirmizi';

  @override
  String get hadith17 =>
      '\"Siziň iň gowuňyz Kurany öwrenýän we öwredýändir.\"\n— Buhari';

  @override
  String get hadith18 =>
      '\"Hiç kim öz eliniň zähmetinden gowy nahar iýmändir.\"\n— Buhari';

  @override
  String get hadith19 =>
      '\"Allah ýumşakdyr we ähli işde ýumşaklygy söýýär.\"\n— Buhari we Muslim';

  @override
  String historyDayCompleted(String completed, String total) {
    return '$total-dan $completed ýerine ýetirildi';
  }

  @override
  String get settingsSchedule => 'Tertip';

  @override
  String get settingsAppearance => 'Daşky görnüş';

  @override
  String get settingsAboutTagline => 'Gündelik din ýoldaşyňyz';

  @override
  String get settingsRolloverSub => 'Gün haçan täzelenýär';

  @override
  String get settingsAbout => 'Hakynda';

  @override
  String get settingsVersion => 'Wersiýa';

  @override
  String get settingsDeveloper => 'Dörediji';

  @override
  String get settingsSupport => 'Goldaw';

  @override
  String get settingsRate => 'Goşundyny bahalandyryň';

  @override
  String get settingsContact => 'Biz bilen habarlaşyň';

  @override
  String get settingsReportBug => 'Säwligi habar beriň';

  @override
  String get settingsRequestFeature => 'Aýratynlyk talap ediň';

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
      '\"Kim Ramazanda iman we sogap umydy bilen oraza tutsa, onuň geçen günäleri bagyşlanýar.\"\n— Buhari we Muslim';

  @override
  String get hadith22 =>
      '\"Azan bilen ykamat arasyndaky doga ret edilmeýär.\"\n— Abu Dawud';

  @override
  String get hadith23 =>
      '\"Kim Alla üçin metjit gursa, Alla oňa jennetde öý gurar.\"\n— Buhari we Muslim';

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
      '\"Kurany gowy bilýän şahs belent perişdeler bilen bile bolar.\"\n— Buhari we Muslim';

  @override
  String get hadith29 => '\"Iň gowy sadaka — suw bermekdir.\"\n— Ahmad';

  @override
  String get hadith30 =>
      '\"Kim möminden bir kynçylygy aýyrsa, Alla Kyýamat gününde ondan bir kynçylygy aýyrar.\"\n— Muslim';

  @override
  String get hadith32 =>
      '\"Utanç — imandan bir bölegidir.\"\n— Buhari we Muslim';

  @override
  String get hadith34 =>
      '\"Kim sabyr etse, Alla oňa sabyr berer.\"\n— Buhari we Muslim';

  @override
  String get hadith36 =>
      '\"Siziň hiç biriňiz özi üçin halaýanyny doganyna-da halamaguňça, hakyky mömin bolmaz.\"\n— Buhari we Muslim';

  @override
  String get hadith37 =>
      '\"Açlary doýuryň, syrkawlary göruň we tussaglary azat ediň.\"\n— Buhari';

  @override
  String get hadith38 =>
      '\"Güýçli adam — göreşde ýeňýän däl, gaharlananda özüne erk edýän adamdyr.\"\n— Buhari we Muslim';

  @override
  String get hadith40 =>
      '\"Her namazdan soň otuz üç gezek \'SubhanAllah\', \'Alhamdulillah\' we \'Allahu Akbar\' diýiň.\"\n— Muslim';

  @override
  String get hadith41 => '\"Iň gowy zikir — La ilähe illallah.\"\n— Tirmizi';

  @override
  String get hadith42 =>
      '\"Iki nygmat bar, köp adam olary elden gidirýär: saglyk we boş wagt.\"\n— Buhari';

  @override
  String get hadith43 =>
      '\"Bäşden öň bäşe baha beriň: ýaşlygyňyzy garrylygyňyza, saglygyňyzy keselligiňize, baýlygyňyzy garyplygyňyza, boş wagtyňyzy meşgulligiňize we ýaşaýşyňyzy ölümiňize seredip.\"\n— Hakim';

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
      '\"Garyndaşlyk gatnaşygyny saklaýjy — jogap beriji däl, aragatnaşyk üzülende-de ony dowam etdirýändir.\"\n— Buhari';

  @override
  String get hadith49 =>
      '\"Kim nahar iýip: \'Maňa muny iýdiren we meniň hiç hili güýç-kuwwatym bolmazdan muny nesip eden Allaha hamd bolsun\' diýse, onuň geçen günäleri bagyşlanýar.\"\n— Tirmizi';

  @override
  String get hadith53 =>
      '\"Hiç bir ýagşylygy kiçeltme, hatda doganyň bilen ýylgyryp görüşmek bolsa-da.\"\n— Muslim';

  @override
  String get hadith54 =>
      '\"Siziň iň gowuňyz maşgalasyna iň gowy garaýanyňyzdyr.\"\n— Tirmizi';

  @override
  String get hadith55 =>
      '\"Kim gije Bakara süresiniň soňky iki aýatyny okasa, bu oňa ýeterlikdir.\"\n— Buhary we Muslim';

  @override
  String get hadith56 =>
      '\"Dünýä bir haryt, iň gowy haryt bolsa — salyha aýaldyr.\"\n— Muslim';

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
      '\"Musulmana ýetýän ýadawlyk, kesel, gaýgy, hasrat, zyýan ýa-da alada, hatda tiken batsa-da, Alla onuň günäleriniň bir bölegini bagyşlar.\"\n— Buhary we Muslim';

  @override
  String get hadith69 =>
      '\"Musulmanyň doganyna gaýybana eden dogasy hemişe kabul bolýar.\"\n— Muslim';

  @override
  String get hadith70 =>
      '\"Kim Alladan üç gezek jennet sorasa, jennet diýýär: Allahym, ony jennete giriziň.\"\n— Tirmizi';

  @override
  String get hadith71 =>
      '\"Ramazandan soňky iň fazylatly oraza — Allanyň aýy Muharremdir.\"\n— Muslim';

  @override
  String get hadith72 =>
      '\"Kim haj edip, erbet söz aýtmasa we günä etmese, ejesiniň dogran güni ýaly gaýdyp geler.\"\n— Buhary we Muslim';

  @override
  String get hadith73 =>
      '\"Bir umra beýleki umra çenli arasyndaky günäleriň keffaratydyr.\"\n— Buhary we Muslim';

  @override
  String get hadith74 =>
      '\"Garaňky gijäniň bölegi ýaly pitneler gelmänkä ýagşylyk işlerine howlugyň.\"\n— Muslim';

  @override
  String get hadith75 =>
      '\"Ertir namazynyň iki rekagaty dünýäden we ondaky ähli zatdan gowudyr.\"\n— Muslim';

  @override
  String get hadith77 =>
      '\"Eger siz Alla mynasyp tewekkül etseňiz, Ol sizi guşlary rysgallandyryşy ýaly rysgallandyrardy.\"\n— Tirmizi';

  @override
  String get hadith78 =>
      '\"Kim syrkawa baryp görse, gaýdýança jennet bagynda bolar.\"\n— Muslim';

  @override
  String get hadith79 =>
      '\"Salamy ýaýyň, nahar beriň we adamlar ýatyrka gije namaz okaň — jennete parahatçylyk bilen girersiňiz.\"\n— Tirmizi';

  @override
  String get hadith80 =>
      '\"Adamlara şükür etmeýän, Allaha-da şükür etmez.\"\n— Tirmizi';

  @override
  String get hadith81 =>
      '\"Göriplik diňe iki ýagdaýda jaýyzdyr: Alla baýlyk beren adam ony hak ýolda sarp etse, we Alla hikmet beren adam onuň bilen höküm çykaryp öwretse.\"\n— Buhari we Muslim';

  @override
  String get hadith82 =>
      '\"Adam dostunyň dinine eýerýär, şonuň üçin her biriňiz kim bilen dost bolýandygyňyza serediň.\"\n— Abu Dawud we Tirmizi';

  @override
  String get hadith85 =>
      '\"Kim Allah üçin bir zady taşlasa, Allah oňa ondan gowusyny berer.\"\n— Ahmad';

  @override
  String get hadith86 =>
      '\"Kim musulmanyň aýbyny gizlese, Alla Kyýamat gününde onuň aýbyny gizlär.\"\n— Buhari we Muslim';

  @override
  String get hadith87 =>
      '\"Dünýäde ýat adam ýa-da ýolagçy ýaly bol.\"\n— Buhari';

  @override
  String get hadith88 =>
      '\"Kim kynçylykdaky adama aňsatlyk etse, Alla oňa dünýäde we ahyretde aňsatlyk eder.\"\n— Muslim';

  @override
  String get hadith89 =>
      '\"Amallaryň sylagy niýetlere baglydyr.\"\n— Buhari we Muslim';

  @override
  String get hadith90 =>
      '\"Güman etmekden gaça duruň, sebäbi güman iň ýalan sözdür.\"\n— Buhari we Muslim';

  @override
  String get hadith93 =>
      '\"Bile naharlaňyň we Allanyň adyny tutuň, size bereketli bolar.\"\n— Abu Dawud';

  @override
  String get hadith94 =>
      '\"Allahy ýatlap oturan adamlary perişdeler gurşap alýar, rahmet olary örtýär, olaryň üstüne sükunat düşýär we Allah olary Öz ýanyndakylaryň arasynda ýatlaýar.\"\n— Muslim';

  @override
  String get hadith95 =>
      '\"Allah bagyşlamak sebäpli gula diňe şan-şöhrat artdyrýar.\"\n— Muslim';

  @override
  String get hadith96 => '\"Düýäňi daň, soňra Alla tewekkül et.\"\n— Tirmizi';

  @override
  String get hadith97 =>
      '\"Möminiň işi geň galdyryjy — hemme zat oňa gowy.\"\n— Muslim';

  @override
  String get hadith98 =>
      '\"Musulman musulmanyň doganydyr: oňa zulum etmez, taşlamaz, äsgermezlik etmez.\"\n— Muslim';

  @override
  String get delete => 'Poz';

  @override
  String get remove => 'Aýyr';

  @override
  String get deleteAmalConfirmTitle => 'Yzarlamadan aýrylsynmy?';

  @override
  String deleteAmalConfirmBody(String title) {
    return '\"$title\" sanawyňyzdan gizleniler. Taryhyňyz saklanar.';
  }

  @override
  String get genericError => 'Bir zat ters gitdi. Ýene bir gezek synap görüň.';

  @override
  String get notificationChannelName => 'Amal ýatlatmalary';

  @override
  String get notificationChannelDescription =>
      'Yzarlaýan amallaryňyz üçin gündelik ýatlatmalar.';

  @override
  String get invalidAmalId => 'Nädogry amal ID-si';

  @override
  String get tutorialSettingsRow => 'Muhasaba nädip ulanmaly';

  @override
  String get tutorialSkip => 'Geç';

  @override
  String get tutorialNext => 'Indiki';

  @override
  String get tutorialDone => 'Taýýar';

  @override
  String get tutorialTapTitle => 'Ýerine ýetirmek üçin basyň';

  @override
  String get tutorialTapBody =>
      'Bir gezek basmak amaly şu güne ýerine ýetirildi diýip bellär. Yzyna almak üçin gaýtadan basyň.';

  @override
  String get tutorialEditTitle => 'Üýtgetmek üçin iki gezek basyň';

  @override
  String get tutorialEditBody =>
      'Üýtgetme formasyny açýar — adyny üýtgediň ýa-da näçe gezek gaýtalanýandygyny üýtgediň.';

  @override
  String get tutorialReorderTitle => 'Tertibi üýtgetmek üçin basyp saklaň';

  @override
  String get tutorialReorderBody =>
      'Setiri basyp saklaň, soňra süýşüriň. Tertibiňiz ýatda saklanýar.';

  @override
  String get tutorialRemoveTitle => 'Aýyrmak üçin süýşüriň';

  @override
  String get tutorialRemoveBody =>
      'Setiri gyra süýşürip, ony şu güne gizläň ýa-da yzarlamany bes ediň.';

  @override
  String get tutorialCountTitle => 'Gaýtalanmalary sanamak';

  @override
  String get tutorialCountBody =>
      'Maksady birden köp amallar üçin her gaýtalanmada − we + ulanyň.';

  @override
  String get tutorialViewTitle => 'Toparlamak ýa-da düz sanaw';

  @override
  String get tutorialViewBody =>
      'Kategoriýa boýunça toparlamak bilen bir düz sanawyň arasynda çalşyň.';

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
      'Üýtgetmek üçin − we + ulanyň ýa-da sana basyp takyk mukdary ýazyň.';

  @override
  String get challengeOpenDetailsAction => 'Maksadyň jikme-jigini açmak';

  @override
  String get challengesActive => 'Dowam edýän';

  @override
  String get challengesPast => 'Geçen';

  @override
  String challengeJustFinished(int count, String title) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count maksat gutardy — iň soňkusy $title',
      one: '$title gutardy',
    );
    return '$_temp0';
  }

  @override
  String get challengeSectionEnded => 'Gutardy';

  @override
  String get challengesPastEmpty => 'Entek tamamlanan zat ýok.';

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
  String get challengeShapeStreak => 'Her günki dowamlylyk';

  @override
  String get challengeShapeStreakBody =>
      'Tähejjüd, jemagat bilen ertir namazy. Günde bir bellik, mukdar wajyp däl.';

  @override
  String get challengeTargetLabel => 'Maksat sany';

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
  String get challengeSpreadOver => 'Ýaýradylan möhlet';

  @override
  String get challengeSpreadEveryDay => 'Her gün';

  @override
  String get challengeSpreadLonger => 'Uzyn möhlet';

  @override
  String get challengeByWhen => 'Haçana çenli?';

  @override
  String get challengeWindowDuration => 'Bellenen möhlet';

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
  ) {
    return '$start – $end · $window günüň $target — $slack sypdyryp bilersiňiz';
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
  String challengeTooTight(String target, String window) {
    return '$target gün $window güne sygmaýar — dowamlylyk günde biri hasaplaýar.';
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
  String get challengeStartDate => 'Başlanýar';

  @override
  String get challengeEndDate => 'Tamamlanýar';

  @override
  String challengeProgressCount(String done, String target, String unit) {
    return '$target $unit içinden $done';
  }

  @override
  String challengeProgressPlain(String done, String target) {
    return '$target-dan $done';
  }

  @override
  String challengeProgressDays(String done, String target) {
    return '$target günden $done';
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
    return 'Meýilnamada · $rate/gün';
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
    return 'Gutardy · $done/$target';
  }

  @override
  String get challengeExpiredTitle => 'Maksat tamamlandy';

  @override
  String challengeExpiredBody(String title, String done, String target) {
    return '$title $done/$target bilen tamamlandy.';
  }

  @override
  String get challengeExtend => 'Uzaltmak';

  @override
  String get challengeRestart => 'Täzeden başlamak';

  @override
  String get challengeArchive => 'Arhiwe geçirmek';

  @override
  String get challengeDailyBreakdown => 'Günlük ýazgy';

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
  String get challengeStartFromTemplate => 'Şablondan başla';

  @override
  String get challengeTemplateBlank => 'Boş';

  @override
  String get challengePreview => 'Deslapky görnüş';

  @override
  String get challengeTmplTahajjud => '40 gije Tähejjüd';

  @override
  String get challengeTmplSalawat => '1000 salawat';

  @override
  String get challengeTmplKhatm => '30 günde Kuran hatymy';

  @override
  String get challengeTmplFajrJamaah => '30 gün Bamdat jemagat bilen';

  @override
  String get challengeTmplSadaqah => '30 gün Sadaka';

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
  String get tierMuhsinMeaning => 'ýagşylyk edýän';

  @override
  String get tierAnsarMeaning => 'kömekçi';

  @override
  String get supportCardBody =>
      'Mugt, mahabatsyz we hasapsyz. Isleseňiz, kiçijik goşant bilen ösüşini goldap bilersiňiz — islendik möçberde, islendik wagt.';

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
  String get supportPromptTitle => 'Muhasaba-a goldaw beriň';

  @override
  String get supportPromptBody =>
      'Muhasaba mugt, mahabatsyz we hasapsyz. Isleseňiz, kiçijik goşant bilen ösüşini goldap bilersiňiz — islendik möçberde, islendik wagt. Hiç bir aýratynlyk muňa bagly däl.';

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
      'Islendik möçberi saýlaň, näçe gezek isleseňiz. Bu serişdeler goşundynyň bejergisine sarp edilýär — inşalla, ol mugt we mahabatsyz bolup galar. Minnetdarlyk hökmünde Sazlamalarda goldawçy hökmünde görkezilersiňiz.';

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
  String get tipSheetOtherWays => 'Size laýyk görnüş tapmadyňyzmy?';

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
    return 'Goşandyňyz $store tarapynda garaşmakda — tassyklanan badyna nyşanyňyz goşular.';
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
  String get optionSetOnTime => 'Wagt';

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
  String get optionSetIntensity => 'Derejesi';

  @override
  String get optionIntensityLight => 'Ýeňil';

  @override
  String get optionIntensityModerate => 'Orta';

  @override
  String get optionIntensityIntense => 'Güýçli';

  @override
  String get optionSetNewTitle => 'Täze wariantlar toplumy';

  @override
  String get optionSetEditTitle => 'Wariantlar toplumyny üýtget';

  @override
  String get optionSetNameLabel => 'Toplumyň ady';

  @override
  String get optionSetNameHint => 'mes. Jemagat';

  @override
  String get optionsLabel => 'Wariantlar';

  @override
  String get optionAdd => 'Wariant goş';

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
  String get optionSetDelete => 'Toplumy poz';

  @override
  String get optionSetDeleteConfirm =>
      'Bu toplumy ulanýan amallar indi wariantlary görkezmez. Eýýäm bellenen günler öz saýlawyny saklaýar.';

  @override
  String get optionSetNameRequired => 'Topluma at beriň';

  @override
  String get optionsMinRequired => 'Iň azyndan iki wariant goşuň';

  @override
  String get optionSetNone => 'Ýok';

  @override
  String get optionSetNew => 'Täze toplum';

  @override
  String get requireChoiceLabel => 'Saýlaw talap edilsin';

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
  String get choiceNeeded => 'Saýlaw gerek';

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
    return 'Wariant bölünişi — $set';
  }

  @override
  String optionBreakdownCaption(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gezekden',
    );
    return '$_temp0 saýlaw bellenenleriň paýy';
  }

  @override
  String optionNoChoiceRecorded(int none, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other: '$total günden',
    );
    return '$_temp0 $none gününde saýlaw bellenmedi';
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
  String get optionBreakdownSectionTitle => 'Wariant bölünişi';

  @override
  String optionBreakdownSwipeHint(int count) {
    return '$count toplum · süýşüriň';
  }

  @override
  String get optionDetailEmpty => 'Bu toplum üçin entek saýlaw bellenmedi.';

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
}
