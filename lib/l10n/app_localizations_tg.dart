// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tajik (`tg`).
class AppLocalizationsTg extends AppLocalizations {
  AppLocalizationsTg([String locale = 'tg']) : super(locale);

  @override
  String get repeatsOnDaysHint => 'Дар рӯзҳои интихобшуда такрор мешавад';

  @override
  String get newDayStarted => 'Рӯзи нав оғоз ёфт';

  @override
  String get appTitle => 'Муҳосиба';

  @override
  String get tabToday => 'Имрӯз';

  @override
  String get tabStats => 'Омор';

  @override
  String get tabHistory => 'Таърих';

  @override
  String get tabSettings => 'Танзимот';

  @override
  String get tabChallenge => 'Мақсад';

  @override
  String get tabInsights => 'Омор';

  @override
  String get insightsTitle => 'Омор';

  @override
  String get insightsOverview => 'Умумӣ';

  @override
  String get insightsDaily => 'Рӯзона';

  @override
  String get insightsArchive => 'Бойгонӣ';

  @override
  String get archivedEmpty =>
      'Ҳоло дар ин ҷо чизе нест. Амалҳое, ки аз пайгирӣ хориҷ мекунед, ба ин ҷо меоянд ва онҳоро метавонед баргардонед.';

  @override
  String archivedStoppedOn(String date) {
    return 'Дар $date хориҷ карда шуд';
  }

  @override
  String get archivedRestore => 'Баргардонидан';

  @override
  String archivedRestored(String title) {
    return '«$title» ба рӯйхати шумо баргашт.';
  }

  @override
  String get newChallenge => 'Мақсади нав';

  @override
  String get newAmal => 'Амали нав';

  @override
  String get editAmal => 'Таҳрири амал';

  @override
  String get newAmalTitle => 'Амали нав';

  @override
  String get save => 'Захира кардан';

  @override
  String get cancel => 'Бекор кардан';

  @override
  String get ok => 'OK';

  @override
  String get clear => 'Тоза кардан';

  @override
  String get titleLabel => 'Ном';

  @override
  String get titleRequired => 'Номро ворид кунед';

  @override
  String get titleTooLong => 'Ном хеле дароз аст';

  @override
  String get frequencyLabel => 'Даврият';

  @override
  String get frequencyDaily => 'Ҳаррӯза';

  @override
  String get frequencyWeekly => 'Ҳафтаина';

  @override
  String get frequencyMonthly => 'Моҳона';

  @override
  String get categoryLabel => 'Гурӯҳ';

  @override
  String get categoryOther => 'Дигар';

  @override
  String get categorySalah => 'Намоз';

  @override
  String get categoryDhikr => 'Зикр';

  @override
  String get categoryQuran => 'Қуръон';

  @override
  String get categoryCharity => 'Садақа';

  @override
  String get categorySunnah => 'Суннат';

  @override
  String get timesPerPeriod => 'Чанд бор дар давра';

  @override
  String get custom => 'Дилхоҳ';

  @override
  String get customTargetHint => 'масалан, 50';

  @override
  String get targetAny => 'Ҳар қадар';

  @override
  String get targetAnyHelp => 'Бе ҳадаф — бо ҳар миқдор иҷро ҳисоб мешавад';

  @override
  String get dayOfWeek => 'Рӯзи ҳафта';

  @override
  String get anyDay => 'Дилхоҳ';

  @override
  String get anyDayHint =>
      'Дилхоҳ рӯз (имрӯз намоён аст, фардо пинҳон мешавад)';

  @override
  String onlyDayHint(String day) {
    return 'Танҳо $day';
  }

  @override
  String get dateOfMonth => 'Санаи моҳ';

  @override
  String get repeatMode => 'Такрор';

  @override
  String get onSetDays => 'Дар рӯзҳои муайян';

  @override
  String get onSetDates => 'Дар санаҳои муайян';

  @override
  String get anyDayMode => 'Дилхоҳ рӯз';

  @override
  String get datesOfMonth => 'Санаҳо';

  @override
  String get daysPerWeekQuestion => 'Дар як ҳафта чанд рӯз?';

  @override
  String get daysPerMonthQuestion => 'Дар як моҳ чанд рӯз?';

  @override
  String get pickAtLeastOneDay => 'Ҳадди ақал як рӯзро интихоб кунед';

  @override
  String get pickAtLeastOneDate => 'Ҳадди ақал як санаро интихоб кунед';

  @override
  String get previewDaily => 'Ҳар рӯз такрор мешавад';

  @override
  String previewWeeklyDays(String days) {
    return 'Ҳар $days такрор мешавад';
  }

  @override
  String previewWeeklyAny(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count рӯзи дилхоҳ',
      one: 'як рӯзи дилхоҳ',
    );
    return 'Ҳафтае $_temp0 такрор мешавад';
  }

  @override
  String previewMonthlyDates(int count, String dates) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ҳар моҳ дар санаҳои $dates такрор мешавад',
      one: 'Ҳар моҳ дар санаи $dates такрор мешавад',
    );
    return '$_temp0';
  }

  @override
  String previewMonthlyAny(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count рӯзи дилхоҳ',
      one: 'як рӯзи дилхоҳ',
    );
    return 'Моҳе $_temp0 такрор мешавад';
  }

  @override
  String get anyDate => 'Дилхоҳ';

  @override
  String get anyDateHint =>
      'Дилхоҳ сана (имрӯз намоён аст, фардо пинҳон мешавад)';

  @override
  String onlyDateHint(String date) {
    return 'Танҳо дар $date';
  }

  @override
  String get startPreChecked => 'Пешакӣ қайдшуда';

  @override
  String get startPreCheckedSubtitle =>
      'Дар оғози ҳар давраи нав ин амал худ аз худ иҷрошуда қайд мешавад, то даме ки шумо қайдро бардоред.';

  @override
  String get reminder => 'Ёдоварӣ';

  @override
  String get reminderNone => 'Нест';

  @override
  String reminderTime(String time) {
    return 'Ёдоварӣ: $time';
  }

  @override
  String get reminderPermissionWarning =>
      'Ёдоварӣ захира шуд, вале ба огоҳиномаҳо иҷозат дода нашудааст. Барои гирифтани огоҳинома онҳоро дар танзимоти система фаъол кунед.';

  @override
  String get settingsReminders => 'Ёдоварӣ';

  @override
  String get dailyReminder => 'Ёдоварии ҳаррӯза';

  @override
  String get dailyReminderSubtitle => 'Ёдоварии нарм барои пайгирии амалҳоятон';

  @override
  String get dailyReminderTimeLabel => 'Вақти ёдоварӣ';

  @override
  String get dailyReminderBody =>
      'Каме вақт ҷудо карда, амалҳои имрӯзро қайд кунед.';

  @override
  String get groupByCategory => 'Аз рӯи гурӯҳ';

  @override
  String get flatList => 'Рӯйхати содда';

  @override
  String errorGeneric(String error) {
    return 'Хато: $error';
  }

  @override
  String get todayEmptyHint =>
      'Барои илова кардани амали аввалин тугмаи «+»-ро пахш кунед.';

  @override
  String get noteLabel => 'Ёддошт';

  @override
  String get noteHint => 'масалан, дар масҷид намоз хондам';

  @override
  String get completed => 'иҷро шуд';

  @override
  String get notCompleted => 'иҷро нашуд';

  @override
  String progressOf(String progress, String target) {
    return '$progress аз $target иҷро шуд';
  }

  @override
  String progressOpen(String count) {
    return '$count иҷро шуд';
  }

  @override
  String get removeFromToday => 'Аз имрӯз хориҷ кардан';

  @override
  String get removeFromTodaySubtitle =>
      'Танҳо барои имрӯз пинҳон мешавад. Фардо бармегардад.';

  @override
  String get removeFromTracking => 'Аз пайгирӣ хориҷ кардан';

  @override
  String get removeFromTrackingSubtitle =>
      'Аз рӯйхат комилан хориҷ мешавад. Таърих боқӣ мемонад.';

  @override
  String get chooseIcon => 'Интихоби тасвирча';

  @override
  String get iconNone => 'Нест';

  @override
  String get recentlyUsed => 'Ба наздикӣ истифодашуда';

  @override
  String get emojiSectionGeneral => 'Умумӣ';

  @override
  String get categoryNameHint => 'Ном';

  @override
  String get categoryNew => '+ Нав';

  @override
  String get categoryNewSheetTitle => 'Гурӯҳи нав';

  @override
  String get categoryEditSheetTitle => 'Таҳрири гурӯҳ';

  @override
  String get addAmal => 'Илова кардани амал';

  @override
  String get customAmal => 'Амали дилхоҳ';

  @override
  String get amalTasbih => 'Тасбеҳ 33x';

  @override
  String get amalIstighfar => 'Истиғфор';

  @override
  String get amalSurahKahf => 'Сураи Каҳф';

  @override
  String get amalSadaqah => 'Садақа';

  @override
  String get amalTahajjud => 'Таҳаҷҷуд';

  @override
  String get amalDuha => 'Намози чошт';

  @override
  String get amalFajr => 'Бомдод';

  @override
  String get amalDhuhr => 'Пешин';

  @override
  String get amalAsr => 'Аср';

  @override
  String get amalMaghrib => 'Шом';

  @override
  String get amalIsha => 'Хуфтан';

  @override
  String get amalMorningAdhkar => 'Зикрҳои субҳ';

  @override
  String get amalEveningAdhkar => 'Зикрҳои шом';

  @override
  String get amalTilawah => 'Тиловат';

  @override
  String get settingsTitle => 'Танзимот';

  @override
  String settingsLoadError(String error) {
    return 'Танзимот бор нашуд:\n$error';
  }

  @override
  String get sectionDayBoundary => 'Анҷоми рӯз';

  @override
  String get rolloverHour => 'Соати ивази рӯз';

  @override
  String get rolloverAtMidnight => 'Имрӯз дар нисфишаб тамом мешавад.';

  @override
  String rolloverSubtitle(String time) {
    return 'Амалҳои дирӯзро то $time тағйир додан мумкин аст.';
  }

  @override
  String get pickRolloverHour => 'Интихоб кунед, ки рӯз соати чанд иваз шавад';

  @override
  String get sectionWeekMonth => 'Ҳафта ва моҳ';

  @override
  String get startOfWeek => 'Оғози ҳафта';

  @override
  String get startOfMonth => 'Оғози моҳ';

  @override
  String get startOfMonthClamped =>
      'Дар моҳҳои кӯтоҳ санаҳои баъд аз 28-ум ба рӯзи охири моҳ гузаронида мешаванд.';

  @override
  String get sectionAppearance => 'Намуди зоҳирӣ';

  @override
  String get theme => 'Мавзӯъ';

  @override
  String get themeSystem => 'Системавӣ';

  @override
  String get themeLight => 'Равшан';

  @override
  String get themeDark => 'Торик';

  @override
  String get sectionLanguage => 'Забон';

  @override
  String get language => 'Забон';

  @override
  String get systemDefault => 'Мувофиқи система';

  @override
  String get aboutTitle => 'Муҳосиба';

  @override
  String get aboutSubtitle =>
      'Дафтари шахсии ҳисоби амалҳои динӣ. Ҳамаи маълумот дар ҳамин дастгоҳ мемонад.';

  @override
  String get statsTitle => 'Омор';

  @override
  String statsLoadError(String error) {
    return 'Оморро бор кардан нашуд:\n$error';
  }

  @override
  String get perAmal => 'Барои ҳар амал';

  @override
  String get thisWeek => 'Ин ҳафта';

  @override
  String get thisMonth => 'Ин моҳ';

  @override
  String get totalCompletions => 'иҷро дар маҷмӯъ';

  @override
  String get streakCurrent => 'Ҷорӣ';

  @override
  String get streakLongest => 'Дарозтарин';

  @override
  String get ratioWeek => 'Ҳафта';

  @override
  String get ratioMonth => 'Моҳ';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'рӯз',
      one: 'рӯз',
    );
    return '$_temp0';
  }

  @override
  String streakWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ҳафта',
      one: 'ҳафта',
    );
    return '$_temp0';
  }

  @override
  String streakMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'моҳ',
      one: 'моҳ',
    );
    return '$_temp0';
  }

  @override
  String get frequencyBadgeDaily => 'ҳаррӯза';

  @override
  String get frequencyBadgeWeekly => 'ҳафтаина';

  @override
  String get frequencyBadgeMonthly => 'моҳона';

  @override
  String get statsEmpty =>
      'Ҳанӯз амал нест. Барои оғози пайгирӣ дар саҳифаи Имрӯз илова кунед.';

  @override
  String get statsToday => 'Имрӯз';

  @override
  String get statsThisWeek => 'Ин ҳафта';

  @override
  String get statsThisMonth => 'Ин моҳ';

  @override
  String get statsAllTime => 'Тамоми вақт';

  @override
  String get statsCustomRange => 'Давраи дилхоҳ';

  @override
  String get statsAllCategories => 'Ҳама';

  @override
  String get statsAllAmals => 'Ҳама';

  @override
  String get statsCompleted => 'Иҷрошуда';

  @override
  String get statsExpected => 'Пешбинишуда';

  @override
  String get statsVsPrevious => 'Нисбат ба давраи қаблӣ';

  @override
  String get statsByCategory => 'Аз рӯи гурӯҳ';

  @override
  String get statsPerAmal => 'Барои ҳар амал';

  @override
  String get statsTotalCaption => 'ҳамагӣ';

  @override
  String statsDaysFraction(String done, String expectedText, num expected) {
    String _temp0 = intl.Intl.pluralLogic(
      expected,
      locale: localeName,
      other: 'рӯз',
      one: 'рӯз',
    );
    return '$done/$expectedText $_temp0';
  }

  @override
  String get statsCurrentStreak => 'Силсилаи ҷорӣ';

  @override
  String get statsBestStreak => 'Беҳтарин силсила';

  @override
  String get statsTotalDays => 'Ҳамагӣ рӯз';

  @override
  String get statsConsistency => 'Устуворӣ';

  @override
  String get statsLast5Weeks => '5 ҳафтаи охир';

  @override
  String get statsDailyBreakdown => 'Тафсилоти рӯзона';

  @override
  String get statsCompletionRate => 'Дараҷаи иҷро';

  @override
  String get statsAmountPerDay => 'Миқдор дар як рӯз';

  @override
  String statsCountTotal(String count) {
    return 'Ҳамагӣ $count';
  }

  @override
  String statsCountAvg(String amount) {
    return 'Миёна $amount/рӯз';
  }

  @override
  String statsCountBest(String count, String day) {
    return 'Бештарин $count · $day';
  }

  @override
  String get statsFilterTime => 'Вақт';

  @override
  String get statsFilterCategory => 'Гурӯҳ';

  @override
  String get statsFilterAmal => 'Амал';

  @override
  String get statsStreaks => 'Силсилаҳо';

  @override
  String get statsSelectDateRange => 'Давраро интихоб кунед';

  @override
  String get historyTitle => 'Таърих';

  @override
  String get jumpToDate => 'Ба сана гузаштан';

  @override
  String historyEmptyDay(String date) {
    return 'Дар $date амал пайгирӣ нашудааст';
  }

  @override
  String get streakUnitD => 'р';

  @override
  String get streakUnitW => 'ҳ';

  @override
  String get streakUnitM => 'м';

  @override
  String get mondayShort => 'Дш';

  @override
  String get tuesdayShort => 'Сш';

  @override
  String get wednesdayShort => 'Чш';

  @override
  String get thursdayShort => 'Пш';

  @override
  String get fridayShort => 'Ҷм';

  @override
  String get saturdayShort => 'Шн';

  @override
  String get sundayShort => 'Яш';

  @override
  String get mondayFull => 'Душанбе';

  @override
  String get tuesdayFull => 'Сешанбе';

  @override
  String get wednesdayFull => 'Чоршанбе';

  @override
  String get thursdayFull => 'Панҷшанбе';

  @override
  String get fridayFull => 'Ҷумъа';

  @override
  String get saturdayFull => 'Шанбе';

  @override
  String get sundayFull => 'Якшанбе';

  @override
  String get hadith0 =>
      '«Маҳбубтарини амалҳо назди Аллоҳ он аст, ки бардавом бошад, агарчи андак бошад.»\n— Бухорӣ ва Муслим';

  @override
  String get hadith2 =>
      '«Чун одамизод бимирад, амалаш қатъ мегардад, магар аз се чиз: садақаи ҷория, илме, ки аз он нафъ бардоранд, ё фарзанди солеҳе, ки барояш дуо кунад.»\n— Муслим';

  @override
  String get hadith3 =>
      '«Ҳар кӣ ду намози салқинро (бомдод ва аср) бихонад, ба ҷаннат медарояд.»\n— Бухорӣ';

  @override
  String get hadith4 =>
      '«Аллоҳ ба сурат ва моли шумо наменигарад, балки ба дилҳо ва амалҳои шумо менигарад.»\n— Муслим';

  @override
  String get hadith6 =>
      '«Осон гиред ва сахт нагиред; мужда диҳед ва мардумро аз худ дур накунед.»\n— Бухорӣ';

  @override
  String get hadith7 =>
      '«Ҳар кӣ дар талаби илм роҳе пеш гирад, Аллоҳ барояш роҳи ҷаннатро осон мегардонад.»\n— Муслим';

  @override
  String get hadith8 => '«Садақа молро кам намекунад.»\n— Муслим';

  @override
  String get hadith9 =>
      '«Мӯъмини қавӣ назди Аллоҳ аз мӯъмини заиф беҳтар ва маҳбубтар аст, ва дар ҳар яке хайр ҳаст.»\n— Муслим';

  @override
  String get hadith10 =>
      '«Ҳар кӣ дар як рӯз сад бор „Субҳоналлоҳи ва биҳамдиҳӣ“ гӯяд, гуноҳонаш бахшида мешавад, агарчи мисли кафи баҳр бошад.»\n— Бухорӣ ва Муслим';

  @override
  String get hadith12 =>
      '«Ҳар кӣ пас аз ҳар намози фарз Оятулкурсӣ бихонад, ӯро аз даромадан ба ҷаннат ҷуз марг чизе монеъ намешавад.»\n— Насоӣ';

  @override
  String get hadith13 => '«Сухани нек садақа аст.»\n— Бухорӣ ва Муслим';

  @override
  String get hadith14 =>
      '«Ҳар кӣ ба Аллоҳ ва рӯзи охират имон дорад, бояд сухани нек гӯяд ё хомӯш бошад.»\n— Бухорӣ ва Муслим';

  @override
  String get hadith15 =>
      '«Касе ки дар ғами бевазан ё мискин аст, монанди муҷоҳид дар роҳи Аллоҳ аст.»\n— Бухорӣ ва Муслим';

  @override
  String get hadith16 =>
      '«Табассуми ту ба рӯи бародарат садақа аст.»\n— Тирмизӣ';

  @override
  String get hadith17 =>
      '«Беҳтарини шумо касест, ки Қуръонро биомӯзад ва ба дигарон омӯзонад.»\n— Бухорӣ';

  @override
  String get hadith18 =>
      '«Ҳеҷ кас ҳаргиз таоме беҳтар аз он чи бо меҳнати дасти худ ба даст овардааст, нахӯрдааст.»\n— Бухорӣ';

  @override
  String get hadith19 =>
      '«Аллоҳ меҳрубон аст ва дар ҳама кор нармиро дӯст медорад.»\n— Бухорӣ ва Муслим';

  @override
  String historyDayCompleted(String completed, String total) {
    return '$completed аз $total иҷро шуд';
  }

  @override
  String get settingsSchedule => 'Ҷадвал';

  @override
  String get settingsAppearance => 'Намуди зоҳирӣ';

  @override
  String get settingsAboutTagline => 'Ҳамроҳи ҳаррӯзаи шумо дар дин';

  @override
  String get settingsRolloverSub => 'Рӯзи нав кай оғоз мешавад';

  @override
  String get settingsAbout => 'Дар бораи барнома';

  @override
  String get settingsVersion => 'Нусха';

  @override
  String get settingsDeveloper => 'Барномасоз';

  @override
  String get settingsSupport => 'Дастгирӣ';

  @override
  String get settingsRate => 'Барномаро баҳо диҳед';

  @override
  String get settingsContact => 'Бо мо тамос гиред';

  @override
  String get settingsReportBug => 'Дар бораи хато хабар диҳед';

  @override
  String get settingsRequestFeature => 'Пешниҳоди имконияти нав';

  @override
  String settingsSupportFallback(String email) {
    return 'Почта кушода нашуд. Лутфан ба $email нома нависед.';
  }

  @override
  String get settingsPrivacyPolicy => 'Сиёсати махфият';

  @override
  String get settingsPrivacyOpenFailed => 'Сиёсати махфият кушода нашуд.';

  @override
  String get hadith20 =>
      '«Ҳар кӣ рӯзаи Рамазонро аз рӯи имон ва ба умеди савоб бигирад, гуноҳони гузаштааш бахшида мешавад.»\n— Бухорӣ ва Муслим';

  @override
  String get hadith22 =>
      '«Дуои байни азон ва иқомат рад намешавад.»\n— Абу Довуд';

  @override
  String get hadith23 =>
      '«Ҳар кӣ барои Аллоҳ масҷиде бино кунад, Аллоҳ барояш дар ҷаннат хонае бино мекунад.»\n— Бухорӣ ва Муслим';

  @override
  String get hadith24 =>
      '«Беҳтарин сафҳои мардон сафҳои аввал ва беҳтарин сафҳои занон сафҳои охир аст.»\n— Муслим';

  @override
  String get hadith25 => '«Рӯза сипаре аз оташи дӯзах аст.»\n— Насоӣ';

  @override
  String get hadith26 =>
      '«Ҳар кӣ дувоздаҳ ракъат намози суннат бихонад, барояш дар ҷаннат хонае бино карда мешавад.»\n— Муслим';

  @override
  String get hadith27 =>
      '«Касе ки дар Қуръон моҳир аст, бо фариштагони гиромӣ хоҳад буд.»\n— Бухорӣ ва Муслим';

  @override
  String get hadith29 => '«Беҳтарин садақа об нӯшонидан аст.»\n— Аҳмад';

  @override
  String get hadith30 =>
      '«Ҳар кӣ аз мӯъмине мушкилеро бардорад, Аллоҳ дар рӯзи қиёмат аз ӯ мушкилеро бардорад.»\n— Муслим';

  @override
  String get hadith32 => '«Ҳаё ҷузъе аз имон аст.»\n— Бухорӣ ва Муслим';

  @override
  String get hadith34 =>
      '«Ҳар кӣ худро ба сабр водорад, Аллоҳ ба ӯ сабр ато мекунад.»\n— Бухорӣ ва Муслим';

  @override
  String get hadith36 =>
      '«Ҳеҷ яке аз шумо мӯъмини комил намешавад, то он чиро, ки барои худ дӯст медорад, барои бародараш низ дӯст надорад.»\n— Бухорӣ ва Муслим';

  @override
  String get hadith37 =>
      '«Гуруснаро сер кунед, беморро аёдат кунед ва асирро озод кунед.»\n— Бухорӣ';

  @override
  String get hadith38 =>
      '«Паҳлавон он нест, ки дар кушти ғолиб ояд; паҳлавон он аст, ки ҳангоми хашм худро нигоҳ дорад.»\n— Бухорӣ ва Муслим';

  @override
  String get hadith40 =>
      '«Пас аз ҳар намоз „Субҳоналлоҳ“, „Алҳамдулиллоҳ“ ва „Аллоҳу акбар“ гӯед, ҳар якеро сию се бор.»\n— Муслим';

  @override
  String get hadith41 => '«Беҳтарин зикр „Ло илоҳа иллаллоҳ“ аст.»\n— Тирмизӣ';

  @override
  String get hadith42 =>
      '«Ду неъмат ҳаст, ки бисёр одамон онҳоро зоеъ мекунанд: тандурустӣ ва вақти холӣ.»\n— Бухорӣ';

  @override
  String get hadith43 =>
      '«Панҷро пеш аз панҷ ғанимат донед: ҷавониро пеш аз пирӣ, тандурустиро пеш аз беморӣ, сарватро пеш аз камбағалӣ, вақти холиро пеш аз машғулӣ ва ҳаётро пеш аз марг.»\n— Ҳоким';

  @override
  String get hadith44 =>
      '«Ҳар кӣ сураи Ихлосро даҳ бор бихонад, Аллоҳ барояш дар ҷаннат хонае бино мекунад.»\n— Аҳмад';

  @override
  String get hadith45 =>
      '«Беҳтарин намоз пас аз намозҳои фарз намози шаб аст.»\n— Муслим';

  @override
  String get hadith46 =>
      '«Садақа гуноҳро хомӯш мекунад, чунон ки об оташро хомӯш мекунад.»\n— Тирмизӣ';

  @override
  String get hadith47 =>
      '«Пайвандкунандаи хешовандӣ он нест, ки некиро бо некӣ ҷавоб медиҳад; балки он аст, ки чун хешовандӣ бурида шавад, онро боз пайванд диҳад.»\n— Бухорӣ';

  @override
  String get hadith49 =>
      '«Ҳар кӣ таом хӯрад ва гӯяд: „Ҳамд Аллоҳро, ки ин таомро ба ман хӯронд ва бе ҳеҷ қувва ва тавоне аз ҷониби ман рӯзиам кард“, гуноҳони гузаштааш бахшида мешавад.»\n— Тирмизӣ';

  @override
  String get hadith53 =>
      '«Ҳеҷ кори некро ночиз машумор, ҳарчанд бародаратро бо чеҳраи кушод пешвоз гирӣ.»\n— Муслим';

  @override
  String get hadith54 =>
      '«Беҳтарини шумо касест, ки бо аҳли хонадонаш аз ҳама беҳтар аст.»\n— Тирмизӣ';

  @override
  String get hadith55 =>
      '«Ҳар кӣ ду ояти охири сураи Бақараро дар шаб бихонад, барояш кифоя мекунад.»\n— Бухорӣ ва Муслим';

  @override
  String get hadith56 =>
      '«Дунё баҳраест ва беҳтарин баҳраи он зани солеҳа аст.»\n— Муслим';

  @override
  String get hadith57 =>
      '«Се дуо рад намешавад: дуои рӯзадор, дуои ҳокими одил ва дуои мазлум.»\n— Тирмизӣ';

  @override
  String get hadith58 =>
      '«Ҳар кӣ як бор бар ман салавот фиристад, Аллоҳ бар ӯ даҳ бор раҳмат мефиристад.»\n— Муслим';

  @override
  String get hadith65 => '«Мӯъмин оинаи мӯъмин аст.»\n— Абу Довуд';

  @override
  String get hadith66 =>
      '«Ростӣ ба некӯкорӣ мебарад ва некӯкорӣ ба ҷаннат мебарад.»\n— Бухорӣ ва Муслим';

  @override
  String get hadith67 =>
      '«Омонатро ба касе, ки онро ба ту супурдааст, баргардон ва ба касе, ки ба ту хиёнат кардааст, хиёнат накун.»\n— Абу Довуд ва Тирмизӣ';

  @override
  String get hadith68 =>
      '«Ба мусулмон ҳеҷ хастагӣ, беморӣ, ғам, андӯҳ, озор ва ташвише намерасад, ҳатто хоре, ки ба пояш халад, магар он ки Аллоҳ ба сабаби он баъзе гуноҳонашро мебахшад.»\n— Бухорӣ ва Муслим';

  @override
  String get hadith69 =>
      '«Дуои мусулмон барои бародараш дар ғоибаш ҳамеша мустаҷоб мешавад.»\n— Муслим';

  @override
  String get hadith70 =>
      '«Ҳар кӣ се бор аз Аллоҳ ҷаннат бихоҳад, ҷаннат мегӯяд: Илоҳо, ӯро ба ҷаннат дарор.»\n— Тирмизӣ';

  @override
  String get hadith71 =>
      '«Афзалтарин рӯза пас аз Рамазон рӯзаи моҳи Аллоҳ — Муҳаррам аст.»\n— Муслим';

  @override
  String get hadith72 =>
      '«Ҳар кӣ ҳаҷ кунад ва сухани зишт нагӯяд ва гуноҳ накунад, чунон пок бармегардад, ки рӯзе модараш ӯро зода буд.»\n— Бухорӣ ва Муслим';

  @override
  String get hadith73 =>
      '«Умра то умраи дигар каффораи гуноҳони миёни онҳост.»\n— Бухорӣ ва Муслим';

  @override
  String get hadith74 =>
      '«Пеш аз он ки фитнаҳо мисли пораҳои шаби тира фаро расанд, ба корҳои нек шитоб кунед.»\n— Муслим';

  @override
  String get hadith75 =>
      '«Ду ракъати намози бомдод аз дунё ва ҳар он чӣ дар он аст беҳтар аст.»\n— Муслим';

  @override
  String get hadith77 =>
      '«Агар шумо ба Аллоҳ чунон ки сазовори Ӯст таваккул мекардед, Ӯ шуморо ҳамон гуна ризқ медод, ки паррандагонро ризқ медиҳад.»\n— Тирмизӣ';

  @override
  String get hadith78 =>
      '«Касе ки беморро аёдат кунад, то бозгаштанаш дар мевачинии ҷаннат аст.»\n— Муслим';

  @override
  String get hadith79 =>
      '«Саломро паҳн кунед, таом диҳед ва шаб, вақте ки мардум дар хобанд, намоз хонед — ба саломатӣ ба ҷаннат медароед.»\n— Тирмизӣ';

  @override
  String get hadith80 =>
      '«Касе ки шукри мардумро ба ҷо наоварад, шукри Аллоҳро ба ҷо наовардааст.»\n— Тирмизӣ';

  @override
  String get hadith81 =>
      '«Ҳасад ҷуз дар ду ҳолат раво нест: марде, ки Аллоҳ ба ӯ мол додааст ва ӯ онро дар роҳи ҳақ сарф мекунад, ва марде, ки Аллоҳ ба ӯ ҳикмат додааст ва ӯ бо он ҳукм мекунад ва онро таълим медиҳад.»\n— Бухорӣ ва Муслим';

  @override
  String get hadith82 =>
      '«Одам бар дини дӯсти худ аст, пас ҳар яке аз шумо бингарад, ки бо кӣ дӯстӣ мекунад.»\n— Абу Довуд ва Тирмизӣ';

  @override
  String get hadith85 =>
      '«Ҳар кӣ чизеро барои Аллоҳ тарк кунад, Аллоҳ ба ивази он ба ӯ чизи беҳтаре медиҳад.»\n— Аҳмад';

  @override
  String get hadith86 =>
      '«Касе ки айби мусулмонро бипӯшонад, Аллоҳ дар рӯзи қиёмат айби ӯро мепӯшонад.»\n— Бухорӣ ва Муслим';

  @override
  String get hadith87 =>
      '«Дар дунё чунон бош, ки гӯё ғарибӣ ё мусофир.»\n— Бухорӣ';

  @override
  String get hadith88 =>
      '«Касе ки ба шахси тангдаст осонӣ кунад, Аллоҳ дар дунё ва охират ба ӯ осонӣ мекунад.»\n— Муслим';

  @override
  String get hadith89 =>
      '«Подоши амалҳо ба ниятҳо вобаста аст.»\n— Бухорӣ ва Муслим';

  @override
  String get hadith90 =>
      '«Аз гумон бипарҳезед, зеро гумон дурӯғтарини суханҳост.»\n— Бухорӣ ва Муслим';

  @override
  String get hadith93 =>
      '«Якҷоя таом хӯред ва номи Аллоҳро ёд кунед, то дар он барои шумо баракат бошад.»\n— Абу Довуд';

  @override
  String get hadith94 =>
      '«Ҳеҷ қавме барои зикри Аллоҳ наменишинад, магар он ки фариштагон онҳоро фаро мегиранд, раҳмат онҳоро мепӯшонад ва оромиш бар онҳо нозил мешавад.»\n— Муслим';

  @override
  String get hadith95 =>
      '«Аллоҳ бандаро ба сабаби афв карданаш ҷуз дар иззат намеафзояд.»\n— Муслим';

  @override
  String get hadith96 =>
      '«Шутуратро бибанд, баъд ба Аллоҳ таваккул кун.»\n— Тирмизӣ';

  @override
  String get hadith97 =>
      '«Кори мӯъмин аҷиб аст — ҳама кораш барояш хайр аст.»\n— Муслим';

  @override
  String get hadith98 =>
      '«Мусулмон бародари мусулмон аст: ба ӯ ситам намекунад, ӯро бе мадад намегузорад ва ӯро хор намедорад.»\n— Муслим';

  @override
  String get delete => 'Нест кардан';

  @override
  String get remove => 'Хориҷ кардан';

  @override
  String get deleteAmalConfirmTitle => 'Аз пайгирӣ хориҷ карда шавад?';

  @override
  String deleteAmalConfirmBody(String title) {
    return '«$title» аз рӯйхати шумо пинҳон мешавад. Таърихи шумо нигоҳ дошта мешавад.';
  }

  @override
  String get genericError => 'Хатогие рух дод. Лутфан дубора кӯшиш кунед.';

  @override
  String get notificationChannelName => 'Ёдоварии амалҳо';

  @override
  String get notificationChannelDescription =>
      'Ёдовариҳои ҳаррӯза барои амалҳое, ки пайгирӣ мекунед.';

  @override
  String get invalidAmalId => 'Идентификатори амал нодуруст аст';

  @override
  String get tutorialSettingsRow => 'Тарзи истифодаи Муҳосиба';

  @override
  String get tutorialSkip => 'Гузаштан';

  @override
  String get tutorialNext => 'Баъдӣ';

  @override
  String get tutorialDone => 'Тайёр';

  @override
  String get tutorialTapTitle => 'Барои иҷро пахш кунед';

  @override
  String get tutorialTapBody =>
      'Бо як пахш амал барои имрӯз иҷрошуда қайд мешавад. Барои бекор кардан боз пахш кунед.';

  @override
  String get tutorialEditTitle => 'Барои таҳрир ду бор пахш кунед';

  @override
  String get tutorialEditBody =>
      'Варақаи таҳрир кушода мешавад — номро иваз кунед ё даврияти такрорро тағйир диҳед.';

  @override
  String get tutorialReorderTitle =>
      'Барои иваз кардани тартиб пахш карда нигоҳ доред';

  @override
  String get tutorialReorderBody =>
      'Сатрро пахш карда нигоҳ доред ва кашед. Тартиб захира мешавад.';

  @override
  String get tutorialRemoveTitle => 'Барои хориҷ кардан ба канор кашед';

  @override
  String get tutorialRemoveBody =>
      'Сатрро ба канор кашед, то онро барои имрӯз пинҳон кунед ё пайгириашро қатъ кунед.';

  @override
  String get tutorialCountTitle => 'Ҳисоби такрорҳо';

  @override
  String get tutorialCountBody =>
      'Барои амалҳое, ки ҳадафашон аз як зиёд аст, ҳар такрорро бо − ва + қайд кунед.';

  @override
  String get tutorialViewTitle => 'Гурӯҳбандӣ ё рӯйхати содда';

  @override
  String get tutorialViewBody =>
      'Байни гурӯҳбандӣ аз рӯи гурӯҳ ва як рӯйхати содда гузаред.';

  @override
  String get tutorialLibraryTitle => 'Амалҳои тайёрро илова кунед';

  @override
  String get tutorialLibraryBody =>
      'Китобхонаи амалҳоро аз рӯи гурӯҳ аз назар гузаронед, сипас барои илова ба рӯйхати имрӯз тугмаи «+»-ро пахш кунед.';

  @override
  String get tutorialChallengeLogTitle => 'Барои сабти имрӯз пахш кунед';

  @override
  String get tutorialChallengeLogBody =>
      'Бо як пахш имрӯз сабт мешавад. Дар мақсади ҳисобӣ ҳар пахш як қадам илова мекунад.';

  @override
  String get tutorialChallengeOpenTitle => 'Барои кушодан ду бор пахш кунед';

  @override
  String get tutorialChallengeOpenBody =>
      'Мақсад кушода мешавад — ҳар рӯзро бинед, рӯзи аз дастрафтаро ислоҳ кунед ё мақсадро нест кунед.';

  @override
  String get tutorialChallengeDeleteBody =>
      'Барои нест кардани мақсад кортро ба канор кашед.';

  @override
  String get tutorialChallengeAmountTitle => 'Сабти миқдори дақиқ';

  @override
  String get tutorialChallengeAmountBody =>
      'Бо − ва + қадам ба қадам тағйир диҳед ё ба рақам пахш карда, миқдори дақиқро ворид кунед.';

  @override
  String get challengeOpenDetailsAction => 'Кушодани тафсилоти мақсад';

  @override
  String get challengesActive => 'Ҷорӣ';

  @override
  String get challengesPast => 'Гузашта';

  @override
  String challengeJustFinished(int count, String title) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count мақсад тамом шуд — охиринаш $title',
      one: '$title тамом шуд',
    );
    return '$_temp0';
  }

  @override
  String get challengeSectionEnded => 'Тамом';

  @override
  String get challengesPastEmpty => 'Ҳанӯз чизе тамом нашудааст.';

  @override
  String get challengesEmptyTitle => 'Ҳанӯз мақсад нест';

  @override
  String get challengesEmptyBody =>
      'Барои худ мақсад гузоред — масалан, 20 ракъат дар 7 рӯз — ва онро дар ин ҷо пайгирӣ кунед.';

  @override
  String get editChallenge => 'Таҳрири мақсад';

  @override
  String get deleteChallenge => 'Нест кардани мақсад';

  @override
  String get deleteChallengeConfirm =>
      'Ин мақсад ва тамоми пешрафти сабтшудаи он нест карда шавад?';

  @override
  String get challengeShapeQuestion => 'Ин чӣ навъ мақсад аст?';

  @override
  String get challengeShapeTotal => 'Ҳадафи умумӣ';

  @override
  String get challengeShapeTotalBody =>
      '1000 салавот, 30 ҷузъ. Миқдорро сабт мекунед ва он ҷамъ мешавад.';

  @override
  String get challengeShapeStreak => 'Силсилаи ҳаррӯза';

  @override
  String get challengeShapeStreakBody =>
      'Таҳаҷҷуд, бомдод бо ҷамоат. Рӯзе як қайд, миқдор аҳамият надорад.';

  @override
  String get challengeTargetLabel => 'Ҳадаф';

  @override
  String get challengeTargetRequired => 'Ҳадафи аз сифр бештарро ворид кунед';

  @override
  String get challengeUnitLabel => 'Воҳид (ихтиёрӣ)';

  @override
  String get challengeUnitHint => 'ракъат, саҳифа, маротиба';

  @override
  String get challengeOneTapAdds => 'Ҳар пахш илова мекунад';

  @override
  String get challengeHowManyDays => 'Чанд рӯз?';

  @override
  String get challengeReachHowMuch => 'То чӣ миқдор?';

  @override
  String get challengeSpreadOver => 'Мӯҳлат';

  @override
  String get challengeSpreadEveryDay => 'Ҳар рӯз';

  @override
  String get challengeSpreadLonger => 'Мӯҳлати дарозтар';

  @override
  String get challengeByWhen => 'То кай?';

  @override
  String get challengeWindowDuration => 'Мӯҳлати муайян';

  @override
  String get challengeByDate => 'То санаи муайян';

  @override
  String challengePlanRange(String start, String end) {
    return '$start то $end';
  }

  @override
  String challengePlanExact(String start, String end) {
    return '$start то $end · рӯзе як, ҳар рӯз';
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
    return '$start то $end · $target аз $window рӯз — $slack рӯзро метавонед аз даст диҳед';
  }

  @override
  String challengePlanRate(String start, String end, String rate) {
    return '$start то $end · рӯзе тақрибан $rate';
  }

  @override
  String challengePlanOpen(String start) {
    return 'Оғоз: $start · бемуҳлат';
  }

  @override
  String challengeTooTight(
    String target,
    String window,
    num targetCount,
    num windowCount,
  ) {
    return '$target рӯз ба $window рӯз намеғунҷад — дар силсила ҳар рӯз танҳо як бор ҳисоб мешавад.';
  }

  @override
  String challengeDurationLabel(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count рӯз',
      one: 'як рӯз',
    );
    return '$_temp0';
  }

  @override
  String get challengeStartDate => 'Оғоз';

  @override
  String get challengeEndDate => 'Анҷом';

  @override
  String challengeProgressCount(String done, String target, String unit) {
    return '$done аз $target $unit';
  }

  @override
  String challengeProgressPlain(String done, String target) {
    return '$done аз $target';
  }

  @override
  String challengeProgressDays(String done, String target) {
    return '$done аз $target рӯз';
  }

  @override
  String challengeDaysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count рӯз мондааст',
      one: 'як рӯз мондааст',
    );
    return '$_temp0';
  }

  @override
  String get challengeNoDeadline => 'Бемуҳлат';

  @override
  String challengeOnTrack(String rate) {
    return 'Мувофиқи нақша · $rate/рӯз';
  }

  @override
  String challengeBehind(String rate) {
    return 'Ақиб · $rate/рӯз лозим';
  }

  @override
  String challengeLastDay(String remaining) {
    return 'Рӯзи охир · $remaining монд';
  }

  @override
  String get challengeReached => 'Ҳадаф ба даст омад';

  @override
  String get challengeCompleted => 'Иҷро шуд';

  @override
  String challengeEnded(String done, String target) {
    return 'Тамом · $done аз $target';
  }

  @override
  String get challengeExpiredTitle => 'Мӯҳлати мақсад гузашт';

  @override
  String challengeExpiredBody(String title, String done, String target) {
    return '$title: мӯҳлат гузашт, натиҷа $done аз $target.';
  }

  @override
  String get challengeExtend => 'Тамдид кардан';

  @override
  String get challengeRestart => 'Аз нав оғоз кардан';

  @override
  String get challengeArchive => 'Ба бойгонӣ';

  @override
  String get challengeDailyBreakdown => 'Сабти рӯзона';

  @override
  String challengeNudgeBody(String title, String rate) {
    return '$title: барои саривақт расидан рӯзе $rate лозим аст.';
  }

  @override
  String challengeLastDayBody(String title, String remaining) {
    return '$title: рӯзи охир — боз $remaining мондааст.';
  }

  @override
  String get challengeGroupGoal => 'Мақсад';

  @override
  String get challengeGroupShape => 'Навъ';

  @override
  String get challengeGroupPlan => 'Нақша';

  @override
  String get challengeGroupReminders => 'Ёдоварӣ';

  @override
  String get challengeStartFromTemplate => 'Аз намуна оғоз кунед';

  @override
  String get challengeTemplateBlank => 'Холӣ';

  @override
  String get challengePreview => 'Пешнамоиш';

  @override
  String get challengeTmplTahajjud => '40 шаб таҳаҷҷуд';

  @override
  String get challengeTmplSalawat => '1000 салавот';

  @override
  String get challengeTmplKhatm => 'Хатми Қуръон дар 30 рӯз';

  @override
  String get challengeTmplFajrJamaah => '30 рӯз бомдод бо ҷамоат';

  @override
  String get challengeTmplSadaqah => '30 рӯз садақа';

  @override
  String get listSeparator => ' · ';

  @override
  String get tierRafiq => 'Рафиқ';

  @override
  String get tierNasir => 'Носир';

  @override
  String get tierMuhsin => 'Муҳсин';

  @override
  String get tierAnsar => 'Ансор';

  @override
  String get tierRafiqMeaning => 'ҳамроҳ';

  @override
  String get tierNasirMeaning => 'мададгор';

  @override
  String get tierMuhsinMeaning => 'некӯкор';

  @override
  String get tierAnsarMeaning => 'ёвар';

  @override
  String get supportCardBody =>
      'Ройгон, бе реклама ва бе сабти ном. Метавонед рушди онро бо ҳадя дастгирӣ кунед — ба ҳар миқдор, ҳар вақт ки хоҳед.';

  @override
  String get supportCta => 'Муҳосибаро дастгирӣ кунед';

  @override
  String get supportAgain => 'Боз дастгирӣ кунед';

  @override
  String get supporterThanks =>
      'Худованд ба шумо подоши нек диҳад — иншоаллоҳ, Муҳосиба ройгон ва бе реклама мемонад.';

  @override
  String supporterSince(String tier, String month) {
    return '$tier аз $month';
  }

  @override
  String get supportPromptTitle => 'Муҳосибаро дастгирӣ кунед';

  @override
  String get supportPromptBody =>
      'Муҳосиба ройгон аст, бе реклама ва бе сабти ном. Метавонед рушди онро бо ҳадя дастгирӣ кунед — ба ҳар миқдор, ҳар вақт ки хоҳед. Ҳамаи имкониятҳо бе ин ҳам дастрасанд.';

  @override
  String get supportPromptNow => 'Ҳозир дастгирӣ кунед';

  @override
  String get supportPromptLater => 'Баъдтар ба ёдам оред';

  @override
  String get supportPromptNever => 'Дигар напурсед';

  @override
  String get tipSheetTitle => 'Муҳосибаро дастгирӣ кунед';

  @override
  String get tipSheetBody =>
      'Ҳар маблағеро, ки мехоҳед, ҳар чанд бор ки хоҳед, интихоб кунед. Ҳадяҳо барои нигоҳдории барнома сарф мешаванд — иншоаллоҳ, он ройгон ва бе реклама мемонад. Ба нишони сипос, дар Танзимот ҳамчун ҳомӣ қайд мешавед.';

  @override
  String tipSheetSupporterLine(String tier) {
    return '$tier — Худованд ба шумо подоши нек диҳад.';
  }

  @override
  String get tipSheetSupporterAgain =>
      'Ҳар вақт ки хоҳед, боз дастгирӣ карда метавонед.';

  @override
  String tipSheetStoreNote(String store) {
    return 'Пардохт тавассути $store анҷом мешавад — мо маълумоти пардохти шуморо ҳеҷ гоҳ намебинем.';
  }

  @override
  String get tipSheetOtherWays => 'Варианти мувофиқ наёфтед?';

  @override
  String get tipSheetWriteToUs => 'Ба мо нависед';

  @override
  String get supportEmailBody =>
      'Ассалому алайкум,\n\nМехоҳам рушди Муҳосибаро бевосита дастгирӣ кунам.\n\nКишвар:\nТарзи фиристодан:\nМаблағ (ихтиёрӣ):';

  @override
  String tipBusy(String store) {
    return '$store кушода мешавад…';
  }

  @override
  String get tipThanks =>
      'Худованд ба шумо подоши нек диҳад ва аз шумо қабул фармояд.';

  @override
  String get tipDone => 'Тайёр';

  @override
  String get tipFailed => 'Харид анҷом наёфт. Ҳеҷ маблағ гирифта нашуд.';

  @override
  String tipPending(String store) {
    return 'Ҳадяи шумо дар $store дар интизори тасдиқ аст — пас аз тасдиқ нишони шумо илова мешавад.';
  }

  @override
  String get tipUnavailable => 'Ҳоло дар ин дастгоҳ харид дастрас нест.';

  @override
  String get optionSetJamaa => 'Ҷамоат';

  @override
  String get optionJamaaAlone => 'Ба танҳоӣ';

  @override
  String get optionJamaaHome => 'Бо ҷамоат дар хона';

  @override
  String get optionJamaaMasjid => 'Бо ҷамоат дар масҷид';

  @override
  String get optionSetOnTime => 'Саривақтӣ';

  @override
  String get optionOnTimeOnTime => 'Саривақт';

  @override
  String get optionOnTimeLate => 'Дер';

  @override
  String get optionOnTimeQada => 'Қазо';

  @override
  String get optionSetQuranSession => 'Машғулият бо Қуръон';

  @override
  String get optionQuranRecited => 'Тиловат';

  @override
  String get optionQuranMemorised => 'Ҳифз';

  @override
  String get optionQuranMeaning => 'Бо маъно';

  @override
  String get optionQuranListened => 'Шунидан';

  @override
  String get optionSetSadaqahType => 'Навъи садақа';

  @override
  String get optionSadaqahMoney => 'Пул';

  @override
  String get optionSadaqahFood => 'Хӯрок';

  @override
  String get optionSadaqahTime => 'Вақт';

  @override
  String get optionSadaqahOther => 'Дигар';

  @override
  String get optionSetIntensity => 'Шиддат';

  @override
  String get optionIntensityLight => 'Сабук';

  @override
  String get optionIntensityModerate => 'Миёна';

  @override
  String get optionIntensityIntense => 'Шадид';

  @override
  String get optionSetNewTitle => 'Маҷмӯаи нави вариантҳо';

  @override
  String get optionSetEditTitle => 'Таҳрири маҷмӯаи вариантҳо';

  @override
  String get optionSetNameLabel => 'Номи маҷмӯа';

  @override
  String get optionSetNameHint => 'масалан, Ҷамоат';

  @override
  String get optionsLabel => 'Вариантҳо';

  @override
  String get optionAdd => 'Вариант илова кардан';

  @override
  String optionHint(int index) {
    return 'Варианти $index';
  }

  @override
  String optionsMaxReached(int max) {
    return 'Ҳадди аксар $max вариант.';
  }

  @override
  String get optionSetPreviewLabel => 'Пешнамоиш — сатри Имрӯз';

  @override
  String optionSetKeptForHistory(String labels) {
    return 'Барои таърих нигоҳ дошта шуд: $labels';
  }

  @override
  String get optionSetDelete => 'Маҷмӯаро нест кардан';

  @override
  String get optionSetDeleteConfirm =>
      'Амалҳое, ки ин маҷмӯаро истифода мебаранд, дигар вариантҳоро нишон намедиҳанд. Рӯзҳое, ки аллакай қайд шудаанд, интихоби худро нигоҳ медоранд.';

  @override
  String get optionSetNameRequired => 'Ба маҷмӯа ном диҳед';

  @override
  String get optionsMinRequired => 'Ҳадди ақал ду вариант илова кунед';

  @override
  String get optionSetNameTooLong => 'Номи маҷмӯа хеле дароз аст';

  @override
  String optionTooLong(int index) {
    return 'Варианти $index хеле дароз аст';
  }

  @override
  String get optionSetNone => 'Нест';

  @override
  String get optionSetNew => 'Маҷмӯаи нав';

  @override
  String get requireChoiceLabel => 'Интихоби ҳатмӣ';

  @override
  String get requireChoiceHelp =>
      'То вақте ки вариант интихоб нашавад, сатр қайд намешавад';

  @override
  String get requireChoicePickSetFirst => 'Аввал маҷмӯаро интихоб кунед';

  @override
  String get requireChoiceCountHelp =>
      'Амалҳои ҳисобшаванда бо − ва + иҷро мешаванд';

  @override
  String get optionPreviewCaption =>
      'Ҳар рӯз дар рӯйхати имрӯз яке аз инҳоро интихоб мекунед:';

  @override
  String optionsUsedOf(int used, int max) {
    return '$used аз $max вариант истифода шуд.';
  }

  @override
  String get choiceNeeded => 'Интихоб лозим';

  @override
  String optionSelected(String label) {
    return '$label, интихоб шудааст';
  }

  @override
  String optionNotSelected(String label) {
    return '$label, интихоб нашудааст';
  }

  @override
  String optionBreakdownTitle(String set) {
    return 'Тақсимоти вариантҳо — $set';
  }

  @override
  String optionBreakdownCaption(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ҳисса аз $count иҷро, ки интихобашон қайд шудааст',
      one: 'Ҳисса аз 1 иҷро, ки интихобаш қайд шудааст',
    );
    return '$_temp0';
  }

  @override
  String optionNoChoiceRecorded(int none, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other: '$total рӯзи иҷрошуда',
      one: '1 рӯзи иҷрошуда',
    );
    return 'Интихоб қайд нашудааст — $none аз $_temp0';
  }

  @override
  String get optionRemovedSuffix => 'хориҷшуда';

  @override
  String get optionAllAmals => 'Ҳама';

  @override
  String optionScopedCaption(String amal, int count) {
    return '$amal · $count қайд';
  }

  @override
  String get optionBreakdownSectionTitle => 'Тақсимоти вариантҳо';

  @override
  String optionBreakdownSwipeHint(int count) {
    return '$count маҷмӯа · кашед';
  }

  @override
  String get optionDetailEmpty =>
      'Барои ин маҷмӯа ҳанӯз интихобе қайд нашудааст.';

  @override
  String get optionDetailTrendHeading => 'Тағйирот бо мурури вақт';

  @override
  String optionDetailTrendReadout(String option, String from, String to) {
    return 'Ҳиссаи $option байни ҳафтаи аввал ва охир аз $from то $to тағйир ёфт.';
  }

  @override
  String get optionDetailByAmalHeading => 'Аз рӯи амал';

  @override
  String optionDetailByAmalReadout(
    String best,
    String bestShare,
    String worst,
    String worstShare,
  ) {
    return 'Баландтарин: $best ($bestShare); пасттарин: $worst ($worstShare).';
  }

  @override
  String get optionDetailRecordsHeading => 'Рекордҳо';

  @override
  String get optionDetailLongestRun => 'Дарозтарин силсила';

  @override
  String get optionDetailBestWeek => 'Беҳтарин ҳафта';

  @override
  String get optionDetailCurrentRun => 'Силсилаи ҷорӣ';

  @override
  String get optionDetailRecordsCaption =>
      'Дар асоси як соли охир ҳисоб шудааст; ба филтри давраи боло вобаста нест.';

  @override
  String get optionDetailRecentDaysHeading => 'Рӯзҳои охир';

  @override
  String optionDetailRecentDaysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count рӯзи охир',
      one: '1 рӯзи охир',
    );
    return '$_temp0';
  }

  @override
  String get amalFivePrayers => 'Намозҳои панҷгона';

  @override
  String get amalJumuah => 'Намози ҷумъа';

  @override
  String get amalWitr => 'Намози витр';

  @override
  String get amalQada => 'Намозҳои қазо';

  @override
  String get amalFajrSunnah => 'Суннати бомдод';

  @override
  String get amalDhuhrSunnah => 'Суннати пешин';

  @override
  String get amalAsrSunnah => 'Суннати аср';

  @override
  String get amalMaghribSunnah => 'Суннати шом';

  @override
  String get amalIshaSunnah => 'Суннати хуфтан';

  @override
  String get amalRawatib => 'Суннатҳои муаккада';

  @override
  String get amalSiwak => 'Мисвок';

  @override
  String get amalWuduSleep => 'Таҳорат пеш аз хоб';

  @override
  String get amalFridayGhusl => 'Ғусли ҷумъа';

  @override
  String get amalIshraq => 'Намози ишроқ';

  @override
  String get amalWuduPrayer => 'Ду ракъат баъди таҳорат';

  @override
  String get amalTahiyyah => 'Таҳиятул-масҷид';

  @override
  String get amalEarlyJumuah => 'Барвақт ба намози ҷумъа';

  @override
  String get amalAfterSalah => 'Зикрҳои баъди намоз';

  @override
  String get amalAfterFajr => 'Зикрҳои баъди бомдод';

  @override
  String get amalAfterDhuhr => 'Зикрҳои баъди пешин';

  @override
  String get amalAfterAsr => 'Зикрҳои баъди аср';

  @override
  String get amalAfterMaghrib => 'Зикрҳои баъди шом';

  @override
  String get amalAfterIsha => 'Зикрҳои баъди хуфтан';

  @override
  String get amalAyatKursi => 'Оятулкурсӣ';

  @override
  String get amalKursiFajr => 'Оятулкурсӣ баъди бомдод';

  @override
  String get amalKursiDhuhr => 'Оятулкурсӣ баъди пешин';

  @override
  String get amalKursiAsr => 'Оятулкурсӣ баъди аср';

  @override
  String get amalKursiMaghrib => 'Оятулкурсӣ баъди шом';

  @override
  String get amalKursiIsha => 'Оятулкурсӣ баъди хуфтан';

  @override
  String get amalSayyidIstighfar => 'Саййидул-истиғфор';

  @override
  String get amalSalawat => 'Салавот';

  @override
  String get amalSubhanallah => 'Субҳоналлоҳи ва биҳамдиҳӣ';

  @override
  String get amalTahlil => 'Ло илоҳа иллаллоҳ';

  @override
  String get amalBedtimeAdhkar => 'Зикрҳои пеш аз хоб';

  @override
  String get amalFridaySalawat => 'Салавоти рӯзи ҷумъа';

  @override
  String get amalHawqala => 'Ло ҳавла ва ло қуввата';

  @override
  String get amalTasbihFatimah => 'Тасбеҳи Фотима';

  @override
  String get amalWakingAdhkar => 'Зикрҳои баъди бедоршавӣ';

  @override
  String get amalDuaAdhan => 'Дуои баъди азон';

  @override
  String get amalDuaIqamah => 'Дуо дар миёни азон ва иқомат';

  @override
  String get amalDuaSujood => 'Дуо дар саҷда';

  @override
  String get amalDuaParents => 'Дуо барои падару модар';

  @override
  String get amalDuaOthers => 'Дуо барои дигарон';

  @override
  String get amalFridayHour => 'Дуо дар соати охири ҷумъа';

  @override
  String get amalLastThird => 'Дуо дар сеяки охири шаб';

  @override
  String get amalMulk => 'Сураи Мулк';

  @override
  String get amalBaqarahEnd => 'Ду ояти охири Бақара';

  @override
  String get amalSajdah => 'Сураи Саҷда';

  @override
  String get amalQuls => 'Ихлос, Фалақ ва Нос';

  @override
  String get amalYasin => 'Сураи Ёсин';

  @override
  String get amalWaqiah => 'Сураи Воқиа';

  @override
  String get amalHifz => 'Ҳифзи Қуръон';

  @override
  String get amalMurajaah => 'Такрори ҳифз';

  @override
  String get amalTafsir => 'Тафсир';

  @override
  String get amalListenQuran => 'Гӯш кардани Қуръон';

  @override
  String get amalTeachQuran => 'Таълими Қуръон';

  @override
  String get amalMonThu => 'Рӯзаи душанбе ва панҷшанбе';

  @override
  String get amalThreeDays => 'Се рӯз рӯза дар як моҳ';

  @override
  String get amalDailySadaqah => 'Садақаи ҳаррӯза';

  @override
  String get amalFeed => 'Таом додан ба касе';

  @override
  String get amalHelpNeed => 'Ёрӣ ба ниёзманд';

  @override
  String get amalOrphan => 'Сарпарастии ятим';

  @override
  String get amalGiveWater => 'Об додан ба ташнагон';

  @override
  String get amalLearnHadith => 'Омӯхтани як ҳадис';

  @override
  String get amalReadBook => 'Хондани китоби исломӣ';

  @override
  String get amalSeerah => 'Омӯзиши сира';

  @override
  String get amalClass => 'Иштирок дар дарс';

  @override
  String get amalArabic => 'Омӯзиши забони арабӣ';

  @override
  String get amalLearnDua => 'Омӯхтани дуои нав';

  @override
  String get amalShare => 'Мубодилаи омӯхтаҳо';

  @override
  String get amalFiqh => 'Омӯзиши фиқҳ';

  @override
  String get amalMuhasaba => 'Муҳосибаи шабона';

  @override
  String get amalSpeakGood => 'Ё нек гӯй, ё хомӯш бош';

  @override
  String get amalNoBackbiting => 'Парҳез аз ғайбат';

  @override
  String get amalAnger => 'Фурӯ бурдани хашм';

  @override
  String get amalGaze => 'Нигоҳ доштани чашм аз ҳаром';

  @override
  String get amalTruthful => 'Ростгӯӣ';

  @override
  String get amalSmile => 'Табассум';

  @override
  String get amalSalam => 'Паҳн кардани салом';

  @override
  String get amalForgive => 'Бахшидани дигарон';

  @override
  String get amalGratitude => 'Шукр';

  @override
  String get amalVisitSick => 'Аёдати бемор';

  @override
  String get amalNeighbours => 'Некӣ ба ҳамсоя';

  @override
  String get amalRemoveHarm => 'Дур кардани озор аз роҳ';

  @override
  String get amalParents => 'Некӣ ба падару модар';

  @override
  String get amalFamilyTies => 'Силаи раҳм';

  @override
  String get amalHelpHome => 'Ёрӣ дар корҳои хона';

  @override
  String get amalTeachChildren => 'Таълими дин ба фарзандон';

  @override
  String get amalSpouse => 'Муносибати нек бо ҳамсар';

  @override
  String get categoryDua => 'Дуо';

  @override
  String get categoryFasting => 'Рӯза';

  @override
  String get categoryKnowledge => 'Илм';

  @override
  String get categoryCharacter => 'Ахлоқ';

  @override
  String get categoryFamily => 'Оила';

  @override
  String get libraryTitle => 'Китобхонаи амалҳо';

  @override
  String get librarySearchHint => 'Ҷустуҷӯи амал';

  @override
  String get libraryAll => 'Ҳама';

  @override
  String get libraryAdded => 'Ба рӯйхати имрӯз илова шуд';

  @override
  String libraryAddedShowsOn(String days) {
    return 'Илова шуд · рӯзҳои намоиш: $days';
  }

  @override
  String libraryNoMatch(String query) {
    return 'Барои «$query» амал ёфт нашуд';
  }

  @override
  String libraryCreateNamed(String query) {
    return 'Сохтани «$query»';
  }

  @override
  String get libraryPickBanner => 'Аз Китобхонаи амалҳо интихоб кунед';

  @override
  String libraryPickBannerSubtitle(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countText амали тайёр',
      one: '$countText амали тайёр',
    );
    return '$_temp0';
  }

  @override
  String get libraryFilledIn => 'Аз Китобхонаи амалҳо пур карда шуд';

  @override
  String get libraryChange => 'Иваз кардан';

  @override
  String get libraryEditAction => 'Таҳрир';

  @override
  String libraryWeeklyAny(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ҳафтае $countText рӯз',
      one: 'Ҳафтае як бор',
    );
    return '$_temp0';
  }

  @override
  String libraryMonthlyAny(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Моҳе $countText рӯз',
      one: 'Моҳе як бор',
    );
    return '$_temp0';
  }

  @override
  String libraryTimes(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countText бор',
    );
    return '$_temp0';
  }

  @override
  String get libraryAnyAmount => 'Ҳар миқдор';

  @override
  String libraryAddTooltip(String title) {
    return 'Илова кардан: $title';
  }

  @override
  String get libraryOnList => 'Дар рӯйхати шумо ҳаст';

  @override
  String get todayEmptyBrowse => 'Китобхонаи амалҳоро кушодан';
}
