// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kurdish (`ku`).
class AppLocalizationsKu extends AppLocalizations {
  AppLocalizationsKu([String locale = 'ku']) : super(locale);

  @override
  String get repeatsOnDaysHint => 'Di rojên hilbijartî de dubare dibe';

  @override
  String get newDayStarted => 'Rojeke nû dest pê kir';

  @override
  String get appTitle => 'Muhasaba';

  @override
  String get tabToday => 'Îro';

  @override
  String get tabStats => 'Amar';

  @override
  String get tabHistory => 'Dîrok';

  @override
  String get tabSettings => 'Mîheng';

  @override
  String get tabChallenge => 'Armanc';

  @override
  String get tabInsights => 'Amar';

  @override
  String get insightsTitle => 'Amar';

  @override
  String get insightsOverview => 'Nêrîna giştî';

  @override
  String get insightsDaily => 'Roj bi roj';

  @override
  String get insightsArchive => 'Arşîv';

  @override
  String get archivedEmpty =>
      'Li vir hîn tiştek tune. Kirinên ku tu ji şopandinê radikî li vir xuya dibin, da ku tu karibî wan vegerînî.';

  @override
  String archivedStoppedOn(String date) {
    return 'Di $date de hat rakirin';
  }

  @override
  String get archivedRestore => 'Vegerîne';

  @override
  String archivedRestored(String title) {
    return '\"$title\" dîsa di lîsteya te de ye.';
  }

  @override
  String get newChallenge => 'Armanca nû';

  @override
  String get newAmal => 'Kirina nû';

  @override
  String get editAmal => 'Kirinê biguherîne';

  @override
  String get newAmalTitle => 'Kirina nû';

  @override
  String get save => 'Tomar bike';

  @override
  String get cancel => 'Betal bike';

  @override
  String get ok => 'OK';

  @override
  String get clear => 'Paqij bike';

  @override
  String get titleLabel => 'Sernav';

  @override
  String get titleRequired => 'Sernav pêwîst e';

  @override
  String get titleTooLong => 'Sernav pir dirêj e';

  @override
  String get frequencyLabel => 'Dubarebûn';

  @override
  String get frequencyDaily => 'Rojane';

  @override
  String get frequencyWeekly => 'Heftane';

  @override
  String get frequencyMonthly => 'Mehane';

  @override
  String get categoryLabel => 'Kategorî';

  @override
  String get categoryOther => 'Yên din';

  @override
  String get categorySalah => 'Nimêj';

  @override
  String get categoryDhikr => 'Zikir';

  @override
  String get categoryQuran => 'Quran';

  @override
  String get categoryCharity => 'Xêr';

  @override
  String get categorySunnah => 'Sunnet';

  @override
  String get timesPerPeriod => 'Çend car di heyamê de';

  @override
  String get custom => 'Taybet';

  @override
  String get customTargetHint => 'wek mînak 50';

  @override
  String get targetAny => 'Her hejmar';

  @override
  String get targetAnyHelp =>
      'Bê hedef — bi her hejmarê wek qediyayî tê hesibandin';

  @override
  String get dayOfWeek => 'Roja hefteyê';

  @override
  String get anyDay => 'Her kîjan';

  @override
  String get anyDayHint =>
      'Kîjan roj be (îro xuya dimîne, roja din tê veşartin)';

  @override
  String onlyDayHint(String day) {
    return 'Tenê $day';
  }

  @override
  String get dateOfMonth => 'Roja mehê';

  @override
  String get repeatMode => 'Awayê dubarebûnê';

  @override
  String get onSetDays => 'Di rojên diyarkirî de';

  @override
  String get onSetDates => 'Di dîrokên diyarkirî de';

  @override
  String get anyDayMode => 'Kîjan roj be';

  @override
  String get datesOfMonth => 'Dîrok';

  @override
  String get daysPerWeekQuestion => 'Di hefteyê de çend roj?';

  @override
  String get daysPerMonthQuestion => 'Di mehê de çend roj?';

  @override
  String get pickAtLeastOneDay => 'Herî kêm rojekê hilbijêre';

  @override
  String get pickAtLeastOneDate => 'Herî kêm dîrokekê hilbijêre';

  @override
  String get previewDaily => 'Her roj dubare dibe';

  @override
  String previewWeeklyDays(String days) {
    return 'Her $days dubare dibe';
  }

  @override
  String previewWeeklyAny(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count rojan',
      one: '1 rojê',
    );
    return 'Hefteyê $_temp0 dubare dibe, kîjan roj be';
  }

  @override
  String previewMonthlyDates(int count, String dates) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Her mehê rojên $dates dubare dibe',
      one: 'Her mehê roja $dates dubare dibe',
    );
    return '$_temp0';
  }

  @override
  String previewMonthlyAny(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count rojan',
      one: '1 rojê',
    );
    return 'Mehê $_temp0 dubare dibe, kîjan roj be';
  }

  @override
  String get anyDate => 'Her kîjan';

  @override
  String get anyDateHint =>
      'Kîjan dîrok be (îro xuya dimîne, roja din tê veşartin)';

  @override
  String onlyDateHint(String date) {
    return 'Tenê di $date de';
  }

  @override
  String get startPreChecked => 'Ji destpêkê ve nîşankirî';

  @override
  String get startPreCheckedSubtitle =>
      'Gava heyameke nû dest pê dike, ev kirin bi xweber wek qediyayî tê nîşankirin, heta ku tu nîşanê rakî.';

  @override
  String get reminder => 'Bîranîn';

  @override
  String get reminderNone => 'Tune';

  @override
  String reminderTime(String time) {
    return 'Bîranîn: $time';
  }

  @override
  String get reminderPermissionWarning =>
      'Bîranîn hat tomarkirin, lê destûra agahdariyan nehatiye dayîn. Ji bo ku hişyarî bigihêjin te, wan di mîhengên pergalê de çalak bike.';

  @override
  String get settingsReminders => 'Bîranîn';

  @override
  String get dailyReminder => 'Bîranîna rojane';

  @override
  String get dailyReminderSubtitle =>
      'Bîranînek nerm ji bo şopandina kirinên te';

  @override
  String get dailyReminderTimeLabel => 'Dema bîranînê';

  @override
  String get dailyReminderBody =>
      'Kêliyekê veqetîne da ku kirinên îro bişopînî.';

  @override
  String get groupByCategory => 'Li gorî kategoriyê kom bike';

  @override
  String get flatList => 'Lîsteya sade';

  @override
  String errorGeneric(String error) {
    return 'Çewtî: $error';
  }

  @override
  String get todayEmptyHint =>
      'Li + bitikîne da ku kirina xwe ya yekem lê zêde bikî.';

  @override
  String get noteLabel => 'Not';

  @override
  String get noteHint => 'wek mînak: min li mizgeftê nimêj kir';

  @override
  String get completed => 'qediya';

  @override
  String get notCompleted => 'neqediya';

  @override
  String progressOf(String progress, String target) {
    return '$progress ji $target qediya';
  }

  @override
  String progressOpen(String count) {
    return '$count qediya';
  }

  @override
  String get removeFromToday => 'Ji îro rake';

  @override
  String get removeFromTodaySubtitle =>
      'Tenê ji bo îro tê veşartin. Sibê vedigere.';

  @override
  String get removeFromTracking => 'Ji şopandinê rake';

  @override
  String get removeFromTrackingSubtitle =>
      'Bi tevahî ji lîsteya te tê rakirin. Dîrok dimîne.';

  @override
  String get chooseIcon => 'Îkonê hilbijêre';

  @override
  String get iconNone => 'Tune';

  @override
  String get recentlyUsed => 'Bikaranînên dawî';

  @override
  String get emojiSectionGeneral => 'Giştî';

  @override
  String get categoryNameHint => 'Nav';

  @override
  String get categoryNew => '+ Nû';

  @override
  String get categoryNewSheetTitle => 'Kategoriya nû';

  @override
  String get categoryEditSheetTitle => 'Kategoriyê biguherîne';

  @override
  String get addAmal => 'Kirin lê zêde bike';

  @override
  String get customAmal => 'Kirina taybet';

  @override
  String get amalTasbih => 'Tesbîh 33 car';

  @override
  String get amalIstighfar => 'Îstîxfar';

  @override
  String get amalSurahKahf => 'Sûreya Kehf';

  @override
  String get amalSadaqah => 'Sedeqe';

  @override
  String get amalTahajjud => 'Teheccud';

  @override
  String get amalDuha => 'Nimêja Duhayê';

  @override
  String get amalFajr => 'Fecr';

  @override
  String get amalDhuhr => 'Nîvro';

  @override
  String get amalAsr => 'Esr';

  @override
  String get amalMaghrib => 'Mexrib';

  @override
  String get amalIsha => 'Îşa';

  @override
  String get amalMorningAdhkar => 'Zikrên sibehê';

  @override
  String get amalEveningAdhkar => 'Zikrên êvarê';

  @override
  String get amalTilawah => 'Tilawet';

  @override
  String get settingsTitle => 'Mîheng';

  @override
  String settingsLoadError(String error) {
    return 'Mîheng nehatin barkirin:\n$error';
  }

  @override
  String get sectionDayBoundary => 'Sînorê rojê';

  @override
  String get rolloverHour => 'Saeta guherîna rojê';

  @override
  String get rolloverAtMidnight => 'Îro di nîvê şevê de diqede.';

  @override
  String rolloverSubtitle(String time) {
    return 'Heta $time tu dikarî kirinên duh biguherînî.';
  }

  @override
  String get pickRolloverHour => 'Saeta guherîna rojê hilbijêre';

  @override
  String get sectionWeekMonth => 'Hefte û meh';

  @override
  String get startOfWeek => 'Destpêka hefteyê';

  @override
  String get startOfMonth => 'Destpêka mehê';

  @override
  String get startOfMonthClamped =>
      'Di mehên kurttir de, rojên piştî 28an dikevin roja dawî ya mehê.';

  @override
  String get sectionAppearance => 'Xuyang';

  @override
  String get theme => 'Tema';

  @override
  String get themeSystem => 'Pergal';

  @override
  String get themeLight => 'Ronak';

  @override
  String get themeDark => 'Tarî';

  @override
  String get sectionLanguage => 'Ziman';

  @override
  String get language => 'Ziman';

  @override
  String get systemDefault => 'Li gorî pergalê';

  @override
  String get aboutTitle => 'Muhasaba';

  @override
  String get aboutSubtitle =>
      'Rojnivîskeke kesane ji bo muhasebeya dînê te. Hemû dane li ser vê amûrê dimînin.';

  @override
  String get statsTitle => 'Amar';

  @override
  String statsLoadError(String error) {
    return 'Amar nehatin barkirin:\n$error';
  }

  @override
  String get perAmal => 'Ji bo her kirinê';

  @override
  String get thisWeek => 'Vê hefteyê';

  @override
  String get thisMonth => 'Vê mehê';

  @override
  String get totalCompletions => 'qedandin bi giştî';

  @override
  String get streakCurrent => 'Niha';

  @override
  String get streakLongest => 'Herî dirêj';

  @override
  String get ratioWeek => 'Hefte';

  @override
  String get ratioMonth => 'Meh';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'roj',
      one: 'roj',
    );
    return '$_temp0';
  }

  @override
  String streakWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'hefte',
      one: 'hefte',
    );
    return '$_temp0';
  }

  @override
  String streakMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'meh',
      one: 'meh',
    );
    return '$_temp0';
  }

  @override
  String get frequencyBadgeDaily => 'rojane';

  @override
  String get frequencyBadgeWeekly => 'heftane';

  @override
  String get frequencyBadgeMonthly => 'mehane';

  @override
  String get statsEmpty =>
      'Hîn ti kirin tune. Ji Îro yekê lê zêde bike û dest bi şopandinê bike.';

  @override
  String get statsToday => 'Îro';

  @override
  String get statsThisWeek => 'Vê hefteyê';

  @override
  String get statsThisMonth => 'Vê mehê';

  @override
  String get statsAllTime => 'Hemû dem';

  @override
  String get statsCustomRange => 'Heyama taybet';

  @override
  String get statsAllCategories => 'Hemû';

  @override
  String get statsAllAmals => 'Hemû';

  @override
  String get statsCompleted => 'Qediyayî';

  @override
  String get statsExpected => 'Tê payîn';

  @override
  String get statsVsPrevious => 'li gorî berê';

  @override
  String get statsByCategory => 'Li gorî kategoriyê';

  @override
  String get statsPerAmal => 'Ji bo her kirinê';

  @override
  String get statsTotalCaption => 'tevahî';

  @override
  String statsDaysFraction(String done, String expectedText, num expected) {
    String _temp0 = intl.Intl.pluralLogic(
      expected,
      locale: localeName,
      other: 'roj',
      one: 'roj',
    );
    return '$done/$expectedText $_temp0';
  }

  @override
  String get statsCurrentStreak => 'Rêzeya niha';

  @override
  String get statsBestStreak => 'Rêzeya herî baş';

  @override
  String get statsTotalDays => 'Hejmara rojan';

  @override
  String get statsConsistency => 'Berdewamî';

  @override
  String get statsLast5Weeks => '5 hefteyên dawî';

  @override
  String get statsDailyBreakdown => 'Hûrguliyên rojane';

  @override
  String get statsCompletionRate => 'Rêjeya qedandinê';

  @override
  String get statsAmountPerDay => 'Hejmara rojane';

  @override
  String statsCountTotal(String count) {
    return 'Bi giştî $count';
  }

  @override
  String statsCountAvg(String amount) {
    return 'Navînî $amount/roj';
  }

  @override
  String statsCountBest(String count, String day) {
    return 'Herî zêde $count · $day';
  }

  @override
  String get statsFilterTime => 'Dem';

  @override
  String get statsFilterCategory => 'Kategorî';

  @override
  String get statsFilterAmal => 'Kirin';

  @override
  String get statsStreaks => 'Rêze';

  @override
  String get statsSelectDateRange => 'Navbera dîrokan hilbijêre';

  @override
  String get historyTitle => 'Dîrok';

  @override
  String get jumpToDate => 'Here dîrokekê';

  @override
  String historyEmptyDay(String date) {
    return 'Di $date de kirin nehatiye tomarkirin';
  }

  @override
  String get streakUnitD => 'r';

  @override
  String get streakUnitW => 'h';

  @override
  String get streakUnitM => 'm';

  @override
  String get mondayShort => 'Dş';

  @override
  String get tuesdayShort => 'Sş';

  @override
  String get wednesdayShort => 'Çş';

  @override
  String get thursdayShort => 'Pş';

  @override
  String get fridayShort => 'În';

  @override
  String get saturdayShort => 'Şe';

  @override
  String get sundayShort => 'Yş';

  @override
  String get mondayFull => 'Duşem';

  @override
  String get tuesdayFull => 'Sêşem';

  @override
  String get wednesdayFull => 'Çarşem';

  @override
  String get thursdayFull => 'Pêncşem';

  @override
  String get fridayFull => 'Înî';

  @override
  String get saturdayFull => 'Şemî';

  @override
  String get sundayFull => 'Yekşem';

  @override
  String get hadith0 =>
      '\"Kirinên herî delal li ba Xwedê ew in ku bi domdarî tên kirin, her çend kêm bin jî.\"\n— Buxarî û Muslim';

  @override
  String get hadith2 =>
      '\"Gava kurê Adem dimire, kirinên wî qut dibin, ji bilî sisêyan: sedeqeya domdar, zanîna bi kêr, an zarokekî salih ku jê re dua dike.\"\n— Muslim';

  @override
  String get hadith3 =>
      '\"Kî du nimêjên hênik (Fecr û Esr) bike, dê bikeve Bihuştê.\"\n— Buxarî';

  @override
  String get hadith4 =>
      '\"Xwedê li sûret û malê we nanêre, lê li dil û kirinên we dinêre.\"\n— Muslim';

  @override
  String get hadith6 =>
      '\"Hêsan bikin û dijwar nekin; mizgînî bidin û mirovan netirsînin.\"\n— Buxarî';

  @override
  String get hadith7 =>
      '\"Kî ji bo lêgerîna zanînê rêyekê bigire, Xwedê rêya Bihuştê jê re hêsan dike.\"\n— Muslim';

  @override
  String get hadith8 => '\"Sedeqe malê kêm nake.\"\n— Muslim';

  @override
  String get hadith9 =>
      '\"Bawermendê bihêz ji bawermendê qels çêtir e û li ba Xwedê delaltir e; lê di herduyan de jî xêr heye.\"\n— Muslim';

  @override
  String get hadith10 =>
      '\"Kesê ku rojê sed caran \'Subhanellahî we bihemdihî\' bêje, gunehên wî tên bexşandin, heke wek kefa behrê bin jî.\"\n— Buxarî û Muslim';

  @override
  String get hadith12 =>
      '\"Kesê ku piştî her nimêja ferz Ayeta Kursî bixwîne, ji bilî mirinê tiştek wî ji ketina Bihuştê nahêle.\"\n— Nesaî';

  @override
  String get hadith13 => '\"Gotina baş sedeqe ye.\"\n— Buxarî û Muslim';

  @override
  String get hadith14 =>
      '\"Kesê ku bi Xwedê û Roja Dawî bawer dike, bila ya baş bêje, yan jî bêdeng bimîne.\"\n— Buxarî û Muslim';

  @override
  String get hadith15 =>
      '\"Kesê ku li jinebiyekê an feqîrekî miqate dibe, wek mucahidê di rêya Xwedê de ye.\"\n— Buxarî û Muslim';

  @override
  String get hadith16 =>
      '\"Bişirîna te li rûyê birayê te sedeqe ye.\"\n— Tirmizî';

  @override
  String get hadith17 =>
      '\"Yên herî baş ji we ew in ku Quranê hîn dibin û hîn dikin.\"\n— Buxarî';

  @override
  String get hadith18 =>
      '\"Ti kesî xwarineke ji ya ku bi keda destê xwe qezenc kiriye çêtir nexwariye.\"\n— Buxarî';

  @override
  String get hadith19 =>
      '\"Xwedê nerm e û di her tiştî de ji nermiyê hez dike.\"\n— Buxarî û Muslim';

  @override
  String historyDayCompleted(String completed, String total) {
    return '$completed ji $total qediya';
  }

  @override
  String get settingsSchedule => 'Dem';

  @override
  String get settingsAppearance => 'Xuyang';

  @override
  String get settingsAboutTagline => 'Hevrêyê te yê rojane di dîn de';

  @override
  String get settingsRolloverSub => 'Roj kengî nû dibe';

  @override
  String get settingsAbout => 'Derbarê';

  @override
  String get settingsVersion => 'Guherto';

  @override
  String get settingsDeveloper => 'Pêşvebir';

  @override
  String get settingsSupport => 'Piştgirî';

  @override
  String get settingsRate => 'Bernameyê binirxîne';

  @override
  String get settingsContact => 'Bi me re têkilî dayne';

  @override
  String get settingsReportBug => 'Çewtiyekê ragihîne';

  @override
  String get settingsRequestFeature => 'Taybetmendiyekê bixwaze';

  @override
  String settingsSupportFallback(String email) {
    return 'E-name venebû. Ji kerema xwe ji $email re e-nameyekê bişîne.';
  }

  @override
  String get settingsPrivacyPolicy => 'Polîtîkaya nepeniyê';

  @override
  String get settingsPrivacyOpenFailed => 'Polîtîkaya nepeniyê venebû.';

  @override
  String get hadith20 =>
      '\"Kî bi bawerî û bi hêviya xelatê rojiya Remezanê bigire, gunehên wî yên berê tên bexşandin.\"\n— Buxarî û Muslim';

  @override
  String get hadith22 =>
      '\"Duaya di navbera bang û îqametê de nayê redkirin.\"\n— Ebû Dawûd';

  @override
  String get hadith23 =>
      '\"Kî ji bo Xwedê mizgeftekê ava bike, Xwedê jî li Bihuştê xaniyekî ji bo wî ava dike.\"\n— Buxarî û Muslim';

  @override
  String get hadith24 =>
      '\"Safên herî baş ji bo mêran yên pêşîn in, safên herî baş ji bo jinan jî yên paşîn in.\"\n— Muslim';

  @override
  String get hadith25 => '\"Rojî mertalek e ji agirê dojehê.\"\n— Nesaî';

  @override
  String get hadith26 =>
      '\"Kî diwanzdeh rekatên sunnetê bixwîne, li Bihuştê xaniyek ji bo wî tê avakirin.\"\n— Muslim';

  @override
  String get hadith27 =>
      '\"Yê ku di xwendina Quranê de jêhatî be, dê bi milyaketên hêja re be.\"\n— Buxarî û Muslim';

  @override
  String get hadith29 => '\"Sedeqeya herî baş avdayîn e.\"\n— Ehmed';

  @override
  String get hadith30 =>
      '\"Kî tengasiyekê ji ser bawermendekî rake, Xwedê dê Roja Qiyametê tengasiyekê ji ser wî rake.\"\n— Muslim';

  @override
  String get hadith32 => '\"Şerm beşek ji baweriyê ye.\"\n— Buxarî û Muslim';

  @override
  String get hadith34 =>
      '\"Kî sebir bike, Xwedê jê re sebir dide.\"\n— Buxarî û Muslim';

  @override
  String get hadith36 =>
      '\"Kes ji we bi rastî bawer nake heta ku ji bo birayê xwe tiştê ku ji bo xwe dixwaze nexwaze.\"\n— Buxarî û Muslim';

  @override
  String get hadith37 =>
      '\"Birçiyan têr bikin, serdana nexweşan bikin û dîlan azad bikin.\"\n— Buxarî';

  @override
  String get hadith38 =>
      '\"Bihêz ne ew e ku di gulaşê de mirovan dixe erdê; bihêz ew e ku di dema hêrsê de xwe digire.\"\n— Buxarî û Muslim';

  @override
  String get hadith40 =>
      '\"Piştî her nimêjê, ji her yekê sî û sê caran \'Subhanellah\', \'Elhemdulillah\' û \'Allahu ekber\' bêjin.\"\n— Muslim';

  @override
  String get hadith41 => '\"Zikrê herî baş La îlahe îllellah e.\"\n— Tirmizî';

  @override
  String get hadith42 =>
      '\"Du nîmet hene ku gelek kes wan winda dikin: tenduristî û dema vala.\"\n— Buxarî';

  @override
  String get hadith43 =>
      '\"Pênc tiştan berî pênc tiştan bi kar bînin: ciwaniya xwe berî pîrbûnê, tenduristiya xwe berî nexweşiyê, dewlemendiya xwe berî xizaniyê, dema vala berî mijûliyê û jiyana xwe berî mirinê.\"\n— Hakim';

  @override
  String get hadith44 =>
      '\"Kî deh caran Sûreya Îxlasê bixwîne, Xwedê li Bihuştê xaniyekî ji bo wî ava dike.\"\n— Ehmed';

  @override
  String get hadith45 =>
      '\"Piştî nimêjên ferz, nimêja herî baş nimêja şevê ye.\"\n— Muslim';

  @override
  String get hadith46 =>
      '\"Sedeqe gunehan vedimirîne, wek ku av agir vedimirîne.\"\n— Tirmizî';

  @override
  String get hadith47 =>
      '\"Yê ku têkiliyên xizmaniyê diparêze ne ew e ku tenê bersiva qenciyê dide; ew e ku dema têkilî bi wî re tê birîn jî, wê didomîne.\"\n— Buxarî';

  @override
  String get hadith49 =>
      '\"Kî xwarinê bixwe û bibêje: \'Hemd ji Xwedê re be, yê ku ev xwarin da min û bêyî hêz û qeweta min ew ji min re peyda kir,\' gunehên wî yên berê tên bexşandin.\"\n— Tirmizî';

  @override
  String get hadith53 =>
      '\"Ti qenciyê piçûk nebîne, heta ku bi rûyekî geş rastî birayê xwe bêyî jî.\"\n— Muslim';

  @override
  String get hadith54 =>
      '\"Yên herî baş ji we ew in ku ji malbata xwe re herî baş in.\"\n— Tirmizî';

  @override
  String get hadith55 =>
      '\"Kî şevê du ayetên dawî yên Sûreya Beqereyê bixwîne, ew jê re bes in.\"\n— Buxarî û Muslim';

  @override
  String get hadith56 =>
      '\"Dinya metah e, û metahê wê yê herî baş jina salih e.\"\n— Muslim';

  @override
  String get hadith57 =>
      '\"Sê dua nayên redkirin: duaya yê ku rojî digire, ya serokê dadperwer û ya yê ku zulm lê hatiye kirin.\"\n— Tirmizî';

  @override
  String get hadith58 =>
      '\"Kî carekê selawatê li min bide, Xwedê deh caran rehmetê li wî dibarîne.\"\n— Muslim';

  @override
  String get hadith65 => '\"Bawermend neynika bawermendî ye.\"\n— Ebû Dawûd';

  @override
  String get hadith66 =>
      '\"Rastbêjî ber bi qenciyê ve dibe, û qencî ber bi Bihuştê ve dibe.\"\n— Buxarî û Muslim';

  @override
  String get hadith67 =>
      '\"Emanetê bide wî yê ku bi te bawer kiriye, û xiyanetê li wî yê ku xiyanetê li te kiriye neke.\"\n— Ebû Dawûd û Tirmizî';

  @override
  String get hadith68 =>
      '\"Westandin, nexweşî, xem, kovan, êş û tengasî nagihêje Misilmanekî — heta stiriyeke ku pê ve biçe jî — ku Xwedê bi wê hin ji gunehên wî jê nebe.\"\n— Buxarî û Muslim';

  @override
  String get hadith69 =>
      '\"Duaya Misilmanekî ji bo birayê xwe, dema ew ne li wir be, her tim tê qebûlkirin.\"\n— Muslim';

  @override
  String get hadith70 =>
      '\"Kî sê caran ji Xwedê Bihuştê bixwaze, Bihuşt dibêje: Ya Xwedê, wî bixe Bihuştê.\"\n— Tirmizî';

  @override
  String get hadith71 =>
      '\"Rojiya herî bi rûmet piştî Remezanê, rojiya meha Xwedê ya Muharremê ye.\"\n— Muslim';

  @override
  String get hadith72 =>
      '\"Kî hecê bike, gotinên pîs nebêje û guneh neke, wek roja ku diya wî ew anî dinyayê vedigere.\"\n— Buxarî û Muslim';

  @override
  String get hadith73 =>
      '\"Umre heta umreya din kefareta gunehên di navbera wan de ye.\"\n— Buxarî û Muslim';

  @override
  String get hadith74 =>
      '\"Berî ku fitne wek perçeyên şeveke tarî werin, bi lez kirinên qenc bikin.\"\n— Muslim';

  @override
  String get hadith75 =>
      '\"Du rekatên Fecrê ji dinyayê û her tiştê ku tê de ye çêtir in.\"\n— Muslim';

  @override
  String get hadith77 =>
      '\"Heke we wek ku heq e tewekula xwe li Xwedê kiribûya, Wî yê wek çûkan rizqê we bida.\"\n— Tirmizî';

  @override
  String get hadith78 =>
      '\"Kî serdana nexweşekî bike, heta ku vegere di nav fêkiyên Bihuştê de ye.\"\n— Muslim';

  @override
  String get hadith79 =>
      '\"Selamê belav bikin, xwarinê bidin birçiyan û bi şev, dema mirov di xew de ne, nimêj bikin — hûn ê bi selametî bikevin Bihuştê.\"\n— Tirmizî';

  @override
  String get hadith80 =>
      '\"Kî spasiya mirovan neke, spasiya Xwedê jî nake.\"\n— Tirmizî';

  @override
  String get hadith81 =>
      '\"Hesûdî tenê di du rewşan de rewa ye: mirovê ku Xwedê mal dayê û ew wî di rêya heq de xerc dike, û mirovê ku Xwedê hikmet dayê û ew pê dadweriyê dike û wê hîn dike.\"\n— Buxarî û Muslim';

  @override
  String get hadith82 =>
      '\"Mirov li ser dînê hevalê xwe ye, bila her yek ji we binêre ku bi kê re hevaltî dike.\"\n— Ebû Dawûd û Tirmizî';

  @override
  String get hadith85 =>
      '\"Kî ji bo Xwedê dev ji tiştekî berde, Xwedê dê tiştekî çêtir bide wî.\"\n— Ehmed';

  @override
  String get hadith86 =>
      '\"Kî kêmasiyên Misilmanekî veşêre, Xwedê dê Roja Qiyametê kêmasiyên wî veşêre.\"\n— Buxarî û Muslim';

  @override
  String get hadith87 =>
      '\"Di vê dinyayê de wek xerîbekî an rêwiyekî bijî.\"\n— Buxarî';

  @override
  String get hadith88 =>
      '\"Kî karê kesê di tengasiyê de hêsan bike, Xwedê dê li dinyayê û axiretê karê wî hêsan bike.\"\n— Muslim';

  @override
  String get hadith89 =>
      '\"Xelata kirinan bi niyetan ve girêdayî ye.\"\n— Buxarî û Muslim';

  @override
  String get hadith90 =>
      '\"Ji gumanê dûr bikevin, ji ber ku guman derewîntirîn axaftin e.\"\n— Buxarî û Muslim';

  @override
  String get hadith93 =>
      '\"Bi hev re xwarinê bixwin û navê Xwedê bînin, wê ji we re bi bereket be.\"\n— Ebû Dawûd';

  @override
  String get hadith94 =>
      '\"Kîjan kom rûnin û Xwedê bi bîr bînin, milyaket wan dorpêç dikin, rehmet wan dipêçe û aramî li ser wan dadikeve.\"\n— Muslim';

  @override
  String get hadith95 =>
      '\"Bi lêborînê, Xwedê bendeyekî ji bilî rûmetê bi tiştekî zêde nake.\"\n— Muslim';

  @override
  String get hadith96 =>
      '\"Deveya xwe girê bide, paşê tewekula xwe li Xwedê bike.\"\n— Tirmizî';

  @override
  String get hadith97 =>
      '\"Karê bawermendî ecêb e — hemû karê wî jê re xêr e.\"\n— Muslim';

  @override
  String get hadith98 =>
      '\"Misilman birayê Misilman e: ne zulmê lê dike, ne wî bêxwedî dihêle û ne jî wî biçûk dibîne.\"\n— Muslim';

  @override
  String get delete => 'Jê bibe';

  @override
  String get remove => 'Rake';

  @override
  String get deleteAmalConfirmTitle => 'Ji şopandinê rake?';

  @override
  String deleteAmalConfirmBody(String title) {
    return '\"$title\" dê ji lîsteya te were veşartin. Dîroka te tê parastin.';
  }

  @override
  String get genericError => 'Çewtiyek çêbû. Ji kerema xwe dîsa biceribîne.';

  @override
  String get notificationChannelName => 'Bîranînên kirinan';

  @override
  String get notificationChannelDescription =>
      'Bîranînên rojane ji bo kirinên ku tu dişopînî.';

  @override
  String get invalidAmalId => 'Nasnameya kirinê nederbasdar e';

  @override
  String get tutorialSettingsRow => 'Muhasaba çawa tê bikaranîn';

  @override
  String get tutorialSkip => 'Derbas bike';

  @override
  String get tutorialNext => 'Pêşve';

  @override
  String get tutorialDone => 'Temam';

  @override
  String get tutorialTapTitle => 'Ji bo qedandinê bitikîne';

  @override
  String get tutorialTapBody =>
      'Tikandinek kirinê ji bo îro wek qediyayî nîşan dike. Ji bo vegerandinê dîsa bitikîne.';

  @override
  String get tutorialEditTitle => 'Ji bo guhertinê du caran bitikîne';

  @override
  String get tutorialEditBody =>
      'Forma guhertinê vedike — navê wê biguherîne, an jî dubarebûna wê sererast bike.';

  @override
  String get tutorialReorderTitle => 'Ji bo rêzkirinê dirêj pê bigire';

  @override
  String get tutorialReorderBody =>
      'Rêzekê bigire, paşê bikişîne. Rêza te tê tomarkirin.';

  @override
  String get tutorialRemoveTitle => 'Ji bo rakirinê bişemitîne';

  @override
  String get tutorialRemoveBody =>
      'Rêzê ber bi kêlekê ve bişemitîne da ku wê ji bo îro veşêrî, an jî şopandina wê rawestînî.';

  @override
  String get tutorialCountTitle => 'Jimartina dubarebûnan';

  @override
  String get tutorialCountBody =>
      'Ji bo kirinên ku hedefa wan ji yekê zêdetir e, ji bo her dubarebûnê − û + bi kar bîne.';

  @override
  String get tutorialViewTitle => 'Kom bike an lîsteya sade';

  @override
  String get tutorialViewBody =>
      'Di navbera komkirina li gorî kategoriyê û lîsteyeke sade de biguherîne.';

  @override
  String get tutorialLibraryTitle => 'Kirinên amade lê zêde bike';

  @override
  String get tutorialLibraryBody =>
      'Li Pirtûkxaneya Kirinan li gorî kategoriyan bigere, paşê li + bitikîne da ku kirinekê li Îro zêde bikî.';

  @override
  String get tutorialChallengeLogTitle => 'Ji bo tomarkirina îro bitikîne';

  @override
  String get tutorialChallengeLogBody =>
      'Tikandinek îro tomar dike. Di armanca hejmarî de, her tikandin gavekê zêde dike.';

  @override
  String get tutorialChallengeOpenTitle => 'Ji bo vekirinê du caran bitikîne';

  @override
  String get tutorialChallengeOpenBody =>
      'Armancê vedike — her rojê bibîne, rojeke ku ji dest çûye rast bike, an jî jê bibe.';

  @override
  String get tutorialChallengeDeleteBody =>
      'Ji bo jêbirina armancê kartê ber bi kêlekê ve bişemitîne.';

  @override
  String get tutorialChallengeAmountTitle => 'Tomarkirina hejmareke rast';

  @override
  String get tutorialChallengeAmountBody =>
      'Ji bo guhertinê − û + bi kar bîne, an jî li hejmarê bitikîne û hejmara rast binivîse.';

  @override
  String get challengeOpenDetailsAction => 'Hûrguliyên armancê veke';

  @override
  String get challengesActive => 'Çalak';

  @override
  String get challengesPast => 'Borî';

  @override
  String challengeJustFinished(int count, String title) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count armanc bi dawî bûn — ya dawî $title',
      one: '$title bi dawî bû',
    );
    return '$_temp0';
  }

  @override
  String get challengeSectionEnded => 'Bi dawî bûn';

  @override
  String get challengesPastEmpty => 'Hîn tiştek bi dawî nebûye.';

  @override
  String get challengesEmptyTitle => 'Hîn armanc tune';

  @override
  String get challengesEmptyBody =>
      'Ji xwe re armancekê deyne — wek 20 rekat di 7 rojan de — û li vir bişopîne.';

  @override
  String get editChallenge => 'Armancê biguherîne';

  @override
  String get deleteChallenge => 'Armancê jê bibe';

  @override
  String get deleteChallengeConfirm =>
      'Ev armanc û hemû pêşketina tomarkirî jê bên birin?';

  @override
  String get challengeShapeQuestion => 'Ev çi cure armanc e?';

  @override
  String get challengeShapeTotal => 'Gihîştina hejmarekê';

  @override
  String get challengeShapeTotalBody =>
      '1000 selawat, 30 cuz. Tu hejmaran tomar dikî û ew kom dibin.';

  @override
  String get challengeShapeStreak => 'Rêzeya roj bi roj';

  @override
  String get challengeShapeStreakBody =>
      'Teheccud, Fecr bi cemaet. Rojê nîşanek, hejmar ne girîng e.';

  @override
  String get challengeTargetLabel => 'Hedef';

  @override
  String get challengeTargetRequired => 'Hedefek ji sifirê mezintir binivîse';

  @override
  String get challengeUnitLabel => 'Yeke (bijarte)';

  @override
  String get challengeUnitHint => 'rekat, rûpel, car';

  @override
  String get challengeOneTapAdds => 'Her tikandin zêde dike';

  @override
  String get challengeHowManyDays => 'Çend roj?';

  @override
  String get challengeReachHowMuch => 'Hedef çiqas e?';

  @override
  String get challengeSpreadOver => 'Mawe';

  @override
  String get challengeSpreadEveryDay => 'Her roj';

  @override
  String get challengeSpreadLonger => 'Maweyeke dirêjtir';

  @override
  String get challengeByWhen => 'Heta kengî?';

  @override
  String get challengeWindowDuration => 'Di nav maweyekê de';

  @override
  String get challengeByDate => 'Heta dîrokekê';

  @override
  String challengePlanRange(String start, String end) {
    return '$start heta $end';
  }

  @override
  String challengePlanExact(String start, String end) {
    return '$start heta $end · rojê yek, her roj';
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
    return '$start heta $end · $target ji $window rojan — $slack dikarî ji dest bidî';
  }

  @override
  String challengePlanRate(String start, String end, String rate) {
    return '$start heta $end · rojê nêzîkî $rate';
  }

  @override
  String challengePlanOpen(String start) {
    return '$start dest pê dike · bê dema dawî';
  }

  @override
  String challengeTooTight(
    String target,
    String window,
    num targetCount,
    num windowCount,
  ) {
    return '$target roj di $window rojan de cih nagirin — rêze rojê yekê dihesibîne.';
  }

  @override
  String challengeDurationLabel(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count roj',
      one: '$count roj',
    );
    return '$_temp0';
  }

  @override
  String get challengeStartDate => 'Destpêk';

  @override
  String get challengeEndDate => 'Dawî';

  @override
  String challengeProgressCount(String done, String target, String unit) {
    return '$done ji $target $unit';
  }

  @override
  String challengeProgressPlain(String done, String target) {
    return '$done ji $target';
  }

  @override
  String challengeProgressDays(String done, String target) {
    return '$done ji $target rojan';
  }

  @override
  String challengeDaysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count roj mane',
      one: '$count roj maye',
    );
    return '$_temp0';
  }

  @override
  String get challengeNoDeadline => 'Bê dema dawî';

  @override
  String challengeOnTrack(String rate) {
    return 'Li ser rê · $rate/roj';
  }

  @override
  String challengeBehind(String rate) {
    return 'Li paş · ji bo qedandinê $rate/roj';
  }

  @override
  String challengeLastDay(String remaining) {
    return 'Roja dawî · $remaining maye';
  }

  @override
  String get challengeReached => 'Hedef pêk hat';

  @override
  String get challengeCompleted => 'Pêk hat';

  @override
  String challengeEnded(String done, String target) {
    return 'Bi dawî bû · $done ji $target';
  }

  @override
  String get challengeExpiredTitle => 'Armanc bi dawî bû';

  @override
  String challengeExpiredBody(String title, String done, String target) {
    return '$title bi $done ji $target bi dawî bû.';
  }

  @override
  String get challengeExtend => 'Dirêj bike';

  @override
  String get challengeRestart => 'Ji nû ve dest pê bike';

  @override
  String get challengeArchive => 'Arşîv bike';

  @override
  String get challengeDailyBreakdown => 'Tomara rojane';

  @override
  String challengeNudgeBody(String title, String rate) {
    return '$title: ji bo ku di wextê xwe de biqede, rojê $rate.';
  }

  @override
  String challengeLastDayBody(String title, String remaining) {
    return '$title: roja dawî — $remaining maye.';
  }

  @override
  String get challengeGroupGoal => 'Armanc';

  @override
  String get challengeGroupShape => 'Cure';

  @override
  String get challengeGroupPlan => 'Plan';

  @override
  String get challengeGroupReminders => 'Bîranîn';

  @override
  String get challengeStartFromTemplate => 'Ji şablonekê dest pê bike';

  @override
  String get challengeTemplateBlank => 'Vala';

  @override
  String get challengePreview => 'Pêşdîtin';

  @override
  String get challengeTmplTahajjud => '40 şev Teheccud';

  @override
  String get challengeTmplSalawat => '1000 selawat';

  @override
  String get challengeTmplKhatm => 'Xetma Quranê di 30 rojan de';

  @override
  String get challengeTmplFajrJamaah => '30 roj Fecr bi cemaet';

  @override
  String get challengeTmplSadaqah => '30 roj sedeqe';

  @override
  String get listSeparator => ' · ';

  @override
  String get tierRafiq => 'Refîq';

  @override
  String get tierNasir => 'Nasir';

  @override
  String get tierMuhsin => 'Muhsîn';

  @override
  String get tierAnsar => 'Ensar';

  @override
  String get tierRafiqMeaning => 'heval';

  @override
  String get tierNasirMeaning => 'piştgir';

  @override
  String get tierMuhsinMeaning => 'qencîkar';

  @override
  String get tierAnsarMeaning => 'alîkar';

  @override
  String get supportCardBody =>
      'Belaş e, bê reklam û bê hesab. Tu dikarî bi bexşîşekê piştgiriya pêşxistina wê bikî — çiqas bixwazî, kengî bixwazî.';

  @override
  String get supportCta => 'Piştgiriya Muhasaba bike';

  @override
  String get supportAgain => 'Dîsa piştgirî bike';

  @override
  String get supporterThanks =>
      'Xwedê ji we razî be — înşallah Muhasaba belaş û bê reklam dimîne.';

  @override
  String supporterSince(String tier, String month) {
    return '$tier ji $month ve';
  }

  @override
  String get supportPromptTitle => 'Piştgiriya Muhasaba bike';

  @override
  String get supportPromptBody =>
      'Muhasaba belaş e, bê reklam û bê hesab. Tu dikarî bi bexşîşekê piştgiriya pêşxistina wê bikî — çiqas bixwazî, kengî bixwazî. Bê wê jî her tişt vekirî ye.';

  @override
  String get supportPromptNow => 'Niha piştgirî bike';

  @override
  String get supportPromptLater => 'Paşê bîne bîra min';

  @override
  String get supportPromptNever => 'Careke din nepirse';

  @override
  String get tipSheetTitle => 'Piştgiriya Muhasaba bike';

  @override
  String get tipSheetBody =>
      'Çiqas bixwazî hilbijêre, çend caran bixwazî. Bexşîş ji bo lênêrîna bernameyê diçin — înşallah ew belaş û bê reklam dimîne. Wek spasî, tu di Mîhengan de wek piştgir tê nîşandan.';

  @override
  String tipSheetSupporterLine(String tier) {
    return '$tier — Xwedê ji we razî be.';
  }

  @override
  String get tipSheetSupporterAgain => 'Kengî bixwazî dîsa piştgirî bike.';

  @override
  String tipSheetStoreNote(String store) {
    return 'Bi rêya $store tê kirin — em tu carî agahiyên te yên pêdanê nabînin.';
  }

  @override
  String get tipSheetOtherWays => 'Vebijarkeke ku ji te re guncav be nabînî?';

  @override
  String get tipSheetWriteToUs => 'Ji me re binivîse';

  @override
  String get supportEmailBody =>
      'Es-selamû eleykum,\n\nEz dixwazim rasterast piştgiriya pêşxistina Muhasaba bikim.\n\nWelat:\nEz çawa dixwazim bişînim:\nMîqdar (bijarte):';

  @override
  String tipBusy(String store) {
    return '$store tê vekirin…';
  }

  @override
  String get tipThanks => 'Xwedê ji we razî be — Xwedê ji we qebûl bike.';

  @override
  String get tipDone => 'Temam';

  @override
  String get tipFailed => 'Kirîn pêk nehat. Ti pere nehat kişandin.';

  @override
  String tipPending(String store) {
    return 'Bexşîşa te li $store li benda pejirandinê ye — gava were pejirandin, nîşana te dê were zêdekirin.';
  }

  @override
  String get tipUnavailable => 'Niha li ser vê amûrê kirîn ne mumkin e.';

  @override
  String get optionSetJamaa => 'Cemaet';

  @override
  String get optionJamaaAlone => 'Bi tenê';

  @override
  String get optionJamaaHome => 'Li malê bi cemaet';

  @override
  String get optionJamaaMasjid => 'Li mizgeftê bi cemaet';

  @override
  String get optionSetOnTime => 'Di wextê xwe de';

  @override
  String get optionOnTimeOnTime => 'Di wextê xwe de';

  @override
  String get optionOnTimeLate => 'Dereng';

  @override
  String get optionOnTimeQada => 'Qeza';

  @override
  String get optionSetQuranSession => 'Danişîna Quranê';

  @override
  String get optionQuranRecited => 'Hat xwendin';

  @override
  String get optionQuranMemorised => 'Hat jiberkirin';

  @override
  String get optionQuranMeaning => 'Bi wateyê';

  @override
  String get optionQuranListened => 'Hat guhdarîkirin';

  @override
  String get optionSetSadaqahType => 'Cureyê sedeqeyê';

  @override
  String get optionSadaqahMoney => 'Pere';

  @override
  String get optionSadaqahFood => 'Xwarin';

  @override
  String get optionSadaqahTime => 'Dem';

  @override
  String get optionSadaqahOther => 'Ya din';

  @override
  String get optionSetIntensity => 'Ast';

  @override
  String get optionIntensityLight => 'Sivik';

  @override
  String get optionIntensityModerate => 'Navîn';

  @override
  String get optionIntensityIntense => 'Tund';

  @override
  String get optionSetNewTitle => 'Koma vebijarkan a nû';

  @override
  String get optionSetEditTitle => 'Koma vebijarkan biguherîne';

  @override
  String get optionSetNameLabel => 'Navê komê';

  @override
  String get optionSetNameHint => 'wek mînak Cemaet';

  @override
  String get optionsLabel => 'Vebijark';

  @override
  String get optionAdd => 'Vebijarkê lê zêde bike';

  @override
  String optionHint(int index) {
    return 'Vebijark $index';
  }

  @override
  String optionsMaxReached(int max) {
    return 'Herî zêde $max vebijark.';
  }

  @override
  String get optionSetPreviewLabel => 'Pêşdîtin — rêza Îro';

  @override
  String optionSetKeptForHistory(String labels) {
    return 'Ji bo dîrokê hat parastin: $labels';
  }

  @override
  String get optionSetDelete => 'Komê jê bibe';

  @override
  String get optionSetDeleteConfirm =>
      'Kirinên ku vê komê bi kar tînin êdî vebijarkan nîşan nadin. Rojên ku te berê tomar kirine hilbijartina xwe diparêzin.';

  @override
  String get optionSetNameRequired => 'Navekî bide komê';

  @override
  String get optionsMinRequired => 'Herî kêm du vebijarkan lê zêde bike';

  @override
  String get optionSetNameTooLong => 'Navê komê pir dirêj e';

  @override
  String optionTooLong(int index) {
    return 'Vebijark $index pir dirêj e';
  }

  @override
  String get optionSetNone => 'Tune';

  @override
  String get optionSetNew => 'Koma nû';

  @override
  String get requireChoiceLabel => 'Hilbijartin pêwîst bike';

  @override
  String get requireChoiceHelp =>
      'Heta vebijarkek neyê hilbijartin, rêz nayê nîşankirin';

  @override
  String get requireChoicePickSetFirst => 'Pêşî komê hilbijêre';

  @override
  String get requireChoiceCountHelp => 'Kirinên hejmarî bi − û + tên qedandin';

  @override
  String optionsUsedOf(int used, int max) {
    return '$used ji $max vebijarkan hatine bikaranîn.';
  }

  @override
  String get choiceNeeded => 'Hilbijartin pêwîst e';

  @override
  String optionSelected(String label) {
    return '$label, hatiye hilbijartin';
  }

  @override
  String optionNotSelected(String label) {
    return '$label, nehatiye hilbijartin';
  }

  @override
  String optionBreakdownTitle(String set) {
    return 'Dabeşkirina vebijarkan — $set';
  }

  @override
  String optionBreakdownCaption(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count qedandinan',
      one: '1 qedandinê',
    );
    return 'Para ji $_temp0 ku hilbijartin tê de hatiye tomarkirin';
  }

  @override
  String optionNoChoiceRecorded(int none, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other: '$total rojên qediyayî',
      one: '1 roja qediyayî',
    );
    return 'Hilbijartin nehatiye tomarkirin — $none ji $_temp0';
  }

  @override
  String get optionRemovedSuffix => 'hatiye rakirin';

  @override
  String get optionAllAmals => 'Hemû';

  @override
  String optionScopedCaption(String amal, int count) {
    return '$amal · $count tomar';
  }

  @override
  String get optionBreakdownSectionTitle => 'Dabeşkirina vebijarkan';

  @override
  String optionBreakdownSwipeHint(int count) {
    return '$count kom · bişemitîne';
  }

  @override
  String get optionDetailEmpty =>
      'Ji bo vê komê hîn tu hilbijartin nehatiye tomarkirin.';

  @override
  String get optionDetailTrendHeading => 'Çawa guherî';

  @override
  String optionDetailTrendReadout(String option, String from, String to) {
    return 'Para $option di navbera hefteya yekem û ya dawî de ji $from derbasî $to bû.';
  }

  @override
  String get optionDetailByAmalHeading => 'Li gorî kirinê';

  @override
  String optionDetailByAmalReadout(
    String best,
    String bestShare,
    String worst,
    String worstShare,
  ) {
    return 'Herî bilind: $best ($bestShare); herî nizm: $worst ($worstShare).';
  }

  @override
  String get optionDetailRecordsHeading => 'Rekor';

  @override
  String get optionDetailLongestRun => 'Rêzeya herî dirêj';

  @override
  String get optionDetailBestWeek => 'Hefteya herî baş';

  @override
  String get optionDetailCurrentRun => 'Rêzeya niha';

  @override
  String get optionDetailRecordsCaption =>
      'Li ser bingeha sala borî ye û ji parzûna heyamê ya jorîn serbixwe ye.';

  @override
  String get optionDetailRecentDaysHeading => 'Rojên dawî';

  @override
  String optionDetailRecentDaysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count rojên dawî',
      one: '1 roja dawî',
    );
    return '$_temp0';
  }

  @override
  String get amalFivePrayers => 'Pênc nimêjên rojane';

  @override
  String get amalJumuah => 'Nimêja înê';

  @override
  String get amalWitr => 'Nimêja witrê';

  @override
  String get amalQada => 'Nimêjên qeza';

  @override
  String get amalFajrSunnah => 'Sunneta Fecrê';

  @override
  String get amalDhuhrSunnah => 'Sunneta Nîvroyê';

  @override
  String get amalAsrSunnah => 'Sunneta Esrê';

  @override
  String get amalMaghribSunnah => 'Sunneta Mexribê';

  @override
  String get amalIshaSunnah => 'Sunneta Îşayê';

  @override
  String get amalRawatib => 'Sunnetên rewatib';

  @override
  String get amalSiwak => 'Misewak';

  @override
  String get amalWuduSleep => 'Destnimêj berî xewê';

  @override
  String get amalFridayGhusl => 'Serşûştina înê';

  @override
  String get amalIshraq => 'Nimêja Îşraqê';

  @override
  String get amalWuduPrayer => 'Du rekat piştî destnimêjê';

  @override
  String get amalTahiyyah => 'Tehiyyetul-mescid';

  @override
  String get amalEarlyJumuah => 'Zû çûna nimêja înê';

  @override
  String get amalAfterSalah => 'Zikrên piştî nimêjê';

  @override
  String get amalAfterFajr => 'Zikrên piştî Fecrê';

  @override
  String get amalAfterDhuhr => 'Zikrên piştî Nîvroyê';

  @override
  String get amalAfterAsr => 'Zikrên piştî Esrê';

  @override
  String get amalAfterMaghrib => 'Zikrên piştî Mexribê';

  @override
  String get amalAfterIsha => 'Zikrên piştî Îşayê';

  @override
  String get amalAyatKursi => 'Ayeta Kursî';

  @override
  String get amalKursiFajr => 'Ayeta Kursî piştî Fecrê';

  @override
  String get amalKursiDhuhr => 'Ayeta Kursî piştî Nîvroyê';

  @override
  String get amalKursiAsr => 'Ayeta Kursî piştî Esrê';

  @override
  String get amalKursiMaghrib => 'Ayeta Kursî piştî Mexribê';

  @override
  String get amalKursiIsha => 'Ayeta Kursî piştî Îşayê';

  @override
  String get amalSayyidIstighfar => 'Seyîdul-Îstîxfar';

  @override
  String get amalSalawat => 'Selawat';

  @override
  String get amalSubhanallah => 'Subhanellahî we bihemdihî';

  @override
  String get amalTahlil => 'La îlahe îllellah';

  @override
  String get amalBedtimeAdhkar => 'Zikrên berî xewê';

  @override
  String get amalFridaySalawat => 'Selawata înê';

  @override
  String get amalHawqala => 'La hewle we la quwwete';

  @override
  String get amalTasbihFatimah => 'Tesbîha Fatimayê';

  @override
  String get amalWakingAdhkar => 'Zikrên şiyarbûnê';

  @override
  String get amalDuaAdhan => 'Dua piştî bangê';

  @override
  String get amalDuaIqamah => 'Dua di navbera bang û îqametê de';

  @override
  String get amalDuaSujood => 'Dua di secdeyê de';

  @override
  String get amalDuaParents => 'Dua ji bo dê û bav';

  @override
  String get amalDuaOthers => 'Dua ji bo kesên din';

  @override
  String get amalFridayHour => 'Dua di saeta dawî ya înê de';

  @override
  String get amalLastThird => 'Dua di sêyeka dawî ya şevê de';

  @override
  String get amalMulk => 'Sûreya Mulk';

  @override
  String get amalBaqarahEnd => 'Du ayetên dawî yên Beqereyê';

  @override
  String get amalSajdah => 'Sûreya Secde';

  @override
  String get amalQuls => 'Sê Qul';

  @override
  String get amalYasin => 'Sûreya Yasîn';

  @override
  String get amalWaqiah => 'Sûreya Waqia';

  @override
  String get amalHifz => 'Ezberkirina Quranê';

  @override
  String get amalMurajaah => 'Dubarekirina ezberê';

  @override
  String get amalTafsir => 'Tefsîr';

  @override
  String get amalListenQuran => 'Guhdariya Quranê';

  @override
  String get amalTeachQuran => 'Hînkirina Quranê';

  @override
  String get amalMonThu => 'Rojiya duşem û pêncşemê';

  @override
  String get amalThreeDays => 'Mehê sê roj rojî';

  @override
  String get amalDailySadaqah => 'Sedeqeya rojane';

  @override
  String get amalFeed => 'Têrkirina birçiyan';

  @override
  String get amalHelpNeed => 'Alîkariya hewcedaran';

  @override
  String get amalOrphan => 'Xwedîkirina sêwiyan';

  @override
  String get amalGiveWater => 'Avdayîn';

  @override
  String get amalLearnHadith => 'Hînbûna hedîsekê';

  @override
  String get amalReadBook => 'Xwendina pirtûkeke îslamî';

  @override
  String get amalSeerah => 'Hînbûna sîreyê';

  @override
  String get amalClass => 'Beşdarbûna dersê';

  @override
  String get amalArabic => 'Hînbûna erebiyê';

  @override
  String get amalLearnDua => 'Hînbûna duayeke nû';

  @override
  String get amalShare => 'Parvekirina zanînê';

  @override
  String get amalFiqh => 'Hînbûna fiqhê';

  @override
  String get amalMuhasaba => 'Muhasebeya şevê';

  @override
  String get amalSpeakGood => 'Ya baş bêje, yan jî bêdeng bimîne';

  @override
  String get amalNoBackbiting => 'Dûrketina ji xeybetê';

  @override
  String get amalAnger => 'Daqurtandina hêrsê';

  @override
  String get amalGaze => 'Parastina çavan';

  @override
  String get amalTruthful => 'Rastgotin';

  @override
  String get amalSmile => 'Bişirîn';

  @override
  String get amalSalam => 'Belavkirina silavê';

  @override
  String get amalForgive => 'Lêborîna kesên din';

  @override
  String get amalGratitude => 'Şikirdarî';

  @override
  String get amalVisitSick => 'Serdana nexweşan';

  @override
  String get amalNeighbours => 'Qencî ji cîranan re';

  @override
  String get amalRemoveHarm => 'Rakirina tiştên zirardar ji rê';

  @override
  String get amalParents => 'Qencî ji dê û bav re';

  @override
  String get amalFamilyTies => 'Parastina têkiliyên bi xizman re';

  @override
  String get amalHelpHome => 'Alîkariya karên malê';

  @override
  String get amalTeachChildren => 'Hînkirina zarokên xwe';

  @override
  String get amalSpouse => 'Qencî ji hevjînê re';

  @override
  String get categoryDua => 'Dua';

  @override
  String get categoryFasting => 'Rojî';

  @override
  String get categoryKnowledge => 'Zanîn';

  @override
  String get categoryCharacter => 'Exlaq';

  @override
  String get categoryFamily => 'Malbat';

  @override
  String get libraryTitle => 'Pirtûkxaneya Kirinan';

  @override
  String get librarySearchHint => 'Li kirinan bigere';

  @override
  String get libraryAll => 'Hemû';

  @override
  String get libraryAdded => 'Li Îro hat zêdekirin';

  @override
  String libraryAddedShowsOn(String days) {
    return 'Hat zêdekirin · xuya dibe: $days';
  }

  @override
  String libraryNoMatch(String query) {
    return 'Tu kirin bi “$query” re li hev nayê';
  }

  @override
  String libraryCreateNamed(String query) {
    return '“$query” biafirîne';
  }

  @override
  String get libraryPickBanner => 'Ji Pirtûkxaneya Kirinan hilbijêre';

  @override
  String libraryPickBannerSubtitle(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countText kirinên amade',
      one: '$countText kirina amade',
    );
    return '$_temp0';
  }

  @override
  String get libraryFilledIn => 'Ji Pirtûkxaneya Kirinan hat dagirtin';

  @override
  String get libraryChange => 'Biguherîne';

  @override
  String get libraryEditAction => 'Sererast bike';

  @override
  String libraryWeeklyAny(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Hefteyê $countText roj',
      one: 'Hefteyê carekê',
    );
    return '$_temp0';
  }

  @override
  String libraryMonthlyAny(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Mehê $countText roj',
      one: 'Mehê carekê',
    );
    return '$_temp0';
  }

  @override
  String libraryTimes(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countText car',
    );
    return '$_temp0';
  }

  @override
  String get libraryAnyAmount => 'Her hejmar';

  @override
  String libraryAddTooltip(String title) {
    return '$title lê zêde bike';
  }

  @override
  String get libraryOnList => 'Di lîsteya te de ye';

  @override
  String get todayEmptyBrowse => 'Li Pirtûkxaneya Kirinan binêre';
}
