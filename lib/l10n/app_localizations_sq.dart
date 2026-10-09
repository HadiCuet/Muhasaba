// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Albanian (`sq`).
class AppLocalizationsSq extends AppLocalizations {
  AppLocalizationsSq([String locale = 'sq']) : super(locale);

  @override
  String get repeatsOnDaysHint => 'Përsëritet në ditët e zgjedhura';

  @override
  String get newDayStarted => 'Një ditë e re ka filluar';

  @override
  String get appTitle => 'Muhasaba';

  @override
  String get tabToday => 'Sot';

  @override
  String get tabStats => 'Statistikat';

  @override
  String get tabHistory => 'Historiku';

  @override
  String get tabSettings => 'Cilësimet';

  @override
  String get tabChallenge => 'Sfida';

  @override
  String get tabInsights => 'Statistikat';

  @override
  String get insightsTitle => 'Statistikat';

  @override
  String get insightsOverview => 'Përmbledhje';

  @override
  String get insightsDaily => 'Ditore';

  @override
  String get insightsArchive => 'Arkivi';

  @override
  String get archivedEmpty =>
      'Këtu ende nuk ka asgjë. Amalet që hiqni nga ndjekja qëndrojnë këtu, gati për t\'u rikthyer.';

  @override
  String archivedStoppedOn(String date) {
    return 'Hequr më $date';
  }

  @override
  String get archivedRestore => 'Rikthe';

  @override
  String archivedRestored(String title) {
    return '“$title” u rikthye në listën tuaj.';
  }

  @override
  String get newChallenge => 'Sfidë e re';

  @override
  String get newAmal => 'Amal i ri';

  @override
  String get editAmal => 'Ndrysho amalin';

  @override
  String get newAmalTitle => 'Amal i ri';

  @override
  String get save => 'Ruaj';

  @override
  String get cancel => 'Anulo';

  @override
  String get ok => 'OK';

  @override
  String get clear => 'Pastro';

  @override
  String get titleLabel => 'Titulli';

  @override
  String get titleRequired => 'Titulli është i detyrueshëm';

  @override
  String get titleTooLong => 'Titulli është shumë i gjatë';

  @override
  String get frequencyLabel => 'Frekuenca';

  @override
  String get frequencyDaily => 'Ditore';

  @override
  String get frequencyWeekly => 'Javore';

  @override
  String get frequencyMonthly => 'Mujore';

  @override
  String get categoryLabel => 'Kategoria';

  @override
  String get categoryOther => 'Tjetër';

  @override
  String get categorySalah => 'Namazi';

  @override
  String get categoryDhikr => 'Dhikri';

  @override
  String get categoryQuran => 'Kurani';

  @override
  String get categoryCharity => 'Sadakaja';

  @override
  String get categorySunnah => 'Suneti';

  @override
  String get timesPerPeriod => 'Herë për periudhë';

  @override
  String get custom => 'Sasi tjetër';

  @override
  String get customTargetHint => 'p.sh. 50';

  @override
  String get targetAny => 'Çdo sasi';

  @override
  String get targetAnyHelp => 'Pa synim — çdo sasi e shënon si të përfunduar';

  @override
  String get dayOfWeek => 'Dita e javës';

  @override
  String get anyDay => 'Cilado';

  @override
  String get anyDayHint =>
      'Cilado ditë (mbetet e dukshme sot, nesër nuk shfaqet)';

  @override
  String onlyDayHint(String day) {
    return 'Vetëm $day';
  }

  @override
  String get dateOfMonth => 'Data e muajit';

  @override
  String get repeatMode => 'Përsëritja';

  @override
  String get onSetDays => 'Në ditë të caktuara';

  @override
  String get onSetDates => 'Në data të caktuara';

  @override
  String get anyDayMode => 'Cilado ditë';

  @override
  String get datesOfMonth => 'Datat';

  @override
  String get daysPerWeekQuestion => 'Në sa ditë në javë?';

  @override
  String get daysPerMonthQuestion => 'Në sa ditë në muaj?';

  @override
  String get pickAtLeastOneDay => 'Zgjidhni të paktën një ditë';

  @override
  String get pickAtLeastOneDate => 'Zgjidhni të paktën një datë';

  @override
  String get previewDaily => 'Përsëritet çdo ditë';

  @override
  String previewWeeklyDays(String days) {
    return 'Përsëritet çdo $days';
  }

  @override
  String previewWeeklyAny(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ditë të çfarëdoshme',
      one: 'një ditë të çfarëdoshme',
    );
    return 'Përsëritet $_temp0 në javë';
  }

  @override
  String previewMonthlyDates(int count, String dates) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Përsëritet në datat $dates të çdo muaji',
      one: 'Përsëritet në datën $dates të çdo muaji',
    );
    return '$_temp0';
  }

  @override
  String previewMonthlyAny(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ditë të çfarëdoshme',
      one: 'një ditë të çfarëdoshme',
    );
    return 'Përsëritet $_temp0 në muaj';
  }

  @override
  String get anyDate => 'Cilado';

  @override
  String get anyDateHint =>
      'Cilado datë (mbetet e dukshme sot, nesër nuk shfaqet)';

  @override
  String onlyDateHint(String date) {
    return 'Vetëm më $date';
  }

  @override
  String get startPreChecked => 'Shënuar paraprakisht';

  @override
  String get startPreCheckedSubtitle =>
      'Kur nis një periudhë e re, ky amal shënohet automatikisht si i përfunduar, derisa t\'ia hiqni shenjën.';

  @override
  String get reminder => 'Kujtesë';

  @override
  String get reminderNone => 'Asnjë';

  @override
  String reminderTime(String time) {
    return 'Kujtesë: $time';
  }

  @override
  String get reminderPermissionWarning =>
      'Kujtesa u ruajt, por njoftimet nuk janë të lejuara. Aktivizojini te cilësimet e sistemit që të merrni njoftime.';

  @override
  String get settingsReminders => 'Kujtesat';

  @override
  String get dailyReminder => 'Kujtesë ditore';

  @override
  String get dailyReminderSubtitle =>
      'Një kujtesë e butë për të ndjekur amalet tuaja';

  @override
  String get dailyReminderTimeLabel => 'Ora e kujtesës';

  @override
  String get dailyReminderBody => 'Ndalni një çast dhe shënoni amalet e sotme.';

  @override
  String get groupByCategory => 'Grupo sipas kategorisë';

  @override
  String get flatList => 'Listë e thjeshtë';

  @override
  String errorGeneric(String error) {
    return 'Gabim: $error';
  }

  @override
  String get todayEmptyHint => 'Shtypni + për të shtuar amalin tuaj të parë.';

  @override
  String get noteLabel => 'Shënim';

  @override
  String get noteHint => 'p.sh. U fala në xhami';

  @override
  String get completed => 'i përfunduar';

  @override
  String get notCompleted => 'i papërfunduar';

  @override
  String progressOf(String progress, String target) {
    return '$progress nga $target të përfunduara';
  }

  @override
  String progressOpen(String count) {
    return 'Të përfunduara: $count';
  }

  @override
  String get removeFromToday => 'Hiq nga sot';

  @override
  String get removeFromTodaySubtitle =>
      'Hiqet vetëm për sot dhe rikthehet nesër.';

  @override
  String get removeFromTracking => 'Hiq nga ndjekja';

  @override
  String get removeFromTrackingSubtitle =>
      'Hiq përfundimisht nga lista juaj. Historiku ruhet.';

  @override
  String get chooseIcon => 'Zgjidh ikonën';

  @override
  String get iconNone => 'Asnjë';

  @override
  String get recentlyUsed => 'Të përdorura së fundi';

  @override
  String get emojiSectionGeneral => 'Të përgjithshme';

  @override
  String get categoryNameHint => 'Emri';

  @override
  String get categoryNew => '+ E re';

  @override
  String get categoryNewSheetTitle => 'Kategori e re';

  @override
  String get categoryEditSheetTitle => 'Ndrysho kategorinë';

  @override
  String get addAmal => 'Shto amal';

  @override
  String get customAmal => 'Amal i personalizuar';

  @override
  String get amalTasbih => 'Tesbih 33x';

  @override
  String get amalIstighfar => 'Istigfar';

  @override
  String get amalSurahKahf => 'Sureja El-Kehf';

  @override
  String get amalSadaqah => 'Sadakaja';

  @override
  String get amalTahajjud => 'Tehexhudi';

  @override
  String get amalDuha => 'Namazi i Duhas';

  @override
  String get amalFajr => 'Sabahu';

  @override
  String get amalDhuhr => 'Dreka';

  @override
  String get amalAsr => 'Ikindia';

  @override
  String get amalMaghrib => 'Akshami';

  @override
  String get amalIsha => 'Jacia';

  @override
  String get amalMorningAdhkar => 'Dhikri i mëngjesit';

  @override
  String get amalEveningAdhkar => 'Dhikri i mbrëmjes';

  @override
  String get amalTilawah => 'Tilavet';

  @override
  String get settingsTitle => 'Cilësimet';

  @override
  String settingsLoadError(String error) {
    return 'Dështoi ngarkimi i cilësimeve:\n$error';
  }

  @override
  String get sectionDayBoundary => 'Kufiri i ditës';

  @override
  String get rolloverHour => 'Ora e ndërrimit të ditës';

  @override
  String get rolloverAtMidnight => 'Dita mbaron në mesnatë.';

  @override
  String rolloverSubtitle(String time) {
    return 'Amalet e djeshme mund të ndryshohen deri në $time.';
  }

  @override
  String get pickRolloverHour => 'Zgjidhni orën kur ndërrohet dita';

  @override
  String get sectionWeekMonth => 'Java dhe muaji';

  @override
  String get startOfWeek => 'Fillimi i javës';

  @override
  String get startOfMonth => 'Fillimi i muajit';

  @override
  String get startOfMonthClamped =>
      'Në muajt më të shkurtër, ditët pas datës 28 kalojnë në ditën e fundit të muajit.';

  @override
  String get sectionAppearance => 'Pamja';

  @override
  String get theme => 'Tema';

  @override
  String get themeSystem => 'Sistemi';

  @override
  String get themeLight => 'E ndritshme';

  @override
  String get themeDark => 'E errët';

  @override
  String get sectionLanguage => 'Gjuha';

  @override
  String get language => 'Gjuha';

  @override
  String get systemDefault => 'Parazgjedhja e sistemit';

  @override
  String get aboutTitle => 'Muhasaba';

  @override
  String get aboutSubtitle =>
      'Një ditar personal për ta marrë veten në llogari në fe. Të gjitha të dhënat mbeten në këtë pajisje.';

  @override
  String get statsTitle => 'Statistikat';

  @override
  String statsLoadError(String error) {
    return 'Dështoi ngarkimi i statistikave:\n$error';
  }

  @override
  String get perAmal => 'Për amal';

  @override
  String get thisWeek => 'Këtë javë';

  @override
  String get thisMonth => 'Këtë muaj';

  @override
  String get totalCompletions => 'përfundime gjithsej';

  @override
  String get streakCurrent => 'Aktuale';

  @override
  String get streakLongest => 'Më e gjata';

  @override
  String get ratioWeek => 'Java';

  @override
  String get ratioMonth => 'Muaji';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ditë',
      one: 'ditë',
    );
    return '$_temp0';
  }

  @override
  String streakWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'javë',
      one: 'javë',
    );
    return '$_temp0';
  }

  @override
  String streakMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'muaj',
      one: 'muaj',
    );
    return '$_temp0';
  }

  @override
  String get frequencyBadgeDaily => 'ditore';

  @override
  String get frequencyBadgeWeekly => 'javore';

  @override
  String get frequencyBadgeMonthly => 'mujore';

  @override
  String get statsEmpty =>
      'Asnjë amal ende. Shtoni një në Sot për të filluar ndjekjen.';

  @override
  String get statsToday => 'Sot';

  @override
  String get statsThisWeek => 'Këtë javë';

  @override
  String get statsThisMonth => 'Këtë muaj';

  @override
  String get statsAllTime => 'Gjithë koha';

  @override
  String get statsCustomRange => 'Periudhë e zgjedhur';

  @override
  String get statsAllCategories => 'Të gjitha';

  @override
  String get statsAllAmals => 'Të gjitha';

  @override
  String get statsCompleted => 'Të përfunduara';

  @override
  String get statsExpected => 'Të pritura';

  @override
  String get statsVsPrevious => 'Ndaj periudhës së kaluar';

  @override
  String get statsByCategory => 'Sipas kategorisë';

  @override
  String get statsPerAmal => 'Për amal';

  @override
  String get statsTotalCaption => 'gjithsej';

  @override
  String statsDaysFraction(String done, String expectedText, num expected) {
    String _temp0 = intl.Intl.pluralLogic(
      expected,
      locale: localeName,
      other: 'ditë',
      one: 'ditë',
    );
    return '$done/$expectedText $_temp0';
  }

  @override
  String get statsCurrentStreak => 'Seria aktuale';

  @override
  String get statsBestStreak => 'Seria më e gjatë';

  @override
  String get statsTotalDays => 'Ditë gjithsej';

  @override
  String get statsConsistency => 'Qëndrueshmëria';

  @override
  String get statsLast5Weeks => '5 javët e fundit';

  @override
  String get statsDailyBreakdown => 'Ndarja ditore';

  @override
  String get statsCompletionRate => 'Shkalla e përfundimit';

  @override
  String get statsAmountPerDay => 'Sasia në ditë';

  @override
  String statsCountTotal(String count) {
    return 'Gjithsej $count';
  }

  @override
  String statsCountAvg(String amount) {
    return 'Mes. $amount/ditë';
  }

  @override
  String statsCountBest(String count, String day) {
    return 'Maks. $count · $day';
  }

  @override
  String get statsFilterTime => 'Koha';

  @override
  String get statsFilterCategory => 'Kategoria';

  @override
  String get statsFilterAmal => 'Amali';

  @override
  String get statsStreaks => 'Seritë';

  @override
  String get statsSelectDateRange => 'Zgjidhni periudhën';

  @override
  String get historyTitle => 'Historiku';

  @override
  String get jumpToDate => 'Kalo te data';

  @override
  String historyEmptyDay(String date) {
    return 'Më $date nuk u shënua asnjë amal';
  }

  @override
  String get streakUnitD => 'd';

  @override
  String get streakUnitW => 'j';

  @override
  String get streakUnitM => 'm';

  @override
  String get mondayShort => 'Hën';

  @override
  String get tuesdayShort => 'Mar';

  @override
  String get wednesdayShort => 'Mër';

  @override
  String get thursdayShort => 'Enj';

  @override
  String get fridayShort => 'Pre';

  @override
  String get saturdayShort => 'Sht';

  @override
  String get sundayShort => 'Dil';

  @override
  String get mondayFull => 'E hënë';

  @override
  String get tuesdayFull => 'E martë';

  @override
  String get wednesdayFull => 'E mërkurë';

  @override
  String get thursdayFull => 'E enjte';

  @override
  String get fridayFull => 'E premte';

  @override
  String get saturdayFull => 'E shtunë';

  @override
  String get sundayFull => 'E diel';

  @override
  String get hadith0 =>
      '“Veprat më të dashura tek Allahu janë ato që bëhen rregullisht, edhe nëse janë të vogla.”\n— Buhariu dhe Muslimi';

  @override
  String get hadith2 =>
      '“Kur vdes biri i Ademit, i ndërpriten veprat përveç tri gjërave: sadakasë së vazhdueshme, dijes së dobishme ose fëmijës së mirë që lutet për të.”\n— Muslimi';

  @override
  String get hadith3 =>
      '“Kush i fal dy namazet e ftohta (Sabahun dhe Ikindinë) do të hyjë në Xhenet.”\n— Buhariu';

  @override
  String get hadith4 =>
      '“Allahu nuk shikon në pamjen dhe pasurinë tuaj, por shikon në zemrat dhe veprat tuaja.”\n— Muslimi';

  @override
  String get hadith6 =>
      '“Lehtësoni dhe mos vështirësoni; përgëzoni dhe mos i trembni njerëzit.”\n— Buhariu';

  @override
  String get hadith7 =>
      '“Kush merr një rrugë për të kërkuar dije, Allahu ia lehtëson atij rrugën për në Xhenet.”\n— Muslimi';

  @override
  String get hadith8 => '“Sadakaja nuk e pakëson pasurinë.”\n— Muslimi';

  @override
  String get hadith9 =>
      '“Besimtari i fortë është më i mirë dhe më i dashur tek Allahu se besimtari i dobët, e në secilin prej tyre ka mirësi.”\n— Muslimi';

  @override
  String get hadith10 =>
      '“Kush thotë ‘Subhanallahi ue bihamdihi’ njëqind herë në ditë, i falen mëkatet, edhe sikur të jenë sa shkuma e detit.”\n— Buhariu dhe Muslimi';

  @override
  String get hadith12 =>
      '“Kush lexon Ajetul-Kursijj pas çdo namazi farz, asgjë nuk e pengon të hyjë në Xhenet përveç vdekjes.”\n— Nesaiu';

  @override
  String get hadith13 => '“Fjala e mirë është sadaka.”\n— Buhariu dhe Muslimi';

  @override
  String get hadith14 =>
      '“Kush beson në Allahun dhe Ditën e Fundit, le të thotë fjalë të mirë ose le të heshtë.”\n— Buhariu dhe Muslimi';

  @override
  String get hadith15 =>
      '“Ai që kujdeset për të vejën ose për të varfrin është si ai që lufton në rrugën e Allahut.”\n— Buhariu dhe Muslimi';

  @override
  String get hadith16 =>
      '“Buzëqeshja ndaj vëllait tënd është sadaka.”\n— Tirmidhiu';

  @override
  String get hadith17 =>
      '“Më i miri prej jush është ai që e mëson Kuranin dhe ua mëson të tjerëve.”\n— Buhariu';

  @override
  String get hadith18 =>
      '“Askush nuk ka ngrënë ushqim më të mirë sesa atë që e fiton me punën e duarve të veta.”\n— Buhariu';

  @override
  String get hadith19 =>
      '“Allahu është i butë dhe e do butësinë në çdo gjë.”\n— Buhariu dhe Muslimi';

  @override
  String historyDayCompleted(String completed, String total) {
    return '$completed nga $total të përfunduara';
  }

  @override
  String get settingsSchedule => 'Orari';

  @override
  String get settingsAppearance => 'Pamja';

  @override
  String get settingsAboutTagline => 'Shoqëruesi juaj i përditshëm në fe';

  @override
  String get settingsRolloverSub => 'Kur nis dita e re';

  @override
  String get settingsAbout => 'Rreth aplikacionit';

  @override
  String get settingsVersion => 'Versioni';

  @override
  String get settingsDeveloper => 'Zhvilluesi';

  @override
  String get settingsSupport => 'Mbështetje';

  @override
  String get settingsRate => 'Vlerësoni aplikacionin';

  @override
  String get settingsContact => 'Na kontaktoni';

  @override
  String get settingsReportBug => 'Raportoni një gabim';

  @override
  String get settingsRequestFeature => 'Propozoni një veçori';

  @override
  String settingsSupportFallback(String email) {
    return 'Aplikacioni i postës nuk u hap. Ju lutemi na shkruani në $email.';
  }

  @override
  String get settingsPrivacyPolicy => 'Politika e privatësisë';

  @override
  String get settingsPrivacyOpenFailed => 'Politika e privatësisë nuk u hap.';

  @override
  String get hadith20 =>
      '“Kush agjëron Ramazanin me besim dhe duke shpresuar shpërblimin, i falen mëkatet e kaluara.”\n— Buhariu dhe Muslimi';

  @override
  String get hadith22 =>
      '“Lutja midis ezanit dhe ikametit nuk refuzohet.”\n— Ebu Davudi';

  @override
  String get hadith23 =>
      '“Kush ndërton një xhami për Allahun, Allahu i ndërton atij një shtëpi në Xhenet.”\n— Buhariu dhe Muslimi';

  @override
  String get hadith24 =>
      '“Safet më të mira për burrat janë të parat, kurse për gratë janë të fundit.”\n— Muslimi';

  @override
  String get hadith25 =>
      '“Agjërimi është mburojë nga zjarri i Xhehenemit.”\n— Nesaiu';

  @override
  String get hadith26 =>
      '“Kush fal dymbëdhjetë rekate sunet, i ndërtohet një shtëpi në Xhenet.”\n— Muslimi';

  @override
  String get hadith27 =>
      '“Ai që e lexon Kuranin me mjeshtëri do të jetë me melekët fisnikë.”\n— Buhariu dhe Muslimi';

  @override
  String get hadith29 =>
      '“Sadakaja më e mirë është t\'u japësh ujë të pinë.”\n— Ahmedi';

  @override
  String get hadith30 =>
      '“Kush ia largon besimtarit një vështirësi, Allahu do t\'ia largojë atij një vështirësi në Ditën e Kiametit.”\n— Muslimi';

  @override
  String get hadith32 =>
      '“Turpi është pjesë e besimit.”\n— Buhariu dhe Muslimi';

  @override
  String get hadith34 =>
      '“Kush duron, Allahu i jep durim.”\n— Buhariu dhe Muslimi';

  @override
  String get hadith36 =>
      '“Askush prej jush nuk beson vërtet derisa t\'i dojë vëllait të vet atë që i do vetes.”\n— Buhariu dhe Muslimi';

  @override
  String get hadith37 =>
      '“Ushqeni të uriturit, vizitoni të sëmurët dhe lironi të robëruarit.”\n— Buhariu';

  @override
  String get hadith38 =>
      '“I forti nuk është ai që mund në mundje, por ai që e kontrollon veten në zemërim.”\n— Buhariu dhe Muslimi';

  @override
  String get hadith40 =>
      '“Thoni ‘Subhanallah’, ‘Elhamdulilah’ dhe ‘Allahu Ekber’ nga tridhjetë e tri herë pas çdo namazi.”\n— Muslimi';

  @override
  String get hadith41 =>
      '“Dhikri më i mirë është La ilahe il-lallah.”\n— Tirmidhiu';

  @override
  String get hadith42 =>
      '“Ka dy nimete që shumë njerëz i humbasin: shëndetin dhe kohën e lirë.”\n— Buhariu';

  @override
  String get hadith43 =>
      '“Përfitoni pesë gjëra para pesë të tjerave: rininë para pleqërisë, shëndetin para sëmundjes, pasurinë para varfërisë, kohën e lirë para zënies me punë dhe jetën para vdekjes.”\n— Hakimi';

  @override
  String get hadith44 =>
      '“Kush e lexon suren El-Ihlas dhjetë herë, Allahu i ndërton një shtëpi në Xhenet.”\n— Ahmedi';

  @override
  String get hadith45 =>
      '“Namazi më i mirë pas namazeve farz është namazi i natës.”\n— Muslimi';

  @override
  String get hadith46 =>
      '“Sadakaja i shuan mëkatet siç e shuan uji zjarrin.”\n— Tirmidhiu';

  @override
  String get hadith47 =>
      '“Ai që i mban lidhjet farefisnore nuk është ai që i kthen vizitat, por ai që i mban edhe kur i shkëputen.”\n— Buhariu';

  @override
  String get hadith49 =>
      '“Kush ha ushqim dhe thotë: ‘Falënderimi i takon Allahut, që më ushqeu me këtë dhe ma dha pa asnjë fuqi e forcë nga ana ime’, i falen mëkatet e kaluara.”\n— Tirmidhiu';

  @override
  String get hadith53 =>
      '“Mos e nënvlerëso asnjë vepër të mirë, qoftë edhe ta takosh vëllanë tënd me fytyrë të qeshur.”\n— Muslimi';

  @override
  String get hadith54 =>
      '“Më i miri prej jush është ai që është më i mirë me familjen e tij.”\n— Tirmidhiu';

  @override
  String get hadith55 =>
      '“Kush i lexon natën dy ajetet e fundit të sures El-Bekare, ato i mjaftojnë.”\n— Buhariu dhe Muslimi';

  @override
  String get hadith56 =>
      '“Dunjaja është kënaqësi, dhe kënaqësia më e mirë e saj është gruaja e devotshme.”\n— Muslimi';

  @override
  String get hadith57 =>
      '“Tri lutje nuk refuzohen kurrë: lutja e agjëruesit, e udhëheqësit të drejtë dhe e të shtypurit.”\n— Tirmidhiu';

  @override
  String get hadith58 =>
      '“Kush dërgon salavat mbi mua një herë, Allahu dërgon dhjetë herë mëshirë mbi të.”\n— Muslimi';

  @override
  String get hadith65 =>
      '“Besimtari është pasqyra e besimtarit.”\n— Ebu Davudi';

  @override
  String get hadith66 =>
      '“Sinqeriteti të çon në mirësi, e mirësia të çon në Xhenet.”\n— Buhariu dhe Muslimi';

  @override
  String get hadith67 =>
      '“Ktheja amanetin atij që ta la në amanet dhe mos e tradhto atë që të tradhtoi.”\n— Ebu Davudi dhe Tirmidhiu';

  @override
  String get hadith68 =>
      '“Muslimanin nuk e godet asnjë lodhje, sëmundje, brengë, trishtim, lëndim apo shqetësim, madje as gjembi që e shpon, e që Allahu të mos ia shlyejë me të disa nga mëkatet.”\n— Buhariu dhe Muslimi';

  @override
  String get hadith69 =>
      '“Lutja e muslimanit për vëllanë e tij në mungesë të tij pranohet gjithmonë.”\n— Muslimi';

  @override
  String get hadith70 =>
      '“Kush i kërkon Allahut Xhenetin tri herë, Xheneti thotë: O Allah, fute atë në Xhenet.”\n— Tirmidhiu';

  @override
  String get hadith71 =>
      '“Agjërimi më i vlefshëm pas Ramazanit është agjërimi i muajit të Allahut, Muharremit.”\n— Muslimi';

  @override
  String get hadith72 =>
      '“Kush kryen haxhin dhe nuk flet fjalë të ndyta e nuk bën mëkat, kthehet si ditën kur e lindi nëna e tij.”\n— Buhariu dhe Muslimi';

  @override
  String get hadith73 =>
      '“Umra deri në umrën tjetër është shlyerje për mëkatet mes tyre.”\n— Buhariu dhe Muslimi';

  @override
  String get hadith74 =>
      '“Nxitoni drejt veprave të mira para se të vijnë sprova si copat e natës së errët.”\n— Muslimi';

  @override
  String get hadith75 =>
      '“Dy rekatet e sabahut janë më të mira se bota dhe gjithçka që gjendet në të.”\n— Muslimi';

  @override
  String get hadith77 =>
      '“Nëse do të mbështeteshit tek Allahu siç duhet, Ai do t\'ju furnizonte ashtu siç i furnizon shpendët.”\n— Tirmidhiu';

  @override
  String get hadith78 =>
      '“Kush viziton një të sëmurë, është në vjeljen e frutave të Xhenetit derisa të kthehet.”\n— Muslimi';

  @override
  String get hadith79 =>
      '“Përhapni selamin, ushqeni të uriturit dhe faluni natën kur njerëzit flenë — do të hyni në Xhenet në paqe.”\n— Tirmidhiu';

  @override
  String get hadith80 =>
      '“Kush nuk është mirënjohës ndaj njerëzve, nuk është mirënjohës ndaj Allahut.”\n— Tirmidhiu';

  @override
  String get hadith81 =>
      '“Smira nuk lejohet përveçse në dy raste: te njeriu të cilit Allahu i ka dhënë pasuri dhe ai e shpenzon në rrugë të drejtë, dhe te njeriu të cilit Allahu i ka dhënë urtësi dhe ai gjykon me të dhe ua mëson të tjerëve.”\n— Buhariu dhe Muslimi';

  @override
  String get hadith82 =>
      '“Njeriu është në fenë e mikut të tij, prandaj le të shikojë secili prej jush me kë miqësohet.”\n— Ebu Davudi dhe Tirmidhiu';

  @override
  String get hadith85 =>
      '“Kush lë diçka për hir të Allahut, Allahu e zëvendëson me diçka më të mirë.”\n— Ahmedi';

  @override
  String get hadith86 =>
      '“Kush ia mbulon të metat një muslimani, Allahu do t\'ia mbulojë të metat në Ditën e Kiametit.”\n— Buhariu dhe Muslimi';

  @override
  String get hadith87 =>
      '“Ji në këtë botë sikur të ishe i huaj ose udhëtar.”\n— Buhariu';

  @override
  String get hadith88 =>
      '“Kush ia lehtëson dikujt që është në vështirësi, Allahu do t\'ia lehtësojë atij në dynja dhe në ahiret.”\n— Muslimi';

  @override
  String get hadith89 =>
      '“Shpërblimi i veprave varet nga nijetet.”\n— Buhariu dhe Muslimi';

  @override
  String get hadith90 =>
      '“Ruhuni nga dyshimi, sepse dyshimi është fjala më gënjeshtare.”\n— Buhariu dhe Muslimi';

  @override
  String get hadith93 =>
      '“Hani së bashku dhe përmendni emrin e Allahut, që t\'ju jepet bereqet në të.”\n— Ebu Davudi';

  @override
  String get hadith94 =>
      '“Sa herë që njerëz ulen duke përmendur Allahun, melekët i rrethojnë, mëshira i mbulon dhe qetësia zbret mbi ta.”\n— Muslimi';

  @override
  String get hadith95 =>
      '“Robit që fal, Allahu nuk i shton gjë tjetër përveç nderit.”\n— Muslimi';

  @override
  String get hadith96 =>
      '“Lidhe devenë tënde e pastaj mbështetu tek Allahu.”\n— Tirmidhiu';

  @override
  String get hadith97 =>
      '“Sa e mahnitshme është puna e besimtarit — gjithçka është në të mirë të tij.”\n— Muslimi';

  @override
  String get hadith98 =>
      '“Muslimani është vëlla i muslimanit: nuk i bën padrejtësi, nuk e braktis dhe nuk e përbuz.”\n— Muslimi';

  @override
  String get delete => 'Fshi';

  @override
  String get remove => 'Hiq';

  @override
  String get deleteAmalConfirmTitle => 'Të hiqet nga ndjekja?';

  @override
  String deleteAmalConfirmBody(String title) {
    return '“$title” nuk do të shfaqet më në listën tuaj. Historiku ruhet.';
  }

  @override
  String get genericError => 'Diçka shkoi keq. Ju lutemi provoni përsëri.';

  @override
  String get notificationChannelName => 'Kujtesat e amaleve';

  @override
  String get notificationChannelDescription =>
      'Kujtesa ditore për amalet që ndiqni.';

  @override
  String get invalidAmalId => 'ID e pavlefshme e amalit';

  @override
  String get tutorialSettingsRow => 'Si përdoret Muhasaba';

  @override
  String get tutorialSkip => 'Kapërce';

  @override
  String get tutorialNext => 'Vazhdo';

  @override
  String get tutorialDone => 'U krye';

  @override
  String get tutorialTapTitle => 'Prekni për ta përfunduar';

  @override
  String get tutorialTapBody =>
      'Një prekje e shënon amalin si të përfunduar për sot. Prekni sërish për ta anuluar.';

  @override
  String get tutorialEditTitle => 'Prekni dy herë për ta ndryshuar';

  @override
  String get tutorialEditBody =>
      'Hap formularin e ndryshimit — riemërtojeni ose ndryshoni sa shpesh përsëritet.';

  @override
  String get tutorialReorderTitle =>
      'Mbani të shtypur për të ndryshuar renditjen';

  @override
  String get tutorialReorderBody =>
      'Mbani të shtypur një rresht, pastaj zhvendoseni. Renditja juaj ruhet.';

  @override
  String get tutorialRemoveTitle => 'Rrëshqitni për ta hequr';

  @override
  String get tutorialRemoveBody =>
      'Rrëshqitni rreshtin anash për ta fshehur për sot, ose ndaloni ndjekjen e tij.';

  @override
  String get tutorialCountTitle => 'Numërimi i përsëritjeve';

  @override
  String get tutorialCountBody =>
      'Për amalet me synim mbi një, përdorni − dhe + për çdo përsëritje.';

  @override
  String get tutorialViewTitle => 'Grupim ose listë e thjeshtë';

  @override
  String get tutorialViewBody =>
      'Kaloni midis grupimit sipas kategorisë dhe një liste të thjeshtë.';

  @override
  String get tutorialLibraryTitle => 'Shtoni amale të gatshme';

  @override
  String get tutorialLibraryBody =>
      'Shfletoni bibliotekën e amaleve sipas kategorive, pastaj prekni + për të shtuar një amal te Sot.';

  @override
  String get tutorialChallengeLogTitle => 'Prekni për të shënuar sot';

  @override
  String get tutorialChallengeLogBody =>
      'Një prekje regjistron ditën e sotme. Në një sfidë me numërim, çdo prekje shton një hap.';

  @override
  String get tutorialChallengeOpenTitle => 'Prekni dy herë për ta hapur';

  @override
  String get tutorialChallengeOpenBody =>
      'Hap sfidën — shihni çdo ditë, plotësoni një ditë të harruar ose fshijeni.';

  @override
  String get tutorialChallengeDeleteBody =>
      'Rrëshqitni kartën anash për ta fshirë sfidën.';

  @override
  String get tutorialChallengeAmountTitle => 'Regjistrimi i një sasie të saktë';

  @override
  String get tutorialChallengeAmountBody =>
      'Përdorni − dhe + për ta ndryshuar, ose prekni numrin për të shkruar sasinë e saktë.';

  @override
  String get challengeOpenDetailsAction => 'Hap detajet e sfidës';

  @override
  String get challengesActive => 'Në vazhdim';

  @override
  String get challengesPast => 'Të kaluara';

  @override
  String challengeJustFinished(int count, String title) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sfida mbaruan — më e fundit $title',
      one: '$title mbaroi',
    );
    return '$_temp0';
  }

  @override
  String get challengeSectionEnded => 'Të mbaruara';

  @override
  String get challengesPastEmpty => 'Ende nuk ka mbaruar asgjë.';

  @override
  String get challengesEmptyTitle => 'Ende nuk keni sfida';

  @override
  String get challengesEmptyBody =>
      'Vendosni një synim për veten — si 20 rekate në 7 ditë — dhe ndiqeni këtu.';

  @override
  String get editChallenge => 'Ndrysho sfidën';

  @override
  String get deleteChallenge => 'Fshi sfidën';

  @override
  String get deleteChallengeConfirm =>
      'Të fshihet kjo sfidë dhe i gjithë progresi i regjistruar?';

  @override
  String get challengeShapeQuestion => 'Çfarë lloj sfide është kjo?';

  @override
  String get challengeShapeTotal => 'Një total për t\'u arritur';

  @override
  String get challengeShapeTotalBody =>
      '1000 salavate, 30 xhuze. Shënoni sasi dhe totali rritet.';

  @override
  String get challengeShapeStreak => 'Seri ditë pas dite';

  @override
  String get challengeShapeStreakBody =>
      'Tehexhudi, sabahu me xhemat. Një shenjë në ditë, sasia nuk ka rëndësi.';

  @override
  String get challengeTargetLabel => 'Synimi';

  @override
  String get challengeTargetRequired => 'Vendosni një synim mbi zero';

  @override
  String get challengeUnitLabel => 'Njësia (opsionale)';

  @override
  String get challengeUnitHint => 'rekate, faqe, herë';

  @override
  String get challengeOneTapAdds => 'Një prekje shton';

  @override
  String get challengeHowManyDays => 'Sa ditë?';

  @override
  String get challengeReachHowMuch => 'Sa duhet arritur?';

  @override
  String get challengeSpreadOver => 'Kohëzgjatja';

  @override
  String get challengeSpreadEveryDay => 'Çdo ditë';

  @override
  String get challengeSpreadLonger => 'Një afat më i gjatë';

  @override
  String get challengeByWhen => 'Deri kur?';

  @override
  String get challengeWindowDuration => 'Brenda disa ditësh';

  @override
  String get challengeByDate => 'Deri në një datë';

  @override
  String challengePlanRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String challengePlanExact(String start, String end) {
    return '$start – $end · një në ditë, çdo ditë';
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
    return '$start – $end · $target nga $window ditë — mund të humbni $slack';
  }

  @override
  String challengePlanRate(String start, String end, String rate) {
    return '$start – $end · rreth $rate në ditë';
  }

  @override
  String challengePlanOpen(String start) {
    return 'Fillon $start · pa afat';
  }

  @override
  String challengeTooTight(
    String target,
    String window,
    num targetCount,
    num windowCount,
  ) {
    return '$target ditë nuk mund të hyjnë në $window ditë — seria numëron një në ditë.';
  }

  @override
  String challengeDurationLabel(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ditë',
      one: '$count ditë',
    );
    return '$_temp0';
  }

  @override
  String get challengeStartDate => 'Fillon';

  @override
  String get challengeEndDate => 'Mbaron';

  @override
  String challengeProgressCount(String done, String target, String unit) {
    return '$done nga $target $unit';
  }

  @override
  String challengeProgressPlain(String done, String target) {
    return '$done nga $target';
  }

  @override
  String challengeProgressDays(String done, String target) {
    return '$done nga $target ditë';
  }

  @override
  String challengeDaysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ditë të mbetura',
      one: '1 ditë e mbetur',
    );
    return '$_temp0';
  }

  @override
  String get challengeNoDeadline => 'Pa afat';

  @override
  String challengeOnTrack(String rate) {
    return 'Në ritëm · $rate/ditë';
  }

  @override
  String challengeBehind(String rate) {
    return 'Prapa · duhen $rate/ditë';
  }

  @override
  String challengeLastDay(String remaining) {
    return 'Dita e fundit · edhe $remaining';
  }

  @override
  String get challengeReached => 'Synimi u arrit';

  @override
  String get challengeCompleted => 'Përfunduar';

  @override
  String challengeEnded(String done, String target) {
    return 'Mbaroi · $done nga $target';
  }

  @override
  String get challengeExpiredTitle => 'Sfida mbaroi';

  @override
  String challengeExpiredBody(String title, String done, String target) {
    return '$title mbaroi me $done nga $target.';
  }

  @override
  String get challengeExtend => 'Zgjat';

  @override
  String get challengeRestart => 'Fillo sërish';

  @override
  String get challengeArchive => 'Arkivo';

  @override
  String get challengeDailyBreakdown => 'Regjistri ditor';

  @override
  String challengeNudgeBody(String title, String rate) {
    return '$title: $rate në ditë për ta mbaruar në kohë.';
  }

  @override
  String challengeLastDayBody(String title, String remaining) {
    return '$title: dita e fundit — edhe $remaining.';
  }

  @override
  String get challengeGroupGoal => 'Qëllimi';

  @override
  String get challengeGroupShape => 'Lloji';

  @override
  String get challengeGroupPlan => 'Plani';

  @override
  String get challengeGroupReminders => 'Kujtesat';

  @override
  String get challengePreview => 'Parapamje';

  @override
  String get challengeTmplTahajjud => '40 net tehexhud';

  @override
  String get challengeTmplSalawat => '1000 salavate';

  @override
  String get challengeTmplKhatm => 'Hatme në 30 ditë';

  @override
  String get challengeTmplFajrJamaah => '30 ditë sabahu me xhemat';

  @override
  String get challengeTmplSadaqah => '30 ditë sadaka';

  @override
  String get challengeTmplJamaah40 => '40 ditë, të gjitha namazet me xhemat';

  @override
  String get challengeTmplOnTime => '30 ditë, të pesë namazet në kohë';

  @override
  String get challengeTmplRawatib => '30 ditë me 12 rekate sunet';

  @override
  String get challengeTmplTaraweeh => 'Teravia çdo natë të Ramazanit';

  @override
  String get challengeTmplLastTenQiyam =>
      'Kijamul-lejl në dhjetë netët e fundit';

  @override
  String get challengeTmplIstighfar => '30 ditë istigfar';

  @override
  String get challengeTmplAdhkar => '40 ditë dhikri i mëngjesit dhe i mbrëmjes';

  @override
  String get challengeTmplLearnDuas => 'Mësoni 30 lutje';

  @override
  String get challengeTmplKhatmYear => 'Hatme në një vit';

  @override
  String get challengeTmplMulk => 'Mësoni përmendësh suren El-Mulk';

  @override
  String get challengeTmplJuzAmma => 'Mësoni përmendësh xhuzin Amme';

  @override
  String get challengeTmplQuran40 => '40 ditë me Kuranin';

  @override
  String get challengeTmplRamadan => 'Agjëroni gjithë Ramazanin';

  @override
  String get challengeTmplShawwal => 'Gjashtë ditët e Shevalit';

  @override
  String get challengeTmplDhulHijjah => 'Nëntë ditët e para të Dhul-Hixhes';

  @override
  String get challengeTmplMakeUpFasts => 'Plotësoni agjërimet kaza';

  @override
  String get challengeTmplLastTenSadaqah => 'Sadaka në dhjetë netët e fundit';

  @override
  String get challengeTmplNawawi => 'Mësoni përmendësh 40 hadithet e Neveviut';

  @override
  String get challengeTmplNames99 => 'Mësoni 99 emrat e Allahut';

  @override
  String get challengeTmplBackbiting => '30 ditë pa përgojim';

  @override
  String get challengeTmplMuhasaba => '30 net muhasaba';

  @override
  String get challengeTmplCallParents => 'Telefononi prindërit për 30 ditë';

  @override
  String get challengeUnitJuz => 'xhuze';

  @override
  String get challengeUnitSalawat => 'salavate';

  @override
  String get challengeUnitPages => 'faqe';

  @override
  String get challengeUnitAyat => 'ajete';

  @override
  String get challengeUnitSurahs => 'sure';

  @override
  String get challengeUnitDuas => 'lutje';

  @override
  String get challengeUnitHadith => 'hadithe';

  @override
  String get challengeUnitNames => 'emra';

  @override
  String get challengeLibraryTitle => 'Biblioteka e sfidave';

  @override
  String get challengeLibrarySearchHint => 'Kërkoni sfida';

  @override
  String challengeLibraryNoMatch(String query) {
    return 'Asnjë sfidë nuk përputhet me “$query”';
  }

  @override
  String challengeLibraryStarted(String date) {
    return 'Sfida filloi · mbaron më $date';
  }

  @override
  String get challengeLibraryStartedNoDeadline => 'Sfida filloi · pa afat';

  @override
  String get challengeLibraryRunning => 'Në vazhdim';

  @override
  String challengeLibraryStartTooltip(String title) {
    return 'Filloni $title';
  }

  @override
  String get challengeLibraryPickBanner => 'Zgjidhni nga biblioteka e sfidave';

  @override
  String challengeLibraryPickBannerSubtitle(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countText sfida të gatshme',
      one: '$countText sfidë e gatshme',
    );
    return '$_temp0';
  }

  @override
  String get challengeLibraryFilledIn => 'U plotësua nga biblioteka e sfidave';

  @override
  String get challengesEmptyBrowse => 'Shfletoni bibliotekën e sfidave';

  @override
  String challengeLibraryDays(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countText ditë',
      one: '$countText ditë',
    );
    return '$_temp0';
  }

  @override
  String challengeLibraryAmount(String countText, String unit) {
    return '$countText $unit';
  }

  @override
  String challengeLibraryEveryDay(String days) {
    return 'Çdo ditë për $days';
  }

  @override
  String challengeLibraryWithin(String goal, String days) {
    return '$goal në $days';
  }

  @override
  String challengeLibraryNoDeadlineGoal(String goal) {
    return '$goal, pa afat';
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
  String get tierRafiqMeaning => 'shok';

  @override
  String get tierNasirMeaning => 'mbështetës';

  @override
  String get tierMuhsinMeaning => 'bamirës';

  @override
  String get tierAnsarMeaning => 'ndihmës';

  @override
  String get supportCardBody =>
      'Falas, pa reklama dhe pa llogari. Mund ta mbështetni zhvillimin e aplikacionit me një kontribut — sa të doni, kur të doni.';

  @override
  String get supportCta => 'Mbështetni Muhasaba';

  @override
  String get supportAgain => 'Mbështetni sërish';

  @override
  String get supporterThanks =>
      'Allahu ju shpërbleftë — Muhasaba do të mbetet falas dhe pa reklama, inshallah.';

  @override
  String supporterSince(String tier, String month) {
    return '$tier që nga $month';
  }

  @override
  String get supportPromptTitle => 'Mbështetni Muhasaba';

  @override
  String get supportPromptBody =>
      'Muhasaba është falas, pa reklama dhe pa llogari. Mund ta mbështetni zhvillimin e saj me një kontribut — sa të doni, kur të doni. Asnjë veçori nuk është e kyçur.';

  @override
  String get supportPromptNow => 'Mbështetni tani';

  @override
  String get supportPromptLater => 'Më kujtoni më vonë';

  @override
  String get supportPromptNever => 'Mos më pyetni më';

  @override
  String get tipSheetTitle => 'Mbështetni Muhasaba';

  @override
  String get tipSheetBody =>
      'Zgjidhni çfarëdo shume, sa herë të doni. Kontributet shkojnë për mirëmbajtjen e aplikacionit — ai do të mbetet falas dhe pa reklama, inshallah. Si falënderim, do të shfaqeni si mbështetës te Cilësimet.';

  @override
  String tipSheetSupporterLine(String tier) {
    return '$tier — Allahu ju shpërbleftë.';
  }

  @override
  String get tipSheetSupporterAgain => 'Mund ta mbështetni sërish kur të doni.';

  @override
  String tipSheetStoreNote(String store) {
    return 'Pagesa kryhet përmes $store — ne nuk i shohim kurrë të dhënat tuaja të pagesës.';
  }

  @override
  String get tipSheetOtherWays => 'Nuk po gjeni një opsion që ju përshtatet?';

  @override
  String get tipSheetWriteToUs => 'Na shkruani';

  @override
  String get supportEmailBody =>
      'Es-selamu alejkum,\n\nDëshiroj ta mbështes drejtpërdrejt zhvillimin e aplikacionit Muhasaba.\n\nShteti:\nSi dëshiroj ta dërgoj:\nShuma (opsionale):';

  @override
  String tipBusy(String store) {
    return 'Po hapet $store…';
  }

  @override
  String get tipThanks =>
      'Allahu ju shpërbleftë — e pranoftë Allahu prej jush.';

  @override
  String get tipDone => 'U krye';

  @override
  String get tipFailed => 'Blerja nuk u krye. Nuk ju është tarifuar asgjë.';

  @override
  String tipPending(String store) {
    return 'Kontributi juaj është në pritje te $store — do të shënoheni si mbështetës sapo të konfirmohet.';
  }

  @override
  String get tipUnavailable =>
      'Blerjet nuk janë të disponueshme në këtë pajisje për momentin.';

  @override
  String get optionSetJamaa => 'Xhemati';

  @override
  String get optionJamaaAlone => 'Vetëm';

  @override
  String get optionJamaaHome => 'Xhemat në shtëpi';

  @override
  String get optionJamaaMasjid => 'Xhemat në xhami';

  @override
  String get optionSetOnTime => 'Në kohë';

  @override
  String get optionOnTimeOnTime => 'Në kohë';

  @override
  String get optionOnTimeLate => 'Me vonesë';

  @override
  String get optionOnTimeQada => 'Kaza';

  @override
  String get optionSetQuranSession => 'Seanca e Kuranit';

  @override
  String get optionQuranRecited => 'Lexuar';

  @override
  String get optionQuranMemorised => 'Përmendësh';

  @override
  String get optionQuranMeaning => 'Me kuptim';

  @override
  String get optionQuranListened => 'Dëgjuar';

  @override
  String get optionSetSadaqahType => 'Lloji i sadakasë';

  @override
  String get optionSadaqahMoney => 'Para';

  @override
  String get optionSadaqahFood => 'Ushqim';

  @override
  String get optionSadaqahTime => 'Kohë';

  @override
  String get optionSadaqahOther => 'Tjetër';

  @override
  String get optionSetIntensity => 'Intensiteti';

  @override
  String get optionIntensityLight => 'I lehtë';

  @override
  String get optionIntensityModerate => 'Mesatar';

  @override
  String get optionIntensityIntense => 'Intensiv';

  @override
  String get optionSetNewTitle => 'Grup i ri opsionesh';

  @override
  String get optionSetEditTitle => 'Ndrysho grupin e opsioneve';

  @override
  String get optionSetNameLabel => 'Emri i grupit';

  @override
  String get optionSetNameHint => 'p.sh. Xhemat';

  @override
  String get optionsLabel => 'Opsionet';

  @override
  String get optionAdd => 'Shto opsion';

  @override
  String optionHint(int index) {
    return 'Opsioni $index';
  }

  @override
  String optionsMaxReached(int max) {
    return 'Maksimumi $max opsione.';
  }

  @override
  String get optionSetPreviewLabel => 'Parapamje — rreshti në Sot';

  @override
  String optionSetKeptForHistory(String labels) {
    return 'Ruajtur për historikun: $labels';
  }

  @override
  String get optionSetDelete => 'Fshi grupin';

  @override
  String get optionSetDeleteConfirm =>
      'Amalet që përdorin këtë grup nuk do të shfaqin më opsione. Ditët e regjistruara tashmë e ruajnë zgjedhjen e tyre.';

  @override
  String get optionSetNameRequired => 'Vendosni një emër për grupin';

  @override
  String get optionsMinRequired => 'Shtoni të paktën dy opsione';

  @override
  String get optionSetNameTooLong => 'Emri i grupit është shumë i gjatë';

  @override
  String optionTooLong(int index) {
    return 'Opsioni $index është shumë i gjatë';
  }

  @override
  String get optionSetNone => 'Asnjë';

  @override
  String get optionSetNew => 'Grup i ri';

  @override
  String get requireChoiceLabel => 'Zgjedhje e detyrueshme';

  @override
  String get requireChoiceHelp =>
      'Rreshti nuk shënohet i përfunduar derisa të zgjidhet një opsion';

  @override
  String get requireChoicePickSetFirst => 'Zgjidhni fillimisht një grup';

  @override
  String get requireChoiceCountHelp =>
      'Amalet e numëruara plotësohen me numëruesin';

  @override
  String get optionPreviewCaption =>
      'Çdo ditë do të zgjidhni një prej tyre te Sot:';

  @override
  String optionsUsedOf(int used, int max) {
    return '$used nga $max opsione të përdorura.';
  }

  @override
  String get choiceNeeded => 'Kërkohet zgjedhje';

  @override
  String optionSelected(String label) {
    return '$label, i zgjedhur';
  }

  @override
  String optionNotSelected(String label) {
    return '$label, i pazgjedhur';
  }

  @override
  String optionBreakdownTitle(String set) {
    return 'Ndarja e opsioneve — $set';
  }

  @override
  String optionBreakdownCaption(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count herë',
      one: '1 herë',
    );
    return 'Përqindjet nga $_temp0 me zgjedhje të regjistruar';
  }

  @override
  String optionNoChoiceRecorded(int none, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other: '$total ditë të përfunduara',
      one: '1 ditë e përfunduar',
    );
    return 'Pa zgjedhje të regjistruar — $none nga $_temp0';
  }

  @override
  String get optionRemovedSuffix => 'hequr';

  @override
  String get optionAllAmals => 'Të gjitha';

  @override
  String optionScopedCaption(String amal, int count) {
    return '$amal · $count zgjedhje';
  }

  @override
  String get optionBreakdownSectionTitle => 'Ndarja e opsioneve';

  @override
  String optionBreakdownSwipeHint(int count) {
    return '$count grupe · rrëshqitni';
  }

  @override
  String get optionDetailEmpty =>
      'Ende nuk është regjistruar asnjë zgjedhje për këtë grup.';

  @override
  String get optionDetailTrendHeading => 'Si ka ndryshuar';

  @override
  String optionDetailTrendReadout(String option, String from, String to) {
    return '$option kaloi nga $from në $to midis javës së parë dhe të fundit.';
  }

  @override
  String get optionDetailByAmalHeading => 'Sipas amalit';

  @override
  String optionDetailByAmalReadout(
    String best,
    String bestShare,
    String worst,
    String worstShare,
  ) {
    return 'Prin $best me $bestShare; në fund është $worst me $worstShare.';
  }

  @override
  String get optionDetailRecordsHeading => 'Rekordet';

  @override
  String get optionDetailLongestRun => 'Seria më e gjatë';

  @override
  String get optionDetailBestWeek => 'Java më e mirë';

  @override
  String get optionDetailCurrentRun => 'Seria aktuale';

  @override
  String get optionDetailRecordsCaption =>
      'Sipas vitit të fundit, pa marrë parasysh filtrin e periudhës më sipër.';

  @override
  String get optionDetailRecentDaysHeading => 'Ditët e fundit';

  @override
  String optionDetailRecentDaysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ditët e fundit',
      one: 'Dita e fundit',
    );
    return '$_temp0';
  }

  @override
  String get amalFivePrayers => 'Pesë namazet e ditës';

  @override
  String get amalJumuah => 'Namazi i xhumasë';

  @override
  String get amalWitr => 'Namazi i vitrit';

  @override
  String get amalQada => 'Namazet kaza';

  @override
  String get amalFajrSunnah => 'Suneti i sabahut';

  @override
  String get amalDhuhrSunnah => 'Suneti i drekës';

  @override
  String get amalAsrSunnah => 'Suneti i ikindisë';

  @override
  String get amalMaghribSunnah => 'Suneti i akshamit';

  @override
  String get amalIshaSunnah => 'Suneti i jacisë';

  @override
  String get amalRawatib => 'Sunetet muekkede';

  @override
  String get amalSiwak => 'Misvaku';

  @override
  String get amalWuduSleep => 'Abdesti para gjumit';

  @override
  String get amalFridayGhusl => 'Gusli i xhumasë';

  @override
  String get amalIshraq => 'Namazi i Ishrakut';

  @override
  String get amalWuduPrayer => 'Dy rekate pas abdestit';

  @override
  String get amalTahiyyah => 'Tehijjetul-mesxhid';

  @override
  String get amalEarlyJumuah => 'Shkuarja herët në xhuma';

  @override
  String get amalAfterSalah => 'Dhikri pas namazit';

  @override
  String get amalAfterFajr => 'Dhikri pas sabahut';

  @override
  String get amalAfterDhuhr => 'Dhikri pas drekës';

  @override
  String get amalAfterAsr => 'Dhikri pas ikindisë';

  @override
  String get amalAfterMaghrib => 'Dhikri pas akshamit';

  @override
  String get amalAfterIsha => 'Dhikri pas jacisë';

  @override
  String get amalAyatKursi => 'Ajetul-Kursijj';

  @override
  String get amalKursiFajr => 'Ajetul-Kursijj pas sabahut';

  @override
  String get amalKursiDhuhr => 'Ajetul-Kursijj pas drekës';

  @override
  String get amalKursiAsr => 'Ajetul-Kursijj pas ikindisë';

  @override
  String get amalKursiMaghrib => 'Ajetul-Kursijj pas akshamit';

  @override
  String get amalKursiIsha => 'Ajetul-Kursijj pas jacisë';

  @override
  String get amalSayyidIstighfar => 'Sejjidul-istigfar';

  @override
  String get amalSalawat => 'Salavatet';

  @override
  String get amalSubhanallah => 'Subhanallahi ue bihamdihi';

  @override
  String get amalTahlil => 'La ilahe il-lallah';

  @override
  String get amalBedtimeAdhkar => 'Dhikri para gjumit';

  @override
  String get amalFridaySalawat => 'Salavatet e xhumasë';

  @override
  String get amalHawqala => 'La havle ue la kuvvete';

  @override
  String get amalTasbihFatimah => 'Tesbihu i Fatimes';

  @override
  String get amalWakingAdhkar => 'Dhikri i zgjimit';

  @override
  String get amalDuaAdhan => 'Lutja pas ezanit';

  @override
  String get amalDuaIqamah => 'Lutja mes ezanit dhe ikametit';

  @override
  String get amalDuaSujood => 'Lutja në sexhde';

  @override
  String get amalDuaParents => 'Lutje për prindërit';

  @override
  String get amalDuaOthers => 'Lutje për të tjerët';

  @override
  String get amalFridayHour => 'Lutje në orën e fundit të xhumasë';

  @override
  String get amalLastThird => 'Lutje në të tretën e fundit të natës';

  @override
  String get amalMulk => 'Sureja El-Mulk';

  @override
  String get amalBaqarahEnd => 'Dy ajetet e fundit të El-Bekares';

  @override
  String get amalSajdah => 'Sureja Es-Sexhde';

  @override
  String get amalQuls => 'Ihlasi, Felaku dhe Nasi';

  @override
  String get amalYasin => 'Sureja Jasin';

  @override
  String get amalWaqiah => 'Sureja El-Vakia';

  @override
  String get amalHifz => 'Hifzi i Kuranit';

  @override
  String get amalMurajaah => 'Përsëritja e hifzit';

  @override
  String get amalTafsir => 'Tefsiri';

  @override
  String get amalListenQuran => 'Dëgjimi i Kuranit';

  @override
  String get amalTeachQuran => 'Mësimdhënia e Kuranit';

  @override
  String get amalMonThu => 'Agjërimi të hënën dhe të enjten';

  @override
  String get amalThreeDays => 'Tri ditë agjërim në muaj';

  @override
  String get amalDailySadaqah => 'Sadakaja e përditshme';

  @override
  String get amalFeed => 'Dhënia e ushqimit';

  @override
  String get amalHelpNeed => 'Ndihma për nevojtarët';

  @override
  String get amalOrphan => 'Kujdesi për jetimin';

  @override
  String get amalGiveWater => 'Dhënia e ujit';

  @override
  String get amalLearnHadith => 'Mësimi i një hadithi';

  @override
  String get amalReadBook => 'Leximi i një libri islam';

  @override
  String get amalSeerah => 'Studimi i sirës';

  @override
  String get amalClass => 'Pjesëmarrja në ders';

  @override
  String get amalArabic => 'Mësimi i arabishtes';

  @override
  String get amalLearnDua => 'Mësimi i një lutjeje të re';

  @override
  String get amalShare => 'Përhapja e dijes';

  @override
  String get amalFiqh => 'Studimi i fikhut';

  @override
  String get amalMuhasaba => 'Muhasaba e natës';

  @override
  String get amalSpeakGood => 'Fjalë e mirë ose heshtje';

  @override
  String get amalNoBackbiting => 'Pa përgojim';

  @override
  String get amalAnger => 'Përmbajtja e zemërimit';

  @override
  String get amalGaze => 'Ulja e shikimit';

  @override
  String get amalTruthful => 'Thënia e së vërtetës';

  @override
  String get amalSmile => 'Buzëqeshja';

  @override
  String get amalSalam => 'Përhapja e selamit';

  @override
  String get amalForgive => 'Falja e të tjerëve';

  @override
  String get amalGratitude => 'Falënderimi';

  @override
  String get amalVisitSick => 'Vizita e të sëmurit';

  @override
  String get amalNeighbours => 'Mirësia ndaj fqinjëve';

  @override
  String get amalRemoveHarm => 'Largimi i pengesës nga rruga';

  @override
  String get amalParents => 'Mirësia ndaj prindërve';

  @override
  String get amalFamilyTies => 'Mbajtja e lidhjeve farefisnore';

  @override
  String get amalHelpHome => 'Ndihma në shtëpi';

  @override
  String get amalTeachChildren => 'Mësimi i fesë fëmijëve';

  @override
  String get amalSpouse => 'Mirësia ndaj bashkëshortit';

  @override
  String get categoryDua => 'Lutja';

  @override
  String get categoryFasting => 'Agjërimi';

  @override
  String get categoryKnowledge => 'Dija';

  @override
  String get categoryCharacter => 'Morali';

  @override
  String get categoryFamily => 'Familja';

  @override
  String get libraryTitle => 'Biblioteka e amaleve';

  @override
  String get librarySearchHint => 'Kërkoni amale';

  @override
  String get libraryAll => 'Të gjitha';

  @override
  String get libraryAdded => 'U shtua te Sot';

  @override
  String libraryAddedShowsOn(String days) {
    return 'U shtua · shfaqet: $days';
  }

  @override
  String libraryNoMatch(String query) {
    return 'Asnjë amal nuk përputhet me “$query”';
  }

  @override
  String libraryCreateNamed(String query) {
    return 'Krijoni “$query”';
  }

  @override
  String get libraryPickBanner => 'Zgjidhni nga biblioteka e amaleve';

  @override
  String libraryPickBannerSubtitle(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countText amale të gatshme',
      one: '$countText amal i gatshëm',
    );
    return '$_temp0';
  }

  @override
  String get libraryFilledIn => 'U plotësua nga biblioteka e amaleve';

  @override
  String get libraryChange => 'Ndryshoni';

  @override
  String get libraryEditAction => 'Ndrysho';

  @override
  String libraryWeeklyAny(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countText ditë në javë',
      one: 'Një herë në javë',
    );
    return '$_temp0';
  }

  @override
  String libraryMonthlyAny(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countText ditë në muaj',
      one: 'Një herë në muaj',
    );
    return '$_temp0';
  }

  @override
  String libraryTimes(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countText herë',
    );
    return '$_temp0';
  }

  @override
  String get libraryAnyAmount => 'Çdo sasi';

  @override
  String libraryAddTooltip(String title) {
    return 'Shtoni $title';
  }

  @override
  String get libraryOnList => 'Është në listën tuaj';

  @override
  String get todayEmptyBrowse => 'Shfletoni bibliotekën e amaleve';
}
