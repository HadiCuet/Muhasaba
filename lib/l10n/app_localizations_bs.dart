// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bosnian (`bs`).
class AppLocalizationsBs extends AppLocalizations {
  AppLocalizationsBs([String locale = 'bs']) : super(locale);

  @override
  String get repeatsOnDaysHint => 'Ponavlja se odabranim danima';

  @override
  String get newDayStarted => 'Počeo je novi dan';

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
  String get tabChallenge => 'Izazov';

  @override
  String get tabInsights => 'Statistika';

  @override
  String get insightsTitle => 'Statistika';

  @override
  String get insightsOverview => 'Pregled';

  @override
  String get insightsDaily => 'Po danima';

  @override
  String get insightsArchive => 'Arhiva';

  @override
  String get archivedEmpty =>
      'Ovdje još nema ničega. Ameli koje uklonite iz praćenja ostaju ovdje, spremni da ih vratite.';

  @override
  String archivedStoppedOn(String date) {
    return 'Uklonjeno $date';
  }

  @override
  String get archivedRestore => 'Vrati';

  @override
  String archivedRestored(String title) {
    return '\"$title\" je vraćeno na vašu listu.';
  }

  @override
  String get newChallenge => 'Novi izazov';

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
  String get categorySunnah => 'Sunnet';

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
  String get repeatMode => 'Ponavljanje';

  @override
  String get onSetDays => 'Određenim danima';

  @override
  String get onSetDates => 'Određenim datumima';

  @override
  String get anyDayMode => 'Bilo koji dan';

  @override
  String get datesOfMonth => 'Datumi';

  @override
  String get daysPerWeekQuestion => 'Koliko dana sedmično?';

  @override
  String get daysPerMonthQuestion => 'Koliko dana mjesečno?';

  @override
  String get pickAtLeastOneDay => 'Odaberite barem jedan dan';

  @override
  String get pickAtLeastOneDate => 'Odaberite barem jedan datum';

  @override
  String get previewDaily => 'Ponavlja se svaki dan';

  @override
  String previewWeeklyDays(String days) {
    return 'Ponavlja se danima: $days';
  }

  @override
  String previewWeeklyAny(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ponavlja se bilo kojih $count dana sedmično',
      few: 'Ponavlja se bilo koja $count dana sedmično',
      one: 'Ponavlja se bilo koji $count dan sedmično',
    );
    return '$_temp0';
  }

  @override
  String previewMonthlyDates(int count, String dates) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ponavlja se svakog mjeseca na dane: $dates',
      one: 'Ponavlja se svakog mjeseca na dan: $dates',
    );
    return '$_temp0';
  }

  @override
  String previewMonthlyAny(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ponavlja se bilo kojih $count dana mjesečno',
      few: 'Ponavlja se bilo koja $count dana mjesečno',
      one: 'Ponavlja se bilo koji $count dan mjesečno',
    );
    return '$_temp0';
  }

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
  String get settingsReminders => 'Podsjetnici';

  @override
  String get dailyReminder => 'Dnevni podsjetnik';

  @override
  String get dailyReminderSubtitle => 'Blagi podsjetnik da pratite svoje amele';

  @override
  String get dailyReminderTimeLabel => 'Vrijeme podsjetnika';

  @override
  String get dailyReminderBody =>
      'Odvojite trenutak da pratite danasnje amele.';

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
  String progressOf(String progress, String target) {
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
  String get categoryNewSheetTitle => 'Nova kategorija';

  @override
  String get categoryEditSheetTitle => 'Uredi kategoriju';

  @override
  String get addAmal => 'Dodaj amel';

  @override
  String get customAmal => 'Prilagodeni amel';

  @override
  String get amalTasbih => 'Tespih 33x';

  @override
  String get amalIstighfar => 'Istigfar 100x';

  @override
  String get amalSurahKahf => 'Sura El-Kehf';

  @override
  String get amalSadaqah => 'Sadaka';

  @override
  String get amalTahajjud => 'Tehedzud';

  @override
  String get amalDuha => 'Duha namaz';

  @override
  String get amalFajr => 'Sabah';

  @override
  String get amalDhuhr => 'Podne';

  @override
  String get amalAsr => 'Ikindija';

  @override
  String get amalMaghrib => 'Akšam';

  @override
  String get amalIsha => 'Jacija';

  @override
  String get amalMorningAdhkar => 'Jutarnji zikr';

  @override
  String get amalEveningAdhkar => 'Večernji zikr';

  @override
  String get amalTilawah => 'Tilavet';

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
  String get hadith2 =>
      '\"Kada umre sin Ademov, prestaju njegova djela osim tri: trajna sadaka, korisno znanje ili dobro dijete koje moli za njega.\"\n— Muslim';

  @override
  String get hadith3 =>
      '\"Ko klanja dva hladna namaza (sabah i ikindiju) uci ce u Dzennet.\"\n— Buhari';

  @override
  String get hadith4 =>
      '\"Allah ne gleda u vas izgled niti u vase bogatstvo, vec gleda u vasa srca i vasa djela.\"\n— Muslim';

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
      '\"Ko kaže \'SubhanAllah ve bihamdihi\' stotinu puta dnevno, bit će mu oprošteni grijesi makar bili poput morske pjene.\"\n— Buhari i Muslim';

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
      '\"Onaj ko se brine o udovici i siromahu je poput mudžahida na Allahovom putu.\"\n— Buhari i Muslim';

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
  String historyDayCompleted(String completed, String total) {
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

  @override
  String get settingsAbout => 'O aplikaciji';

  @override
  String get settingsVersion => 'Verzija';

  @override
  String get settingsDeveloper => 'Programer';

  @override
  String get settingsSupport => 'Podrška';

  @override
  String get settingsRate => 'Ocijenite aplikaciju';

  @override
  String get settingsContact => 'Kontaktirajte nas';

  @override
  String get settingsReportBug => 'Prijavite grešku';

  @override
  String get settingsRequestFeature => 'Zatražite funkciju';

  @override
  String settingsSupportFallback(String email) {
    return 'Nije moguće otvoriti poštu. Molimo pišite na $email.';
  }

  @override
  String get settingsPrivacyPolicy => 'Politika privatnosti';

  @override
  String get settingsPrivacyOpenFailed =>
      'Politika privatnosti nije mogla biti otvorena.';

  @override
  String get hadith20 =>
      '\"Ko posti Ramazan iz imana i nadajući se nagradi, bit će mu oprošteni prošli grijesi.\"\n— Buhari i Muslim';

  @override
  String get hadith22 =>
      '\"Dova između ezana i ikameta se ne odbija.\"\n— Ebu Davud';

  @override
  String get hadith23 =>
      '\"Ko sagradi džamiju Allaha radi, Allah će mu sagraditi kuću u Džennetu.\"\n— Buhari i Muslim';

  @override
  String get hadith24 =>
      '\"Najbolji safovi za muškarce su prvi, a najbolji safovi za žene su posljednji.\"\n— Muslim';

  @override
  String get hadith25 => '\"Post je štit od vatre džehenemske.\"\n— Nesai';

  @override
  String get hadith26 =>
      '\"Ko klanja dvanaest rekata sunneta, bit će mu sagrađena kuća u Džennetu.\"\n— Muslim';

  @override
  String get hadith27 =>
      '\"Onaj ko vješto uči Kur\'an bit će sa plemenitim melekima.\"\n— Buhari i Muslim';

  @override
  String get hadith29 =>
      '\"Najbolja sadaka je napojiti nekoga vodom.\"\n— Ahmed';

  @override
  String get hadith30 =>
      '\"Ko otkloni teškoću od vjernika, Allah će otkloniti teškoću od njega na Sudnjem danu.\"\n— Muslim';

  @override
  String get hadith32 => '\"Stid je dio imana.\"\n— Buhari i Muslim';

  @override
  String get hadith34 =>
      '\"Ko se strpi, Allah će mu dati strpljenje.\"\n— Buhari i Muslim';

  @override
  String get hadith36 =>
      '\"Niko od vas neće istinski vjerovati dok ne bude želio svome bratu ono što želi sebi.\"\n— Buhari i Muslim';

  @override
  String get hadith37 =>
      '\"Nahranite gladne, posjetite bolesne i oslobodite zarobljenike.\"\n— Buhari';

  @override
  String get hadith38 =>
      '\"Jak čovjek nije onaj ko pobjeđuje u hrvanju, već onaj ko se kontroliše u srdžbi.\"\n— Buhari i Muslim';

  @override
  String get hadith40 =>
      '\"Recite \'SubhanAllah\', \'Elhamdulillah\' i \'Allahu Ekber\' po trideset tri puta nakon svakog namaza.\"\n— Muslim';

  @override
  String get hadith41 => '\"Najbolji zikr je La ilahe illallah.\"\n— Tirmizi';

  @override
  String get hadith42 =>
      '\"Dva su blagoslova koja mnogi ljudi troše uzalud: zdravlje i slobodno vrijeme.\"\n— Buhari';

  @override
  String get hadith43 =>
      '\"Iskoristite petero prije petero: mladost prije starosti, zdravlje prije bolesti, bogatstvo prije siromaštva, slobodno vrijeme prije zauzetosti i život prije smrti.\"\n— Hakim';

  @override
  String get hadith44 =>
      '\"Ko prouči Suru Ihlas deset puta, Allah će mu sagraditi kuću u Džennetu.\"\n— Ahmed';

  @override
  String get hadith45 =>
      '\"Najbolji namaz nakon farzova je noćni namaz.\"\n— Muslim';

  @override
  String get hadith46 =>
      '\"Sadaka gasi grijehe kao što voda gasi vatru.\"\n— Tirmizi';

  @override
  String get hadith47 =>
      '\"Onaj ko održava rodbinske veze nije onaj ko uzvraća, već onaj ko ih održava i kad su prekinute.\"\n— Buhari';

  @override
  String get hadith49 =>
      '\"Ko pojede i kaže: \'Hvala Allahu koji me nahranio ovim i opskrbio me bez ikakve moje moći i snage,\' bit će mu oprošteni prošli grijesi.\"\n— Tirmizi';

  @override
  String get hadith53 =>
      '\"Ne potcjenjuj nijedno dobro djelo, pa makar to bilo da sretneš brata sa vedrim licem.\"\n— Muslim';

  @override
  String get hadith54 =>
      '\"Najbolji među vama su oni koji su najbolji prema svojoj porodici.\"\n— Tirmizi';

  @override
  String get hadith55 =>
      '\"Ko prouči posljednja dva ajeta sure El-Bekare noću, bit će mu dovoljno.\"\n— Buhari i Muslim';

  @override
  String get hadith56 =>
      '\"Dunjaluk je uživanje, a najbolje uživanje je dobra supruga.\"\n— Muslim';

  @override
  String get hadith57 =>
      '\"Tri dove se ne odbijaju: dova postača, pravednog vladara i onoga kome je učinjena nepravda.\"\n— Tirmizi';

  @override
  String get hadith58 =>
      '\"Ko donese na mene jedan salavat, Allah će mu uzvratiti deset puta.\"\n— Muslim';

  @override
  String get hadith65 => '\"Vjernik je ogledalo vjerniku.\"\n— Ebu Davud';

  @override
  String get hadith66 =>
      '\"Iskrenost vodi ka dobru, a dobro vodi ka Džennetu.\"\n— Buhari i Muslim';

  @override
  String get hadith67 =>
      '\"Vrati emanet onome ko ti ga je povjerio, i ne iznevjeri onoga ko te iznevjerio.\"\n— Ebu Davud i Tirmizi';

  @override
  String get hadith68 =>
      '\"Nijedan umor, bolest, tuga, žalost, povreda ili briga ne pogodi muslimana, pa čak ni ubod trna, a da mu Allah ne oprosti neke od grijeha.\"\n— Buhari i Muslim';

  @override
  String get hadith69 =>
      '\"Dova muslimana za brata u njegovom odsustvu uvijek biva uslišana.\"\n— Muslim';

  @override
  String get hadith70 =>
      '\"Ko zamoli Allaha za Džennet tri puta, Džennet kaže: Allahu moj, uvedi ga u Džennet.\"\n— Tirmizi';

  @override
  String get hadith71 =>
      '\"Najvrjedniji post nakon Ramazana je post u Allahovom mjesecu Muharremu.\"\n— Muslim';

  @override
  String get hadith72 =>
      '\"Ko obavi hadž i ne govori ružne riječi niti čini grijehe, vratiće se čist kao na dan kada ga je majka rodila.\"\n— Buhari i Muslim';

  @override
  String get hadith73 =>
      '\"Umra do umre je iskupljenje za grijehe između njih.\"\n— Buhari i Muslim';

  @override
  String get hadith74 =>
      '\"Požurite sa dobrim djelima prije nego što dođu iskušenja poput komada mračne noći.\"\n— Muslim';

  @override
  String get hadith75 =>
      '\"Dva rekata sabah-namaza su bolji od dunjaluka i svega što je na njemu.\"\n— Muslim';

  @override
  String get hadith77 =>
      '\"Kada biste se oslonili na Allaha onako kako treba, On bi vas opskrbio kao što opskrbljuje ptice.\"\n— Tirmizi';

  @override
  String get hadith78 =>
      '\"Ko posjeti bolesnika, u džennetskom je vrtu sve dok se ne vrati.\"\n— Muslim';

  @override
  String get hadith79 =>
      '\"Širite selam, hranite gladne i klanjajte noću dok ljudi spavaju — ući ćete u džennet u miru.\"\n— Tirmizi';

  @override
  String get hadith80 =>
      '\"Ko nije zahvalan ljudima, nije zahvalan ni Allahu.\"\n— Tirmizi';

  @override
  String get hadith81 =>
      '\"Zavist je dozvoljena samo u dva slučaja: čovjeku kome je Allah dao imetak pa ga troši na putu istine, i čovjeku kome je Allah dao mudrost pa po njoj sudi i podučava.\"\n— Buhari i Muslim';

  @override
  String get hadith82 =>
      '\"Čovjek slijedi vjeru svoga prijatelja, pa neka svako od vas pazi s kim se druži.\"\n— Ebu Davud i Tirmizi';

  @override
  String get hadith85 =>
      '\"Ko ostavi nešto radi Allaha, Allah će mu to zamijeniti nečim boljim.\"\n— Ahmed';

  @override
  String get hadith86 =>
      '\"Ko prikrije mahane jednog muslimana, Allah će prikriti njegove mahane na Sudnjem danu.\"\n— Buhari i Muslim';

  @override
  String get hadith87 =>
      '\"Budi na ovom svijetu kao da si stranac ili putnik.\"\n— Buhari';

  @override
  String get hadith88 =>
      '\"Ko olakša nekome ko je u teškoći, Allah će njemu olakšati na dunjaluku i ahiretu.\"\n— Muslim';

  @override
  String get hadith89 =>
      '\"Djela se vrednuju prema namjerama.\"\n— Buhari i Muslim';

  @override
  String get hadith90 =>
      '\"Čuvajte se sumnje jer je sumnja najlažniji govor.\"\n— Buhari i Muslim';

  @override
  String get hadith93 =>
      '\"Jedite zajedno i spominjite Allahovo ime, bit će vam blagoslovljeno.\"\n— Ebu Davud';

  @override
  String get hadith94 =>
      '\"Nijedan narod ne sjedne spominjući Allaha, a da ih meleki ne okruže, milost ih ne obuhvati i smiraj ne siđe na njih.\"\n— Muslim';

  @override
  String get hadith95 =>
      '\"Allah robu koji prašta samo uveća čast.\"\n— Muslim';

  @override
  String get hadith96 =>
      '\"Veži svoju devu, a onda se osloni na Allaha.\"\n— Tirmizi';

  @override
  String get hadith97 =>
      '\"Divan li je posao vjernika — sve mu je dobro.\"\n— Muslim';

  @override
  String get hadith98 =>
      '\"Musliman je brat muslimanu: ne čini mu nepravdu, ne napušta ga i ne prezire ga.\"\n— Muslim';

  @override
  String get delete => 'Izbriši';

  @override
  String get remove => 'Ukloni';

  @override
  String get deleteAmalConfirmTitle => 'Ukloniti iz praćenja?';

  @override
  String deleteAmalConfirmBody(String title) {
    return '\"$title\" će biti sakriveno s vašeg popisa. Vaša historija je sačuvana.';
  }

  @override
  String get genericError => 'Nešto je pošlo po krivu. Pokušajte ponovo.';

  @override
  String get notificationChannelName => 'Podsjetnici za amel';

  @override
  String get notificationChannelDescription =>
      'Dnevni podsjetnici za amele koje pratite.';

  @override
  String get invalidAmalId => 'Nevažeći ID amela';

  @override
  String get tutorialSettingsRow => 'Kako koristiti aplikaciju Muhasaba';

  @override
  String get tutorialSkip => 'Preskoči';

  @override
  String get tutorialNext => 'Dalje';

  @override
  String get tutorialDone => 'Gotovo';

  @override
  String get tutorialTapTitle => 'Dodirnite da završite';

  @override
  String get tutorialTapBody =>
      'Jedan dodir označava amel završenim za danas. Dodirnite ponovo da poništite.';

  @override
  String get tutorialEditTitle => 'Dvaput dodirnite za uređivanje';

  @override
  String get tutorialEditBody =>
      'Otvara obrazac za uređivanje — promijenite naziv ili koliko se često ponavlja.';

  @override
  String get tutorialReorderTitle =>
      'Pritisnite i držite za promjenu redoslijeda';

  @override
  String get tutorialReorderBody =>
      'Držite red, zatim ga povucite. Vaš redoslijed se čuva.';

  @override
  String get tutorialRemoveTitle => 'Prevucite da uklonite';

  @override
  String get tutorialRemoveBody =>
      'Prevucite red u stranu da ga sakrijete za danas ili da prestanete pratiti.';

  @override
  String get tutorialCountTitle => 'Brojanje ponavljanja';

  @override
  String get tutorialCountBody =>
      'Za amele s ciljem većim od jedan, koristite − i + za svako ponavljanje.';

  @override
  String get tutorialViewTitle => 'Grupiranje ili obična lista';

  @override
  String get tutorialViewBody =>
      'Prebacujte između grupiranja po kategoriji i jedne obične liste.';

  @override
  String get tutorialChallengeLogTitle => 'Dodirnite da zabilježite danas';

  @override
  String get tutorialChallengeLogBody =>
      'Jedan dodir bilježi današnji dan. Kod izazova s brojanjem, svaki dodir dodaje jedan korak.';

  @override
  String get tutorialChallengeOpenTitle => 'Dvaput dodirnite da otvorite';

  @override
  String get tutorialChallengeOpenBody =>
      'Otvara izazov — vidite svaki dan, ispravite propušteni ili ga izbrišite.';

  @override
  String get tutorialChallengeDeleteBody =>
      'Prevucite karticu u stranu da izbrišete izazov.';

  @override
  String get tutorialChallengeAmountTitle => 'Bilježenje tačne količine';

  @override
  String get tutorialChallengeAmountBody =>
      'Koristite − i + za promjenu ili dodirnite broj da upišete tačnu količinu.';

  @override
  String get challengeOpenDetailsAction => 'Otvori detalje izazova';

  @override
  String get challengesActive => 'Aktivni';

  @override
  String get challengesPast => 'Prošli';

  @override
  String challengeJustFinished(int count, String title) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Završeno je $count izazova — posljednji $title',
      few: 'Završena su $count izazova — posljednji $title',
      one: 'Završen je $count izazov — $title',
    );
    return '$_temp0';
  }

  @override
  String get challengeSectionEnded => 'Isteklo';

  @override
  String get challengesPastEmpty => 'Još ništa nije završeno.';

  @override
  String get challengesEmptyTitle => 'Još nema izazova';

  @override
  String get challengesEmptyBody =>
      'Postavite sebi cilj — poput 20 rekata za 7 dana — i pratite ga ovdje.';

  @override
  String get editChallenge => 'Uredi izazov';

  @override
  String get deleteChallenge => 'Izbriši izazov';

  @override
  String get deleteChallengeConfirm =>
      'Izbrisati ovaj izazov i sav zabilježeni napredak?';

  @override
  String get challengeShapeQuestion => 'Kakva je vrsta ovog izazova?';

  @override
  String get challengeShapeTotal => 'Ukupan cilj';

  @override
  String get challengeShapeTotalBody =>
      '1000 salavata, 30 džuzova. Bilježite količine i one se sabiraju.';

  @override
  String get challengeShapeStreak => 'Niz iz dana u dan';

  @override
  String get challengeShapeStreakBody =>
      'Tehedždžud, sabah u džematu. Jedna oznaka dnevno, količina nije važna.';

  @override
  String get challengeTargetLabel => 'Cilj';

  @override
  String get challengeTargetRequired => 'Unesite cilj veći od nule';

  @override
  String get challengeUnitLabel => 'Jedinica (opcionalno)';

  @override
  String get challengeUnitHint => 'rekat, stranica, puta';

  @override
  String get challengeOneTapAdds => 'Jedan dodir dodaje';

  @override
  String get challengeHowManyDays => 'Koliko dana?';

  @override
  String get challengeReachHowMuch => 'Do koje količine?';

  @override
  String get challengeSpreadOver => 'Raspoređeno na';

  @override
  String get challengeSpreadEveryDay => 'Svaki dan';

  @override
  String get challengeSpreadLonger => 'Duži rok';

  @override
  String get challengeByWhen => 'Do kada?';

  @override
  String get challengeWindowDuration => 'U roku od';

  @override
  String get challengeByDate => 'Do datuma';

  @override
  String challengePlanRange(String start, String end) {
    return '$start do $end';
  }

  @override
  String challengePlanExact(String start, String end) {
    return '$start do $end · jedan dnevno, svaki dan';
  }

  @override
  String challengePlanSlack(
    String start,
    String end,
    String target,
    String window,
    String slack,
  ) {
    return '$start do $end · $target od $window dana — $slack možete propustiti';
  }

  @override
  String challengePlanRate(String start, String end, String rate) {
    return '$start do $end · oko $rate dnevno';
  }

  @override
  String challengePlanOpen(String start) {
    return 'Počinje $start · bez roka';
  }

  @override
  String challengeTooTight(String target, String window) {
    return '$target dana ne može stati u $window dana — niz računa jedan dnevno.';
  }

  @override
  String challengeDurationLabel(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dana',
      few: '$count dana',
      one: '$count dan',
    );
    return '$_temp0';
  }

  @override
  String get challengeStartDate => 'Počinje';

  @override
  String get challengeEndDate => 'Završava';

  @override
  String challengeProgressCount(String done, String target, String unit) {
    return '$done od $target $unit';
  }

  @override
  String challengeProgressPlain(String done, String target) {
    return '$done od $target';
  }

  @override
  String challengeProgressDays(String done, String target) {
    return '$done od $target dana';
  }

  @override
  String challengeDaysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'još $count dana',
      few: 'još $count dana',
      one: 'još $count dan',
    );
    return '$_temp0';
  }

  @override
  String get challengeNoDeadline => 'Bez roka';

  @override
  String challengeOnTrack(String rate) {
    return 'U planu · $rate/dan';
  }

  @override
  String challengeBehind(String rate) {
    return 'Zaostatak · $rate/dan';
  }

  @override
  String challengeLastDay(String remaining) {
    return 'Zadnji dan · još $remaining';
  }

  @override
  String get challengeReached => 'Cilj postignut';

  @override
  String get challengeCompleted => 'Završeno';

  @override
  String challengeEnded(String done, String target) {
    return 'Isteklo · $done od $target';
  }

  @override
  String get challengeExpiredTitle => 'Izazov je završen';

  @override
  String challengeExpiredBody(String title, String done, String target) {
    return '$title je završen sa $done od $target.';
  }

  @override
  String get challengeExtend => 'Produži';

  @override
  String get challengeRestart => 'Počni ponovo';

  @override
  String get challengeArchive => 'Arhiviraj';

  @override
  String get challengeDailyBreakdown => 'Dnevni zapis';

  @override
  String challengeNudgeBody(String title, String rate) {
    return '$title: $rate dnevno da završiš na vrijeme.';
  }

  @override
  String challengeLastDayBody(String title, String remaining) {
    return '$title: zadnji dan — još $remaining.';
  }

  @override
  String get challengeGroupGoal => 'Vaš cilj';

  @override
  String get challengeGroupShape => 'Vrsta';

  @override
  String get challengeGroupPlan => 'Plan';

  @override
  String get challengeGroupReminders => 'Podsjetnici';

  @override
  String get challengeStartFromTemplate => 'Počni od šablona';

  @override
  String get challengeTemplateBlank => 'Prazno';

  @override
  String get challengePreview => 'Pregled';

  @override
  String get challengeTmplTahajjud => '40 noći Tehedzud';

  @override
  String get challengeTmplSalawat => '1000 salavata';

  @override
  String get challengeTmplKhatm => 'Hatma Kur\'ana za 30 dana';

  @override
  String get challengeTmplFajrJamaah => '30 dana sabah u džematu';

  @override
  String get challengeTmplSadaqah => 'Sadaka 30 dana';

  @override
  String get listSeparator => ' · ';
}
