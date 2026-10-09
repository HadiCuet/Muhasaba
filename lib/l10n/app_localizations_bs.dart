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
      'Ovdje još nema ničega. Ameli koje uklonite iz praćenja pojavit će se ovdje, pa ih možete vratiti.';

  @override
  String archivedStoppedOn(String date) {
    return 'Uklonjen $date';
  }

  @override
  String get archivedRestore => 'Vrati';

  @override
  String archivedRestored(String title) {
    return '„$title“ je ponovo na vašoj listi.';
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
  String get save => 'Sačuvaj';

  @override
  String get cancel => 'Otkaži';

  @override
  String get ok => 'OK';

  @override
  String get clear => 'Očisti';

  @override
  String get titleLabel => 'Naslov';

  @override
  String get titleRequired => 'Naslov je obavezan';

  @override
  String get titleTooLong => 'Naslov je predugačak';

  @override
  String get frequencyLabel => 'Učestalost';

  @override
  String get frequencyDaily => 'Dnevno';

  @override
  String get frequencyWeekly => 'Sedmično';

  @override
  String get frequencyMonthly => 'Mjesečno';

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
  String get timesPerPeriod => 'Broj puta u periodu';

  @override
  String get custom => 'Prilagođeno';

  @override
  String get customTargetHint => 'npr. 50';

  @override
  String get targetAny => 'Bilo koliko';

  @override
  String get targetAnyHelp =>
      'Bez cilja — bilo koja količina računa se kao završeno';

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
    return 'Ponavlja se svake sedmice: $days';
  }

  @override
  String previewWeeklyAny(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ponavlja se $count dana sedmično, bilo kojih',
      few: 'Ponavlja se $count dana sedmično, bilo koja',
      one: 'Ponavlja se $count dan sedmično, bilo koji',
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
      other: 'Ponavlja se $count dana mjesečno, bilo kojih',
      few: 'Ponavlja se $count dana mjesečno, bilo koja',
      one: 'Ponavlja se $count dan mjesečno, bilo koji',
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
  String get startPreChecked => 'Unaprijed označeno';

  @override
  String get startPreCheckedSubtitle =>
      'Kada počne novi period, ovaj amel je automatski označen kao završen dok ga ne odznačite.';

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
      'Podsjetnik je sačuvan, ali obavještenja nisu dozvoljena. Omogućite ih u postavkama sistema da biste dobijali podsjetnike.';

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
      'Odvojite trenutak da zabilježite današnje amele.';

  @override
  String get groupByCategory => 'Grupiši po kategorijama';

  @override
  String get flatList => 'Obična lista';

  @override
  String errorGeneric(String error) {
    return 'Greška: $error';
  }

  @override
  String get todayEmptyHint => 'Pritisnite + da dodate svoj prvi amel.';

  @override
  String get noteLabel => 'Bilješka';

  @override
  String get noteHint => 'npr. Klanjano u džamiji';

  @override
  String get completed => 'završeno';

  @override
  String get notCompleted => 'nije završeno';

  @override
  String progressOf(String progress, String target) {
    return '$progress od $target završeno';
  }

  @override
  String progressOpen(String count) {
    return '$count završeno';
  }

  @override
  String get removeFromToday => 'Ukloni za danas';

  @override
  String get removeFromTodaySubtitle => 'Sakrij samo za danas. Vraća se sutra.';

  @override
  String get removeFromTracking => 'Ukloni iz praćenja';

  @override
  String get removeFromTrackingSubtitle =>
      'Trajno ukloni s liste. Historija se čuva.';

  @override
  String get chooseIcon => 'Odaberi ikonu';

  @override
  String get iconNone => 'Nema';

  @override
  String get recentlyUsed => 'Nedavno korišteno';

  @override
  String get emojiSectionGeneral => 'Opće';

  @override
  String get categoryNameHint => 'Naziv';

  @override
  String get categoryNew => '+ Nova';

  @override
  String get categoryNewSheetTitle => 'Nova kategorija';

  @override
  String get categoryEditSheetTitle => 'Uredi kategoriju';

  @override
  String get addAmal => 'Dodaj amel';

  @override
  String get customAmal => 'Vlastiti amel';

  @override
  String get amalTasbih => 'Tesbih 33x';

  @override
  String get amalIstighfar => 'Istigfar';

  @override
  String get amalSurahKahf => 'Sura El-Kehf';

  @override
  String get amalSadaqah => 'Sadaka';

  @override
  String get amalTahajjud => 'Tehedžud';

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
    return 'Greška pri učitavanju postavki:\n$error';
  }

  @override
  String get sectionDayBoundary => 'Granica dana';

  @override
  String get rolloverHour => 'Sat promjene dana';

  @override
  String get rolloverAtMidnight => 'Dan se završava u ponoć.';

  @override
  String rolloverSubtitle(String time) {
    return 'Jučerašnje amele možete uređivati do $time.';
  }

  @override
  String get pickRolloverHour => 'Odaberite sat kada počinje novi dan';

  @override
  String get sectionWeekMonth => 'Sedmica i mjesec';

  @override
  String get startOfWeek => 'Početak sedmice';

  @override
  String get startOfMonth => 'Početak mjeseca';

  @override
  String get startOfMonthClamped =>
      'Dani nakon 28. u kraćim mjesecima pomjeraju se na posljednji dan mjeseca.';

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
  String get systemDefault => 'Prema sistemu';

  @override
  String get aboutTitle => 'Muhasaba';

  @override
  String get aboutSubtitle =>
      'Lični dnevnik samoobračuna u vjeri. Svi podaci ostaju na ovom uređaju.';

  @override
  String get statsTitle => 'Statistika';

  @override
  String statsLoadError(String error) {
    return 'Greška pri učitavanju statistike:\n$error';
  }

  @override
  String get perAmal => 'Po amelu';

  @override
  String get thisWeek => 'Ove sedmice';

  @override
  String get thisMonth => 'Ovog mjeseca';

  @override
  String get totalCompletions => 'ukupno završeno';

  @override
  String get streakCurrent => 'Trenutni';

  @override
  String get streakLongest => 'Najduži';

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
      few: 'sedmice',
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
      few: 'mjeseca',
      one: 'mjesec',
    );
    return '$_temp0';
  }

  @override
  String get frequencyBadgeDaily => 'dnevno';

  @override
  String get frequencyBadgeWeekly => 'sedmično';

  @override
  String get frequencyBadgeMonthly => 'mjesečno';

  @override
  String get statsEmpty =>
      'Još nema amela. Dodajte jedan na kartici Danas da počnete praćenje.';

  @override
  String get statsToday => 'Danas';

  @override
  String get statsThisWeek => 'Ove sedmice';

  @override
  String get statsThisMonth => 'Ovog mjeseca';

  @override
  String get statsAllTime => 'Od početka';

  @override
  String get statsCustomRange => 'Prilagođeni raspon';

  @override
  String get statsAllCategories => 'Sve';

  @override
  String get statsAllAmals => 'Sve';

  @override
  String get statsCompleted => 'Završeno';

  @override
  String get statsExpected => 'Očekivano';

  @override
  String get statsVsPrevious => 'Prema prethodnom';

  @override
  String get statsByCategory => 'Po kategoriji';

  @override
  String get statsPerAmal => 'Po amelu';

  @override
  String get statsTotalCaption => 'ukupno';

  @override
  String statsDaysFraction(String done, String expectedText, num expected) {
    String _temp0 = intl.Intl.pluralLogic(
      expected,
      locale: localeName,
      other: 'dana',
      few: 'dana',
      one: 'dan',
    );
    return '$done/$expectedText $_temp0';
  }

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
  String get statsCompletionRate => 'Postotak završenosti';

  @override
  String get statsAmountPerDay => 'Količina po danu';

  @override
  String statsCountTotal(String count) {
    return 'Ukupno $count';
  }

  @override
  String statsCountAvg(String amount) {
    return 'Prosjek $amount/dan';
  }

  @override
  String statsCountBest(String count, String day) {
    return 'Najviše $count · $day';
  }

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
  String get jumpToDate => 'Idi na datum';

  @override
  String historyEmptyDay(String date) {
    return 'Nema praćenih amela za $date';
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
  String get thursdayShort => 'Čet';

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
  String get thursdayFull => 'Četvrtak';

  @override
  String get fridayFull => 'Petak';

  @override
  String get saturdayFull => 'Subota';

  @override
  String get sundayFull => 'Nedjelja';

  @override
  String get hadith0 =>
      '„Allahu je najdraže ono djelo koje se stalno čini, makar bilo i malo.“\n— Buhari i Muslim';

  @override
  String get hadith2 =>
      '„Kada umre sin Ademov, prestaju mu djela osim triju: trajne sadake, korisnog znanja ili dobrog djeteta koje za njega dovu čini.“\n— Muslim';

  @override
  String get hadith3 =>
      '„Ko klanja dva hladna namaza (sabah i ikindiju), ući će u Džennet.“\n— Buhari';

  @override
  String get hadith4 =>
      '„Allah ne gleda u vaš izgled niti u vaše imetke, nego gleda u vaša srca i vaša djela.“\n— Muslim';

  @override
  String get hadith6 =>
      '„Olakšavajte, a ne otežavajte; obradujte ljude, a ne odbijajte ih.“\n— Buhari';

  @override
  String get hadith7 =>
      '„Ko krene putem tražeći znanje, Allah će mu olakšati put do Dženneta.“\n— Muslim';

  @override
  String get hadith8 => '„Sadaka ne umanjuje imetak.“\n— Muslim';

  @override
  String get hadith9 =>
      '„Jak vjernik bolji je i Allahu draži od slabog vjernika, a u svakom od njih ima dobra.“\n— Muslim';

  @override
  String get hadith10 =>
      '„Ko stotinu puta dnevno kaže ‚Subhanallahi ve bihamdihi‘, bit će mu oprošteni grijesi, makar ih bilo koliko morske pjene.“\n— Buhari i Muslim';

  @override
  String get hadith12 =>
      '„Ko prouči Ajetul-kursiju nakon svakog farz-namaza, od ulaska u Džennet ne dijeli ga ništa osim smrti.“\n— Nesai';

  @override
  String get hadith13 => '„Lijepa riječ je sadaka.“\n— Buhari i Muslim';

  @override
  String get hadith14 =>
      '„Ko vjeruje u Allaha i Sudnji dan, neka govori dobro ili neka šuti.“\n— Buhari i Muslim';

  @override
  String get hadith15 =>
      '„Onaj ko se brine o udovici ili siromahu je kao borac na Allahovom putu.“\n— Buhari i Muslim';

  @override
  String get hadith16 => '„Tvoj osmijeh tvome bratu je sadaka.“\n— Tirmizi';

  @override
  String get hadith17 =>
      '„Najbolji od vas je onaj ko nauči Kur\'an i druge ga podučava.“\n— Buhari';

  @override
  String get hadith18 =>
      '„Niko nije jeo bolju hranu od one koju je zaradio radom svojih ruku.“\n— Buhari';

  @override
  String get hadith19 =>
      '„Allah je blag i voli blagost u svemu.“\n— Buhari i Muslim';

  @override
  String historyDayCompleted(String completed, String total) {
    return '$completed od $total završeno';
  }

  @override
  String get settingsSchedule => 'Raspored';

  @override
  String get settingsAppearance => 'Izgled';

  @override
  String get settingsAboutTagline => 'Vaš svakodnevni pratilac u vjeri';

  @override
  String get settingsRolloverSub => 'Kada počinje novi dan';

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
  String get settingsRequestFeature => 'Predložite novu funkciju';

  @override
  String settingsSupportFallback(String email) {
    return 'Nije moguće otvoriti e-poštu. Pišite nam na $email.';
  }

  @override
  String get settingsPrivacyPolicy => 'Politika privatnosti';

  @override
  String get settingsPrivacyOpenFailed =>
      'Nije moguće otvoriti politiku privatnosti.';

  @override
  String get hadith20 =>
      '„Ko posti Ramazan iz imana i nadajući se nagradi, bit će mu oprošteni prošli grijesi.“\n— Buhari i Muslim';

  @override
  String get hadith22 =>
      '„Dova između ezana i ikameta se ne odbija.“\n— Ebu Davud';

  @override
  String get hadith23 =>
      '„Ko sagradi džamiju Allaha radi, Allah će mu sagraditi kuću u Džennetu.“\n— Buhari i Muslim';

  @override
  String get hadith24 =>
      '„Najbolji safovi za muškarce su prvi, a najbolji safovi za žene su posljednji.“\n— Muslim';

  @override
  String get hadith25 => '„Post je štit od džehennemske vatre.“\n— Nesai';

  @override
  String get hadith26 =>
      '„Ko klanja dvanaest rekata sunneta, bit će mu sagrađena kuća u Džennetu.“\n— Muslim';

  @override
  String get hadith27 =>
      '„Onaj ko vješto uči Kur\'an bit će sa plemenitim melekima.“\n— Buhari i Muslim';

  @override
  String get hadith29 => '„Najbolja sadaka je napojiti nekoga vodom.“\n— Ahmed';

  @override
  String get hadith30 =>
      '„Ko otkloni teškoću od vjernika, Allah će otkloniti teškoću od njega na Sudnjem danu.“\n— Muslim';

  @override
  String get hadith32 => '„Stid je dio imana.“\n— Buhari i Muslim';

  @override
  String get hadith34 =>
      '„Ko se strpi, Allah će mu dati strpljenje.“\n— Buhari i Muslim';

  @override
  String get hadith36 =>
      '„Niko od vas neće istinski vjerovati dok ne bude želio svome bratu ono što želi sebi.“\n— Buhari i Muslim';

  @override
  String get hadith37 =>
      '„Nahranite gladne, posjetite bolesne i oslobodite zarobljenike.“\n— Buhari';

  @override
  String get hadith38 =>
      '„Jak nije onaj ko obara u hrvanju, nego onaj ko savlada sebe u srdžbi.“\n— Buhari i Muslim';

  @override
  String get hadith40 =>
      '„Recite ‚Subhanallah‘, ‚Elhamdulillah‘ i ‚Allahu ekber‘ po trideset i tri puta nakon svakog namaza.“\n— Muslim';

  @override
  String get hadith41 => '„Najbolji zikr je La ilahe illallah.“\n— Tirmizi';

  @override
  String get hadith42 =>
      '„Dvije su blagodati koje mnogi ljudi ne iskoriste: zdravlje i slobodno vrijeme.“\n— Buhari';

  @override
  String get hadith43 =>
      '„Iskoristi pet stvari prije pet drugih: mladost prije starosti, zdravlje prije bolesti, bogatstvo prije siromaštva, slobodno vrijeme prije zauzetosti i život prije smrti.“\n— Hakim';

  @override
  String get hadith44 =>
      '„Ko deset puta prouči suru El-Ihlas, Allah će mu sagraditi kuću u Džennetu.“\n— Ahmed';

  @override
  String get hadith45 =>
      '„Najbolji namaz nakon farz-namaza je noćni namaz.“\n— Muslim';

  @override
  String get hadith46 =>
      '„Sadaka gasi grijehe kao što voda gasi vatru.“\n— Tirmizi';

  @override
  String get hadith47 =>
      '„Onaj ko održava rodbinske veze nije onaj ko uzvraća, već onaj ko ih održava i kad su prekinute.“\n— Buhari';

  @override
  String get hadith49 =>
      '„Ko pojede jelo i kaže: ‚Hvala Allahu koji me ovim nahranio i opskrbio bez moje moći i snage‘, bit će mu oprošteni prošli grijesi.“\n— Tirmizi';

  @override
  String get hadith53 =>
      '„Nemoj omalovažavati nijedno dobro djelo, makar to bilo da brata susretneš vedra lica.“\n— Muslim';

  @override
  String get hadith54 =>
      '„Najbolji među vama su oni koji su najbolji prema svojoj porodici.“\n— Tirmizi';

  @override
  String get hadith55 =>
      '„Ko noću prouči posljednja dva ajeta sure El-Bekare, ona će mu biti dovoljna.“\n— Buhari i Muslim';

  @override
  String get hadith56 =>
      '„Dunjaluk je uživanje, a najbolje uživanje je dobra supruga.“\n— Muslim';

  @override
  String get hadith57 =>
      '„Tri dove se ne odbijaju: dova postača, pravednog vladara i onoga kome je učinjena nepravda.“\n— Tirmizi';

  @override
  String get hadith58 =>
      '„Ko na mene donese jedan salavat, Allah će njemu donijeti deset salavata.“\n— Muslim';

  @override
  String get hadith65 => '„Vjernik je ogledalo vjerniku.“\n— Ebu Davud';

  @override
  String get hadith66 =>
      '„Istinoljubivost vodi dobročinstvu, a dobročinstvo vodi u Džennet.“\n— Buhari i Muslim';

  @override
  String get hadith67 =>
      '„Vrati emanet onome ko ti ga je povjerio i ne iznevjeri ni onoga ko je tebe iznevjerio.“\n— Ebu Davud i Tirmizi';

  @override
  String get hadith68 =>
      '„Muslimana ne pogodi nikakav umor, bolest, briga, tuga, neugodnost ni potištenost, pa čak ni trn koji ga ubode, a da mu Allah time ne izbriše neke grijehe.“\n— Buhari i Muslim';

  @override
  String get hadith69 =>
      '„Dova muslimana za brata u njegovom odsustvu uvijek biva uslišana.“\n— Muslim';

  @override
  String get hadith70 =>
      '„Ko tri puta zamoli Allaha za Džennet, Džennet kaže: Allahu, uvedi ga u Džennet.“\n— Tirmizi';

  @override
  String get hadith71 =>
      '„Najvrjedniji post nakon Ramazana je post u Allahovom mjesecu Muharremu.“\n— Muslim';

  @override
  String get hadith72 =>
      '„Ko obavi hadž, a ne bude bestidan niti griješi, vratit će se kao na dan kada ga je majka rodila.“\n— Buhari i Muslim';

  @override
  String get hadith73 =>
      '„Umra do umre iskup je za grijehe počinjene između njih.“\n— Buhari i Muslim';

  @override
  String get hadith74 =>
      '„Požurite s dobrim djelima prije nego što dođu smutnje poput komada mrkle noći.“\n— Muslim';

  @override
  String get hadith75 =>
      '„Dva rekata sabaha bolja su od dunjaluka i svega što je na njemu.“\n— Muslim';

  @override
  String get hadith77 =>
      '„Kada biste se oslanjali na Allaha onako kako se treba oslanjati, On bi vas opskrbio kao što opskrbljuje ptice.“\n— Tirmizi';

  @override
  String get hadith78 =>
      '„Ko posjeti bolesnika, u džennetskoj je berbi sve dok se ne vrati.“\n— Muslim';

  @override
  String get hadith79 =>
      '„Širite selam, hranite gladne i klanjajte noću dok ljudi spavaju — ući ćete u Džennet u miru.“\n— Tirmizi';

  @override
  String get hadith80 =>
      '„Ko nije zahvalan ljudima, nije zahvalan ni Allahu.“\n— Tirmizi';

  @override
  String get hadith81 =>
      '„Zavist je dozvoljena samo u dva slučaja: čovjeku kome je Allah dao imetak pa ga troši na putu istine, i čovjeku kome je Allah dao mudrost pa po njoj sudi i podučava.“\n— Buhari i Muslim';

  @override
  String get hadith82 =>
      '„Čovjek slijedi vjeru svoga prijatelja, pa neka svako od vas pazi s kim se druži.“\n— Ebu Davud i Tirmizi';

  @override
  String get hadith85 =>
      '„Ko ostavi nešto radi Allaha, Allah će mu to zamijeniti nečim boljim.“\n— Ahmed';

  @override
  String get hadith86 =>
      '„Ko prikrije mahane muslimana, Allah će njemu prikriti mahane na Sudnjem danu.“\n— Buhari i Muslim';

  @override
  String get hadith87 =>
      '„Budi na dunjaluku kao da si stranac ili putnik.“\n— Buhari';

  @override
  String get hadith88 =>
      '„Ko olakša onome ko je u teškoći, Allah će njemu olakšati na dunjaluku i na ahiretu.“\n— Muslim';

  @override
  String get hadith89 =>
      '„Djela se vrednuju prema namjerama.“\n— Buhari i Muslim';

  @override
  String get hadith90 =>
      '„Čuvajte se sumnjičenja, jer je sumnjičenje najlažniji govor.“\n— Buhari i Muslim';

  @override
  String get hadith93 =>
      '„Jedite zajedno i spominjite Allahovo ime, pa će vam u hrani biti bereketa.“\n— Ebu Davud';

  @override
  String get hadith94 =>
      '„Kad god se neki ljudi okupe spominjući Allaha, meleki ih okruže, milost ih prekrije i na njih se spusti smiraj.“\n— Muslim';

  @override
  String get hadith95 => '„Allah robu koji prašta samo uveća čast.“\n— Muslim';

  @override
  String get hadith96 =>
      '„Veži svoju devu, a onda se osloni na Allaha.“\n— Tirmizi';

  @override
  String get hadith97 =>
      '„Zadivljujuće je stanje vjernika — sve mu je na dobro.“\n— Muslim';

  @override
  String get hadith98 =>
      '„Musliman je brat muslimanu: ne čini mu nepravdu, ne napušta ga i ne prezire ga.“\n— Muslim';

  @override
  String get delete => 'Izbriši';

  @override
  String get remove => 'Ukloni';

  @override
  String get deleteAmalConfirmTitle => 'Ukloniti iz praćenja?';

  @override
  String deleteAmalConfirmBody(String title) {
    return '„$title“ više neće biti na vašoj listi. Historija ostaje sačuvana.';
  }

  @override
  String get genericError => 'Došlo je do greške. Pokušajte ponovo.';

  @override
  String get notificationChannelName => 'Podsjetnici za amele';

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
      'Jednim dodirom amel se označava kao završen za danas. Dodirnite ponovo da poništite.';

  @override
  String get tutorialEditTitle => 'Dvaput dodirnite da uredite';

  @override
  String get tutorialEditBody =>
      'Otvara obrazac za uređivanje — promijenite naziv ili koliko se često ponavlja.';

  @override
  String get tutorialReorderTitle =>
      'Pritisnite i držite za promjenu redoslijeda';

  @override
  String get tutorialReorderBody =>
      'Držite red pa ga povucite. Redoslijed se pamti.';

  @override
  String get tutorialRemoveTitle => 'Prevucite da uklonite';

  @override
  String get tutorialRemoveBody =>
      'Prevucite red u stranu da ga sakrijete za danas ili ga prestanete pratiti.';

  @override
  String get tutorialCountTitle => 'Brojanje ponavljanja';

  @override
  String get tutorialCountBody =>
      'Za amele s ciljem većim od jedan, koristite − i + za svako ponavljanje.';

  @override
  String get tutorialViewTitle => 'Grupisano ili obična lista';

  @override
  String get tutorialViewBody =>
      'Prebacujte između grupisanja po kategorijama i jedne obične liste.';

  @override
  String get tutorialLibraryTitle => 'Dodajte gotove amele';

  @override
  String get tutorialLibraryBody =>
      'Pregledajte biblioteku amela po kategorijama, pa dodirnite + da dodate amel u Danas.';

  @override
  String get tutorialChallengeLogTitle => 'Dodirnite da zabilježite danas';

  @override
  String get tutorialChallengeLogBody =>
      'Jedan dodir bilježi današnji dan. Kod izazova s brojanjem, svaki dodir dodaje jedan korak.';

  @override
  String get tutorialChallengeOpenTitle => 'Dvaput dodirnite da otvorite';

  @override
  String get tutorialChallengeOpenBody =>
      'Otvara izazov — pogledajte svaki dan, ispravite propušteni ili izbrišite izazov.';

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
      one: 'Završen izazov: $title',
    );
    return '$_temp0';
  }

  @override
  String get challengeSectionEnded => 'Istekli';

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
  String get challengeShapeQuestion => 'Kakav je ovo izazov?';

  @override
  String get challengeShapeTotal => 'Ukupan cilj';

  @override
  String get challengeShapeTotalBody =>
      '1000 salavata, 30 džuzova. Bilježite količine i one se sabiraju.';

  @override
  String get challengeShapeStreak => 'Niz iz dana u dan';

  @override
  String get challengeShapeStreakBody =>
      'Tehedžud, sabah u džematu. Jedna oznaka dnevno, količina nije važna.';

  @override
  String get challengeTargetLabel => 'Cilj';

  @override
  String get challengeTargetRequired => 'Unesite cilj veći od nule';

  @override
  String get challengeUnitLabel => 'Jedinica (opcionalno)';

  @override
  String get challengeUnitHint => 'rekata, stranica, puta';

  @override
  String get challengeOneTapAdds => 'Jedan dodir dodaje';

  @override
  String get challengeHowManyDays => 'Koliko dana?';

  @override
  String get challengeReachHowMuch => 'Do koje količine?';

  @override
  String get challengeSpreadOver => 'Vremenski okvir';

  @override
  String get challengeSpreadEveryDay => 'Svaki dan';

  @override
  String get challengeSpreadLonger => 'Duži period';

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
    return '$start do $end · po jedan svaki dan';
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
    String _temp0 = intl.Intl.pluralLogic(
      windowCount,
      locale: localeName,
      other: 'dana',
      one: 'dan',
    );
    return '$start do $end · $target od $window $_temp0 — možete propustiti $slack';
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
  String challengeTooTight(
    String target,
    String window,
    num targetCount,
    num windowCount,
  ) {
    String _temp0 = intl.Intl.pluralLogic(
      targetCount,
      locale: localeName,
      other: 'dana',
      one: 'dan',
    );
    String _temp1 = intl.Intl.pluralLogic(
      windowCount,
      locale: localeName,
      other: 'dana',
      one: 'dan',
    );
    return '$target $_temp0 ne stane u $window $_temp1 — niz se računa po jedan dan dnevno.';
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
    return 'Po planu · $rate/dan';
  }

  @override
  String challengeBehind(String rate) {
    return 'Kasnite · $rate/dan do kraja';
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
    return 'Istekao · $done od $target';
  }

  @override
  String get challengeExpiredTitle => 'Izazov je istekao';

  @override
  String challengeExpiredBody(String title, String done, String target) {
    return 'Izazov „$title“ istekao je s rezultatom $done od $target.';
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
    return '$title: $rate dnevno da završite na vrijeme.';
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
  String get challengePreview => 'Pregled';

  @override
  String get challengeTmplTahajjud => 'Tehedžud 40 noći';

  @override
  String get challengeTmplSalawat => '1000 salavata';

  @override
  String get challengeTmplKhatm => 'Hatma za 30 dana';

  @override
  String get challengeTmplFajrJamaah => 'Sabah u džematu 30 dana';

  @override
  String get challengeTmplSadaqah => 'Sadaka 30 dana';

  @override
  String get challengeTmplJamaah40 => 'Svi namazi u džematu 40 dana';

  @override
  String get challengeTmplOnTime => 'Svih pet namaza na vrijeme 30 dana';

  @override
  String get challengeTmplRawatib => '30 dana po 12 rekata sunneta';

  @override
  String get challengeTmplTaraweeh => 'Teravija svake ramazanske noći';

  @override
  String get challengeTmplLastTenQiyam => 'Kijamul-lejl zadnjih deset noći';

  @override
  String get challengeTmplIstighfar => 'Istigfar 30 dana';

  @override
  String get challengeTmplAdhkar => 'Jutarnji i večernji zikr 40 dana';

  @override
  String get challengeTmplLearnDuas => 'Naučiti 30 dova';

  @override
  String get challengeTmplKhatmYear => 'Hatma za godinu dana';

  @override
  String get challengeTmplMulk => 'Sura El-Mulk napamet';

  @override
  String get challengeTmplJuzAmma => 'Amme-džuz napamet';

  @override
  String get challengeTmplQuran40 => '40 dana s Kur\'anom';

  @override
  String get challengeTmplRamadan => 'Ispostiti cijeli Ramazan';

  @override
  String get challengeTmplShawwal => 'Šest dana Ševvala';

  @override
  String get challengeTmplDhulHijjah => 'Prvih devet dana Zul-hidždže';

  @override
  String get challengeTmplMakeUpFasts => 'Napostiti propuštene dane';

  @override
  String get challengeTmplLastTenSadaqah => 'Sadaka zadnjih deset noći';

  @override
  String get challengeTmplNawawi => 'Nevevijevih 40 hadisa napamet';

  @override
  String get challengeTmplNames99 => 'Naučiti 99 Allahovih imena';

  @override
  String get challengeTmplBackbiting => '30 dana bez ogovaranja';

  @override
  String get challengeTmplMuhasaba => 'Muhasaba 30 noći';

  @override
  String get challengeTmplCallParents => 'Zvati roditelje 30 dana';

  @override
  String get challengeUnitJuz => 'džuzova';

  @override
  String get challengeUnitSalawat => 'salavata';

  @override
  String get challengeUnitPages => 'stranice';

  @override
  String get challengeUnitAyat => 'ajeta';

  @override
  String get challengeUnitSurahs => 'sura';

  @override
  String get challengeUnitDuas => 'dova';

  @override
  String get challengeUnitHadith => 'hadisa';

  @override
  String get challengeUnitNames => 'imena';

  @override
  String get challengeLibraryTitle => 'Biblioteka izazova';

  @override
  String get challengeLibrarySearchHint => 'Pretraži izazove';

  @override
  String challengeLibraryNoMatch(String query) {
    return 'Nijedan izazov ne odgovara „$query“';
  }

  @override
  String challengeLibraryStarted(String date) {
    return 'Započeto · traje do $date';
  }

  @override
  String get challengeLibraryStartedNoDeadline => 'Započeto · bez roka';

  @override
  String get challengeLibraryRunning => 'U toku';

  @override
  String challengeLibraryStartTooltip(String title) {
    return 'Započni $title';
  }

  @override
  String get challengeLibraryPickBanner => 'Odaberite iz biblioteke izazova';

  @override
  String challengeLibraryPickBannerSubtitle(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countText gotovih izazova',
      few: '$countText gotova izazova',
      one: '$countText gotov izazov',
    );
    return '$_temp0';
  }

  @override
  String get challengeLibraryFilledIn => 'Popunjeno iz biblioteke izazova';

  @override
  String get challengesEmptyBrowse => 'Pregledajte biblioteku izazova';

  @override
  String challengeLibraryDays(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countText dana',
      few: '$countText dana',
      one: '$countText dan',
    );
    return '$_temp0';
  }

  @override
  String challengeLibraryAmount(String countText, String unit) {
    return '$countText $unit';
  }

  @override
  String challengeLibraryEveryDay(String days) {
    return '$days zaredom';
  }

  @override
  String challengeLibraryWithin(String goal, String days) {
    return '$goal u roku od $days';
  }

  @override
  String challengeLibraryNoDeadlineGoal(String goal) {
    return '$goal, bez roka';
  }

  @override
  String get listSeparator => ' · ';

  @override
  String get tierRafiq => 'Refik';

  @override
  String get tierNasir => 'Nasir';

  @override
  String get tierMuhsin => 'Muhsin';

  @override
  String get tierAnsar => 'Ensar';

  @override
  String get tierRafiqMeaning => 'saputnik';

  @override
  String get tierNasirMeaning => 'zaštitnik';

  @override
  String get tierMuhsinMeaning => 'dobročinitelj';

  @override
  String get tierAnsarMeaning => 'pomagač';

  @override
  String get supportCardBody =>
      'Besplatna je, bez reklama i bez korisničkog računa. Razvoj možete podržati malim doprinosom — bilo kojim iznosom, kad god želite.';

  @override
  String get supportCta => 'Podržite aplikaciju Muhasaba';

  @override
  String get supportAgain => 'Podržite ponovo';

  @override
  String get supporterThanks =>
      'Allah vas nagradio — inšallah, Muhasaba ostaje besplatna i bez reklama.';

  @override
  String supporterSince(String tier, String month) {
    return '$tier od $month';
  }

  @override
  String get supportPromptTitle => 'Podržite aplikaciju Muhasaba';

  @override
  String get supportPromptBody =>
      'Muhasaba je besplatna, bez reklama i bez korisničkog računa. Razvoj možete podržati malim doprinosom — bilo kojim iznosom, kad god želite. Ništa nije zaključano.';

  @override
  String get supportPromptNow => 'Podržite sada';

  @override
  String get supportPromptLater => 'Podsjeti me kasnije';

  @override
  String get supportPromptNever => 'Ne pitaj više';

  @override
  String get tipSheetTitle => 'Podržite aplikaciju Muhasaba';

  @override
  String get tipSheetBody =>
      'Odaberite bilo koji iznos, koliko god često želite. Doprinosi idu na održavanje aplikacije — inšallah, ostaje besplatna i bez reklama. U znak zahvalnosti, u Postavkama ćete biti označeni kao podržavalac.';

  @override
  String tipSheetSupporterLine(String tier) {
    return '$tier — Allah vas nagradio.';
  }

  @override
  String get tipSheetSupporterAgain => 'Podržite ponovo kad god želite.';

  @override
  String tipSheetStoreNote(String store) {
    return 'Plaćanje obavlja $store — mi nikada ne vidimo vaše podatke o plaćanju.';
  }

  @override
  String get tipSheetOtherWays => 'Ne vidite opciju koja vam odgovara?';

  @override
  String get tipSheetWriteToUs => 'Pišite nam';

  @override
  String get supportEmailBody =>
      'Esselamu alejkum,\n\nŽelim direktno podržati razvoj aplikacije Muhasaba.\n\nDržava:\nKako želim poslati:\nIznos (nije obavezno):';

  @override
  String tipBusy(String store) {
    return 'Otvara se $store…';
  }

  @override
  String get tipThanks => 'Allah vas nagradio i primio od vas.';

  @override
  String get tipDone => 'Gotovo';

  @override
  String get tipFailed => 'Kupovina nije uspjela. Ništa nije naplaćeno.';

  @override
  String tipPending(String store) {
    return '$store još obrađuje vaš doprinos — značka će biti dodana čim bude potvrđen.';
  }

  @override
  String get tipUnavailable =>
      'Kupovine trenutno nisu dostupne na ovom uređaju.';

  @override
  String get optionSetJamaa => 'Džemat';

  @override
  String get optionJamaaAlone => 'Pojedinačno';

  @override
  String get optionJamaaHome => 'Džemat kod kuće';

  @override
  String get optionJamaaMasjid => 'Džemat u džamiji';

  @override
  String get optionSetOnTime => 'Na vrijeme';

  @override
  String get optionOnTimeOnTime => 'Na vrijeme';

  @override
  String get optionOnTimeLate => 'Kasno';

  @override
  String get optionOnTimeQada => 'Kaza';

  @override
  String get optionSetQuranSession => 'Učenje Kur\'ana';

  @override
  String get optionQuranRecited => 'Učenje';

  @override
  String get optionQuranMemorised => 'Napamet';

  @override
  String get optionQuranMeaning => 'Sa značenjem';

  @override
  String get optionQuranListened => 'Slušanje';

  @override
  String get optionSetSadaqahType => 'Vrsta sadake';

  @override
  String get optionSadaqahMoney => 'Novac';

  @override
  String get optionSadaqahFood => 'Hrana';

  @override
  String get optionSadaqahTime => 'Vrijeme';

  @override
  String get optionSadaqahOther => 'Ostalo';

  @override
  String get optionSetIntensity => 'Intenzitet';

  @override
  String get optionIntensityLight => 'Lagano';

  @override
  String get optionIntensityModerate => 'Umjereno';

  @override
  String get optionIntensityIntense => 'Intenzivno';

  @override
  String get optionSetNewTitle => 'Novi set opcija';

  @override
  String get optionSetEditTitle => 'Uredi set opcija';

  @override
  String get optionSetNameLabel => 'Naziv seta';

  @override
  String get optionSetNameHint => 'npr. Džemat';

  @override
  String get optionsLabel => 'Opcije';

  @override
  String get optionAdd => 'Dodaj opciju';

  @override
  String optionHint(int index) {
    return 'Opcija $index';
  }

  @override
  String optionsMaxReached(int max) {
    return 'Maksimalno $max opcija.';
  }

  @override
  String get optionSetPreviewLabel => 'Pregled — red na ekranu Danas';

  @override
  String optionSetKeptForHistory(String labels) {
    return 'Sačuvano za historiju: $labels';
  }

  @override
  String get optionSetDelete => 'Izbriši set';

  @override
  String get optionSetDeleteConfirm =>
      'Ameli koji koriste ovaj set više neće prikazivati opcije. Dani koje ste već zabilježili zadržavaju svoj izbor.';

  @override
  String get optionSetNameRequired => 'Unesite naziv seta';

  @override
  String get optionsMinRequired => 'Dodajte najmanje dvije opcije';

  @override
  String get optionSetNameTooLong => 'Naziv seta je predugačak';

  @override
  String optionTooLong(int index) {
    return 'Opcija $index je predugačka';
  }

  @override
  String get optionSetNone => 'Nema';

  @override
  String get optionSetNew => 'Novi set';

  @override
  String get requireChoiceLabel => 'Obavezan izbor';

  @override
  String get requireChoiceHelp =>
      'Red se neće označiti dok ne odaberete opciju';

  @override
  String get requireChoicePickSetFirst => 'Prvo odaberite set';

  @override
  String get requireChoiceCountHelp =>
      'Ameli s brojanjem se završavaju brojačem';

  @override
  String get optionPreviewCaption =>
      'Svaki dan ćete u Danas odabrati jednu od ovih opcija:';

  @override
  String optionsUsedOf(int used, int max) {
    return '$used od $max opcija iskorišteno.';
  }

  @override
  String get choiceNeeded => 'Potreban izbor';

  @override
  String optionSelected(String label) {
    return '$label, izabrana';
  }

  @override
  String optionNotSelected(String label) {
    return '$label, nije izabrana';
  }

  @override
  String optionBreakdownTitle(String set) {
    return 'Raspodjela opcija — $set';
  }

  @override
  String optionBreakdownCaption(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count završenih unosa',
      few: '$count završena unosa',
      one: '$count završenom unosu',
    );
    return 'Udio opcija u $_temp0 sa zabilježenim izborom';
  }

  @override
  String optionNoChoiceRecorded(int none, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other: '$total završenih dana',
      few: '$total završena dana',
      one: '$total završenog dana',
    );
    return 'Bez zabilježenog izbora — $none od $_temp0';
  }

  @override
  String get optionRemovedSuffix => 'uklonjena';

  @override
  String get optionAllAmals => 'Sve';

  @override
  String optionScopedCaption(String amal, int count) {
    return '$amal · $count zabilježeno';
  }

  @override
  String get optionBreakdownSectionTitle => 'Raspodjela opcija';

  @override
  String optionBreakdownSwipeHint(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count setova · prevucite',
      few: '$count seta · prevucite',
      one: '$count set · prevucite',
    );
    return '$_temp0';
  }

  @override
  String get optionDetailEmpty =>
      'Za ovaj set još nije zabilježen nijedan izbor.';

  @override
  String get optionDetailTrendHeading => 'Kako se mijenjalo';

  @override
  String optionDetailTrendReadout(String option, String from, String to) {
    return 'Udio opcije $option promijenio se s $from na $to između prve i posljednje sedmice.';
  }

  @override
  String get optionDetailByAmalHeading => 'Po amelu';

  @override
  String optionDetailByAmalReadout(
    String best,
    String bestShare,
    String worst,
    String worstShare,
  ) {
    return 'Najviše: $best ($bestShare); najmanje: $worst ($worstShare).';
  }

  @override
  String get optionDetailRecordsHeading => 'Rekordi';

  @override
  String get optionDetailLongestRun => 'Najduži niz';

  @override
  String get optionDetailBestWeek => 'Najbolja sedmica';

  @override
  String get optionDetailCurrentRun => 'Trenutni niz';

  @override
  String get optionDetailRecordsCaption =>
      'Na osnovu protekle godine, nezavisno od filtera perioda iznad.';

  @override
  String get optionDetailRecentDaysHeading => 'Nedavni dani';

  @override
  String optionDetailRecentDaysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Zadnjih $count dana',
      few: 'Zadnja $count dana',
      one: 'Zadnji $count dan',
    );
    return '$_temp0';
  }

  @override
  String get amalFivePrayers => 'Pet dnevnih namaza';

  @override
  String get amalJumuah => 'Džuma-namaz';

  @override
  String get amalWitr => 'Vitr-namaz';

  @override
  String get amalQada => 'Kaza-namazi';

  @override
  String get amalFajrSunnah => 'Sabahski sunnet';

  @override
  String get amalDhuhrSunnah => 'Podnevski sunnet';

  @override
  String get amalAsrSunnah => 'Ikindijski sunnet';

  @override
  String get amalMaghribSunnah => 'Akšamski sunnet';

  @override
  String get amalIshaSunnah => 'Jacijski sunnet';

  @override
  String get amalRawatib => 'Muekked sunneti';

  @override
  String get amalSiwak => 'Misvak';

  @override
  String get amalWuduSleep => 'Abdest prije spavanja';

  @override
  String get amalFridayGhusl => 'Gusul za džumu';

  @override
  String get amalIshraq => 'Išrak-namaz';

  @override
  String get amalWuduPrayer => 'Dva rekata nakon abdesta';

  @override
  String get amalTahiyyah => 'Tehijjetul-mesdžid';

  @override
  String get amalEarlyJumuah => 'Rani odlazak na džumu';

  @override
  String get amalAfterSalah => 'Tesbih nakon namaza';

  @override
  String get amalAfterFajr => 'Tesbih nakon sabaha';

  @override
  String get amalAfterDhuhr => 'Tesbih nakon podne';

  @override
  String get amalAfterAsr => 'Tesbih nakon ikindije';

  @override
  String get amalAfterMaghrib => 'Tesbih nakon akšama';

  @override
  String get amalAfterIsha => 'Tesbih nakon jacije';

  @override
  String get amalAyatKursi => 'Ajetul-kursija';

  @override
  String get amalKursiFajr => 'Ajetul-kursija nakon sabaha';

  @override
  String get amalKursiDhuhr => 'Ajetul-kursija nakon podne';

  @override
  String get amalKursiAsr => 'Ajetul-kursija nakon ikindije';

  @override
  String get amalKursiMaghrib => 'Ajetul-kursija nakon akšama';

  @override
  String get amalKursiIsha => 'Ajetul-kursija nakon jacije';

  @override
  String get amalSayyidIstighfar => 'Sejjidul-istigfar';

  @override
  String get amalSalawat => 'Salavat';

  @override
  String get amalSubhanallah => 'Subhanallahi ve bihamdihi';

  @override
  String get amalTahlil => 'La ilahe illallah';

  @override
  String get amalBedtimeAdhkar => 'Zikr prije spavanja';

  @override
  String get amalFridaySalawat => 'Salavat petkom';

  @override
  String get amalHawqala => 'La havle ve la kuvvete';

  @override
  String get amalTasbihFatimah => 'Fatimin tesbih';

  @override
  String get amalWakingAdhkar => 'Zikr po buđenju';

  @override
  String get amalDuaAdhan => 'Dova nakon ezana';

  @override
  String get amalDuaIqamah => 'Dova između ezana i ikameta';

  @override
  String get amalDuaSujood => 'Dova na sedždi';

  @override
  String get amalDuaParents => 'Dova za roditelje';

  @override
  String get amalDuaOthers => 'Dova za druge';

  @override
  String get amalFridayHour => 'Dova u posljednjem satu petka';

  @override
  String get amalLastThird => 'Dova u posljednjoj trećini noći';

  @override
  String get amalMulk => 'Sura El-Mulk';

  @override
  String get amalBaqarahEnd => 'Posljednja dva ajeta El-Bekare';

  @override
  String get amalSajdah => 'Sura Es-Sedžda';

  @override
  String get amalQuls => 'Ihlas, Felek i Nas';

  @override
  String get amalYasin => 'Sura Jasin';

  @override
  String get amalWaqiah => 'Sura El-Vakia';

  @override
  String get amalHifz => 'Hifz Kur\'ana';

  @override
  String get amalMurajaah => 'Ponavljanje hifza';

  @override
  String get amalTafsir => 'Tefsir';

  @override
  String get amalListenQuran => 'Slušanje Kur\'ana';

  @override
  String get amalTeachQuran => 'Podučavanje Kur\'ana';

  @override
  String get amalMonThu => 'Post ponedjeljkom i četvrtkom';

  @override
  String get amalThreeDays => 'Tri dana posta mjesečno';

  @override
  String get amalDailySadaqah => 'Svakodnevna sadaka';

  @override
  String get amalFeed => 'Hranjenje gladnih';

  @override
  String get amalHelpNeed => 'Pomoć potrebitom';

  @override
  String get amalOrphan => 'Briga o siročetu';

  @override
  String get amalGiveWater => 'Davanje vode';

  @override
  String get amalLearnHadith => 'Učenje jednog hadisa';

  @override
  String get amalReadBook => 'Čitanje islamske knjige';

  @override
  String get amalSeerah => 'Izučavanje sire';

  @override
  String get amalClass => 'Odlazak na predavanje';

  @override
  String get amalArabic => 'Učenje arapskog';

  @override
  String get amalLearnDua => 'Učenje nove dove';

  @override
  String get amalShare => 'Prenošenje naučenog';

  @override
  String get amalFiqh => 'Izučavanje fikha';

  @override
  String get amalMuhasaba => 'Noćna muhasaba';

  @override
  String get amalSpeakGood => 'Lijep govor ili šutnja';

  @override
  String get amalNoBackbiting => 'Bez ogovaranja';

  @override
  String get amalAnger => 'Obuzdavanje srdžbe';

  @override
  String get amalGaze => 'Obaranje pogleda';

  @override
  String get amalTruthful => 'Istinoljubivost';

  @override
  String get amalSmile => 'Osmijeh';

  @override
  String get amalSalam => 'Širenje selama';

  @override
  String get amalForgive => 'Opraštanje drugima';

  @override
  String get amalGratitude => 'Zahvalnost';

  @override
  String get amalVisitSick => 'Obilazak bolesnika';

  @override
  String get amalNeighbours => 'Dobrota prema komšijama';

  @override
  String get amalRemoveHarm => 'Uklanjanje smetnje s puta';

  @override
  String get amalParents => 'Dobročinstvo prema roditeljima';

  @override
  String get amalFamilyTies => 'Održavanje rodbinskih veza';

  @override
  String get amalHelpHome => 'Pomoć u kući';

  @override
  String get amalTeachChildren => 'Podučavanje djece vjeri';

  @override
  String get amalSpouse => 'Dobrota prema supružniku';

  @override
  String get categoryDua => 'Dova';

  @override
  String get categoryFasting => 'Post';

  @override
  String get categoryKnowledge => 'Znanje';

  @override
  String get categoryCharacter => 'Ahlak';

  @override
  String get categoryFamily => 'Porodica';

  @override
  String get libraryTitle => 'Biblioteka amela';

  @override
  String get librarySearchHint => 'Pretraži amele';

  @override
  String get libraryAll => 'Sve';

  @override
  String get libraryAdded => 'Dodano u Danas';

  @override
  String libraryAddedShowsOn(String days) {
    return 'Dodano · prikazuje se: $days';
  }

  @override
  String libraryNoMatch(String query) {
    return 'Nijedan amel ne odgovara „$query“';
  }

  @override
  String libraryCreateNamed(String query) {
    return 'Napravi „$query“';
  }

  @override
  String get libraryPickBanner => 'Odaberite iz biblioteke amela';

  @override
  String libraryPickBannerSubtitle(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countText gotovih amela',
      few: '$countText gotova amela',
      one: '$countText gotov amel',
    );
    return '$_temp0';
  }

  @override
  String get libraryFilledIn => 'Popunjeno iz biblioteke amela';

  @override
  String get libraryChange => 'Promijeni';

  @override
  String get libraryEditAction => 'Uredi';

  @override
  String libraryWeeklyAny(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countText dana sedmično',
      one: 'Jednom sedmično',
    );
    return '$_temp0';
  }

  @override
  String libraryMonthlyAny(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countText dana mjesečno',
      one: 'Jednom mjesečno',
    );
    return '$_temp0';
  }

  @override
  String libraryTimes(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countText puta',
      one: '$countText put',
    );
    return '$_temp0';
  }

  @override
  String get libraryAnyAmount => 'Bilo koliko';

  @override
  String libraryAddTooltip(String title) {
    return 'Dodaj $title';
  }

  @override
  String get libraryOnList => 'Na vašoj listi';

  @override
  String get todayEmptyBrowse => 'Pregledajte biblioteku amela';
}
