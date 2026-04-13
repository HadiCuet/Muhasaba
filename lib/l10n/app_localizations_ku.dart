// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kurdish (`ku`).
class AppLocalizationsKu extends AppLocalizations {
  AppLocalizationsKu([String locale = 'ku']) : super(locale);

  @override
  String get appTitle => 'Muhasaba';

  @override
  String get tabToday => 'ئەمڕۆ';

  @override
  String get tabStats => 'ئامار';

  @override
  String get tabHistory => 'مێژوو';

  @override
  String get tabSettings => 'ڕێکخستنەکان';

  @override
  String get newAmal => 'کرداری نوێ';

  @override
  String get editAmal => 'دەستکاری کردار';

  @override
  String get newAmalTitle => 'کرداری نوێ';

  @override
  String get save => 'پاشەکەوتکردن';

  @override
  String get cancel => 'پاشگەزبوونەوە';

  @override
  String get clear => 'سڕینەوە';

  @override
  String get titleLabel => 'ناونیشان';

  @override
  String get titleRequired => 'ناونیشان پێویستە';

  @override
  String get titleTooLong => 'ناونیشان زۆر درێژە';

  @override
  String get frequencyLabel => 'دووبارەبوونەوە';

  @override
  String get frequencyDaily => 'ڕۆژانە';

  @override
  String get frequencyWeekly => 'هەفتانە';

  @override
  String get frequencyMonthly => 'مانگانە';

  @override
  String get categoryLabel => 'جۆر';

  @override
  String get categoryOther => 'هیتر';

  @override
  String get categorySalah => 'نوێژ';

  @override
  String get categoryDhikr => 'زیکر';

  @override
  String get categoryQuran => 'قورئان';

  @override
  String get categoryCharity => 'خێرات';

  @override
  String get timesPerPeriod => 'جار لە هەر ماوەیەک';

  @override
  String get custom => 'تایبەت';

  @override
  String get customTargetHint => 'بۆ نمونە ٥٠';

  @override
  String get dayOfWeek => 'ڕۆژی هەفتە';

  @override
  String get anyDay => 'هەر ڕۆژێک';

  @override
  String get anyDayHint => 'هەر ڕۆژێک (ئەمڕۆ دەردەکەوێت، سبەی دەشارێتەوە)';

  @override
  String onlyDayHint(String day) {
    return 'تەنها $day';
  }

  @override
  String get dateOfMonth => 'ڕێکەوتی مانگ';

  @override
  String get anyDate => 'هەر ڕێکەوتێک';

  @override
  String get anyDateHint => 'هەر ڕێکەوتێک (ئەمڕۆ دەردەکەوێت، سبەی دەشارێتەوە)';

  @override
  String onlyDateHint(String date) {
    return 'تەنها لە $date';
  }

  @override
  String get startPreChecked => 'لە سەرەتاوە نیشانکراو';

  @override
  String get startPreCheckedSubtitle =>
      'کاتێک ماوەیەکی نوێ دەست پێ دەکات، ئەم کردارە بە بنەڕەتی وەک تەواوکراو نیشان دەکرێت تا تۆ نیشانەکەی لادەبەیت.';

  @override
  String get reminder => 'بیرخستنەوە';

  @override
  String get reminderNone => 'هیچ';

  @override
  String reminderTime(String time) {
    return 'بیرخستنەوە: $time';
  }

  @override
  String get reminderPermissionWarning =>
      'بیرخستنەوە پاشەکەوت کرا، بەڵام ئاگاداریەکان ڕێگەپێنەدراون. لە ڕێکخستنەکانی سیستەم چالاکیان بکە بۆ وەرگرتنی ئاگاداری.';

  @override
  String get groupByCategory => 'کۆکردنەوە بەپێی جۆر';

  @override
  String get flatList => 'لیستی ئاسایی';

  @override
  String errorGeneric(String error) {
    return 'هەڵە: $error';
  }

  @override
  String get todayEmptyHint => 'دەست بنێ لەسەر + بۆ زیادکردنی یەکەم کردارت.';

  @override
  String get noteLabel => 'تێبینی';

  @override
  String get noteHint => 'بۆ نمونە لە مزگەوت نوێژم کرد';

  @override
  String get completed => 'تەواو کرا';

  @override
  String get notCompleted => 'تەواو نەکرا';

  @override
  String progressOf(int progress, int target) {
    return '$progress لە $target تەواو کرا';
  }

  @override
  String get removeFromToday => 'لابردن لە ئەمڕۆ';

  @override
  String get removeFromTodaySubtitle =>
      'تەنها بۆ ئەم ڕۆژە دەشارێتەوە. سبەی دەگەڕێتەوە.';

  @override
  String get removeFromTracking => 'لابردن لە شوێنکەوتن';

  @override
  String get removeFromTrackingSubtitle =>
      'بە تەواوی لە لیستەکەت لادەبرێت. مێژووەکە دەمێنێتەوە.';

  @override
  String get chooseIcon => 'وێنۆچکە هەڵبژێرە';

  @override
  String get iconNone => 'هیچ';

  @override
  String get recentlyUsed => 'دوایین بەکارهێنراوەکان';

  @override
  String get emojiSectionGeneral => 'گشتی';

  @override
  String get categoryNameHint => 'ناو';

  @override
  String get categoryNew => '+ نوێ';

  @override
  String get addAmal => 'زیادکردنی کردار';

  @override
  String get customAmal => 'کرداری تایبەت';

  @override
  String get templateTasbih => 'تەسبیح ٣٣ جار';

  @override
  String get templateIstighfar => 'ئیستیغفار ١٠٠ جار';

  @override
  String get templateSurahKahf => 'سورەتی کەهف';

  @override
  String get templateSadaqah => 'خێرات';

  @override
  String get templateTahajjud => 'تەهەجود';

  @override
  String get templateDuhaPrayer => 'نوێژی دوحا';

  @override
  String get settingsTitle => 'ڕێکخستنەکان';

  @override
  String settingsLoadError(String error) {
    return 'ڕێکخستنەکان بارنەکران:\n$error';
  }

  @override
  String get sectionDayBoundary => 'سنووری ڕۆژ';

  @override
  String get rolloverHour => 'کاتی گۆڕانی ڕۆژ';

  @override
  String get rolloverAtMidnight => 'ئەمڕۆ لە نیوەشەو تەواو دەبێت.';

  @override
  String rolloverSubtitle(String time) {
    return 'کردارەکانی دوێنێ تا $time دەستکاریکردنیان دەکرێت.';
  }

  @override
  String get pickRolloverHour => 'کاتژمێری گۆڕانی ڕۆژ هەڵبژێرە';

  @override
  String get sectionWeekMonth => 'هەفتە و مانگ';

  @override
  String get startOfWeek => 'سەرەتای هەفتە';

  @override
  String get startOfMonth => 'سەرەتای مانگ';

  @override
  String get startOfMonthClamped =>
      'ڕۆژەکانی دوای ٢٨ بۆ دوایین ڕۆژی مانگە کورتەکان دەگۆڕدرێن.';

  @override
  String get sectionAppearance => 'دەرکەوتن';

  @override
  String get theme => 'ڕووکار';

  @override
  String get themeSystem => 'سیستەم';

  @override
  String get themeLight => 'ڕووناک';

  @override
  String get themeDark => 'تاریک';

  @override
  String get sectionLanguage => 'زمان';

  @override
  String get language => 'زمان';

  @override
  String get systemDefault => 'بنەڕەتی سیستەم';

  @override
  String get aboutTitle => 'Muhasaba';

  @override
  String get aboutSubtitle =>
      'ڕۆژنامەی تایبەتی بەرپرسیارێتی ئایینی. هەموو داتاکان لەم ئامێرەدا دەمێنێتەوە.';

  @override
  String get statsTitle => 'ئامار';

  @override
  String statsLoadError(String error) {
    return 'ئامار بارنەکران:\n$error';
  }

  @override
  String get perAmal => 'بۆ هەر کردارێک';

  @override
  String get thisWeek => 'ئەم هەفتەیە';

  @override
  String get thisMonth => 'ئەم مانگە';

  @override
  String get totalCompletions => 'کۆی تەواوکردنەکان';

  @override
  String get streakCurrent => 'ئێستا';

  @override
  String get streakLongest => 'درێژترین';

  @override
  String get ratioWeek => 'هەفتە';

  @override
  String get ratioMonth => 'مانگ';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ڕۆژ',
      one: 'ڕۆژ',
    );
    return '$_temp0';
  }

  @override
  String streakWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'هەفتە',
      one: 'هەفتە',
    );
    return '$_temp0';
  }

  @override
  String streakMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'مانگ',
      one: 'مانگ',
    );
    return '$_temp0';
  }

  @override
  String get frequencyBadgeDaily => 'ڕۆژانە';

  @override
  String get frequencyBadgeWeekly => 'هەفتانە';

  @override
  String get frequencyBadgeMonthly => 'مانگانە';

  @override
  String get statsEmpty =>
      'هێشتا هیچ کردارێک نییە. لە ئەمڕۆ یەکێک زیاد بکە بۆ دەستپێکردنی شوێنکەوتن.';

  @override
  String get statsToday => 'ئەمڕۆ';

  @override
  String get statsThisWeek => 'ئەم هەفتەیە';

  @override
  String get statsThisMonth => 'ئەم مانگە';

  @override
  String get statsAllTime => 'هەموو کات';

  @override
  String get statsCustomRange => 'ماوەی تایبەت';

  @override
  String get statsAllCategories => 'هەمووی';

  @override
  String get statsAllAmals => 'هەمووی';

  @override
  String get statsCompleted => 'تەواو کراوە';

  @override
  String get statsExpected => 'چاوەڕوانکراو';

  @override
  String get statsVsPrevious => 'بە بەراورد لەگەڵ پێشووەکە';

  @override
  String get statsByCategory => 'بەپێی جۆر';

  @override
  String get statsPerAmal => 'بۆ هەر کردارێک';

  @override
  String get statsCurrentStreak => 'زنجیرەی ئێستا';

  @override
  String get statsBestStreak => 'باشترین زنجیرە';

  @override
  String get statsTotalDays => 'کۆی ڕۆژەکان';

  @override
  String get statsConsistency => 'بەردەوامی';

  @override
  String get statsLast5Weeks => 'دوایین ٥ هەفتە';

  @override
  String get statsDailyBreakdown => 'وردەکاری ڕۆژانە';

  @override
  String get statsCompletionRate => 'ڕێژەی تەواوکردن';

  @override
  String get statsFilterTime => 'کات';

  @override
  String get statsFilterCategory => 'جۆر';

  @override
  String get statsFilterAmal => 'کردار';

  @override
  String get statsStreaks => 'زنجیرەکان';

  @override
  String get statsSelectDateRange => 'ماوەی ڕێکەوت هەڵبژێرە';

  @override
  String get historyTitle => 'مێژوو';

  @override
  String get jumpToDate => 'بڕۆ بۆ ڕێکەوت';

  @override
  String historyEmptyDay(String date) {
    return 'هیچ کردارێک لە $date تۆمار نەکراوە';
  }

  @override
  String get streakUnitD => 'ڕ';

  @override
  String get streakUnitW => 'ه';

  @override
  String get streakUnitM => 'م';

  @override
  String get mondayShort => 'دشم';

  @override
  String get tuesdayShort => 'سشم';

  @override
  String get wednesdayShort => 'چشم';

  @override
  String get thursdayShort => 'پشم';

  @override
  String get fridayShort => 'هەی';

  @override
  String get saturdayShort => 'شەم';

  @override
  String get sundayShort => 'یشم';

  @override
  String get mondayFull => 'دووشەممە';

  @override
  String get tuesdayFull => 'سێشەممە';

  @override
  String get wednesdayFull => 'چوارشەممە';

  @override
  String get thursdayFull => 'پێنجشەممە';

  @override
  String get fridayFull => 'هەینی';

  @override
  String get saturdayFull => 'شەممە';

  @override
  String get sundayFull => 'یەکشەممە';

  @override
  String get hadith0 =>
      '\"خۆشەویستترین کردار لای خوا ئەوانەن کە بەردەوام بن، تەنانەت گەر بچووکیش بن.\"\n— بوخاری و موسلیم';

  @override
  String get hadith1 =>
      '\"کرداری چاک بکەن بەقەدری توانایان، چونکە باشترین کردار ئەوانەن کە بەردەوام بن تەنانەت گەر کەمیش بن.\"\n— ئیبن ماجە';

  @override
  String get hadith2 =>
      '\"کاتێک کوڕی ئادەم دەمرێت، کردارەکانی دەوەستن جگە لە سێ: خێراتی بەردەوام، زانستی سوودبەخش، یان منداڵێکی چاک کە بۆی دوعا دەکات.\"\n— موسلیم';

  @override
  String get hadith3 =>
      '\"هەرکەسێک دوو نوێژی فێنک (بەیانی و عەسر) بکات دەچێتە بەهەشتەوە.\"\n— بوخاری';

  @override
  String get hadith4 =>
      '\"خوا سەیری ڕووخسارتان و سامانتان ناکات، بەڵکو سەیری دڵ و کردارتان دەکات.\"\n— موسلیم';

  @override
  String get hadith5 =>
      '\"باشترین خەڵک ئەوانەن کە سوودیان بۆ خەڵک هەبێت.\"\n— دارەقوتنی';

  @override
  String get hadith6 =>
      '\"ئاسان بکەن و قورس مەکەن؛ مژدە بدەن و خەڵکی مەتۆقێنن.\"\n— بوخاری';

  @override
  String get hadith7 =>
      '\"هەرکەسێک ڕێگایەک بگرێت بۆ بەدەستهێنانی زانست، خوا ڕێگای بەهەشتی بۆ ئاسان دەکات.\"\n— موسلیم';

  @override
  String get hadith8 => '\"خێرات سامان کەم ناکاتەوە.\"\n— موسلیم';

  @override
  String get hadith9 =>
      '\"باوەڕداری بەهێز باشتر و خۆشەویستترە لای خوا لە باوەڕداری لاواز، لەگەڵ ئەوەشدا لە هەردووکیاندا چاکە هەیە.\"\n— موسلیم';

  @override
  String get hadith10 =>
      '\"Ew kesê ku di rojê de sed caran \'SubhanAllahi we bihamdihi\' bêje, gunahên wî têne baxişandin heke wek kefa behrê bin jî.\"\n— Buxarî';

  @override
  String get hadith11 =>
      '\"Duaya herî baş ya roja Erefeyê ye, û baştirîn gotina ku min û pêxemberên beriya min gotine ev e: La ilaha illallah.\"\n— Tirmizî';

  @override
  String get hadith12 =>
      '\"Ew kes ku piştî her nimêja ferzê Ayetul-Kursiyê bixwîne, tiştek wî ji ketina bihuştê nahêle ji bilî mirinê.\"\n— Nesaî';

  @override
  String get hadith13 => '\"Gotina baş xêr e.\"\n— Buxarî & Muslim';

  @override
  String get hadith14 =>
      '\"Ew kesê ku bi Xwedê û roja dawîn bawer dike, bila qala qenciyê bike an bêdeng be.\"\n— Buxarî & Muslim';

  @override
  String get hadith15 =>
      '\"Ew kesê ku li jinebîyê û feqîr miqate dibe, mîna mûcahidê di rêya Xwedê de ye.\"\n— Buxarî';

  @override
  String get hadith16 => '\"Bişirîna te li rûyê birayê te xêr e.\"\n— Tirmizî';

  @override
  String get hadith17 =>
      '\"Yê herî qenc di nav we de ew e ku Quranê hîn dibe û hîn dike.\"\n— Buxarî';

  @override
  String get hadith18 =>
      '\"Kes xwarina ji ya ku bi destê xwe qezenc kiriye çêtir nexwariye.\"\n— Buxarî';

  @override
  String get hadith19 =>
      '\"Xwedê nerm e û nermiyê di her tiştî de hez dike.\"\n— Buxarî & Muslim';

  @override
  String historyDayCompleted(int completed, int total) {
    return '$completed ji $total qediya';
  }

  @override
  String get settingsSchedule => 'Bernameya dem';

  @override
  String get settingsAppearance => 'Xuyang';

  @override
  String get settingsAboutTagline => 'Hevkarê dînê te yê rojane';

  @override
  String get settingsRolloverSub => 'Roj kengî nû dibe';

  @override
  String get settingsAbout => 'Derbarê';

  @override
  String get settingsVersion => 'Guherto';

  @override
  String get settingsDeveloper => 'Pêşvebir';

  @override
  String get hadith20 =>
      '\"Kî bi bawerî û bi hêviya xelatê Remezanê rojî bigire, gunehên wî yên berê têne baxişandin.\"\n— Buxarî û Muslim';

  @override
  String get hadith21 => '\"Nimêj stûna dînê ye.\"\n— Beyhaqî';

  @override
  String get hadith22 =>
      '\"Duaya di navbera ezan û îqameyê de nayê redkirin.\"\n— Ebû Dawûd';

  @override
  String get hadith23 =>
      '\"Kî ji bo Xwedê mizgeftek ava bike, Xwedê jî ji bo wî xaniyek li bihuştê ava dike.\"\n— Buxarî û Muslim';

  @override
  String get hadith24 =>
      '\"Safên herî baş ji bo mêran yên pêşîn in, safên herî baş ji bo jinan jî yên paşîn in.\"\n— Muslim';

  @override
  String get hadith25 => '\"Rojî mertalek e ji agirê dojehê.\"\n— Nesaî';

  @override
  String get hadith26 =>
      '\"Kî diwanzdeh rikatên sunnetê bixwîne, li bihuştê xaniyek ji bo wî tê avakirin.\"\n— Muslim';

  @override
  String get hadith27 =>
      '\"Yê ku di xwendina Quranê de jêhatî be, dê bi milyaketên hêja re be.\"\n— Buxarî û Muslim';

  @override
  String get hadith28 =>
      '\"Lêgerîna zanistê li ser her misilmanekî farz e.\"\n— Îbn Mace';

  @override
  String get hadith29 =>
      '\"Xêra herî baş dayîna avê ye ku were vexwarin.\"\n— Ehmed';

  @override
  String get hadith30 =>
      '\"Kî tengahiyek ji bawermendekî rake, Xwedê dê Roja Qiyametê tengahiyek ji wî rake.\"\n— Muslim';

  @override
  String get hadith31 =>
      '\"Yên dilovan, Xwedayê herî Dilovan li wan dilovaniyê dike.\"\n— Ebû Dawûd û Tirmizî';

  @override
  String get hadith32 => '\"Şerm beşek ji baweriyê ye.\"\n— Buxarî û Muslim';

  @override
  String get hadith33 => '\"Paqijî nîvê baweriyê ye.\"\n— Muslim';

  @override
  String get hadith34 =>
      '\"Kî sebir bike, Xwedê jê re sebir dide.\"\n— Buxarî û Muslim';

  @override
  String get hadith35 =>
      '\"Dewlemendiya herî baş zimanê ku Xwedê bi bîr tîne ye.\"\n— Tebranî';

  @override
  String get hadith36 =>
      '\"Kes ji we bi rastî bawer nake heta ku ji bo birayê xwe tiştê ku ji bo xwe dixwaze nexwaze.\"\n— Buxarî û Muslim';

  @override
  String get hadith37 =>
      '\"Birçiyan têr bikin, nexweşan serdana bikin û girtîyan azad bikin.\"\n— Buxarî';

  @override
  String get hadith38 =>
      '\"Yê bi hêz ne ew e ku di zordariyê de bi ser dikeve, lê ew e ku di dema hêrsê de xwe kontrol dike.\"\n— Buxarî û Muslim';

  @override
  String get hadith39 =>
      '\"Kî tiştê di navbera çeneyê û lingên wî de biparêze, ez bihuştê jê re garantî dikim.\"\n— Buxarî';

  @override
  String get hadith40 =>
      '\"Piştî her nimêjê sî û sê caran \'SubhanAllah\', \'Elhemdulillah\' û \'Allahu Ekber\' bêjin.\"\n— Muslim';

  @override
  String get hadith41 => '\"Zikra herî baş La ilahe illallah e.\"\n— Tirmizî';

  @override
  String get hadith42 =>
      '\"Du nîmet hene ku gelek kes wan winda dikin: tenduristî û dema vala.\"\n— Buxarî';

  @override
  String get hadith43 =>
      '\"Pênc tiştan berî pênc tiştan bi kar bînin: ciwaniya xwe berî pîrbûnê, tenduristiya xwe berî nexweşiyê, dewlemendiya xwe berî xizaniyê, dema vala berî mijûliyê û jiyana xwe berî mirinê.\"\n— Hakim';

  @override
  String get hadith44 =>
      '\"Kî Sûreya Îxlasê deh caran bixwîne, Xwedê li bihuştê xaniyek ji bo wî ava dike.\"\n— Ehmed';

  @override
  String get hadith45 =>
      '\"Nimêja herî baş piştî farzê nimêja şevê ye.\"\n— Muslim';

  @override
  String get hadith46 =>
      '\"Xêr gunahan vedimirandine wek ku av agir vedimirandine.\"\n— Tirmizî';

  @override
  String get hadith47 =>
      '\"Yê ku xizmên xwe didomîne ne ew e ku bersivê dide, lê ew e ku dema têkilî têne qut kirin jî berdewam dike.\"\n— Buxarî';

  @override
  String get hadith48 => '\"Her kirina qenc xêr e.\"\n— Buxarî û Muslim';

  @override
  String get hadith49 =>
      '\"Kî xwarinê bixwe û Elhemdulillah bêje, gunehên wî yên berê têne baxişandin.\"\n— Tirmizî';

  @override
  String get hadith50 =>
      '\"Kesên ku ji Xwedê re herî delal in, ew in ku ji bo kesên din herî bi kêr in.\"\n— Tebranî';

  @override
  String get hadith51 =>
      '\"Kî hêrsa xwe kontrol bike dema ku karibe wê bi kar bîne, Xwedê wê roja Qiyametê li ber hemû mexlûqan gazî wî bike da ku xelata xwe hilbijêre.\"\n— Tirmizî';

  @override
  String get hadith52 =>
      '\"Di dayîna xêrê de lez bikin, ji ber ku ew li ber belayê disekine.\"\n— Tirmizî';

  @override
  String get hadith53 =>
      '\"Tu qenciyê piçûk nebîne, heta ku bi rûyekî geş birayê xwe bibîne jî.\"\n— Muslim';

  @override
  String get hadith54 =>
      '\"Yê we yê herî baş, yê ku ji bo malbata xwe herî baş be.\"\n— Tirmizî';

  @override
  String get hadith55 =>
      '\"Kî şevê du ayetên dawî yên Sûreya Baqarayê bixwîne, ew jê re bes in.\"\n— Buxarî û Muslim';

  @override
  String get hadith56 =>
      '\"Dinya kedek e û kedê herî baş jina salih e.\"\n— Muslim';

  @override
  String get hadith57 =>
      '\"Sê dua nayên red kirin: duaya yê ku rojî digire, serokê dadperwer û yê ku zulm lê hatiye kirin.\"\n— Tirmizî';

  @override
  String get hadith58 =>
      '\"Kî carekê li ser min selawat bîne, Xwedê deh caran rehmeta xwe li wî dike.\"\n— Muslim';

  @override
  String get hadith59 => '\"Mizgeft mala her kesê pîroz e.\"\n— Tebranî';

  @override
  String get hadith60 =>
      '\"Kî bibêje \'La hewle we la quwwete il-la bil-lah\' — ev dermanê nod û neh nexweşiyan e, ya herî sivik jî xem e.\"\n— Hakim';

  @override
  String get hadith61 =>
      '\"Xwedê hez dike ku gava hûn tiştekî dikin, wê bi awayekî herî baş bikin.\"\n— Tebranî';

  @override
  String get hadith62 => '\"Bihuşt di bin lingên dayikan de ye.\"\n— Nesaî';

  @override
  String get hadith63 =>
      '\"Qenciya li dê û bavan peywira herî mezin e.\"\n— Buxarî';

  @override
  String get hadith64 =>
      '\"Kî ji bo yê hindik şikir bike, pir jê re tê dayîn.\"\n— Beyhaqî';

  @override
  String get hadith65 => '\"Bawermend neynika bawermend e.\"\n— Ebû Dawûd';

  @override
  String get hadith66 =>
      '\"Rastbêjî ber bi qenciyê ve dibe, û qencî ber bi Bihuştê ve dibe.\"\n— Buxarî û Muslim';

  @override
  String get hadith67 =>
      '\"Emanetê bide wî yê ku bi te bawer kiriye, û xiyanetê li wî yê ku xiyanetê li te kiriye neke.\"\n— Ebû Dawûd û Tirmizî';

  @override
  String get hadith68 =>
      '\"Tu westî, nexweşî, xem, kovan, êş an tengasiyê nagihîje Misilmanekî, tewra stêriyekê jî, bê ku Xwedê hin ji gunehên wî jê bibe.\"\n— Buxarî û Muslim';

  @override
  String get hadith69 =>
      '\"Duaya Misilmanekî ji bo birayê xwe yê ku ne li ber wî ye her tim tê qebûl kirin.\"\n— Muslim';

  @override
  String get hadith70 =>
      '\"Kî sê caran ji Xwedê Bihuştê bixwaze, Bihişt dibêje: Xwedayê min, wî bike nav Bihuştê.\"\n— Tirmizî';

  @override
  String get hadith71 =>
      '\"Rojiya herî bi rûmet piştî Remezanê, rojiya meha Xwedê ya Muharremê ye.\"\n— Muslim';

  @override
  String get hadith72 =>
      '\"Kî heccê bike û gotinên xirab nebêje û guneh nekeve, wek roja ku diya wî ew anîye dinyayê vedigere.\"\n— Buxarî û Muslim';

  @override
  String get hadith73 =>
      '\"Umre heya umreya din keffareta gunehên di navbera wan de ye.\"\n— Buxarî û Muslim';

  @override
  String get hadith74 => '\"Di karên qenc de pêşbaziyê bikin.\"\n— Muslim';

  @override
  String get hadith75 =>
      '\"دوو ڕەکاتی نوێژی بەیانی باشترن لە دونیا و هەموو ئەوەی تێیدایە.\"\n— موسلیم';

  @override
  String get hadith76 =>
      '\"هەرکەسێک بەردەوام ئیستیغفار بکات، خودا لە هەموو تەنگانەیەک ڕێگای دەرچوونی بۆ دابین دەکات.\"\n— ئەبوو داوود';

  @override
  String get hadith77 =>
      '\"ئەگەر ئێوە بە ڕاستی متمانەتان بە خودا دەکرد، ئەوا وەک باڵندەکان ڕزقتان دەدا.\"\n— تیرمیزی';

  @override
  String get hadith78 =>
      '\"هەرکەسێک سەردانی نەخۆشێک بکات، تاکو دەگەڕێتەوە لە باخچەی بەهەشتدایە.\"\n— موسلیم';

  @override
  String get hadith79 =>
      '\"سەلام بڵاو بکەنەوە، نان بدەن، و شەو نوێژ بکەن کاتێک خەڵکی خەوتوون — بە ئاشتییەوە دەچنە بەهەشتەوە.\"\n— تیرمیزی';

  @override
  String get hadith80 =>
      '\"خۆشەویستترین کردەوە لای خودا ئەوەیە کە بەردەوام بێت، تەنانەت ئەگەر کەم بێت.\"\n— بوخاری';

  @override
  String get hadith81 =>
      '\"بەغیلی تەنها لە دوو بارەوە ڕوادەبێت: کەسێک کە خودا سامانی داوە و لە ڕێگای ڕاستدا خەرجی دەکات، و کەسێک کە خودا دانایی داوە و پێی حوکم دەدات و فێری دەکات.\"\n— بوخاری و موسلیم';

  @override
  String get hadith82 =>
      '\"مرۆڤ لەسەر ئایینی هاوڕێیەتی، بۆیە هەر یەکتان سەیری ئەوە بکات کە لەگەڵ کێ هاوڕێ دەبێت.\"\n— ئەبوو داوود و تیرمیزی';

  @override
  String get hadith83 =>
      '\"زۆر بیری لە مردن بکەنەوە، چونکە دڵ پاک دەکات.\"\n— تیرمیزی';

  @override
  String get hadith84 =>
      '\"باشترینتان ئەوەیە کە دڵی هەموویان نەرمتر بێت.\"\n— تەبەرانی';

  @override
  String get hadith85 =>
      '\"خودا هیچ کەسێک بارگرانی لە توانای زیاتر ناکات.\"\n— قورئان ٢:٢٨٦';

  @override
  String get hadith86 =>
      '\"هەرکەسێک کەموکوڕی موسلمانێک بشارێتەوە، خودا لە ڕۆژی قیامەت کەموکوڕییەکانی دادەپۆشێت.\"\n— بوخاری و موسلیم';

  @override
  String get hadith87 =>
      '\"لەم دونیایەدا وەک بێگانەیەک بژی یان وەک ڕێبوارێک.\"\n— بوخاری';

  @override
  String get hadith88 =>
      '\"هەرکەسێک ئاسانکاری بۆ کەسێکی تەنگانەدا بکات، خودا لە دونیا و ئاخیرەتدا ئاسانی بۆ دەکات.\"\n— موسلیم';

  @override
  String get hadith89 =>
      '\"پاداشتی کردەوەکان بە نیەتەکان دادەنرێت.\"\n— بوخاری و موسلیم';

  @override
  String get hadith90 =>
      '\"لە گومان دووربن، چونکە گومان درۆیینترین قسەیە.\"\n— بوخاری و موسلیم';

  @override
  String get hadith91 =>
      '\"هەرکەسێک بۆ خاتری خودا درۆ بەجێبهێڵێت، تەنانەت لە پێکەنین، من بۆی قەسرێک لە لێواری بەهەشتدا دەسەلمێنم.\"\n— ئەبوو داوود';

  @override
  String get hadith92 =>
      '\"دەروازەکانی چاکە زۆرن: تەسبیحی خودا، سوپاسی ئەو، سەدەقە، فەرمانی بە چاکە، و لابردنی زیانی ڕێگا.\"\n— موسلیم';

  @override
  String get hadith93 =>
      '\"پێکەوە نان بخۆن و ناوی خودا ببێنن، بۆتان بەرەکەت دەبێت.\"\n— ئەبوو داوود';

  @override
  String get hadith94 =>
      '\"باشترین کۆبوونەوە ئەوەیە کە فراوانتر بێت.\"\n— ئەبوو داوود';

  @override
  String get hadith95 => '\"لێبوردن بکەن، ئێوەش لێبوردن دەکرێت.\"\n— ئەحمەد';

  @override
  String get hadith96 =>
      '\"وشترەکەت ببەستە پاشان متمانە بە خودا بکە.\"\n— تیرمیزی';

  @override
  String get hadith97 =>
      '\"سەرسوڕمەزانە کاری باوەڕداری — هەموو شتێک بۆی باشە.\"\n— موسلیم';

  @override
  String get hadith98 =>
      '\"موسلمان برای موسلمانە: ستەمی لێ ناکات، بەجێی ناهێڵێت، و سووکی ناکات.\"\n— موسلیم';

  @override
  String get hadith99 =>
      '\"خۆشەویستترین قسە لای خودا: سوبحان ئاللە و بیحەمدیهی، سوبحان ئاللە ئەلعەزیم.\"\n— بوخاری و موسلیم';
}
