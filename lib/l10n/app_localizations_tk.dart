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
}
