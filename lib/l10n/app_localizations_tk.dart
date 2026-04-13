// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkmen (`tk`).
class AppLocalizationsTk extends AppLocalizations {
  AppLocalizationsTk([String locale = 'tk']) : super(locale);

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
  String progressOf(int progress, int target) {
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
  String get addAmal => 'Amal gosmak';

  @override
  String get customAmal => 'Ozbashdak amal';

  @override
  String get templateTasbih => 'Tesbih 33x';

  @override
  String get templateIstighfar => 'Istigfar 100x';

  @override
  String get templateSurahKahf => 'Kehf suresi';

  @override
  String get templateSadaqah => 'Sadaka';

  @override
  String get templateTahajjud => 'Tehejjud';

  @override
  String get templateDuhaPrayer => 'Duha namazy';

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
      '\"Allahyn in soyyan amallary, az hem bolsa, yzygiderli edilen amallardy.\"\n— Buhari we Muslim';

  @override
  String get hadith1 =>
      '\"Basaryp biljek amallarynyzdan tutunyn, cunki in gowy amallar az bolsa-da yzygiderli edilenlerdir.\"\n— Ibn Maje';

  @override
  String get hadith2 =>
      '\"Adam ogly olende, amallary uc zatdan basga kesilyer: dowamly sadaka, peydaly ylym ya-da onun ucin doga edyan salyh perzent.\"\n— Muslim';

  @override
  String get hadith3 =>
      '\"Kim iki salkyn namazy (Ertir we Ikindi) okasa, jennete girer.\"\n— Buhari';

  @override
  String get hadith4 =>
      '\"Allah sizin dasky gorkuinize ya-da baylygynyza dal, yureginize we amallarynyza sereder.\"\n— Muslim';

  @override
  String get hadith5 =>
      '\"Adamlaryn in gowusy, adamlara in peydaly bolanlardyr.\"\n— Darakutni';

  @override
  String get hadith6 =>
      '\"Ansatlasdyryn, kynlasdyrman; busunji habar berin, adamlary gayyrmang.\"\n— Buhari';

  @override
  String get hadith7 =>
      '\"Kim ylym gozlap yola cykyar, Allah onun ucin jennete baryan yoly ansatlasdyrar.\"\n— Muslim';

  @override
  String get hadith8 => '\"Sadaka baylygy azaltmaz.\"\n— Muslim';

  @override
  String get hadith9 =>
      '\"Guyyli momin, ejiz mominden gowusy hem Allaha has soygulisidir, her ikisinde hem hayyr bardyr.\"\n— Muslim';

  @override
  String get hadith10 =>
      '\"Kim günde ýüz gezek \'SubhanAllahi we bihamdihi\' diýse, günäleri bagyşlanar, deňziň köpügi ýaly bolsa-da.\"\n— Buhari';

  @override
  String get hadith11 =>
      '\"Iň gowy doga — Arafa gününiň dogasydyr, men we menden öňki pygamberler aýdan iň gowy söz: La ilahe illallah.\"\n— Tirmizi';

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
      '\"Dul aýala we garyba seretýän, Allah ýolunda söweşiji ýalydyr.\"\n— Buhari';

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
  String historyDayCompleted(int completed, int total) {
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
  String get hadith20 =>
      '\"Kim Ramazanda iman we sogap umydy bilen oraza tutsa, onun gecen gunaleri bagyslanyar.\"\n— Buhari we Muslim';

  @override
  String get hadith21 => '\"Namaz dininin sutunidur.\"\n— Bayhaky';

  @override
  String get hadith22 =>
      '\"Azan bilen ykamat arasyndaky doga ret edilmeyar.\"\n— Abu Dawud';

  @override
  String get hadith23 =>
      '\"Kim Allah ucin metjit gursa, Allah onya jennetde oy gurar.\"\n— Buhari we Muslim';

  @override
  String get hadith24 =>
      '\"Erkekler ucin in gowy hatarlar — onki hatarlar, zenanlar ucin in gowy hatarlar — yzky hatarlardyr.\"\n— Muslim';

  @override
  String get hadith25 => '\"Oraza dowzahdan galkandyr.\"\n— Nesayy';

  @override
  String get hadith26 =>
      '\"Kim on iki rekagat sunnet namaz okasa, onya jennetde oy gurulyar.\"\n— Muslim';

  @override
  String get hadith27 =>
      '\"Kurany gowy bilyar yaly, ol belent perishdeler bilen bile bolar.\"\n— Buhari we Muslim';

  @override
  String get hadith28 =>
      '\"Ylym owrenmek her bir musulmana parzdy.\"\n— Ibn Maje';

  @override
  String get hadith29 => '\"In gowy sadaka — suw bermekdir.\"\n— Ahmad';

  @override
  String get hadith30 =>
      '\"Kim mominden bir kyncilygy ayyrar, Allah Kyýamat gununde ondan bir kyncilygy ayyrar.\"\n— Muslim';

  @override
  String get hadith31 =>
      '\"Rehimli bolanlara Rehmany Rehim rehim eder.\"\n— Abu Dawud we Tirmizi';

  @override
  String get hadith32 =>
      '\"Utanc — imandan bir bolekdir.\"\n— Buhari we Muslim';

  @override
  String get hadith33 => '\"Tazalyk — imanyn yarysy.\"\n— Muslim';

  @override
  String get hadith34 =>
      '\"Kim sabyr etse, Allah onya sabyr berer.\"\n— Buhari we Muslim';

  @override
  String get hadith35 =>
      '\"In gowy baylyk — Allahy yatlayan dildir.\"\n— Tabarany';

  @override
  String get hadith36 =>
      '\"Sizin hic birinis ozi ucin halayanyny doganyna-da halamagunca, hakyky momin bolmaz.\"\n— Buhari we Muslim';

  @override
  String get hadith37 =>
      '\"Aclary doyuryn, syrkawlary goryun we tussaglary azat edyn.\"\n— Buhari';

  @override
  String get hadith38 =>
      '\"Guyyli adam — goresde yenyan dal, gaharly wagty ozune erk edyan adamdyr.\"\n— Buhari we Muslim';

  @override
  String get hadith39 =>
      '\"Kim dilini we namysyny gorap saklasa, men onya jenneti kepillendiryan.\"\n— Buhari';

  @override
  String get hadith40 =>
      '\"Her namazdan son otuz uc gezek \'SubhanAllah\', \'Alhamdulillah\' we \'Allahy Akbar\' diyyn.\"\n— Muslim';

  @override
  String get hadith41 => '\"In gowy zikir — La ilahe illallah.\"\n— Tirmizi';

  @override
  String get hadith42 =>
      '\"Iki niygmat bar, kop adam olary elden gideryar: saglyk we bos wagt.\"\n— Buhari';

  @override
  String get hadith43 =>
      '\"Basi bisen gelmanka baha beryn: yaslygyny garrylygynyza, saglygynyzy keselliginize, baylygynyzy garyplygynyza, bos wagtynyzy mesgulliginize we yasaysynyzy oluminize seredip.\"\n— Hakim';

  @override
  String get hadith44 =>
      '\"Kim Yhlas suresini on gezek okasa, Allah onya jennetde oy gurar.\"\n— Ahmad';

  @override
  String get hadith45 =>
      '\"Parz namazlardan son in gowy namaz — gije namazydyr.\"\n— Muslim';

  @override
  String get hadith46 =>
      '\"Sadaka gunaleri suw ody ocurisi yaly ocuryar.\"\n— Tirmizi';

  @override
  String get hadith47 =>
      '\"Garyndaslyk gatnasgyny saklayjy — jogap beriji dal, aragatnasyk uzulende-de ony dowam etdiryandir.\"\n— Buhari';

  @override
  String get hadith48 => '\"Her bir gowy is sadakadyr.\"\n— Buhari we Muslim';

  @override
  String get hadith49 =>
      '\"Kim nahar iyip, \'Alhamdulillah\' diyse, onun gecen gunaleri bagyslanyar.\"\n— Tirmizi';

  @override
  String get hadith50 =>
      '\"Allanyň iň söýgüli adamlary — beýlekilere iň köp peýda berýänlerdir.\"\n— Tabarany';

  @override
  String get hadith51 =>
      '\"Kim gaharyny saklasa, emma ony amala aşyryp bilýän bolsa, Alla ony Kyýamat güni ähli mahluklaryň öňünde çagyryp, sylagyňy saýla diýer.\"\n— Tirmizi';

  @override
  String get hadith52 =>
      '\"Sadaka bermäge howlugyň, çünki ol betbagtçylygyň öňüni alýar.\"\n— Tirmizi';

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
  String get hadith59 => '\"Metjit her bir takwa adamyň öýüdir.\"\n— Tabarany';

  @override
  String get hadith60 =>
      '\"Kim \'La hawla wa la kuwwata illa billah\' diýse — bu togsan dokuzyň dokuzy keselleriň dermany, iň ýeňili — aladadyr.\"\n— Hakim';

  @override
  String get hadith61 =>
      '\"Alla bir zat edeňde ony iň gowy edip etmegiňi söýýär.\"\n— Tabarany';

  @override
  String get hadith62 => '\"Jennet eneleriň aýaklarynyň astynda.\"\n— Nesaýy';

  @override
  String get hadith63 =>
      '\"Ene-ata ýagşylyk etmek — iň beýik parz amaldyr.\"\n— Buhary';

  @override
  String get hadith64 => '\"Aza şükür eden köpe eýe bolar.\"\n— Beýhaky';

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
  String get hadith74 => '\"Ýagşy işlere ýaryşyň.\"\n— Muslim';

  @override
  String get hadith75 =>
      '\"Ertir namazynyň iki rekagaty dünýäden we ondaky ähli zatdan gowudyr.\"\n— Muslim';

  @override
  String get hadith76 =>
      '\"Kim yzygiderli istigfar etse, Alla oňa her kynçylykdan çykalga berer.\"\n— Abu Dawud';

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
      '\"Alla iň söýgüli amal — hemişelik edilýäni, az hem bolsa.\"\n— Buhari';

  @override
  String get hadith81 =>
      '\"Göriplik diňe iki ýagdaýda jaýyzdyr: Alla baýlyk beren adam ony hak ýolda sarp etse, we Alla hikmet beren adam onuň bilen höküm çykaryp öwretse.\"\n— Buhari we Muslim';

  @override
  String get hadith82 =>
      '\"Adam dostunyň dinine eýerýär, şonuň üçin her biriňiz kim bilen dost bolýandygyňyza serediň.\"\n— Abu Dawud we Tirmizi';

  @override
  String get hadith83 =>
      '\"Ölümi köp ýatlaň, sebäbi ol ýüregi arassalaýar.\"\n— Tirmizi';

  @override
  String get hadith84 =>
      '\"Siziň iň gowuňyz — ýüregi iň ýumşagyňyz.\"\n— Tabrani';

  @override
  String get hadith85 =>
      '\"Alla hiç bir jana güýjünden artyk ýük salmaýar.\"\n— Kuran 2:286';

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
  String get hadith91 =>
      '\"Kim Alla üçin ýalany taşlasa, degişme wagtynda-da bolsa, men oňa jennetiň gyrasynda köşk kepilligini berýärin.\"\n— Abu Dawud';

  @override
  String get hadith92 =>
      '\"Ýagşylygyň gapylary köpdür: Allany ulaltmak, Oňa hamd etmek, sadaka, ýagşylyga çagyrmak we ýoldan zyýany aýyrmak.\"\n— Muslim';

  @override
  String get hadith93 =>
      '\"Bile naharlaňyň we Allanyň adyny tutuň, size bereketli bolar.\"\n— Abu Dawud';

  @override
  String get hadith94 => '\"Iň gowy mejlis — iň giňi.\"\n— Abu Dawud';

  @override
  String get hadith95 => '\"Bagyşlaň, sizem bagyşlanarsyňyz.\"\n— Ahmad';

  @override
  String get hadith96 => '\"Düýäňi daň, soňra Alla tewekkül et.\"\n— Tirmizi';

  @override
  String get hadith97 =>
      '\"Möminiň işi geň galdyryjy — hemme zat oňa gowy.\"\n— Muslim';

  @override
  String get hadith98 =>
      '\"Musulman musulmanyň doganydyr: oňa zulum etmez, taşlamaz, äsgermezlik etmez.\"\n— Muslim';

  @override
  String get hadith99 =>
      '\"Alla iň söýgüli söz: SubhanAllahy wa bihamdihi, SubhanAllahyl Azym.\"\n— Buhari we Muslim';
}
