// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Azerbaijani (`az`).
class AppLocalizationsAz extends AppLocalizations {
  AppLocalizationsAz([String locale = 'az']) : super(locale);

  @override
  String get appTitle => 'Muhasaba';

  @override
  String get tabToday => 'Bu gun';

  @override
  String get tabStats => 'Statistika';

  @override
  String get tabHistory => 'Tarixce';

  @override
  String get tabSettings => 'Parametrler';

  @override
  String get newAmal => 'Yeni emel';

  @override
  String get editAmal => 'Emeli redakte et';

  @override
  String get newAmalTitle => 'Yeni emel';

  @override
  String get save => 'Saxla';

  @override
  String get cancel => 'Legv et';

  @override
  String get clear => 'Temizle';

  @override
  String get titleLabel => 'Basliq';

  @override
  String get titleRequired => 'Basliq teleb olunur';

  @override
  String get titleTooLong => 'Basliq cox uzundur';

  @override
  String get frequencyLabel => 'Tezlik';

  @override
  String get frequencyDaily => 'Gundelik';

  @override
  String get frequencyWeekly => 'Heftelik';

  @override
  String get frequencyMonthly => 'Ayliq';

  @override
  String get categoryLabel => 'Kateqoriya';

  @override
  String get categoryOther => 'Diger';

  @override
  String get categorySalah => 'Namaz';

  @override
  String get categoryDhikr => 'Zikr';

  @override
  String get categoryQuran => 'Quran';

  @override
  String get categoryCharity => 'Sedeqe';

  @override
  String get timesPerPeriod => 'Dovre erzinde defe';

  @override
  String get custom => 'Ferdi';

  @override
  String get customTargetHint => 'mes. 50';

  @override
  String get dayOfWeek => 'Heftenin gunu';

  @override
  String get anyDay => 'Istenielen';

  @override
  String get anyDayHint => 'Istenielen gun (bu gun gosterilir, sabah gizlenir)';

  @override
  String onlyDayHint(String day) {
    return 'Yalniz $day';
  }

  @override
  String get dateOfMonth => 'Ayin tarixi';

  @override
  String get anyDate => 'Istenielen';

  @override
  String get anyDateHint =>
      'Istenielen tarix (bu gun gosterilir, sabah gizlenir)';

  @override
  String onlyDateHint(String date) {
    return 'Yalniz $date-de';
  }

  @override
  String get startPreChecked => 'Qeyd olunmus baslat';

  @override
  String get startPreCheckedSubtitle =>
      'Yeni dovre basladiqda, bu emel siz legv edene qeder tamamlanmis sayilir.';

  @override
  String get reminder => 'Xatirlatma';

  @override
  String get reminderNone => 'Yoxdur';

  @override
  String reminderTime(String time) {
    return 'Xatirlatma: $time';
  }

  @override
  String get reminderPermissionWarning =>
      'Xatirlatma saxlanildi, lakin bildirisler icaze verilmeyib. Xeberdar olmaq ucun sistem parametrlerinde aktiv edin.';

  @override
  String get groupByCategory => 'Kateqoriyaya gore qrupla';

  @override
  String get flatList => 'Sade siyahi';

  @override
  String errorGeneric(String error) {
    return 'Xeta: $error';
  }

  @override
  String get todayEmptyHint => 'Ilk emelinizi elave etmek ucun + basin.';

  @override
  String get noteLabel => 'Qeyd';

  @override
  String get noteHint => 'mes. Mescidde namaz qildim';

  @override
  String get completed => 'tamamlandi';

  @override
  String get notCompleted => 'tamamlanmadi';

  @override
  String progressOf(int progress, int target) {
    return '$target-dan $progress tamamlandi';
  }

  @override
  String get removeFromToday => 'Bu gunden sil';

  @override
  String get removeFromTodaySubtitle =>
      'Yalniz bu gun ucun gizlenir. Sabah geri qayidir.';

  @override
  String get removeFromTracking => 'Izlemeden sil';

  @override
  String get removeFromTrackingSubtitle =>
      'Siyahinizdan hemiselik silinir. Tarixce saxlanilir.';

  @override
  String get chooseIcon => 'Simvol secin';

  @override
  String get iconNone => 'Yoxdur';

  @override
  String get recentlyUsed => 'Son istifade olunan';

  @override
  String get emojiSectionGeneral => 'Umumi';

  @override
  String get categoryNameHint => 'Ad';

  @override
  String get categoryNew => '+ Yeni';

  @override
  String get addAmal => 'Emel elave et';

  @override
  String get customAmal => 'Ferdi emel';

  @override
  String get templateTasbih => 'Tesbih 33x';

  @override
  String get templateIstighfar => 'Istigfar 100x';

  @override
  String get templateSurahKahf => 'Kehf suresi';

  @override
  String get templateSadaqah => 'Sedeqe';

  @override
  String get templateTahajjud => 'Tehecud';

  @override
  String get templateDuhaPrayer => 'Zuha namazi';

  @override
  String get settingsTitle => 'Parametrler';

  @override
  String settingsLoadError(String error) {
    return 'Parametrleri yuklemek mumkun olmadi:\n$error';
  }

  @override
  String get sectionDayBoundary => 'Gun serhedi';

  @override
  String get rolloverHour => 'Kecid saati';

  @override
  String get rolloverAtMidnight => 'Bu gun geceyarisi basa catir.';

  @override
  String rolloverSubtitle(String time) {
    return 'Dunenki emeller $time-dek redakte oluna biler.';
  }

  @override
  String get pickRolloverHour => 'Gunun kecid saatini secin';

  @override
  String get sectionWeekMonth => 'Hefte ve ay';

  @override
  String get startOfWeek => 'Heftenin baslangici';

  @override
  String get startOfMonth => 'Ayin baslangici';

  @override
  String get startOfMonthClamped =>
      '28-den sonraki gunler qisa aylarda ayin son gunune uygunlasdirilir.';

  @override
  String get sectionAppearance => 'Gorunus';

  @override
  String get theme => 'Movzu';

  @override
  String get themeSystem => 'Sistem';

  @override
  String get themeLight => 'Isiqli';

  @override
  String get themeDark => 'Qaranlig';

  @override
  String get sectionLanguage => 'Dil';

  @override
  String get language => 'Dil';

  @override
  String get systemDefault => 'Sistem susmaya gore';

  @override
  String get aboutTitle => 'Muhasaba';

  @override
  String get aboutSubtitle =>
      'Sexsi din mesuliyyet jurnali. Butun melumatlar bu cihazda qalir.';

  @override
  String get statsTitle => 'Statistika';

  @override
  String statsLoadError(String error) {
    return 'Statistikani yuklemek mumkun olmadi:\n$error';
  }

  @override
  String get perAmal => 'Her emel ucun';

  @override
  String get thisWeek => 'Bu hefte';

  @override
  String get thisMonth => 'Bu ay';

  @override
  String get totalCompletions => 'umumi tamamlanma';

  @override
  String get streakCurrent => 'Cari';

  @override
  String get streakLongest => 'En uzun';

  @override
  String get ratioWeek => 'Hefte';

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
      other: 'hefte',
      one: 'hefte',
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
  String get frequencyBadgeWeekly => 'heftelik';

  @override
  String get frequencyBadgeMonthly => 'ayliq';

  @override
  String get statsEmpty =>
      'Hele emel yoxdur. Izlemeye baslamaq ucun Bu gun sehifesinde elave edin.';

  @override
  String get statsToday => 'Bu gun';

  @override
  String get statsThisWeek => 'Bu hefte';

  @override
  String get statsThisMonth => 'Bu ay';

  @override
  String get statsAllTime => 'Butun zamanlar';

  @override
  String get statsCustomRange => 'Ferdi araliq';

  @override
  String get statsAllCategories => 'Hamisi';

  @override
  String get statsAllAmals => 'Hamisi';

  @override
  String get statsCompleted => 'Tamamlandi';

  @override
  String get statsExpected => 'Gozlenilen';

  @override
  String get statsVsPrevious => 'Evvelkine nisbeten';

  @override
  String get statsByCategory => 'Kateqoriyaya gore';

  @override
  String get statsPerAmal => 'Her emel ucun';

  @override
  String get statsCurrentStreak => 'Cari seriya';

  @override
  String get statsBestStreak => 'En yaxsi seriya';

  @override
  String get statsTotalDays => 'Umumi gunler';

  @override
  String get statsConsistency => 'Ardicilliq';

  @override
  String get statsLast5Weeks => 'Son 5 hefte';

  @override
  String get statsDailyBreakdown => 'Gunluk tefsir';

  @override
  String get statsCompletionRate => 'Tamamlanma derecesi';

  @override
  String get statsFilterTime => 'Vaxt';

  @override
  String get statsFilterCategory => 'Kateqoriya';

  @override
  String get statsFilterAmal => 'Emel';

  @override
  String get statsStreaks => 'Seriyalar';

  @override
  String get statsSelectDateRange => 'Tarix araligini secin';

  @override
  String get historyTitle => 'Tarixce';

  @override
  String get jumpToDate => 'Tarixe kec';

  @override
  String historyEmptyDay(String date) {
    return '$date tarixinde emel izlenmeyib';
  }

  @override
  String get streakUnitD => 'g';

  @override
  String get streakUnitW => 'h';

  @override
  String get streakUnitM => 'a';

  @override
  String get mondayShort => 'B.e';

  @override
  String get tuesdayShort => 'C.a';

  @override
  String get wednesdayShort => 'C';

  @override
  String get thursdayShort => 'C.a';

  @override
  String get fridayShort => 'C';

  @override
  String get saturdayShort => 'S';

  @override
  String get sundayShort => 'B';

  @override
  String get mondayFull => 'Bazar ertesi';

  @override
  String get tuesdayFull => 'Cersenbe axsami';

  @override
  String get wednesdayFull => 'Cersenbe';

  @override
  String get thursdayFull => 'Cumme axsami';

  @override
  String get fridayFull => 'Cumme';

  @override
  String get saturdayFull => 'Senbe';

  @override
  String get sundayFull => 'Bazar';

  @override
  String get hadith0 =>
      '\"Allahin en sevdiyi emeller, az da olsa, davaml olanlardir.\"\n— Buxari ve Muslim';

  @override
  String get hadith1 =>
      '\"Bacardiqiniz qeder yaxsi emeller gorun, cunki en yaxsi emeller az olsa da, davaml olanlardir.\"\n— Ibn Mace';

  @override
  String get hadith2 =>
      '\"Adem ovladi olduyu zaman, emelleri uc seyden basqa kesilir: davaml sedeqe, faydali elm ve ya onun ucun dua eden saleh ovlad.\"\n— Muslim';

  @override
  String get hadith3 =>
      '\"Kim iki serin namazi (Subh ve Esr) qilarsa, Cenneete daxil olar.\"\n— Buxari';

  @override
  String get hadith4 =>
      '\"Allah sizin xarici gorunusunuze ve var-dovletinize baxmir, O sizin ureylerinize ve emellerinize baxir.\"\n— Muslim';

  @override
  String get hadith5 =>
      '\"Insanlarin en yaxsisi insanlara en cox fayda verenidir.\"\n— Daraqutni';

  @override
  String get hadith6 =>
      '\"Asanlasdiriniz, cetinlesdirmeyiniz; mujde veriniz, insanlari uzaqlasdimayin.\"\n— Buxari';

  @override
  String get hadith7 =>
      '\"Kim elm axtarisi yoluna cixarsa, Allah onun ucun Cennet yolunu asanlasdirar.\"\n— Muslim';

  @override
  String get hadith8 => '\"Sedeqe mali azaltmaz.\"\n— Muslim';

  @override
  String get hadith9 =>
      '\"Guclu momin, zeif mominden daha yaxsi ve Allaha daha sevimlidir, herciend her ikisinde xeyir var.\"\n— Muslim';

  @override
  String get hadith10 =>
      '\"Kim gündə yüz dəfə \'SubhanAllahi və bihamdihi\' desə, günahları bağışlanar, hətta dənizin köpüyü qədər olsa belə.\"\n— Buxari';

  @override
  String get hadith11 =>
      '\"Ən xeyirli dua Ərəfə günü edilən duadır, məndən əvvəlki peyğəmbərlərin və mənim dediyim ən xeyirli söz: La ilahə illəllah.\"\n— Tirmizi';

  @override
  String get hadith12 =>
      '\"Kim hər fərz namazdan sonra Ayətəl-Kürsi oxusa, onu cənnətə girməkdən yalnız ölüm saxlayar.\"\n— Nəsai';

  @override
  String get hadith13 => '\"Gözəl söz sədəqədir.\"\n— Buxari və Müslim';

  @override
  String get hadith14 =>
      '\"Allaha və axirət gününə iman gətirən xeyir söyləsin və ya sussun.\"\n— Buxari və Müslim';

  @override
  String get hadith15 =>
      '\"Dul qadına və miskinə baxan adam Allah yolunda mübarizə aparan kimidir.\"\n— Buxari';

  @override
  String get hadith16 => '\"Qardaşına təbəssüm etməyin sədəqədir.\"\n— Tirmizi';

  @override
  String get hadith17 =>
      '\"Sizin ən xeyirliniz Quranı öyrənən və öyrədəndir.\"\n— Buxari';

  @override
  String get hadith18 =>
      '\"Heç kəs öz əlinin zəhməti ilə qazandığından yaxşı yemək yeməmişdir.\"\n— Buxari';

  @override
  String get hadith19 =>
      '\"Allah mülayimdir və hər işdə mülayimliyi sevir.\"\n— Buxari və Müslim';

  @override
  String historyDayCompleted(int completed, int total) {
    return '$total-dən $completed tamamlandı';
  }

  @override
  String get settingsSchedule => 'Cədvəl';

  @override
  String get settingsAppearance => 'Görünüş';

  @override
  String get settingsAboutTagline => 'Gündəlik din yoldaşınız';

  @override
  String get settingsRolloverSub => 'Gün nə vaxt sıfırlanır';
}
