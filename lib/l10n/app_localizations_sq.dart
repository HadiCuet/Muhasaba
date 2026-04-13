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
}
