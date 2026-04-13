// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Albanian (`sq`).
class AppLocalizationsSq extends AppLocalizations {
  AppLocalizationsSq([String locale = 'sq']) : super(locale);

  @override
  String get appTitle => 'Muhasaba';

  @override
  String get tabToday => 'Sot';

  @override
  String get tabStats => 'Statistikat';

  @override
  String get tabHistory => 'Historiku';

  @override
  String get tabSettings => 'Cilesimet';

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
  String get clear => 'Pastro';

  @override
  String get titleLabel => 'Titulli';

  @override
  String get titleRequired => 'Titulli eshte i detyrueshem';

  @override
  String get titleTooLong => 'Titulli eshte shume i gjate';

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
  String get categoryOther => 'Tjeter';

  @override
  String get categorySalah => 'Namazi';

  @override
  String get categoryDhikr => 'Dhikri';

  @override
  String get categoryQuran => 'Kurani';

  @override
  String get categoryCharity => 'Sadakaja';

  @override
  String get timesPerPeriod => 'Here per periudhe';

  @override
  String get custom => 'Personalizuar';

  @override
  String get customTargetHint => 'p.sh. 50';

  @override
  String get dayOfWeek => 'Dita e javes';

  @override
  String get anyDay => 'Cilado';

  @override
  String get anyDayHint => 'Cilado dite (mbetet e dukshme sot, fshihet neser)';

  @override
  String onlyDayHint(String day) {
    return 'Vetem $day';
  }

  @override
  String get dateOfMonth => 'Data e muajit';

  @override
  String get anyDate => 'Cilado';

  @override
  String get anyDateHint => 'Cilado date (mbetet e dukshme sot, fshihet neser)';

  @override
  String onlyDateHint(String date) {
    return 'Vetem me $date';
  }

  @override
  String get startPreChecked => 'Fillo e shenuar';

  @override
  String get startPreCheckedSubtitle =>
      'Kur nis nje periudhe e re, ky amal shenohet si i perfunduar automatikisht derisa ta hiqni.';

  @override
  String get reminder => 'Kujtese';

  @override
  String get reminderNone => 'Asgje';

  @override
  String reminderTime(String time) {
    return 'Kujtese: $time';
  }

  @override
  String get reminderPermissionWarning =>
      'Kujtesa u ruajt, por njoftimet nuk jane te lejuara. Aktivizoni ato ne cilesimet e sistemit per te marre njoftime.';

  @override
  String get groupByCategory => 'Grupo sipas kategorise';

  @override
  String get flatList => 'Liste e thjeshte';

  @override
  String errorGeneric(String error) {
    return 'Gabim: $error';
  }

  @override
  String get todayEmptyHint => 'Shtypni + per te shtuar amalin tuaj te pare.';

  @override
  String get noteLabel => 'Shenimi';

  @override
  String get noteHint => 'p.sh. U fala ne xhami';

  @override
  String get completed => 'perfunduar';

  @override
  String get notCompleted => 'e paperfunduar';

  @override
  String progressOf(int progress, int target) {
    return '$progress nga $target te perfunduara';
  }

  @override
  String get removeFromToday => 'Hiq nga sot';

  @override
  String get removeFromTodaySubtitle => 'Fshih vetem per sot. Kthehet neser.';

  @override
  String get removeFromTracking => 'Hiq nga ndjekja';

  @override
  String get removeFromTrackingSubtitle =>
      'Hiq perfundimisht nga lista juaj. Historiku ruhet.';

  @override
  String get chooseIcon => 'Zgjidh ikonen';

  @override
  String get iconNone => 'Asgje';

  @override
  String get recentlyUsed => 'Perdorur se fundmi';

  @override
  String get emojiSectionGeneral => 'Te pergjithshme';

  @override
  String get categoryNameHint => 'Emri';

  @override
  String get categoryNew => '+ E re';

  @override
  String get addAmal => 'Shto Amal';

  @override
  String get customAmal => 'Amal i personalizuar';

  @override
  String get templateTasbih => 'Tesbihe 33x';

  @override
  String get templateIstighfar => 'Istigfar 100x';

  @override
  String get templateSurahKahf => 'Surja Kehf';

  @override
  String get templateSadaqah => 'Sadakaja';

  @override
  String get templateTahajjud => 'Tehexhudi';

  @override
  String get templateDuhaPrayer => 'Namazi i Duhas';

  @override
  String get settingsTitle => 'Cilesimet';

  @override
  String settingsLoadError(String error) {
    return 'Deshtoi ngarkimi i cilesimeve:\n$error';
  }

  @override
  String get sectionDayBoundary => 'Kufiri i dites';

  @override
  String get rolloverHour => 'Ora e kalimit';

  @override
  String get rolloverAtMidnight => 'Dita mbaron ne mesnatë.';

  @override
  String rolloverSubtitle(String time) {
    return 'Amalet e djeshme mbeten te ndryshueshme deri ne $time.';
  }

  @override
  String get pickRolloverHour => 'Zgjidhni oren kur dita kalon';

  @override
  String get sectionWeekMonth => 'Java & muaji';

  @override
  String get startOfWeek => 'Fillimi i javes';

  @override
  String get startOfMonth => 'Fillimi i muajit';

  @override
  String get startOfMonthClamped =>
      'Ditet pas te 28-es kufijzohen ne diten e fundit te muajve me te shkurter.';

  @override
  String get sectionAppearance => 'Pamja';

  @override
  String get theme => 'Tema';

  @override
  String get themeSystem => 'Sistemi';

  @override
  String get themeLight => 'E ndritshme';

  @override
  String get themeDark => 'E erret';

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
      'Nje ditar personal per llogaridhenien e fese. Te gjitha te dhenat mbeten ne kete pajisje.';

  @override
  String get statsTitle => 'Statistikat';

  @override
  String statsLoadError(String error) {
    return 'Deshtoi ngarkimi i statistikave:\n$error';
  }

  @override
  String get perAmal => 'Per amal';

  @override
  String get thisWeek => 'Kete jave';

  @override
  String get thisMonth => 'Kete muaj';

  @override
  String get totalCompletions => 'perfundime gjithsej';

  @override
  String get streakCurrent => 'Aktuale';

  @override
  String get streakLongest => 'Me e gjata';

  @override
  String get ratioWeek => 'Java';

  @override
  String get ratioMonth => 'Muaji';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'dite',
      one: 'dite',
    );
    return '$_temp0';
  }

  @override
  String streakWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'jave',
      one: 'jave',
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
      'Asnje amal ende. Shtoni nje ne Sot per te filluar ndjekjen.';

  @override
  String get statsToday => 'Sot';

  @override
  String get statsThisWeek => 'Kete jave';

  @override
  String get statsThisMonth => 'Kete muaj';

  @override
  String get statsAllTime => 'Gjithe kohet';

  @override
  String get statsCustomRange => 'Gama e personalizuar';

  @override
  String get statsAllCategories => 'Te gjitha';

  @override
  String get statsAllAmals => 'Te gjitha';

  @override
  String get statsCompleted => 'Te perfunduara';

  @override
  String get statsExpected => 'Te pritura';

  @override
  String get statsVsPrevious => 'Kunder te meparshmit';

  @override
  String get statsByCategory => 'Sipas kategorise';

  @override
  String get statsPerAmal => 'Per amal';

  @override
  String get statsCurrentStreak => 'Seria aktuale';

  @override
  String get statsBestStreak => 'Seria me e mire';

  @override
  String get statsTotalDays => 'Dite gjithsej';

  @override
  String get statsConsistency => 'Qendreshmeria';

  @override
  String get statsLast5Weeks => '5 javet e fundit';

  @override
  String get statsDailyBreakdown => 'Ndarja ditore';

  @override
  String get statsCompletionRate => 'Shkalla e perfundimit';

  @override
  String get statsFilterTime => 'Koha';

  @override
  String get statsFilterCategory => 'Kategoria';

  @override
  String get statsFilterAmal => 'Amali';

  @override
  String get statsStreaks => 'Serite';

  @override
  String get statsSelectDateRange => 'Zgjidhni gamen e datave';

  @override
  String get historyTitle => 'Historiku';

  @override
  String get jumpToDate => 'Kalo te data';

  @override
  String historyEmptyDay(String date) {
    return 'Asnje amal e ndjekur me $date';
  }

  @override
  String get streakUnitD => 'd';

  @override
  String get streakUnitW => 'j';

  @override
  String get streakUnitM => 'm';

  @override
  String get mondayShort => 'Hen';

  @override
  String get tuesdayShort => 'Mar';

  @override
  String get wednesdayShort => 'Mer';

  @override
  String get thursdayShort => 'Enj';

  @override
  String get fridayShort => 'Pre';

  @override
  String get saturdayShort => 'Sht';

  @override
  String get sundayShort => 'Dil';

  @override
  String get mondayFull => 'E hene';

  @override
  String get tuesdayFull => 'E marte';

  @override
  String get wednesdayFull => 'E merkure';

  @override
  String get thursdayFull => 'E enjte';

  @override
  String get fridayFull => 'E premte';

  @override
  String get saturdayFull => 'E shtune';

  @override
  String get sundayFull => 'E diel';

  @override
  String get hadith0 =>
      '\"Veprat me te dashura tek Allahu jane ato qe behen rregullisht, edhe nese jane te vogla.\"\n— Buhariu & Muslimi';

  @override
  String get hadith1 =>
      '\"Merrni persiper vepra te mira aq sa keni mundesi, sepse veprat me te mira jane ato qe behen rregullisht edhe nese jane te pakta.\"\n— Ibn Maxhe';

  @override
  String get hadith2 =>
      '\"Kur vdes biri i Ademit, veprat e tij nderpiten perveq trive: sadakaja e vazhdueshme, dituria e dobishme, ose femija i mire qe lutet per te.\"\n— Muslimi';

  @override
  String get hadith3 =>
      '\"Kush i fal dy namazet e ftohta (Sabahun dhe Ikindinë) do te hyje ne Xhenet.\"\n— Buhariu';

  @override
  String get hadith4 =>
      '\"Allahu nuk shikon pamjen tuaj as pasurine tuaj, por shikon zemrat tuaja dhe veprat tuaja.\"\n— Muslimi';

  @override
  String get hadith5 =>
      '\"Me te miret e njerezve jane ata qe jane me te dobishmit per njerezit.\"\n— Darekutniu';

  @override
  String get hadith6 =>
      '\"Lehtesoni dhe mos veshtiresoni; pergezoni dhe mos i trembni njerezit.\"\n— Buhariu';

  @override
  String get hadith7 =>
      '\"Ai qe ndjek nje rruge per kerkim te dijes, Allahu ia lehtesonshtegen per ne Xhenet.\"\n— Muslimi';

  @override
  String get hadith8 => '\"Sadakaja nuk e pakeson pasurine.\"\n— Muslimi';

  @override
  String get hadith9 =>
      '\"Besimtari i forte eshte me i mire dhe me i dashur tek Allahu sesa besimtari i dobet, ndersa te dy kane te mire.\"\n— Muslimi';

  @override
  String get hadith10 =>
      '\"Kush thotë \'SubhanAllah ue bihamdihi\' njëqind herë në ditë, mëkatet e tij do të falen edhe sikur të ishin si shkuma e detit.\"\n— Buhariu';

  @override
  String get hadith11 =>
      '\"Lutja më e mirë është ajo e ditës së Arafatit, dhe fjala më e mirë që unë dhe profetët para meje kemi thënë: La ilahe il-lAllah.\"\n— Tirmidhiu';

  @override
  String get hadith12 =>
      '\"Kush lexon Ajetul-Kursinë pas çdo namazi farz, asgjë nuk e pengon nga hyrja në Xhenet përveç vdekjes.\"\n— Nesaiu';

  @override
  String get hadith13 => '\"Fjala e mirë është sadaka.\"\n— Buhariu & Muslimi';

  @override
  String get hadith14 =>
      '\"Kush beson në Allahun dhe Ditën e Fundit, le të thotë fjalë të mirë ose le të heshtë.\"\n— Buhariu & Muslimi';

  @override
  String get hadith15 =>
      '\"Ai që kujdeset për të vejën dhe të varfrin, është si luftëtar në rrugën e Allahut.\"\n— Buhariu';

  @override
  String get hadith16 =>
      '\"Buzëqeshja ndaj vëllait tënd është sadaka.\"\n— Tirmidhiu';

  @override
  String get hadith17 =>
      '\"Më i miri prej jush është ai që e mëson Kuranin dhe ua mëson të tjerëve.\"\n— Buhariu';

  @override
  String get hadith18 =>
      '\"Askush nuk ka ngrënë ushqim më të mirë sesa atë që e fiton me punën e duarve të veta.\"\n— Buhariu';

  @override
  String get hadith19 =>
      '\"Allahu është i butë dhe e do butësinë në çdo gjë.\"\n— Buhariu & Muslimi';

  @override
  String historyDayCompleted(int completed, int total) {
    return '$completed nga $total të përfunduara';
  }

  @override
  String get settingsSchedule => 'Orari';

  @override
  String get settingsAppearance => 'Pamja';

  @override
  String get settingsAboutTagline => 'Shoqëruesi juaj i përditshëm i dinit';

  @override
  String get settingsRolloverSub => 'Kur rifreskohet dita';

  @override
  String get settingsAbout => 'Rreth';

  @override
  String get settingsVersion => 'Versioni';

  @override
  String get settingsDeveloper => 'Zhvilluesi';

  @override
  String get hadith20 =>
      '\"Kush agjëron Ramazanin me besim dhe duke shpresuar shpërblimin, i falen mëkatet e kaluara.\"\n— Buhariu & Muslimi';

  @override
  String get hadith21 => '\"Namazi është shtylla e fesë.\"\n— Bejhekiu';

  @override
  String get hadith22 =>
      '\"Lutja midis ezanit dhe ikametit nuk refuzohet.\"\n— Ebu Davudi';

  @override
  String get hadith23 =>
      '\"Kush ndërton një xhami për Allahun, Allahu i ndërton atij një shtëpi në Xhenet.\"\n— Buhariu & Muslimi';

  @override
  String get hadith24 =>
      '\"Safat më të mira për burrat janë të parat, ndërsa safat më të mira për gratë janë të fundit.\"\n— Muslimi';

  @override
  String get hadith25 =>
      '\"Agjërimi është mburojë nga zjarri i Xhehenemit.\"\n— Nesaiu';

  @override
  String get hadith26 =>
      '\"Kush fal dymbëdhjetë rekate sunet, i ndërtohet një shtëpi në Xhenet.\"\n— Muslimi';

  @override
  String get hadith27 =>
      '\"Ai që e lexon bukur Kuranin do të jetë me engjëjt fisnikë.\"\n— Buhariu & Muslimi';

  @override
  String get hadith28 =>
      '\"Kërkimi i dijes është detyrë e çdo myslimani.\"\n— Ibn Maxhe';

  @override
  String get hadith29 =>
      '\"Sadakaja më e mirë është dhënia e ujit.\"\n— Ahmedi';

  @override
  String get hadith30 =>
      '\"Kush ia largon një vështirësi besimtarit, Allahu do t\'ia largojë një vështirësi atij në Ditën e Gjykimit.\"\n— Muslimi';

  @override
  String get hadith31 =>
      '\"Mëshirëplotëve u tregon mëshirë i Gjithëmëshirshmi.\"\n— Ebu Davudi & Tirmidhiu';

  @override
  String get hadith32 =>
      '\"Turpi është pjesë e besimit.\"\n— Buhariu & Muslimi';

  @override
  String get hadith33 => '\"Pastërtia është gjysma e besimit.\"\n— Muslimi';

  @override
  String get hadith34 =>
      '\"Kush duron, Allahu i jep durim.\"\n— Buhariu & Muslimi';

  @override
  String get hadith35 =>
      '\"Pasuria më e mirë është gjuha që e përmend Allahun.\"\n— Taberaniu';

  @override
  String get hadith36 =>
      '\"Askush prej jush nuk beson vërtet derisa t\'i dojë vëllait të vet atë që i do vetes.\"\n— Buhariu & Muslimi';

  @override
  String get hadith37 =>
      '\"Ushqeni të uriturit, vizitoni të sëmurët dhe lironi të robëruarit.\"\n— Buhariu';

  @override
  String get hadith38 =>
      '\"I forti nuk është ai që mund në mundje, por ai që e kontrollon veten në zemërim.\"\n— Buhariu & Muslimi';

  @override
  String get hadith39 =>
      '\"Kush e ruan gjuhën dhe nderin e vet, unë i garantoj Xhenetin.\"\n— Buhariu';

  @override
  String get hadith40 =>
      '\"Thoni \'SubhanAllah\', \'Elhamdulilah\' dhe \'Allahu Ekber\' tridhjetë e tri herë pas çdo namazi.\"\n— Muslimi';

  @override
  String get hadith41 =>
      '\"Dhikri më i mirë është La ilahe il-lAllah.\"\n— Tirmidhiu';

  @override
  String get hadith42 =>
      '\"Ka dy begatira që shumë njerëz i humbasin: shëndetin dhe kohën e lirë.\"\n— Buhariu';

  @override
  String get hadith43 =>
      '\"Përfitoni pesë gjëra para pesë të tjerave: rininë para pleqërisë, shëndetin para sëmundjes, pasurinë para varfërisë, kohën e lirë para zënies dhe jetën para vdekjes.\"\n— Hakimi';

  @override
  String get hadith44 =>
      '\"Kush lexon Suren Ihlas dhjetë herë, Allahu i ndërton atij një shtëpi në Xhenet.\"\n— Ahmedi';

  @override
  String get hadith45 =>
      '\"Namazi më i mirë pas farzit është namazi i natës.\"\n— Muslimi';

  @override
  String get hadith46 =>
      '\"Sadakaja i shuan mëkatet siç e shuan uji zjarrin.\"\n— Tirmidhiu';

  @override
  String get hadith47 =>
      '\"Ai që i mban lidhjet farefisnore nuk është ai që i kthen vizitat, por ai që i mban edhe kur i shkëputen.\"\n— Buhariu';

  @override
  String get hadith48 =>
      '\"Çdo vepër e mirë është sadaka.\"\n— Buhariu & Muslimi';

  @override
  String get hadith49 =>
      '\"Kush ha dhe thotë Elhamdulilah, i falen mëkatet e kaluara.\"\n— Tirmidhiu';

  @override
  String get hadith50 =>
      '\"Njerëzit më të dashur tek Allahu janë ata që u sjellin më shumë dobi të tjerëve.\"\n— Tabarani';

  @override
  String get hadith51 =>
      '\"Kush e përmbajt zemërimin e tij ndërkohë që ka mundësi ta shprehë, Allahu do ta thërrasë para të gjithë krijesave Ditën e Gjykimit për të zgjedhur shpërblimin e tij.\"\n— Tirmidhi';

  @override
  String get hadith52 =>
      '\"Nxitoni në dhënien e sadakasë, sepse ajo e ndalon fatkeqësinë.\"\n— Tirmidhi';

  @override
  String get hadith53 =>
      '\"Mos e nënvlerëso asnjë vepër të mirë, qoftë edhe takimi me vëllanë tënd me fytyrë të buzëqeshur.\"\n— Muslim';

  @override
  String get hadith54 =>
      '\"Më i miri prej jush është ai që është më i mirë me familjen e tij.\"\n— Tirmidhi';

  @override
  String get hadith55 =>
      '\"Kush i lexon dy ajetet e fundit të sures El-Bekare natën, ato i mjaftojnë atij.\"\n— Bukhari & Muslim';

  @override
  String get hadith56 =>
      '\"Kjo botë është furnizim, dhe furnizimi më i mirë është gruaja e devotshme.\"\n— Muslim';

  @override
  String get hadith57 =>
      '\"Tri lutje nuk refuzohen: lutja e agjëruesit, lutja e udhëheqësit të drejtë dhe lutja e të shtypurit.\"\n— Tirmidhi';

  @override
  String get hadith58 =>
      '\"Kush dërgon salavat mbi mua një herë, Allahu dërgon dhjetë herë mëshirë mbi të.\"\n— Muslim';

  @override
  String get hadith59 =>
      '\"Xhamia është shtëpia e çdo njeriu të devotshëm.\"\n— Tabarani';

  @override
  String get hadith60 =>
      '\"Kush thotë \'La hawla we la kuwwete il-la bil-lah\' — kjo është ilaç për nëntëdhjetë e nëntë sëmundje, më e lehta e të cilave është shqetësimi.\"\n— Hakim';

  @override
  String get hadith61 =>
      '\"Allahu e do kur dikush bën diçka, ta bëjë me përsosmëri.\"\n— Tabarani';

  @override
  String get hadith62 => '\"Xheneti ndodhet nën këmbët e nënave.\"\n— Nasa\'i';

  @override
  String get hadith63 =>
      '\"Mirësia ndaj prindërve është detyrimi më i madh.\"\n— Bukhari';

  @override
  String get hadith64 =>
      '\"Kush falënderon për pak, do t\'i jepet shumë.\"\n— Bejheki';

  @override
  String get hadith65 =>
      '\"Besimtari është pasqyra e besimtarit.\"\n— Abu Dawud';

  @override
  String get hadith66 =>
      '\"Sinqeriteti çon tek mirësia, dhe mirësia çon tek Xheneti.\"\n— Bukhari & Muslim';

  @override
  String get hadith67 =>
      '\"Ktheja amanetin atij që ta besoi, dhe mos e tradhëto atë që të tradhtoi.\"\n— Abu Dawud & Tirmidhi';

  @override
  String get hadith68 =>
      '\"Asnjë lodhje, sëmundje, pikëllim, trishtim, dëm apo shqetësim nuk e godet muslimanin, madje as shpimi i një gjembi, veçse Allahu ia fshin disa nga mëkatet e tij.\"\n— Bukhari & Muslim';

  @override
  String get hadith69 =>
      '\"Duaja e muslimanit për vëllanë e tij në mungesë të tij pranohet gjithmonë.\"\n— Muslim';

  @override
  String get hadith70 =>
      '\"Kush i kërkon Allahut Xhenetin tri herë, Xheneti thotë: O Allah, fute atë në Xhenet.\"\n— Tirmidhi';

  @override
  String get hadith71 =>
      '\"Agjërimi më i vlefshëm pas Ramazanit është agjërimi i muajit të Allahut, Muharremit.\"\n— Muslim';

  @override
  String get hadith72 =>
      '\"Kush kryen haxhin dhe nuk flet fjalë të ndyta e nuk bën mëkat, kthehet si ditën kur e lindi nëna e tij.\"\n— Bukhari & Muslim';

  @override
  String get hadith73 =>
      '\"Umra pas umres është shlyerje për mëkatet mes tyre.\"\n— Bukhari & Muslim';

  @override
  String get hadith74 => '\"Garoni për vepra të mira.\"\n— Muslim';

  @override
  String get hadith75 =>
      '\"Dy rekatet e sabahut janë më të mira se bota dhe gjithçka që gjendet në të.\"\n— Muslimi';

  @override
  String get hadith76 =>
      '\"Kush bën istigfar rregullisht, Allahu do t\'i japë rrugëdalje nga çdo vështirësi.\"\n— Ebu Davudi';

  @override
  String get hadith77 =>
      '\"Nëse do të mbështeteshit tek Allahu siç duhet, Ai do t\'ju furnizonte ashtu siç i furnizon shpendët.\"\n— Tirmidhiu';

  @override
  String get hadith78 =>
      '\"Kush viziton një të sëmurë, gjendet në kopshtin e xhenetit derisa të kthehet.\"\n— Muslimi';

  @override
  String get hadith79 =>
      '\"Përhapni selamin, ushqeni të uriturit dhe faluni natën kur njerëzit flenë — do të hyni në xhenet me paqe.\"\n— Tirmidhiu';

  @override
  String get hadith80 =>
      '\"Veprat më të dashura tek Allahu janë ato më të vazhdueshmet, edhe nëse janë të pakta.\"\n— Buhariu';

  @override
  String get hadith81 =>
      '\"Smira nuk lejohet përveçse në dy raste: një njeri të cilit Allahu i ka dhënë pasuri dhe ai e shpenzon në rrugën e drejtë, dhe një njeri të cilit Allahu i ka dhënë urtësi dhe ai gjykon dhe mëson me të.\"\n— Buhariu dhe Muslimi';

  @override
  String get hadith82 =>
      '\"Njeriu ndjek fenë e shokut të tij, prandaj le të shikojë secili prej jush me kë miqësohet.\"\n— Ebu Davudi dhe Tirmidhiu';

  @override
  String get hadith83 =>
      '\"Kujtojeni vdekjen shpesh, sepse ajo e pastron zemrën.\"\n— Tirmidhiu';

  @override
  String get hadith84 =>
      '\"Më i miri prej jush është ai që ka zemrën më të butë.\"\n— Taberaniu';

  @override
  String get hadith85 =>
      '\"Allahu nuk e ngarkon askënd përtej mundësisë së tij.\"\n— Kurani 2:286';

  @override
  String get hadith86 =>
      '\"Kush ia mbulon të metat një muslimani, Allahu do t\'ia mbulojë të metat në Ditën e Gjykimit.\"\n— Buhariu dhe Muslimi';

  @override
  String get hadith87 =>
      '\"Ji në këtë botë sikur të ishe i huaj ose udhëtar.\"\n— Buhariu';

  @override
  String get hadith88 =>
      '\"Kush ia lehtëson dikujt në vështirësi, Allahu do t\'ia lehtësojë atij në dynja dhe ahiret.\"\n— Muslimi';

  @override
  String get hadith89 =>
      '\"Shpërblimi i veprave varet nga qëllimet.\"\n— Buhariu dhe Muslimi';

  @override
  String get hadith90 =>
      '\"Largohuni nga dyshimi, sepse dyshimi është fjala më e rreme.\"\n— Buhariu dhe Muslimi';

  @override
  String get hadith91 =>
      '\"Kush e lë gënjeshtrën për hir të Allahut, edhe gjatë shakasë, unë i garantoj atij një pallat në skajin e xhenetit.\"\n— Ebu Davudi';

  @override
  String get hadith92 =>
      '\"Dyert e mirësisë janë të shumta: madhërimi i Allahut, lavdërimi i Tij, sadakaja, urdhërimi për të mirë dhe largimi i pengesave nga rruga.\"\n— Muslimi';

  @override
  String get hadith93 =>
      '\"Hani së bashku dhe përmendni emrin e Allahut, do të bekohet për ju.\"\n— Ebu Davudi';

  @override
  String get hadith94 =>
      '\"Tubimi më i mirë është ai më i gjeri.\"\n— Ebu Davudi';

  @override
  String get hadith95 => '\"Falni dhe do të faleni.\"\n— Ahmedi';

  @override
  String get hadith96 =>
      '\"Lidhe devenë tënde e pastaj mbështetu tek Allahu.\"\n— Tirmidhiu';

  @override
  String get hadith97 =>
      '\"Sa e mrekullueshme është çështja e besimtarit — gjithçka është mirë për të.\"\n— Muslimi';

  @override
  String get hadith98 =>
      '\"Muslimani është vëlla i muslimanit: nuk i bën padrejtësi, nuk e braktis dhe nuk e përbuz.\"\n— Muslimi';

  @override
  String get hadith99 =>
      '\"Fjala më e dashur tek Allahu është: SubhanAllahi ue bihamdihi, SubhanAllahil Adhim.\"\n— Buhariu dhe Muslimi';
}
