// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tajik (`tg`).
class AppLocalizationsTg extends AppLocalizations {
  AppLocalizationsTg([String locale = 'tg']) : super(locale);

  @override
  String get appTitle => 'Muhasaba';

  @override
  String get tabToday => 'Имруз';

  @override
  String get tabStats => 'Омор';

  @override
  String get tabHistory => 'Таърих';

  @override
  String get tabSettings => 'Танзимот';

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
  String progressOf(int progress, int target) {
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
  String get addAmal => 'Илова кардани амал';

  @override
  String get customAmal => 'Амали дилхох';

  @override
  String get templateTasbih => 'Тасбех 33x';

  @override
  String get templateIstighfar => 'Истигфор 100x';

  @override
  String get templateSurahKahf => 'Сураи Кахф';

  @override
  String get templateSadaqah => 'Садака';

  @override
  String get templateTahajjud => 'Тахачуд';

  @override
  String get templateDuhaPrayer => 'Намози Зухо';

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
      '\"Дусттарин амалхо назди Аллох онхоеанд, ки доимй бошанд, хатто агар кам бошанд.\"\n— Бухорй ва Муслим';

  @override
  String get hadith1 =>
      '\"Аз амалхо он кадар гиред, ки тавонед, зеро бехтарин амалхо онхоеанд, ки доимй бошанд, хатто агар кам бошанд.\"\n— Ибни Моча';

  @override
  String get hadith2 =>
      '\"Вакте фарзанди Одам мемирад, амалхояш катъ мешаванд магар се чиз: садакаи чория, илми судманд ё фарзанди солех, ки барояш дуо мекунад.\"\n— Муслим';

  @override
  String get hadith3 =>
      '\"Хар кй ду намози хунук (Субх ва Аср)-ро бихонад, ба чаннат дохил мешавад.\"\n— Бухорй';

  @override
  String get hadith4 =>
      '\"Аллох ба намуди зохирй ва молу мулки шумо нигох намекунад, балки ба дилхо ва амалхои шумо нигох мекунад.\"\n— Муслим';

  @override
  String get hadith5 =>
      '\"Бехтарин одамон онхоеанд, ки барои одамон суддорртаранд.\"\n— Дорақутнй';

  @override
  String get hadith6 =>
      '\"Осон кунед ва душвор накунед; хушхабар дихед ва мардумро наронед.\"\n— Бухорй';

  @override
  String get hadith7 =>
      '\"Хар кй рохи илмро пеш гирад, Аллох барояш рохи чаннатро осон мекунад.\"\n— Муслим';

  @override
  String get hadith8 => '\"Садака молро кам намекунад.\"\n— Муслим';

  @override
  String get hadith9 =>
      '\"Муъмини кавй бехтар ва дусттар назди Аллох аст аз муъмини заиф, хол он ки дар хар ду хайр хаст.\"\n— Муслим';
}
