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
  String get appTitle => 'муҳосиба';

  @override
  String get tabToday => 'Имруз';

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
      'Дар ин ҷо ҳанӯз чизе нест. Амалҳое, ки аз пайгирӣ хориҷ мекунед, дар ин ҷо мемонанд, то шумо онҳоро баргардонед.';

  @override
  String archivedStoppedOn(String date) {
    return 'Дар $date хориҷ карда шуд';
  }

  @override
  String get archivedRestore => 'Баргардонидан';

  @override
  String archivedRestored(String title) {
    return '\"$title\" ба рӯйхати шумо баргардонида шуд.';
  }

  @override
  String get newChallenge => 'Мақсади нав';

  @override
  String get newAmal => 'Амали нав';

  @override
  String get editAmal => 'Тагйири амал';

  @override
  String get newAmalTitle => 'Амали нав';

  @override
  String get save => 'Захира кардан';

  @override
  String get cancel => 'Бекор кардан';

  @override
  String get clear => 'Тоза кардан';

  @override
  String get titleLabel => 'Сарлавха';

  @override
  String get titleRequired => 'Сарлавха лозим аст';

  @override
  String get titleTooLong => 'Сарлавха хеле дароз аст';

  @override
  String get frequencyLabel => 'Басомад';

  @override
  String get frequencyDaily => 'Харруза';

  @override
  String get frequencyWeekly => 'Хафтаина';

  @override
  String get frequencyMonthly => 'Мохона';

  @override
  String get categoryLabel => 'Гурух';

  @override
  String get categoryOther => 'Дигар';

  @override
  String get categorySalah => 'Намоз';

  @override
  String get categoryDhikr => 'Зикр';

  @override
  String get categoryQuran => 'Куръон';

  @override
  String get categoryCharity => 'Садака';

  @override
  String get categorySunnah => 'Суннат';

  @override
  String get timesPerPeriod => 'Маротиба дар давра';

  @override
  String get custom => 'Дилхох';

  @override
  String get customTargetHint => 'мас. 50';

  @override
  String get dayOfWeek => 'Рузи хафта';

  @override
  String get anyDay => 'Хар руз';

  @override
  String get anyDayHint =>
      'Хар руз (имруз намоиш дода мешавад, фардо пинхон мешавад)';

  @override
  String onlyDayHint(String day) {
    return 'Танхо $day';
  }

  @override
  String get dateOfMonth => 'Санаи мох';

  @override
  String get repeatMode => 'Такрор';

  @override
  String get onSetDays => 'Дар рӯзҳои муайян';

  @override
  String get onSetDates => 'Дар санаҳои муайян';

  @override
  String get anyDayMode => 'Ҳар рӯз';

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
      other: '$count рӯз',
      one: 'як рӯз',
    );
    return 'Дар як ҳафта дар ҳар $_temp0 такрор мешавад';
  }

  @override
  String previewMonthlyDates(int count, String dates) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Дар рӯзҳои $dates-и ҳар моҳ такрор мешавад',
      one: 'Дар рӯзи $dates-и ҳар моҳ такрор мешавад',
    );
    return '$_temp0';
  }

  @override
  String previewMonthlyAny(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count рӯз',
      one: 'як рӯз',
    );
    return 'Дар як моҳ дар ҳар $_temp0 такрор мешавад';
  }

  @override
  String get anyDate => 'Хар сана';

  @override
  String get anyDateHint =>
      'Хар сана (имруз намоиш дода мешавад, фардо пинхон мешавад)';

  @override
  String onlyDateHint(String date) {
    return 'Танхо дар $date';
  }

  @override
  String get startPreChecked => 'Аз аввал кушодашуда огоз шавад';

  @override
  String get startPreCheckedSubtitle =>
      'Вакте давраи нав огоз мешавад, ин амал то даме ки шумо онро бардоред, ичрошуда хисоб мешавад.';

  @override
  String get reminder => 'Ёдоварй';

  @override
  String get reminderNone => 'Нест';

  @override
  String reminderTime(String time) {
    return 'Ёдоварй: $time';
  }

  @override
  String get reminderPermissionWarning =>
      'Ёдоварй захира шуд, вале огохиномахо ичозат нест. Барои гирифтани огохинома онхоро дар танзимоти система фаъол кунед.';

  @override
  String get settingsReminders => 'Ёдоварй';

  @override
  String get dailyReminder => 'Ёдоварии харруза';

  @override
  String get dailyReminderSubtitle =>
      'Ёдоварии мулоим барои пайгирии амалхои шумо';

  @override
  String get dailyReminderTimeLabel => 'Вакти ёдоварй';

  @override
  String get dailyReminderBody =>
      'Барои пайгирии амали имруза каме вакт чудо кунед.';

  @override
  String get groupByCategory => 'Аз руи гурух';

  @override
  String get flatList => 'Руйхати содда';

  @override
  String errorGeneric(String error) {
    return 'Хато: $error';
  }

  @override
  String get todayEmptyHint =>
      'Барои илова кардани аввалин амалатон + -ро пахш кунед.';

  @override
  String get noteLabel => 'Ёддошт';

  @override
  String get noteHint => 'мас. Дар масчид намоз хондам';

  @override
  String get completed => 'ичро шуд';

  @override
  String get notCompleted => 'ичро нашуд';

  @override
  String progressOf(String progress, String target) {
    return '$progress аз $target ичро шуд';
  }

  @override
  String get removeFromToday => 'Аз имруз хорич кардан';

  @override
  String get removeFromTodaySubtitle =>
      'Танхо барои имруз пинхон мешавад. Фардо бармегардад.';

  @override
  String get removeFromTracking => 'Аз пайгирй хорич кардан';

  @override
  String get removeFromTrackingSubtitle =>
      'Аз руйхати шумо хамешагй хорич мешавад. Таърих нигох дошта мешавад.';

  @override
  String get chooseIcon => 'Тасвирчаро интихоб кунед';

  @override
  String get iconNone => 'Нест';

  @override
  String get recentlyUsed => 'Охирин истифодашуда';

  @override
  String get emojiSectionGeneral => 'Умумй';

  @override
  String get categoryNameHint => 'Ном';

  @override
  String get categoryNew => '+ Нав';

  @override
  String get categoryNewSheetTitle => 'Категорияи нав';

  @override
  String get categoryEditSheetTitle => 'Таҳрири категория';

  @override
  String get addAmal => 'Илова кардани амал';

  @override
  String get customAmal => 'Амали дилхох';

  @override
  String get amalTasbih => 'Тасбех 33x';

  @override
  String get amalIstighfar => 'Истигфор 100x';

  @override
  String get amalSurahKahf => 'Сураи Кахф';

  @override
  String get amalSadaqah => 'Садака';

  @override
  String get amalTahajjud => 'Тахачуд';

  @override
  String get amalDuha => 'Намози Зухо';

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
  String get sectionDayBoundary => 'Хадди руз';

  @override
  String get rolloverHour => 'Соати гузариш';

  @override
  String get rolloverAtMidnight => 'Имруз дар нисфишаб тамом мешавад.';

  @override
  String rolloverSubtitle(String time) {
    return 'Амалхои дирузй то $time тагйир дода мешаванд.';
  }

  @override
  String get pickRolloverHour => 'Соати гузариши рузро интихоб кунед';

  @override
  String get sectionWeekMonth => 'Хафта ва мох';

  @override
  String get startOfWeek => 'Оғози хафта';

  @override
  String get startOfMonth => 'Оғози мох';

  @override
  String get startOfMonthClamped =>
      'Рузхои баъд аз 28-ум дар моххои кутох ба охирин рузи мох мувофик карда мешаванд.';

  @override
  String get sectionAppearance => 'Намуд';

  @override
  String get theme => 'Мавзуъ';

  @override
  String get themeSystem => 'Системавй';

  @override
  String get themeLight => 'Равшан';

  @override
  String get themeDark => 'Торик';

  @override
  String get sectionLanguage => 'Забон';

  @override
  String get language => 'Забон';

  @override
  String get systemDefault => 'Пешфарзи система';

  @override
  String get aboutTitle => 'Muhasaba';

  @override
  String get aboutSubtitle =>
      'Журнали шахсии масъулияти динй. Хамаи маълумот дар ин дастгох мемонад.';

  @override
  String get statsTitle => 'Омор';

  @override
  String statsLoadError(String error) {
    return 'Оморро бор кардан нашуд:\n$error';
  }

  @override
  String get perAmal => 'Барои хар амал';

  @override
  String get thisWeek => 'Ин хафта';

  @override
  String get thisMonth => 'Ин мох';

  @override
  String get totalCompletions => 'хамагй ичро';

  @override
  String get streakCurrent => 'Хозира';

  @override
  String get streakLongest => 'Дарозтарин';

  @override
  String get ratioWeek => 'Хафта';

  @override
  String get ratioMonth => 'Мох';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'руз',
      one: 'руз',
    );
    return '$_temp0';
  }

  @override
  String streakWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'хафта',
      one: 'хафта',
    );
    return '$_temp0';
  }

  @override
  String streakMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'мох',
      one: 'мох',
    );
    return '$_temp0';
  }

  @override
  String get frequencyBadgeDaily => 'харруза';

  @override
  String get frequencyBadgeWeekly => 'хафтаина';

  @override
  String get frequencyBadgeMonthly => 'мохона';

  @override
  String get statsEmpty =>
      'Хануз амал нест. Барои огози пайгирй дар сахифаи Имруз илова кунед.';

  @override
  String get statsToday => 'Имруз';

  @override
  String get statsThisWeek => 'Ин хафта';

  @override
  String get statsThisMonth => 'Ин мох';

  @override
  String get statsAllTime => 'Хамаи вакт';

  @override
  String get statsCustomRange => 'Давраи дилхох';

  @override
  String get statsAllCategories => 'Хама';

  @override
  String get statsAllAmals => 'Хама';

  @override
  String get statsCompleted => 'Ичро шуд';

  @override
  String get statsExpected => 'Интизоршаванда';

  @override
  String get statsVsPrevious => 'Дар муколиса бо пешина';

  @override
  String get statsByCategory => 'Аз руи гурух';

  @override
  String get statsPerAmal => 'Барои хар амал';

  @override
  String get statsCurrentStreak => 'Силсилаи хозира';

  @override
  String get statsBestStreak => 'Бехтарин силсила';

  @override
  String get statsTotalDays => 'Хамагй рузхо';

  @override
  String get statsConsistency => 'Устуворй';

  @override
  String get statsLast5Weeks => '5 хафтаи охир';

  @override
  String get statsDailyBreakdown => 'Тафсилоти рузона';

  @override
  String get statsCompletionRate => 'Дарачаи ичро';

  @override
  String get statsFilterTime => 'Вакт';

  @override
  String get statsFilterCategory => 'Гурух';

  @override
  String get statsFilterAmal => 'Амал';

  @override
  String get statsStreaks => 'Силсилахо';

  @override
  String get statsSelectDateRange => 'Давраи санаро интихоб кунед';

  @override
  String get historyTitle => 'Таърих';

  @override
  String get jumpToDate => 'Ба сана гузаштан';

  @override
  String historyEmptyDay(String date) {
    return 'Дар $date амал пайгирй нашудааст';
  }

  @override
  String get streakUnitD => 'р';

  @override
  String get streakUnitW => 'х';

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
  String get fridayShort => 'Чм';

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
  String get thursdayFull => 'Панчшанбе';

  @override
  String get fridayFull => 'Чумъа';

  @override
  String get saturdayFull => 'Шанбе';

  @override
  String get sundayFull => 'Якшанбе';

  @override
  String get hadith0 =>
      '\"Дӯсттарин амалҳо назди Аллоҳ онҳоеанд, ки доимӣ бошанд, ҳатто агар кам бошанд.\"\n— Бухорӣ ва Муслим';

  @override
  String get hadith2 =>
      '\"Вақте фарзанди Одам мемирад, амалҳояш қатъ мешаванд, магар се чиз: садақаи ҷория, илми судманд ё фарзанди солеҳ, ки барояш дуо мекунад.\"\n— Муслим';

  @override
  String get hadith3 =>
      '\"Ҳар кӣ ду намози хунук (Субҳ ва Аср)-ро бихонад, ба Ҷаннат дохил мешавад.\"\n— Бухорӣ';

  @override
  String get hadith4 =>
      '\"Аллоҳ ба намуди зоҳирӣ ва молу мулки шумо нигоҳ намекунад, балки ба дилҳо ва амалҳои шумо нигоҳ мекунад.\"\n— Муслим';

  @override
  String get hadith6 =>
      '\"Осон кунед ва душвор накунед; хушхабар диҳед ва мардумро наронед.\"\n— Бухорӣ';

  @override
  String get hadith7 =>
      '\"Ҳар кӣ роҳи илмро пеш гирад, Аллоҳ барояш роҳи Ҷаннатро осон мекунад.\"\n— Муслим';

  @override
  String get hadith8 => '\"Садақа молро кам намекунад.\"\n— Муслим';

  @override
  String get hadith9 =>
      '\"Мӯъмини қавӣ беҳтар ва дӯсттар назди Аллоҳ аст аз мӯъмини заиф, ҳол он ки дар ҳар ду хайр ҳаст.\"\n— Муслим';

  @override
  String get hadith10 =>
      '\"Ҳар касе ки дар як рӯз сад бор \'Субҳоналлоҳи ва биҳамдиҳи\' бигӯяд, гуноҳонаш бахшида мешавад, ҳарчанд мисли кафи баҳр бошад.\"\n— Бухорӣ ва Муслим';

  @override
  String get hadith12 =>
      '\"Ҳар касе ки пас аз ҳар намози фарз Оятулкурсӣ бихонад, ба ҷаннат даромаданашро танҳо марг монеъ мешавад.\"\n— Насоӣ';

  @override
  String get hadith13 => '\"Сухани нек садақа аст.\"\n— Бухорӣ ва Муслим';

  @override
  String get hadith14 =>
      '\"Ҳар касе ки ба Аллоҳ ва рӯзи охират имон дорад, сухани нек бигӯяд ё хомӯш бошад.\"\n— Бухорӣ ва Муслим';

  @override
  String get hadith15 =>
      '\"Касе ки ба бевазан ва мискин ғамхорӣ кунад, монанди муҷоҳид дар роҳи Аллоҳ аст.\"\n— Бухорӣ ва Муслим';

  @override
  String get hadith16 => '\"Табассуми ту ба бародарат садақа аст.\"\n— Тирмизӣ';

  @override
  String get hadith17 =>
      '\"Беҳтарини шумо касест, ки Қуръонро меомӯзад ва меомӯзонад.\"\n— Бухорӣ';

  @override
  String get hadith18 =>
      '\"Ҳеҷ кас хӯроке беҳтар аз меҳнати дасти худ нахӯрдааст.\"\n— Бухорӣ';

  @override
  String get hadith19 =>
      '\"Аллоҳ мулоим аст ва дар ҳама корҳо мулоиматро дӯст медорад.\"\n— Бухорӣ ва Муслим';

  @override
  String historyDayCompleted(String completed, String total) {
    return '$completed аз $total иҷро шуд';
  }

  @override
  String get settingsSchedule => 'Ҷадвал';

  @override
  String get settingsAppearance => 'Намуди зоҳирӣ';

  @override
  String get settingsAboutTagline => 'Ҳамроҳи рӯзонаи динии шумо';

  @override
  String get settingsRolloverSub => 'Рӯз кай аз нав оғоз мешавад';

  @override
  String get settingsAbout => 'Дар бора';

  @override
  String get settingsVersion => 'Версия';

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
  String get settingsRequestFeature => 'Хусусият дархост кунед';

  @override
  String settingsSupportFallback(String email) {
    return 'Почтаро кушода натавонист. Илтимос, ба $email нома фиристед.';
  }

  @override
  String get settingsPrivacyPolicy => 'Сиёсати махфият';

  @override
  String get settingsPrivacyOpenFailed => 'Сиёсати махфият кушода нашуд.';

  @override
  String get hadith20 =>
      '\"Ҳар касе ки Рамазонро бо имон ва умеди савоб рӯза дорад, гуноҳони гузаштааш бахшида мешавад.\"\n— Бухорӣ ва Муслим';

  @override
  String get hadith22 =>
      '\"Дуои байни азон ва иқомат рад намешавад.\"\n— Абу Довуд';

  @override
  String get hadith23 =>
      '\"Ҳар касе ки барои Аллоҳ масҷид созад, Аллоҳ барояш дар ҷаннат хона месозад.\"\n— Бухорӣ ва Муслим';

  @override
  String get hadith24 =>
      '\"Беҳтарин сафҳо барои мардон — сафҳои аввал ва беҳтарин сафҳо барои занон — сафҳои охиранд.\"\n— Муслим';

  @override
  String get hadith25 => '\"Рӯза сипари дӯзах аст.\"\n— Насоӣ';

  @override
  String get hadith26 =>
      '\"Ҳар касе ки дувоздаҳ ракъат намози суннат бихонад, барояш дар ҷаннат хона сохта мешавад.\"\n— Муслим';

  @override
  String get hadith27 =>
      '\"Касе ки дар Қуръон моҳир аст, бо фариштагони бузургвор ҳамроҳ аст.\"\n— Бухорӣ ва Муслим';

  @override
  String get hadith29 => '\"Беҳтарин садақа — об додан аст.\"\n— Аҳмад';

  @override
  String get hadith30 =>
      '\"Ҳар касе ки аз мӯъмин як мушкилиро бардорад, Аллоҳ дар рӯзи Қиёмат аз ӯ як мушкилиро бардорад.\"\n— Муслим';

  @override
  String get hadith32 => '\"Ҳаё қисме аз имон аст.\"\n— Бухорӣ ва Муслим';

  @override
  String get hadith34 =>
      '\"Ҳар касе ки сабр кунад, Аллоҳ ба ӯ сабр медиҳад.\"\n— Бухорӣ ва Муслим';

  @override
  String get hadith36 =>
      '\"Ҳеҷ яке аз шумо то вақте ки барои бародараш чизеро, ки барои худ мехоҳад, нахоҳад — мӯъмини ҳақиқӣ нест.\"\n— Бухорӣ ва Муслим';

  @override
  String get hadith37 =>
      '\"Гуруснагонро сер кунед, бемороно зиёрат кунед ва асироро озод кунед.\"\n— Бухорӣ';

  @override
  String get hadith38 =>
      '\"Қавитарин одам на он аст, ки дар кураш ғолиб меояд, балки он аст, ки дар ғазаб худро идора мекунад.\"\n— Бухорӣ ва Муслим';

  @override
  String get hadith40 =>
      '\"Пас аз ҳар намоз сию се бор \'Субҳоналлоҳ\', \'Алҳамдулиллоҳ\' ва \'Аллоҳу Акбар\' бигӯед.\"\n— Муслим';

  @override
  String get hadith41 => '\"Беҳтарин зикр — Ло илоҳа иллаллоҳ.\"\n— Тирмизӣ';

  @override
  String get hadith42 =>
      '\"Ду неъмат ҳаст, ки бисёр одамон онҳоро зоеъ мекунанд: тандурустӣ ва вақти холӣ.\"\n— Бухорӣ';

  @override
  String get hadith43 =>
      '\"Панҷро пеш аз панҷ ғанимат донед: ҷавониро пеш аз пирӣ, тандурустиро пеш аз беморӣ, сарватро пеш аз камбағалӣ, вақти холиро пеш аз машғулӣ ва ҳаётро пеш аз марг.\"\n— Ҳоким';

  @override
  String get hadith44 =>
      '\"Ҳар касе ки Сураи Ихлосро даҳ бор бихонад, Аллоҳ барояш дар ҷаннат хона месозад.\"\n— Аҳмад';

  @override
  String get hadith45 =>
      '\"Пас аз намозҳои фарз, беҳтарин намоз — намози шаб аст.\"\n— Муслим';

  @override
  String get hadith46 =>
      '\"Садақа гуноҳонро ҳамчунон хомӯш мекунад, ки об оташро.\"\n— Тирмизӣ';

  @override
  String get hadith47 =>
      '\"Силаи раҳмкунанда на он аст, ки ҷавоб медиҳад, балки он аст, ки агар робита бурида шавад ҳам онро давом медиҳад.\"\n— Бухорӣ';

  @override
  String get hadith49 =>
      '\"Ҳар касе ки хӯрок хӯрда бигӯяд: \'Ҳамд ба Аллоҳ ки маро ин хӯрок дод ва бидуни ягон қувва ва тавони ман онро насибам кард,\' гуноҳони гузаштааш бахшида мешавад.\"\n— Тирмизӣ';

  @override
  String get hadith53 =>
      '\"Ҳеч кори нек ро хурд нашуморед, ҳатто агар бародаратонро бо рӯи кушода мулоқот кунед.\"\n— Муслим';

  @override
  String get hadith54 =>
      '\"Беҳтарини шумо касе аст, ки бо оилааш беҳтар рафтор кунад.\"\n— Тирмизӣ';

  @override
  String get hadith55 =>
      '\"Ҳар кас шабона ду ояти охири сураи Бақара бихонад, ин барояш кофист.\"\n— Бухорӣ ва Муслим';

  @override
  String get hadith56 =>
      '\"Дунё як баҳра аст ва беҳтарин баҳрааш зани солиҳа аст.\"\n— Муслим';

  @override
  String get hadith57 =>
      '\"Се дуо рад намешавад: дуои рӯзадор, дуои ҳокими одил ва дуои мазлум.\"\n— Тирмизӣ';

  @override
  String get hadith58 =>
      '\"Ҳар кас як бор бар ман салавот бифиристад, Аллоҳ даҳ бор бар ӯ раҳмат мефиристад.\"\n— Муслим';

  @override
  String get hadith65 => '\"Мӯъмин оинаи мӯъмин аст.\"\n— Абу Довуд';

  @override
  String get hadith66 =>
      '\"Ростгӯӣ ба некӣ мебарад ва некӣ ба Ҷаннат мебарад.\"\n— Бухорӣ ва Муслим';

  @override
  String get hadith67 =>
      '\"Омонатро ба соҳибаш баргардон ва ба касе ки ба ту хиёнат кардааст, хиёнат накун.\"\n— Абу Довуд ва Тирмизӣ';

  @override
  String get hadith68 =>
      '\"Ба мусулмон ҳеч хастагӣ, касалӣ, ғам, андӯҳ, озор ё ташвише намерасад, ҳатто хоре ки ба ӯ фурӯ равад, магар Аллоҳ ба ивази он баъзе гуноҳонашро мебахшад.\"\n— Бухорӣ ва Муслим';

  @override
  String get hadith69 =>
      '\"Дуои мусулмон барои бародараш дар ғоибона ҳамеша мустаҷоб аст.\"\n— Муслим';

  @override
  String get hadith70 =>
      '\"Ҳар кас аз Аллоҳ се бор Ҷаннат бихоҳад, Ҷаннат мегӯяд: Илоҳӣ, ӯро ба Ҷаннат дохил кун.\"\n— Тирмизӣ';

  @override
  String get hadith71 =>
      '\"Фозилтарин рӯза баъд аз Рамазон рӯзаи моҳи Аллоҳ Муҳаррам аст.\"\n— Муслим';

  @override
  String get hadith72 =>
      '\"Ҳар кас ҳаҷ кунад ва сухани зишт нагӯяд ва гуноҳ накунад, мисли рӯзе бармегардад, ки модараш ӯро таваллуд кардааст.\"\n— Бухорӣ ва Муслим';

  @override
  String get hadith73 =>
      '\"Як умра то умраи дигар каффораи гуноҳони байни онҳост.\"\n— Бухорӣ ва Муслим';

  @override
  String get hadith74 =>
      '\"Пеш аз он ки фитнаҳо монанди тикаҳои шаби торик биёянд, ба корҳои нек шитоб кунед.\"\n— Муслим';

  @override
  String get hadith75 =>
      '\"Ду ракъати намози бомдод аз дунё ва ҳар он чӣ дар он аст беҳтар аст.\"\n— Муслим';

  @override
  String get hadith77 =>
      '\"Агар шумо ба Худо чунон ки шоиста аст таваккул мекардед, Ӯ шуморо ҳамчун паррандагон ризқ медод.\"\n— Тирмизӣ';

  @override
  String get hadith78 =>
      '\"Касе ки беморро аёдат кунад, то баргардад дар боғи ҷаннат аст.\"\n— Муслим';

  @override
  String get hadith79 =>
      '\"Саломро паҳн кунед, таом диҳед ва шабона намоз хонед вақте ки мардум хобанд — бо оромӣ ба ҷаннат ворид мешавед.\"\n— Тирмизӣ';

  @override
  String get hadith80 =>
      '\"Ҳар кас ки ба мардум шукргузор нест, ба Аллоҳ низ шукргузор нест.\"\n— Тирмизӣ';

  @override
  String get hadith81 =>
      '\"Ҳасад танҳо дар ду ҳолат раво аст: марде ки Худо ба ӯ мол дода ва ӯ онро дар роҳи ҳақ сарф мекунад, ва марде ки Худо ба ӯ ҳикмат дода ва ӯ бо он ҳукм ва таълим медиҳад.\"\n— Бухорӣ ва Муслим';

  @override
  String get hadith82 =>
      '\"Инсон бар дини дӯсташ аст, пас ҳар яке аз шумо бубинад ки бо кӣ дӯстӣ мекунад.\"\n— Абу Довуд ва Тирмизӣ';

  @override
  String get hadith85 =>
      '\"Ҳар касе ки барои Аллоҳ чизеро тарк кунад, Аллоҳ ба ивази он чизи беҳтаре медиҳад.\"\n— Аҳмад';

  @override
  String get hadith86 =>
      '\"Касе ки айби мусулмонро пӯшонад, Худо дар Рӯзи Қиёмат айбашро мепӯшонад.\"\n— Бухорӣ ва Муслим';

  @override
  String get hadith87 => '\"Дар дунё ҳамчун бегона ё мусофир бош.\"\n— Бухорӣ';

  @override
  String get hadith88 =>
      '\"Касе ки барои шахси дар мушкилӣ осонӣ кунад, Худо дар дунё ва охират барояш осонӣ мекунад.\"\n— Муслим';

  @override
  String get hadith89 => '\"Амалҳо ба ниятҳо вобастаанд.\"\n— Бухорӣ ва Муслим';

  @override
  String get hadith90 =>
      '\"Аз бадгумонӣ дурӣ ҷӯед, зеро бадгумонӣ дурӯғтарин сухан аст.\"\n— Бухорӣ ва Муслим';

  @override
  String get hadith93 =>
      '\"Якҷоя хӯрок хӯред ва номи Худоро гӯед, барои шумо баракат хоҳад шуд.\"\n— Абу Довуд';

  @override
  String get hadith94 =>
      '\"Ҳеҷ қавме нест, ки барои зикри Аллоҳ нишинанд, магар он ки фариштагон онҳоро иҳота мекунанд, раҳмат онҳоро мепӯшонад ва оромиш бар онҳо нозил мешавад.\"\n— Муслим';

  @override
  String get hadith95 =>
      '\"Аллоҳ бо бахшоиш бандаашро ҷуз ба иззат зиёд намекунад.\"\n— Муслим';

  @override
  String get hadith96 =>
      '\"Шутуратро бибанд, сипас ба Худо таваккул кун.\"\n— Тирмизӣ';

  @override
  String get hadith97 =>
      '\"Кори мӯъмин аҷиб аст — ҳама чиз барояш нек аст.\"\n— Муслим';

  @override
  String get hadith98 =>
      '\"Мусулмон бародари мусулмон аст: ба ӯ ситам намекунад, тарк намекунад ва таҳқир намекунад.\"\n— Муслим';

  @override
  String get delete => 'Ҳазф';

  @override
  String get remove => 'Хориҷ кардан';

  @override
  String get deleteAmalConfirmTitle => 'Аз назорат хориҷ карда шавад?';

  @override
  String deleteAmalConfirmBody(String title) {
    return '\"$title\" аз рӯйхати шумо пинҳон мешавад. Таърихи шумо нигоҳ дошта мешавад.';
  }

  @override
  String get genericError => 'Хатогие рух дод. Лутфан дубора кӯшиш кунед.';

  @override
  String get notificationChannelName => 'Ёдоварии амалҳо';

  @override
  String get notificationChannelDescription =>
      'Барои амалҳои пайгиришавандаи шумо ёдоварии ҳаррӯза.';

  @override
  String get invalidAmalId => 'Идентификатори амали нодуруст';

  @override
  String get tutorialSettingsRow => 'Тарзи истифодаи муҳосиба';

  @override
  String get tutorialSkip => 'Гузаштан';

  @override
  String get tutorialNext => 'Баъдӣ';

  @override
  String get tutorialDone => 'Тайёр';

  @override
  String get tutorialTapTitle => 'Барои иҷро зер кунед';

  @override
  String get tutorialTapBody =>
      'Як зеркунӣ амалро барои имрӯз иҷрошуда қайд мекунад. Барои бекор кардан дубора зер кунед.';

  @override
  String get tutorialEditTitle => 'Барои таҳрир ду бор зер кунед';

  @override
  String get tutorialEditBody =>
      'Шакли таҳрирро мекушояд — номашро иваз кунед ё басомади такрорро тағйир диҳед.';

  @override
  String get tutorialReorderTitle =>
      'Барои тағйири тартиб пахш карда нигоҳ доред';

  @override
  String get tutorialReorderBody =>
      'Сатрро нигоҳ доред, сипас кашед. Тартиби шумо нигоҳ дошта мешавад.';

  @override
  String get tutorialRemoveTitle => 'Барои хориҷ кардан кашед';

  @override
  String get tutorialRemoveBody =>
      'Сатрро ба канор кашед, то барои имрӯз пинҳон шавад ё пайгирии он қатъ гардад.';

  @override
  String get tutorialCountTitle => 'Ҳисоби такрорҳо';

  @override
  String get tutorialCountBody =>
      'Барои амалҳое, ки ҳадафашон аз як зиёд аст, дар ҳар такрор − ва + -ро истифода баред.';

  @override
  String get tutorialViewTitle => 'Гурӯҳбандӣ ё рӯйхати содда';

  @override
  String get tutorialViewBody =>
      'Байни аз рӯи гурӯҳ ҷудо кардан ва як рӯйхати содда иваз кунед.';

  @override
  String get tutorialChallengeLogTitle => 'Барои сабти имрӯз зер кунед';

  @override
  String get tutorialChallengeLogBody =>
      'Як зеркунӣ имрӯзро сабт мекунад. Дар мақсади ҳисобӣ ҳар зеркунӣ як қадам илова мекунад.';

  @override
  String get tutorialChallengeOpenTitle => 'Барои кушодан ду бор зер кунед';

  @override
  String get tutorialChallengeOpenBody =>
      'Мақсадро мекушояд — ҳар рӯзро бинед, рӯзи аз даст рафтаро ислоҳ кунед ё онро ҳазф кунед.';

  @override
  String get tutorialChallengeDeleteBody =>
      'Барои ҳазфи мақсад кортро ба канор кашед.';

  @override
  String get tutorialChallengeAmountTitle => 'Сабти миқдори дақиқ';

  @override
  String get tutorialChallengeAmountBody =>
      'Барои тағйир − ва + -ро истифода баред ё рақамро зер карда миқдори дақиқро нависед.';

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
      other: '$count мақсад тамом шуд — охиринашон $title',
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
  String get editChallenge => 'Тағйири мақсад';

  @override
  String get deleteChallenge => 'Ҳазфи мақсад';

  @override
  String get deleteChallengeConfirm =>
      'Ин мақсад ва тамоми пешрафти сабтшудаи он ҳазф шавад?';

  @override
  String get challengeShapeQuestion => 'Ин чӣ навъ мақсад аст?';

  @override
  String get challengeShapeTotal => 'Миқдори умумии расиданӣ';

  @override
  String get challengeShapeTotalBody =>
      '1000 салавот, 30 ҷузъ. Миқдорро сабт мекунед ва он ҷамъ мешавад.';

  @override
  String get challengeShapeStreak => 'Идомаи ҳарруза';

  @override
  String get challengeShapeStreakBody =>
      'Таҳаҷҷуд, бомдод бо ҷамоат. Рӯзе як нишона, миқдор муҳим нест.';

  @override
  String get challengeTargetLabel => 'Ҳадаф';

  @override
  String get challengeTargetRequired => 'Ҳадафи аз сифр калон ворид кунед';

  @override
  String get challengeUnitLabel => 'Воҳид (ихтиёрӣ)';

  @override
  String get challengeUnitHint => 'ракъат, саҳифа, маротиба';

  @override
  String get challengeOneTapAdds => 'Як пахш илова мекунад';

  @override
  String get challengeHowManyDays => 'Чанд рӯз?';

  @override
  String get challengeReachHowMuch => 'То чӣ миқдор?';

  @override
  String get challengeSpreadOver => 'Паҳн дар';

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
  ) {
    return '$start то $end · $target аз $window рӯз — $slack рӯзро гузаронда метавонед';
  }

  @override
  String challengePlanRate(String start, String end, String rate) {
    return '$start то $end · рӯзе тақрибан $rate';
  }

  @override
  String challengePlanOpen(String start) {
    return '$start оғоз мешавад · бемуҳлат';
  }

  @override
  String challengeTooTight(String target, String window) {
    return '$target рӯз дар $window рӯз ҷой намешавад — идома рӯзе якро мешуморад.';
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
    return 'Дар нақша · $rate/рӯз';
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
  String get challengeReached => 'Ҳадаф иҷро шуд';

  @override
  String get challengeCompleted => 'Иҷро шуд';

  @override
  String challengeEnded(String done, String target) {
    return 'Тамом · $done аз $target';
  }

  @override
  String get challengeExpiredTitle => 'Мақсад ба анҷом расид';

  @override
  String challengeExpiredBody(String title, String done, String target) {
    return '$title бо $done аз $target ба анҷом расид.';
  }

  @override
  String get challengeExtend => 'Дароз кардан';

  @override
  String get challengeRestart => 'Аз нав оғоз кардан';

  @override
  String get challengeArchive => 'Бойгонӣ кардан';

  @override
  String get challengeDailyBreakdown => 'Сабти рӯзона';

  @override
  String challengeNudgeBody(String title, String rate) {
    return '$title: барои саривақт анҷом додан рӯзе $rate.';
  }

  @override
  String challengeLastDayBody(String title, String remaining) {
    return '$title: рӯзи охир — $remaining монд.';
  }

  @override
  String get challengeGroupGoal => 'Мақсад';

  @override
  String get challengeGroupShape => 'Навъ';

  @override
  String get challengeGroupPlan => 'Нақша';

  @override
  String get challengeGroupReminders => 'Ёдоварй';

  @override
  String get challengeStartFromTemplate => 'Аз намуна оғоз кунед';

  @override
  String get challengeTemplateBlank => 'Холӣ';

  @override
  String get challengePreview => 'Пешнамоиш';

  @override
  String get challengeTmplTahajjud => '40 шаб Тахачуд';

  @override
  String get challengeTmplSalawat => '1000 салавот';

  @override
  String get challengeTmplKhatm => 'Хатми Қуръон дар 30 рӯз';

  @override
  String get challengeTmplFajrJamaah => '30 рӯз Бомдод бо ҷамоат';

  @override
  String get challengeTmplSadaqah => '30 рӯз Садака';

  @override
  String get listSeparator => ' · ';
}
