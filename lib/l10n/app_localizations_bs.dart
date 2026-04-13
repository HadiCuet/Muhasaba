// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bosnian (`bs`).
class AppLocalizationsBs extends AppLocalizations {
  AppLocalizationsBs([String locale = 'bs']) : super(locale);

  @override
  String get appTitle => 'Muhasaba';

  @override
  String get tabToday => 'Danas';

  @override
  String get tabStats => 'Statistika';

  @override
  String get tabHistory => 'Historija';

  @override
  String get tabSettings => 'Postavke';

  @override
  String get newAmal => 'Novi amel';

  @override
  String get editAmal => 'Uredi amel';

  @override
  String get newAmalTitle => 'Novi amel';

  @override
  String get save => 'Spremi';

  @override
  String get cancel => 'Otkazi';

  @override
  String get clear => 'Ocisti';

  @override
  String get titleLabel => 'Naslov';

  @override
  String get titleRequired => 'Naslov je obavezan';

  @override
  String get titleTooLong => 'Naslov je predugacak';

  @override
  String get frequencyLabel => 'Ucestalost';

  @override
  String get frequencyDaily => 'Dnevno';

  @override
  String get frequencyWeekly => 'Sedmicno';

  @override
  String get frequencyMonthly => 'Mjesecno';

  @override
  String get categoryLabel => 'Kategorija';

  @override
  String get categoryOther => 'Ostalo';

  @override
  String get categorySalah => 'Namaz';

  @override
  String get categoryDhikr => 'Zikr';

  @override
  String get categoryQuran => 'Kur\'an';

  @override
  String get categoryCharity => 'Sadaka';

  @override
  String get timesPerPeriod => 'Puta po periodu';

  @override
  String get custom => 'Prilagodeno';

  @override
  String get customTargetHint => 'npr. 50';

  @override
  String get dayOfWeek => 'Dan u sedmici';

  @override
  String get anyDay => 'Bilo koji';

  @override
  String get anyDayHint =>
      'Bilo koji dan (ostaje vidljiv danas, nestaje sutra)';

  @override
  String onlyDayHint(String day) {
    return 'Samo $day';
  }

  @override
  String get dateOfMonth => 'Datum u mjesecu';

  @override
  String get anyDate => 'Bilo koji';

  @override
  String get anyDateHint =>
      'Bilo koji datum (ostaje vidljiv danas, nestaje sutra)';

  @override
  String onlyDateHint(String date) {
    return 'Samo na $date';
  }

  @override
  String get startPreChecked => 'Pocni oznaceno';

  @override
  String get startPreCheckedSubtitle =>
      'Kada pocne novi period, ovaj amel je automatski oznacen kao zavrsen dok ga ne odznacite.';

  @override
  String get reminder => 'Podsjetnik';

  @override
  String get reminderNone => 'Nema';

  @override
  String reminderTime(String time) {
    return 'Podsjetnik: $time';
  }

  @override
  String get reminderPermissionWarning =>
      'Podsjetnik je sacuvan, ali obavijesti nisu dozvoljene. Omogucite ih u postavkama sistema za primanje upozorenja.';

  @override
  String get groupByCategory => 'Grupiraj po kategoriji';

  @override
  String get flatList => 'Obicna lista';

  @override
  String errorGeneric(String error) {
    return 'Greska: $error';
  }

  @override
  String get todayEmptyHint => 'Pritisnite + da dodate svoj prvi amel.';

  @override
  String get noteLabel => 'Biljeska';

  @override
  String get noteHint => 'npr. Klanjao u dzamiji';

  @override
  String get completed => 'zavrseno';

  @override
  String get notCompleted => 'nezavrseno';

  @override
  String progressOf(int progress, int target) {
    return '$progress od $target zavrseno';
  }

  @override
  String get removeFromToday => 'Ukloni iz danas';

  @override
  String get removeFromTodaySubtitle => 'Sakrij samo za danas. Vraca se sutra.';

  @override
  String get removeFromTracking => 'Ukloni iz pracenja';

  @override
  String get removeFromTrackingSubtitle =>
      'Trajno ukloni sa liste. Historija se cuva.';

  @override
  String get chooseIcon => 'Odaberi ikonu';

  @override
  String get iconNone => 'Nema';

  @override
  String get recentlyUsed => 'Nedavno koristeno';

  @override
  String get emojiSectionGeneral => 'Opce';

  @override
  String get categoryNameHint => 'Naziv';

  @override
  String get categoryNew => '+ Novo';

  @override
  String get addAmal => 'Dodaj amel';

  @override
  String get customAmal => 'Prilagodeni amel';

  @override
  String get templateTasbih => 'Tespih 33x';

  @override
  String get templateIstighfar => 'Istigfar 100x';

  @override
  String get templateSurahKahf => 'Sura El-Kehf';

  @override
  String get templateSadaqah => 'Sadaka';

  @override
  String get templateTahajjud => 'Tehedzud';

  @override
  String get templateDuhaPrayer => 'Duha namaz';

  @override
  String get settingsTitle => 'Postavke';

  @override
  String settingsLoadError(String error) {
    return 'Greska pri ucitavanju postavki:\n$error';
  }

  @override
  String get sectionDayBoundary => 'Granica dana';

  @override
  String get rolloverHour => 'Sat prijelaza';

  @override
  String get rolloverAtMidnight => 'Dan zavrsava u ponoc.';

  @override
  String rolloverSubtitle(String time) {
    return 'Jucerasnji ameli ostaju uredivi do $time.';
  }

  @override
  String get pickRolloverHour => 'Odaberite sat u kojem dan prelazi';

  @override
  String get sectionWeekMonth => 'Sedmica i mjesec';

  @override
  String get startOfWeek => 'Pocetak sedmice';

  @override
  String get startOfMonth => 'Pocetak mjeseca';

  @override
  String get startOfMonthClamped =>
      'Dani nakon 28. se ogranicavaju na zadnji dan kracih mjeseci.';

  @override
  String get sectionAppearance => 'Izgled';

  @override
  String get theme => 'Tema';

  @override
  String get themeSystem => 'Sistemska';

  @override
  String get themeLight => 'Svijetla';

  @override
  String get themeDark => 'Tamna';

  @override
  String get sectionLanguage => 'Jezik';

  @override
  String get language => 'Jezik';

  @override
  String get systemDefault => 'Sistemski zadano';

  @override
  String get aboutTitle => 'Muhasaba';

  @override
  String get aboutSubtitle =>
      'Licni dnevnik odgovornosti u vjeri. Svi podaci ostaju na ovom uredaju.';

  @override
  String get statsTitle => 'Statistika';

  @override
  String statsLoadError(String error) {
    return 'Greska pri ucitavanju statistike:\n$error';
  }

  @override
  String get perAmal => 'Po amelu';

  @override
  String get thisWeek => 'Ove sedmice';

  @override
  String get thisMonth => 'Ovog mjeseca';

  @override
  String get totalCompletions => 'ukupno zavrseno';

  @override
  String get streakCurrent => 'Trenutni';

  @override
  String get streakLongest => 'Najduzi';

  @override
  String get ratioWeek => 'Sedmica';

  @override
  String get ratioMonth => 'Mjesec';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'dana',
      one: 'dan',
    );
    return '$_temp0';
  }

  @override
  String streakWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'sedmica',
      one: 'sedmica',
    );
    return '$_temp0';
  }

  @override
  String streakMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'mjeseci',
      one: 'mjesec',
    );
    return '$_temp0';
  }

  @override
  String get frequencyBadgeDaily => 'dnevno';

  @override
  String get frequencyBadgeWeekly => 'sedmicno';

  @override
  String get frequencyBadgeMonthly => 'mjesecno';

  @override
  String get statsEmpty =>
      'Jos nema amela. Dodajte jedan na Danas da pocnete pracenje.';

  @override
  String get statsToday => 'Danas';

  @override
  String get statsThisWeek => 'Ove sedmice';

  @override
  String get statsThisMonth => 'Ovog mjeseca';

  @override
  String get statsAllTime => 'Svo vrijeme';

  @override
  String get statsCustomRange => 'Prilagodeni raspon';

  @override
  String get statsAllCategories => 'Sve';

  @override
  String get statsAllAmals => 'Sve';

  @override
  String get statsCompleted => 'Zavrseno';

  @override
  String get statsExpected => 'Ocekivano';

  @override
  String get statsVsPrevious => 'U odnosu na prethodno';

  @override
  String get statsByCategory => 'Po kategoriji';

  @override
  String get statsPerAmal => 'Po amelu';

  @override
  String get statsCurrentStreak => 'Trenutni niz';

  @override
  String get statsBestStreak => 'Najbolji niz';

  @override
  String get statsTotalDays => 'Ukupno dana';

  @override
  String get statsConsistency => 'Dosljednost';

  @override
  String get statsLast5Weeks => 'Zadnjih 5 sedmica';

  @override
  String get statsDailyBreakdown => 'Dnevni pregled';

  @override
  String get statsCompletionRate => 'Stopa zavrsenosti';

  @override
  String get statsFilterTime => 'Vrijeme';

  @override
  String get statsFilterCategory => 'Kategorija';

  @override
  String get statsFilterAmal => 'Amel';

  @override
  String get statsStreaks => 'Nizovi';

  @override
  String get statsSelectDateRange => 'Odaberite raspon datuma';

  @override
  String get historyTitle => 'Historija';

  @override
  String get jumpToDate => 'Skoci na datum';

  @override
  String historyEmptyDay(String date) {
    return 'Nema pracenih amela za $date';
  }

  @override
  String get streakUnitD => 'd';

  @override
  String get streakUnitW => 's';

  @override
  String get streakUnitM => 'm';

  @override
  String get mondayShort => 'Pon';

  @override
  String get tuesdayShort => 'Uto';

  @override
  String get wednesdayShort => 'Sri';

  @override
  String get thursdayShort => 'Cet';

  @override
  String get fridayShort => 'Pet';

  @override
  String get saturdayShort => 'Sub';

  @override
  String get sundayShort => 'Ned';

  @override
  String get mondayFull => 'Ponedjeljak';

  @override
  String get tuesdayFull => 'Utorak';

  @override
  String get wednesdayFull => 'Srijeda';

  @override
  String get thursdayFull => 'Cetvrtak';

  @override
  String get fridayFull => 'Petak';

  @override
  String get saturdayFull => 'Subota';

  @override
  String get sundayFull => 'Nedjelja';

  @override
  String get hadith0 =>
      '\"Allahu najdraza djela su ona koja se cine redovno, makar bila i mala.\"\n— Buhari i Muslim';

  @override
  String get hadith1 =>
      '\"Prihvatite se dobrih djela onoliko koliko mozete, jer su najbolja djela ona koja se cine redovno, makar bila i malobrojna.\"\n— Ibn Madze';

  @override
  String get hadith2 =>
      '\"Kada umre sin Ademov, prestaju njegova djela osim tri: trajna sadaka, korisno znanje ili dobro dijete koje moli za njega.\"\n— Muslim';

  @override
  String get hadith3 =>
      '\"Ko klanja dva hladna namaza (sabah i ikindiju) uci ce u Dzennet.\"\n— Buhari';

  @override
  String get hadith4 =>
      '\"Allah ne gleda u vas izgled niti u vase bogatstvo, vec gleda u vasa srca i vasa djela.\"\n— Muslim';

  @override
  String get hadith5 =>
      '\"Najbolji medu ljudima su oni koji su najkorisniji za ljude.\"\n— Darekutni';

  @override
  String get hadith6 =>
      '\"Olaksavajte i ne otezavajte; radujte ljude i ne rastijerujte ih.\"\n— Buhari';

  @override
  String get hadith7 =>
      '\"Ko krene putem u potrazi za znanjem, Allah ce mu olaksati put do Dzenneta.\"\n— Muslim';

  @override
  String get hadith8 => '\"Sadaka ne umanjuje imetak.\"\n— Muslim';

  @override
  String get hadith9 =>
      '\"Jaki vjernik je bolji i drazi Allahu od slabog vjernika, a u obojici je dobro.\"\n— Muslim';

  @override
  String get hadith10 =>
      '\"Ko kaže \'SubhanAllah ve bihamdihi\' stotinu puta dnevno, bit će mu oprošteni grijesi makar bili poput morske pjene.\"\n— Buhari';

  @override
  String get hadith11 =>
      '\"Najbolja dova je dova na dan Arefata, a najbolje što sam ja i vjerovjesnici prije mene rekli je: La ilahe illallah.\"\n— Tirmizi';

  @override
  String get hadith12 =>
      '\"Ko prouči Ajetul-Kursijj nakon svakog farz-namaza, ništa ga ne sprečava da uđe u Džennet osim smrti.\"\n— Nesai';

  @override
  String get hadith13 => '\"Lijepa riječ je sadaka.\"\n— Buhari i Muslim';

  @override
  String get hadith14 =>
      '\"Ko vjeruje u Allaha i Sudnji dan, neka govori dobro ili neka šuti.\"\n— Buhari i Muslim';

  @override
  String get hadith15 =>
      '\"Onaj ko se brine o udovici i siromahu je poput mudžahida na Allahovom putu.\"\n— Buhari';

  @override
  String get hadith16 => '\"Osmijeh tvom bratu je sadaka.\"\n— Tirmizi';

  @override
  String get hadith17 =>
      '\"Najbolji među vama je onaj ko nauči Kur\'an i podučava ga.\"\n— Buhari';

  @override
  String get hadith18 =>
      '\"Niko nije jeo bolju hranu od one koju je zaradio radom svojih ruku.\"\n— Buhari';

  @override
  String get hadith19 =>
      '\"Allah je blag i voli blagost u svemu.\"\n— Buhari i Muslim';

  @override
  String historyDayCompleted(int completed, int total) {
    return '$completed od $total završeno';
  }

  @override
  String get settingsSchedule => 'Raspored';

  @override
  String get settingsAppearance => 'Izgled';

  @override
  String get settingsAboutTagline => 'Vaš dnevni din pratilac';

  @override
  String get settingsRolloverSub => 'Kada se dan resetuje';
}
