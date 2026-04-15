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
  String get tabToday => 'Îro';

  @override
  String get tabStats => 'Amar';

  @override
  String get tabHistory => 'Dîrok';

  @override
  String get tabSettings => 'Mîheng';

  @override
  String get newAmal => 'Kirina nû';

  @override
  String get editAmal => 'Kirinê biguherîne';

  @override
  String get newAmalTitle => 'Kirina nû';

  @override
  String get save => 'Tomar bike';

  @override
  String get cancel => 'Dev jê berde';

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
  String get categoryLabel => 'Beş';

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
  String get timesPerPeriod => 'Car di her heyamê de';

  @override
  String get custom => 'Taybet';

  @override
  String get customTargetHint => 'wek mînak 50';

  @override
  String get dayOfWeek => 'Roja hefteyê';

  @override
  String get anyDay => 'Her roj';

  @override
  String get anyDayHint => 'Her roj (îro xuya dibe, sibê vedişêre)';

  @override
  String onlyDayHint(String day) {
    return 'Tenê $day';
  }

  @override
  String get dateOfMonth => 'Roja mehê';

  @override
  String get anyDate => 'Her roj';

  @override
  String get anyDateHint => 'Her roj (îro xuya dibe, sibê vedişêre)';

  @override
  String onlyDateHint(String date) {
    return 'Tenê di $date de';
  }

  @override
  String get startPreChecked => 'Ji destpêkê ve nîşankirî';

  @override
  String get startPreCheckedSubtitle =>
      'Gava heyamek nû dest pê dike, ev kirin bi xweber wek qediyayî tê nîşankirin heta ku tu nîşanê rakî.';

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
      'Bîranîn hat tomarkirin, lê agahdarî destûr nehatiye dayîn. Di mîhengên pergalê de wan çalak bike.';

  @override
  String get groupByCategory => 'Li gorî beşê kom bike';

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
  String get noteHint => 'wek mînak Li mizgeftê nimêj kir';

  @override
  String get completed => 'qediya';

  @override
  String get notCompleted => 'neqediya';

  @override
  String progressOf(int progress, int target) {
    return '$progress ji $target qediya';
  }

  @override
  String get removeFromToday => 'Ji îro rake';

  @override
  String get removeFromTodaySubtitle =>
      'Tenê ji bo vê rojê vedişêre. Sibê vedigere.';

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
  String get recentlyUsed => 'Yên dawî bikaranîn';

  @override
  String get emojiSectionGeneral => 'Giştî';

  @override
  String get categoryNameHint => 'Nav';

  @override
  String get categoryNew => '+ Nû';

  @override
  String get categoryNewSheetTitle => 'Kategoriya nû';

  @override
  String get categoryEditSheetTitle => 'Kategoriyê biguhêre';

  @override
  String get addAmal => 'Kirin lê zêde bike';

  @override
  String get customAmal => 'Kirina taybet';

  @override
  String get templateTasbih => 'Tesbîh 33 car';

  @override
  String get templateIstighfar => 'Îstîxfar 100 car';

  @override
  String get templateSurahKahf => 'Sûreya Kehf';

  @override
  String get templateSadaqah => 'Sedaqe';

  @override
  String get templateTahajjud => 'Teheccud';

  @override
  String get templateDuhaPrayer => 'Nimêja Duhayê';

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
    return 'Kirînên duh heta $time têne guherandin.';
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
      'Rojên piştî 28ê ji bo mehên kurt li roja dawî tê guhertin.';

  @override
  String get sectionAppearance => 'Xuyang';

  @override
  String get theme => 'Tema';

  @override
  String get themeSystem => 'Pergal';

  @override
  String get themeLight => 'Ronahî';

  @override
  String get themeDark => 'Tarî';

  @override
  String get sectionLanguage => 'Ziman';

  @override
  String get language => 'Ziman';

  @override
  String get systemDefault => 'Bingehîn a pergalê';

  @override
  String get aboutTitle => 'Muhasaba';

  @override
  String get aboutSubtitle =>
      'Rojnameya berpirsiyariya dînî ya kesane. Hemû dane li ser vê amûrê dimînin.';

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
  String get totalCompletions => 'tevahiya qediyandinan';

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
      'Hîn kirin tune. Ji Îro yekê lê zêde bike da ku şopandin dest pê bike.';

  @override
  String get statsToday => 'Îro';

  @override
  String get statsThisWeek => 'Vê Hefteyê';

  @override
  String get statsThisMonth => 'Vê Mehê';

  @override
  String get statsAllTime => 'Hemû Dem';

  @override
  String get statsCustomRange => 'Heyama Taybet';

  @override
  String get statsAllCategories => 'Hemû';

  @override
  String get statsAllAmals => 'Hemû';

  @override
  String get statsCompleted => 'Qediyaye';

  @override
  String get statsExpected => 'Bendewarkirî';

  @override
  String get statsVsPrevious => 'li hember ya berê';

  @override
  String get statsByCategory => 'Li gorî beşê';

  @override
  String get statsPerAmal => 'Ji bo her kirinê';

  @override
  String get statsCurrentStreak => 'Rêza niha';

  @override
  String get statsBestStreak => 'Rêza herî baş';

  @override
  String get statsTotalDays => 'Tevahiya rojan';

  @override
  String get statsConsistency => 'Berdewamî';

  @override
  String get statsLast5Weeks => '5 hefteyên dawî';

  @override
  String get statsDailyBreakdown => 'Hûrguliyên rojane';

  @override
  String get statsCompletionRate => 'Rêjeya qedandinê';

  @override
  String get statsFilterTime => 'Dem';

  @override
  String get statsFilterCategory => 'Beş';

  @override
  String get statsFilterAmal => 'Kirin';

  @override
  String get statsStreaks => 'Rêz';

  @override
  String get statsSelectDateRange => 'Heyama rojê hilbijêre';

  @override
  String get historyTitle => 'Dîrok';

  @override
  String get jumpToDate => 'Biçe rojekê';

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
      '\"Kirinên herî delal li ber Xwedê ew in ku domdar in, heke piçûk bin jî.\"\n— Buxarî û Muslim';

  @override
  String get hadith2 =>
      '\"Gava kurê Adem dimire, kirinên wî disekinin ji bilî sisiyan: xêra domdar, zanista bi kêr, an zarokek salih ku ji bo wî dua dike.\"\n— Muslim';

  @override
  String get hadith3 =>
      '\"Kî du nimêjên hênik (Fecir û Esr) bike, dê bikeve Bihuştê.\"\n— Buxarî';

  @override
  String get hadith4 =>
      '\"Xwedê li rûyê we û malê we nanêre, lê li dilê we û kirinên we dinêre.\"\n— Muslim';

  @override
  String get hadith6 =>
      '\"Hêsan bikin û dijwar nekin; mizgînî bidin û mirovan netirsînin.\"\n— Buxarî';

  @override
  String get hadith7 =>
      '\"Kî rêyek bigire ji bo lêgerîna zanistê, Xwedê rêya Bihuştê jê re hêsan dike.\"\n— Muslim';

  @override
  String get hadith8 => '\"Xêr malê kêm nake.\"\n— Muslim';

  @override
  String get hadith9 =>
      '\"Bawermendê bihêz çêtir û ji Xwedê re delaltir e ji bawermendê qels, lê di herduyan de jî qencî heye.\"\n— Muslim';

  @override
  String get hadith10 =>
      '\"Ew kesê ku di rojê de sed caran \'SubhanAllahi we bihamdihi\' bêje, gunahên wî têne baxişandin heke wek kefa behrê bin jî.\"\n— Buxarî';

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
  String get settingsSupport => 'Piştgirî';

  @override
  String get settingsRate => 'Bernameyê binirxînin';

  @override
  String get settingsContact => 'Têkilî pê re bikin';

  @override
  String get settingsReportBug => 'Çewtiyekê ragihînin';

  @override
  String get settingsRequestFeature => 'Taybetmendiyek bixwazin';

  @override
  String settingsSupportFallback(String email) {
    return 'Posteyê venakir. Ji kerema xwe ji $email re e-name bişînin.';
  }

  @override
  String get settingsPrivacyPolicy => 'سیاسەتی تایبەتمەندی';

  @override
  String get settingsPrivacyOpenFailed =>
      'نەتوانرا سیاسەتی تایبەتمەندی بکرێتەوە.';

  @override
  String get hadith20 =>
      '\"Kî bi bawerî û bi hêviya xelatê Remezanê rojî bigire, gunehên wî yên berê têne baxişandin.\"\n— Buxarî û Muslim';

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
  String get hadith29 =>
      '\"Xêra herî baş dayîna avê ye ku were vexwarin.\"\n— Ehmed';

  @override
  String get hadith30 =>
      '\"Kî tengahiyek ji bawermendekî rake, Xwedê dê Roja Qiyametê tengahiyek ji wî rake.\"\n— Muslim';

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
      '\"Birçiyan têr bikin, nexweşan serdana bikin û girtîyan azad bikin.\"\n— Buxarî';

  @override
  String get hadith38 =>
      '\"Yê bi hêz ne ew e ku di zordariyê de bi ser dikeve, lê ew e ku di dema hêrsê de xwe kontrol dike.\"\n— Buxarî û Muslim';

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
  String get hadith49 =>
      '\"Kî xwarinê bixwe û bibêje: \'Spas ji Xwedê re ye ku ev xwarin da min û bêyî hêz û hîla min dabîn kir,\' gunehên wî yên berê têne baxişandin.\"\n— Tirmizî';

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
  String get hadith74 =>
      '\"Berî ku ceribandin wek perçeyên şeveke tarî werin, di kirinên qenc de lez bikin.\"\n— Muslim';

  @override
  String get hadith75 =>
      '\"Du rikatên nimêja Fecirê ji dinyayê û her tiştê ku tê de ye çêtir in.\"\n— Muslim';

  @override
  String get hadith77 =>
      '\"Heke hûn bi rastî pişta xwe bi Xwedê ve girêdana, ew ê wek çûkan rizqê we bida we.\"\n— Tirmizî';

  @override
  String get hadith78 =>
      '\"Kî serdana nexweşekî bike, heta ku vegere di baxçeyê Bihuştê de ye.\"\n— Muslim';

  @override
  String get hadith79 =>
      '\"Selamê belav bikin, birçiyan têr bikin û bi şev nimêj bikin gava ku mirov radizan — hûn ê bi aştiyê bikevin Bihuştê.\"\n— Tirmizî';

  @override
  String get hadith80 =>
      '\"Kî spasiya mirovan neke, spasiya Xwedê jî nake.\"\n— Tirmizî';

  @override
  String get hadith81 =>
      '\"Çavnebarî tenê di du baran de rewa ye: mirovê ku Xwedê mal daye û ew di rêya rast de xerc dike, û mirovê ku Xwedê şehrezayî daye û pê dadbarî dike û hîn dike.\"\n— Buxarî û Muslim';

  @override
  String get hadith82 =>
      '\"Mirov li ser dînê hevalê xwe ye, bila her yek ji we binêre ku bi kê re hevaltî dike.\"\n— Ebû Dawûd û Tirmizî';

  @override
  String get hadith85 =>
      '\"Kî tiştekî ji bo Xwedê berde, Xwedê dê tiştekî çêtir bide wî.\"\n— Ehmed';

  @override
  String get hadith86 =>
      '\"Kî kêmasiyên Misilmanekî veşêre, Xwedê dê Roja Qiyametê kêmasiyên wî veşêre.\"\n— Buxarî û Muslim';

  @override
  String get hadith87 =>
      '\"Di vê dinyayê de wek xerîbek an rêwiyek bijî.\"\n— Buxarî';

  @override
  String get hadith88 =>
      '\"Kî ji bo kesê di tengasiyê de hêsaniyê peyda bike, Xwedê dê li dinyayê û axretê jê re hêsaniyê peyda bike.\"\n— Muslim';

  @override
  String get hadith89 =>
      '\"Xelata kirinan bi niyetan ve girêdayî ye.\"\n— Buxarî û Muslim';

  @override
  String get hadith90 =>
      '\"Ji gumanê dûr bikevin, ji ber ku guman derewîntirîn axaftin e.\"\n— Buxarî û Muslim';

  @override
  String get hadith93 =>
      '\"Bi hev re xwarinê bixwin û navê Xwedê bibêjin, dê ji we re bibe bereketê.\"\n— Ebû Dawûd';

  @override
  String get hadith94 =>
      '\"Civîna herî baş ew e ku herî fireh be.\"\n— Ebû Dawûd';

  @override
  String get hadith95 => '\"Bibaxşînin û hûn jî tên baxişandin.\"\n— Ehmed';

  @override
  String get hadith96 =>
      '\"Devê xwe girê bide û paşê pişta xwe bi Xwedê ve girê bide.\"\n— Tirmizî';

  @override
  String get hadith97 =>
      '\"Kara bawermend ecêb e — her tişt ji bo wî baş e.\"\n— Muslim';

  @override
  String get hadith98 =>
      '\"Misilman birayê Misilman e: ne zilm lê dike, ne dev jê berdide û ne jî wî piçûk dibîne.\"\n— Muslim';
}
