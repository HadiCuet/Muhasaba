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
  String get tabToday => 'Bu gun';

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
  String get newAmal => 'Taze amal';

  @override
  String get editAmal => 'Amaly uytgetmek';

  @override
  String get newAmalTitle => 'Taze amal';

  @override
  String get save => 'Saklamak';

  @override
  String get cancel => 'Goybolsun';

  @override
  String get clear => 'Arassalamak';

  @override
  String get titleLabel => 'At';

  @override
  String get titleRequired => 'At gerek';

  @override
  String get titleTooLong => 'At gaty uzyn';

  @override
  String get frequencyLabel => 'Yygylyk';

  @override
  String get frequencyDaily => 'Her gun';

  @override
  String get frequencyWeekly => 'Her hepde';

  @override
  String get frequencyMonthly => 'Her ay';

  @override
  String get categoryLabel => 'Kategoriia';

  @override
  String get categoryOther => 'Beyleki';

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
  String get timesPerPeriod => 'Dowr boyuncha gezek';

  @override
  String get custom => 'Ozbashdak';

  @override
  String get customTargetHint => 'mes. 50';

  @override
  String get dayOfWeek => 'Hepdenin guny';

  @override
  String get anyDay => 'Islendik';

  @override
  String get anyDayHint => 'Islendik gun (bu gun gorkezilyar, ertir gizlenyar)';

  @override
  String onlyDayHint(String day) {
    return 'Dine $day';
  }

  @override
  String get dateOfMonth => 'Ayyn senesi';

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
      'Islendik sene (bu gun gorkezilyar, ertir gizlenyar)';

  @override
  String onlyDateHint(String date) {
    return 'Dine $date-de';
  }

  @override
  String get startPreChecked => 'Belgilenen bolup basla';

  @override
  String get startPreCheckedSubtitle =>
      'Taze dowr baslanda, bu amal siz pozunca yerine yetirilen hasaplanyar.';

  @override
  String get reminder => 'Yatlatma';

  @override
  String get reminderNone => 'Yok';

  @override
  String reminderTime(String time) {
    return 'Yatlatma: $time';
  }

  @override
  String get reminderPermissionWarning =>
      'Yatlatma saklandy, emma bildirislere rugsat berilmedik. Duydurys almak ucin ulgam sazlamalarynda acyn.';

  @override
  String get settingsReminders => 'Yatlatmalar';

  @override
  String get dailyReminder => 'Gundelik yatlatma';

  @override
  String get dailyReminderSubtitle =>
      'Amallarynyzy yzarlamak ucin yumsak yatlatma';

  @override
  String get dailyReminderTimeLabel => 'Yatlatma wagty';

  @override
  String get dailyReminderBody =>
      'Bu gunki amallarynyzy yzarlamak ucin biraz wagt ayryn.';

  @override
  String get groupByCategory => 'Kategoriia boyunca toparlamak';

  @override
  String get flatList => 'Duz sanaw';

  @override
  String errorGeneric(String error) {
    return 'Yalnyshlyk: $error';
  }

  @override
  String get todayEmptyHint => 'Ilkinji amalynyz gosmak ucin + basyn.';

  @override
  String get noteLabel => 'Bellik';

  @override
  String get noteHint => 'mes. Metjitde namaz okadym';

  @override
  String get completed => 'yerine yetirildi';

  @override
  String get notCompleted => 'yerine yetirilmedi';

  @override
  String progressOf(String progress, String target) {
    return '$target-dan $progress yerine yetirildi';
  }

  @override
  String get removeFromToday => 'Bu gunden ayyrmak';

  @override
  String get removeFromTodaySubtitle =>
      'Dine bu gun ucin gizlenyar. Ertir gaydyp gelyar.';

  @override
  String get removeFromTracking => 'Yzarlamadan ayyrmak';

  @override
  String get removeFromTrackingSubtitle =>
      'Sanawynyzdan hemiselik ayyrylyar. Taryh saklanyar.';

  @override
  String get chooseIcon => 'Nyshan saylang';

  @override
  String get iconNone => 'Yok';

  @override
  String get recentlyUsed => 'Son ulanylan';

  @override
  String get emojiSectionGeneral => 'Umumy';

  @override
  String get categoryNameHint => 'At';

  @override
  String get categoryNew => '+ Taze';

  @override
  String get categoryNewSheetTitle => 'Täze kategoriýa';

  @override
  String get categoryEditSheetTitle => 'Kategoriýany redaktirlemek';

  @override
  String get addAmal => 'Amal gosmak';

  @override
  String get customAmal => 'Ozbashdak amal';

  @override
  String get amalTasbih => 'Tesbih 33x';

  @override
  String get amalIstighfar => 'Istigfar 100x';

  @override
  String get amalSurahKahf => 'Kehf suresi';

  @override
  String get amalSadaqah => 'Sadaka';

  @override
  String get amalTahajjud => 'Tehejjud';

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
    return 'Sazlamalary yuklemek basartmady:\n$error';
  }

  @override
  String get sectionDayBoundary => 'Gun arasy';

  @override
  String get rolloverHour => 'Gecis sagady';

  @override
  String get rolloverAtMidnight => 'Bu gun yarim gijede gutaryar.';

  @override
  String rolloverSubtitle(String time) {
    return 'Dununki amallar $time-a cenli uytgedilip bilinyer.';
  }

  @override
  String get pickRolloverHour => 'Gunun gecyan sagadyny saylan';

  @override
  String get sectionWeekMonth => 'Hepde we ay';

  @override
  String get startOfWeek => 'Hepdenin basy';

  @override
  String get startOfMonth => 'Ayyn basy';

  @override
  String get startOfMonthClamped =>
      '28-den sonky gunler gysga aylarda ayyn sonky gunune laykyklasdyrylyar.';

  @override
  String get sectionAppearance => 'Gorkez';

  @override
  String get theme => 'Tema';

  @override
  String get themeSystem => 'Ulgam';

  @override
  String get themeLight => 'Yagty';

  @override
  String get themeDark => 'Garanky';

  @override
  String get sectionLanguage => 'Dil';

  @override
  String get language => 'Dil';

  @override
  String get systemDefault => 'Ulgam boyunca';

  @override
  String get aboutTitle => 'Muhasaba';

  @override
  String get aboutSubtitle =>
      'Sahsy din jogapkarcilik jurnalynyzy. Ahli maglumatlar bu enjamdadyr.';

  @override
  String get statsTitle => 'Statistika';

  @override
  String statsLoadError(String error) {
    return 'Statistikany yuklemek basartmady:\n$error';
  }

  @override
  String get perAmal => 'Her amal boyunca';

  @override
  String get thisWeek => 'Bu hepde';

  @override
  String get thisMonth => 'Bu ay';

  @override
  String get totalCompletions => 'jemi yerine yetirme';

  @override
  String get streakCurrent => 'Hazyrkyzaman';

  @override
  String get streakLongest => 'In uzyn';

  @override
  String get ratioWeek => 'Hepde';

  @override
  String get ratioMonth => 'Ay';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'gun',
      one: 'gun',
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
      other: 'ay',
      one: 'ay',
    );
    return '$_temp0';
  }

  @override
  String get frequencyBadgeDaily => 'gundelik';

  @override
  String get frequencyBadgeWeekly => 'hepdelik';

  @override
  String get frequencyBadgeMonthly => 'aylyyk';

  @override
  String get statsEmpty =>
      'Entek amal yok. Yzarlamaga baslamak ucin Bu gun sahypasynda gosunn.';

  @override
  String get statsToday => 'Bu gun';

  @override
  String get statsThisWeek => 'Bu hepde';

  @override
  String get statsThisMonth => 'Bu ay';

  @override
  String get statsAllTime => 'Ahli wagt';

  @override
  String get statsCustomRange => 'Ozbashdak aralyk';

  @override
  String get statsAllCategories => 'Hemmesi';

  @override
  String get statsAllAmals => 'Hemmesi';

  @override
  String get statsCompleted => 'Yerine yetirildi';

  @override
  String get statsExpected => 'Garasylyan';

  @override
  String get statsVsPrevious => 'Oncekisi bilen';

  @override
  String get statsByCategory => 'Kategoriia boyunca';

  @override
  String get statsPerAmal => 'Her amal boyunca';

  @override
  String get statsCurrentStreak => 'Hazyrkyzaman tapgyry';

  @override
  String get statsBestStreak => 'In gowy tapgyr';

  @override
  String get statsTotalDays => 'Jemi gunler';

  @override
  String get statsConsistency => 'Yzygiderlilik';

  @override
  String get statsLast5Weeks => 'Sonky 5 hepde';

  @override
  String get statsDailyBreakdown => 'Gundelik jikme-jiklik';

  @override
  String get statsCompletionRate => 'Yerine yetirme derejesi';

  @override
  String get statsFilterTime => 'Wagt';

  @override
  String get statsFilterCategory => 'Kategoriia';

  @override
  String get statsFilterAmal => 'Amal';

  @override
  String get statsStreaks => 'Tapgyrlar';

  @override
  String get statsSelectDateRange => 'Sene aralygy saylan';

  @override
  String get historyTitle => 'Taryh';

  @override
  String get jumpToDate => 'Sena gecmek';

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
  String get mondayShort => 'Dus';

  @override
  String get tuesdayShort => 'Sis';

  @override
  String get wednesdayShort => 'Car';

  @override
  String get thursdayShort => 'Pen';

  @override
  String get fridayShort => 'Ann';

  @override
  String get saturdayShort => 'Sen';

  @override
  String get sundayShort => 'Yks';

  @override
  String get mondayFull => 'Dusenbe';

  @override
  String get tuesdayFull => 'Sisenbe';

  @override
  String get wednesdayFull => 'Carsenbe';

  @override
  String get thursdayFull => 'Pensenbe';

  @override
  String get fridayFull => 'Anna';

  @override
  String get saturdayFull => 'Senbe';

  @override
  String get sundayFull => 'Yeksenbe';

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
    return 'Poçtany açyp bolmady. Iltimos, $email salgysyna ýazyň.';
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
      '\"Kim nahar iyip: \'Mana muny iydiren we mening hic hili guyc-kuwwatym bolmazdan muny nesip eden Allaha hamd bolsun\' diyse, onun gecen gunaleri bagyslanyar.\"\n— Tirmizi';

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
      '\"Garanky gijanin boleji yaly pitneler gelmanka yagsylyk islerine howlunyn.\"\n— Muslim';

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
      '\"Adamlara sukur etmeyan, Allaha-da sukur etmez.\"\n— Tirmizi';

  @override
  String get hadith81 =>
      '\"Göriplik diňe iki ýagdaýda jaýyzdyr: Alla baýlyk beren adam ony hak ýolda sarp etse, we Alla hikmet beren adam onuň bilen höküm çykaryp öwretse.\"\n— Buhari we Muslim';

  @override
  String get hadith82 =>
      '\"Adam dostunyň dinine eýerýär, şonuň üçin her biriňiz kim bilen dost bolýandygyňyza serediň.\"\n— Abu Dawud we Tirmizi';

  @override
  String get hadith85 =>
      '\"Kim Allah ucin bir zady tashlasa, Allah onya ondan gowusyny berer.\"\n— Ahmad';

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
  String get deleteAmalConfirmTitle => 'Yzarlamadan aýyrylsyn my?';

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
  String get challengeModeLabel => 'Nämäni sanaýarsyňyz?';

  @override
  String get challengeModeCount => 'Umumy mukdar';

  @override
  String get challengeModeDays => 'Tamamlanan günler';

  @override
  String get challengeTargetLabel => 'Maksat sany';

  @override
  String get challengeTargetRequired => 'Noldan uly san giriziň';

  @override
  String get challengeUnitLabel => 'Birlik (islege bagly)';

  @override
  String get challengeUnitHint => 'rekagat, sahypa, gezek';

  @override
  String get challengeStepLabel => 'Bir basyş goşýar';

  @override
  String get challengeWindowLabel => 'Näçe wagtyňyz bar?';

  @override
  String get challengeWindowDuration => 'Bellenen möhlet';

  @override
  String get challengeWindowDates => 'Anyk seneler';

  @override
  String get challengeWindowNone => 'Wagt çägi ýok';

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
  String get challengeGroupCounts => 'Näme sanalýar';

  @override
  String get challengeGroupTime => 'Wagt';

  @override
  String get challengeGroupReminders => 'Yatlatmalar';

  @override
  String get challengeStartFromTemplate => 'Şablondan başla';

  @override
  String get challengeTemplateBlank => 'Boş';

  @override
  String get challengePreview => 'Deslapky görnüş';

  @override
  String get challengeTmplTahajjud => '40 gije Tehejjud';

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
}
