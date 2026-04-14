// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Somali (`so`).
class AppLocalizationsSo extends AppLocalizations {
  AppLocalizationsSo([String locale = 'so']) : super(locale);

  @override
  String get appTitle => 'Muhasaba';

  @override
  String get tabToday => 'Maanta';

  @override
  String get tabStats => 'Tirakoob';

  @override
  String get tabHistory => 'Taariikhda';

  @override
  String get tabSettings => 'Dejinta';

  @override
  String get newAmal => 'Camal cusub';

  @override
  String get editAmal => 'Wax ka beddel camasha';

  @override
  String get newAmalTitle => 'Camal cusub';

  @override
  String get save => 'Kaydi';

  @override
  String get cancel => 'Ka noqo';

  @override
  String get clear => 'Nadiifi';

  @override
  String get titleLabel => 'Cinwaan';

  @override
  String get titleRequired => 'Cinwaanka waa lagama maari karo';

  @override
  String get titleTooLong => 'Cinwaanka aad buu u dheer yahay';

  @override
  String get frequencyLabel => 'Inta jeer';

  @override
  String get frequencyDaily => 'Maalin walba';

  @override
  String get frequencyWeekly => 'Toddobaad walba';

  @override
  String get frequencyMonthly => 'Bil walba';

  @override
  String get categoryLabel => 'Qaybta';

  @override
  String get categoryOther => 'Kuwo kale';

  @override
  String get categorySalah => 'Salaadda';

  @override
  String get categoryDhikr => 'Xasuus';

  @override
  String get categoryQuran => 'Quraanka';

  @override
  String get categoryCharity => 'Sadaqo';

  @override
  String get timesPerPeriod => 'Tirada muddo walba';

  @override
  String get custom => 'Gaar ah';

  @override
  String get customTargetHint => 'tus. 50';

  @override
  String get dayOfWeek => 'Maalinta toddobaadka';

  @override
  String get anyDay => 'Maalin kasta';

  @override
  String get anyDayHint =>
      'Maalin kasta (waa la arkaa maanta, berri way qarinaysaa)';

  @override
  String onlyDayHint(String day) {
    return 'Kaliya $day';
  }

  @override
  String get dateOfMonth => 'Taariikhda bisha';

  @override
  String get anyDate => 'Taariikh kasta';

  @override
  String get anyDateHint =>
      'Taariikh kasta (waa la arkaa maanta, berri way qarinaysaa)';

  @override
  String onlyDateHint(String date) {
    return 'Kaliya $date';
  }

  @override
  String get startPreChecked => 'Ku bilow iyada oo calaamaysan';

  @override
  String get startPreCheckedSubtitle =>
      'Marka muddo cusub bilaabato, camalkan wuxuu noqdaa mid dhammaystiran ilaa aad ka saarto calaamadda.';

  @override
  String get reminder => 'Xusuusin';

  @override
  String get reminderNone => 'Midna';

  @override
  String reminderTime(String time) {
    return 'Xusuusin: $time';
  }

  @override
  String get reminderPermissionWarning =>
      'Xusuusinta waa la kaydiyay, laakiin ogeysiisyada lama ogola. Ka fur dejinta nidaamka si aad u hesho digniinadda.';

  @override
  String get groupByCategory => 'U koobi qaybaha';

  @override
  String get flatList => 'Liis fudud';

  @override
  String errorGeneric(String error) {
    return 'Khalad: $error';
  }

  @override
  String get todayEmptyHint =>
      'Riix + si aad u ku darto camalkaaga ugu horreeya.';

  @override
  String get noteLabel => 'Qoraal';

  @override
  String get noteHint => 'tus. Masjidka ayaan ku tukaday';

  @override
  String get completed => 'la dhammeeyay';

  @override
  String get notCompleted => 'lama dhammeeyo';

  @override
  String progressOf(int progress, int target) {
    return '$progress ka mid ah $target oo la dhammeeyay';
  }

  @override
  String get removeFromToday => 'Ka saar maanta';

  @override
  String get removeFromTodaySubtitle =>
      'Qari maanta kaliya. Berri way soo noqonaysaa.';

  @override
  String get removeFromTracking => 'Ka saar raadraaca';

  @override
  String get removeFromTrackingSubtitle =>
      'Si joogto ah uga saar liiskaaga. Taariikhda waa la haynayaa.';

  @override
  String get chooseIcon => 'Dooro astaanta';

  @override
  String get iconNone => 'Midna';

  @override
  String get recentlyUsed => 'Dhawaan la isticmaalay';

  @override
  String get emojiSectionGeneral => 'Guud';

  @override
  String get categoryNameHint => 'Magaca';

  @override
  String get categoryNew => '+ Cusub';

  @override
  String get addAmal => 'Ku dar camal';

  @override
  String get customAmal => 'Camal gaarka ah';

  @override
  String get templateTasbih => 'Tasbiix 33x';

  @override
  String get templateIstighfar => 'Istigfaar 100x';

  @override
  String get templateSurahKahf => 'Suuradda Al-Kahf';

  @override
  String get templateSadaqah => 'Sadaqo';

  @override
  String get templateTahajjud => 'Tahajjud';

  @override
  String get templateDuhaPrayer => 'Salaadda Duxa';

  @override
  String get settingsTitle => 'Dejinta';

  @override
  String settingsLoadError(String error) {
    return 'Waa la guul darreystay soo dejinta dejinta:\n$error';
  }

  @override
  String get sectionDayBoundary => 'Xadka maalinta';

  @override
  String get rolloverHour => 'Saacadda wareegga';

  @override
  String get rolloverAtMidnight => 'Maanta waxay dhammaataa habeenbadhka.';

  @override
  String rolloverSubtitle(String time) {
    return 'Camalka shalay wuxuu wax laga beddeli karaa ilaa $time.';
  }

  @override
  String get pickRolloverHour => 'Dooro saacadda maalinta wareegto';

  @override
  String get sectionWeekMonth => 'Toddobaadka & bisha';

  @override
  String get startOfWeek => 'Bilowga toddobaadka';

  @override
  String get startOfMonth => 'Bilowga bisha';

  @override
  String get startOfMonthClamped =>
      'Maalaha ka dambeeya 28-ka waxaa lagu xaddidaa maalinta ugu dambeysa ee bilaha gaagaaban.';

  @override
  String get sectionAppearance => 'Muuqaalka';

  @override
  String get theme => 'Muuqaalka';

  @override
  String get themeSystem => 'Nidaamka';

  @override
  String get themeLight => 'Iftiinka';

  @override
  String get themeDark => 'Mugdiga';

  @override
  String get sectionLanguage => 'Luuqadda';

  @override
  String get language => 'Luuqadda';

  @override
  String get systemDefault => 'Caadiga nidaamka';

  @override
  String get aboutTitle => 'Muhasaba';

  @override
  String get aboutSubtitle =>
      'Buug-gacmeedka xisaabtanka diinta ee gaarka ah. Dhammaan xogta waxay ku hadhaysaa qalabkan.';

  @override
  String get statsTitle => 'Tirakoob';

  @override
  String statsLoadError(String error) {
    return 'Waa la guul darreystay soo dejinta tirakoobka:\n$error';
  }

  @override
  String get perAmal => 'Camal walba';

  @override
  String get thisWeek => 'Toddobaadkan';

  @override
  String get thisMonth => 'Bishan';

  @override
  String get totalCompletions => 'wadarta la dhammeeyay';

  @override
  String get streakCurrent => 'Hadda';

  @override
  String get streakLongest => 'Ugu dheeraa';

  @override
  String get ratioWeek => 'Toddobaad';

  @override
  String get ratioMonth => 'Bil';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'maalmood',
      one: 'maalin',
    );
    return '$_temp0';
  }

  @override
  String streakWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'toddobaad',
      one: 'toddobaad',
    );
    return '$_temp0';
  }

  @override
  String streakMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'bilood',
      one: 'bil',
    );
    return '$_temp0';
  }

  @override
  String get frequencyBadgeDaily => 'maalinlaha';

  @override
  String get frequencyBadgeWeekly => 'toddobaadlaha';

  @override
  String get frequencyBadgeMonthly => 'bishiiba';

  @override
  String get statsEmpty =>
      'Wali camal ma jiro. Ku dar mid Maanta si aad u bilowdo raadraaca.';

  @override
  String get statsToday => 'Maanta';

  @override
  String get statsThisWeek => 'Toddobaadkan';

  @override
  String get statsThisMonth => 'Bishan';

  @override
  String get statsAllTime => 'Wakhti oo dhan';

  @override
  String get statsCustomRange => 'Muddo gaarka ah';

  @override
  String get statsAllCategories => 'Dhammaan';

  @override
  String get statsAllAmals => 'Dhammaan';

  @override
  String get statsCompleted => 'La dhammeeyay';

  @override
  String get statsExpected => 'La filayay';

  @override
  String get statsVsPrevious => 'Marka loo barbardhigo kii hore';

  @override
  String get statsByCategory => 'Qaybaha';

  @override
  String get statsPerAmal => 'Camal walba';

  @override
  String get statsCurrentStreak => 'Taxanaha hadda';

  @override
  String get statsBestStreak => 'Taxanaha ugu fiican';

  @override
  String get statsTotalDays => 'Wadarta maalmaha';

  @override
  String get statsConsistency => 'Joogteynta';

  @override
  String get statsLast5Weeks => '5-dii toddobaad ee ugu dambeeyay';

  @override
  String get statsDailyBreakdown => 'Faahfaahin maalinle ah';

  @override
  String get statsCompletionRate => 'Heerka dhammaystirka';

  @override
  String get statsFilterTime => 'Waqtiga';

  @override
  String get statsFilterCategory => 'Qaybta';

  @override
  String get statsFilterAmal => 'Camasha';

  @override
  String get statsStreaks => 'Taxanayaal';

  @override
  String get statsSelectDateRange => 'Dooro muddada taariikhda';

  @override
  String get historyTitle => 'Taariikhda';

  @override
  String get jumpToDate => 'U bood taariikhda';

  @override
  String historyEmptyDay(String date) {
    return 'Camal lama raadraacin $date';
  }

  @override
  String get streakUnitD => 'm';

  @override
  String get streakUnitW => 't';

  @override
  String get streakUnitM => 'b';

  @override
  String get mondayShort => 'Isn';

  @override
  String get tuesdayShort => 'Tal';

  @override
  String get wednesdayShort => 'Arb';

  @override
  String get thursdayShort => 'Kha';

  @override
  String get fridayShort => 'Jim';

  @override
  String get saturdayShort => 'Sab';

  @override
  String get sundayShort => 'Axd';

  @override
  String get mondayFull => 'Isniin';

  @override
  String get tuesdayFull => 'Talaado';

  @override
  String get wednesdayFull => 'Arbaco';

  @override
  String get thursdayFull => 'Khamiis';

  @override
  String get fridayFull => 'Jimce';

  @override
  String get saturdayFull => 'Sabti';

  @override
  String get sundayFull => 'Axad';

  @override
  String get hadith0 =>
      '\"Camalada Alle ugu jecel waa kuwa si joogto ah loo sameeyo, xitaa hadday yar yihiin.\"\n— Bukhaari & Muslim';

  @override
  String get hadith1 =>
      '\"Ku qaata camalo wanaagsan intaad awoodo, waayo camalada ugu wanaagsan waa kuwa si joogto ah loo sameeyo xitaa hadday yar yihiin.\"\n— Ibn Maajah';

  @override
  String get hadith2 =>
      '\"Marka uu dhinto wiilka Aadam, camalladiisu way joogsataa marka laga reebo saddex: sadaqo socota, cilmi anfaca, ama ilmo fiican oo u duceeya.\"\n— Muslim';

  @override
  String get hadith3 =>
      '\"Qofkii tukada labada salaadood ee qabow (Fajriga iyo Casriga) wuxuu gali doonaa Jannada.\"\n— Bukhaari';

  @override
  String get hadith4 =>
      '\"Allaahu ma eego muuqaalkaaga ama hantidaada, laakiin wuxuu eegaa qalbiyadaada iyo camalladaada.\"\n— Muslim';

  @override
  String get hadith5 =>
      '\"Dadka ugu fiican waa kuwa ugu anfaca dadka.\"\n— Tabaraani';

  @override
  String get hadith6 =>
      '\"Fududeeya hana adkeeynina; u bishaareya hana ka cabsiiynina dadka.\"\n— Bukhaari';

  @override
  String get hadith7 =>
      '\"Qofkii jid u mara raadinta cilmiga, Allaahu wuxuu uga fududeeyaa jidka Jannada.\"\n— Muslim';

  @override
  String get hadith8 => '\"Sadaqadu hantida ma yareeyo.\"\n— Muslim';

  @override
  String get hadith9 =>
      '\"Mu\'minka xoogga badan waa ka fiican yahay oo Alle ka jecel yahay mu\'minka daciifka ah, laakiin labadaba wanaag way ku jirtaa.\"\n— Muslim';

  @override
  String get hadith10 =>
      '\"Qofka maalin kasta boqol jeer yidhaahda \'SubhanAllahi wa bihamdihi\', dambiyadiisa waa la cafiyaa xitaa hadday la mid yihiin xumbada badda.\"\n— Bukhaari';

  @override
  String get hadith11 =>
      '\"Ducadii ugu wanaagsanayd waa ducada maalinta Carafa, wixii ugu wanaagsanaa ee aan iyo anbiyada iga horreeyey dhaheen: Laa ilaaha illallaah.\"\n— Tirmidhi';

  @override
  String get hadith12 =>
      '\"Qofka akhriyo Aayatul-Kursiga salaad kasta oo fard ah kadib, waxba kama hor joogsado inuu Jannada galo marka laga reebo geeridu.\"\n— Nasaai';

  @override
  String get hadith13 => '\"Hadal wanaagsan waa sadaqo.\"\n— Bukhaari & Muslim';

  @override
  String get hadith14 =>
      '\"Qofka rumaysan Ilaahay iyo Maalinta Aakhiro, ha ku hadlo khayr ama ha aamuuso.\"\n— Bukhaari & Muslim';

  @override
  String get hadith15 =>
      '\"Kan u daryeela carmallada iyo miskiinka waa sida mujaahid Ilaahay dartiis ah.\"\n— Bukhaari';

  @override
  String get hadith16 =>
      '\"Dhoollacaddaadaada walaalkaa waa sadaqo.\"\n— Tirmidhi';

  @override
  String get hadith17 =>
      '\"Kan ugu wanaagsan ee idinka mid ah waa kan Quraanka barta oo bara.\"\n— Bukhaari';

  @override
  String get hadith18 =>
      '\"Qofna ma cunin cunto ka wanaagsan wixii uu gacmihiisa ku shaqeeyey.\"\n— Bukhaari';

  @override
  String get hadith19 =>
      '\"Ilaahay waa naxariis leh yahay wuxuuna jecel yahay naxariista wax kasta.\"\n— Bukhaari & Muslim';

  @override
  String historyDayCompleted(int completed, int total) {
    return '$completed ka mid ah $total la dhammeeyey';
  }

  @override
  String get settingsSchedule => 'Jadwalka';

  @override
  String get settingsAppearance => 'Muuqaalka';

  @override
  String get settingsAboutTagline => 'Saaxiibkaaga diinta ee maalinlaha ah';

  @override
  String get settingsRolloverSub => 'Goorma maalinta dib u bilaabato';

  @override
  String get settingsAbout => 'Ku saabsan';

  @override
  String get settingsVersion => 'Nooca';

  @override
  String get settingsDeveloper => 'Sameeyaha';

  @override
  String get settingsSupport => 'Taageero';

  @override
  String get settingsRate => 'Qiimee abka';

  @override
  String get settingsContact => 'Nala soo xiriir';

  @override
  String get settingsReportBug => 'Sheeg cillad';

  @override
  String get settingsRequestFeature => 'Codso astaan';

  @override
  String settingsSupportFallback(String email) {
    return 'Ma furmin boostada. Fadlan iimeel u dir $email.';
  }

  @override
  String get hadith20 =>
      '\"Qofkii sooma Ramadaan iimaankiisa iyo rajaynta ajar, dambiyadiisii hore waa loo cafiyaa.\"\n— Bukhaari & Muslim';

  @override
  String get hadith21 => '\"Salaaddu waa tiirka diinta.\"\n— Bayhaqi';

  @override
  String get hadith22 =>
      '\"Ducada u dhexaysa adhaamka iyo iqaamaddu lama diido.\"\n— Abu Dawud';

  @override
  String get hadith23 =>
      '\"Qofkii Ilaahay u dhisa masjid, Ilaahay wuxuu ugu dhisaa guri Jannada.\"\n— Bukhaari & Muslim';

  @override
  String get hadith24 =>
      '\"Safafka ugu wanaagsan ee ragga waa kuwa hore, safafka ugu wanaagsan ee haweenka waa kuwa dambe.\"\n— Muslim';

  @override
  String get hadith25 => '\"Soomku waa gaashaan ka dhawra Naarta.\"\n— Nasaai';

  @override
  String get hadith26 =>
      '\"Qofkii tukada laba iyo toban rakco oo sunno ah, guri ayaa loogu dhisaa Jannada.\"\n— Muslim';

  @override
  String get hadith27 =>
      '\"Kan si fiican u akhriyo Quraanka wuxuu la jiri doonaa malaa\'igta sharafta leh.\"\n— Bukhaari & Muslim';

  @override
  String get hadith28 =>
      '\"Raadinta cilmigu waa waajib muslim kasta.\"\n— Ibn Maajah';

  @override
  String get hadith29 =>
      '\"Sadaqada ugu wanaagsan waa biyaha cabbitaanka.\"\n— Ahmad';

  @override
  String get hadith30 =>
      '\"Qofkii ka saara dhibaato mu\'min, Ilaahay wuxuu ka saari dhibaato Maalinta Qiyaamada.\"\n— Muslim';

  @override
  String get hadith31 =>
      '\"Kuwa naxariista leh, Kan ugu Naxariista Badan ayaa u naxariista.\"\n— Abu Dawud & Tirmidhi';

  @override
  String get hadith32 =>
      '\"Xishmaddu waa qayb ka mid ah iimaanka.\"\n— Bukhaari & Muslim';

  @override
  String get hadith33 =>
      '\"Nadiifnimadu waa badh ka mid ah iimaanka.\"\n— Muslim';

  @override
  String get hadith34 =>
      '\"Qofkii samiray, Ilaahay wuxuu siinayaa samir.\"\n— Bukhaari & Muslim';

  @override
  String get hadith35 =>
      '\"Hantida ugu wanaagsan waa carrabka Ilaahay xusa.\"\n— Tabaraani';

  @override
  String get hadith36 =>
      '\"Midkiinna ma rumeynayo ilaa uu u jeclaado walaalihiis wuxuu naftiisa u jecel yahay.\"\n— Bukhaari & Muslim';

  @override
  String get hadith37 =>
      '\"Quudi kuwa gaajaysan, soo booqda kuwa buka, xoreena maxaabiista.\"\n— Bukhaari';

  @override
  String get hadith38 =>
      '\"Qofka xoogga leh maaha kan ku guulaysta legdanka, waa kan is-xakama markuu cadhaysan yahay.\"\n— Bukhaari & Muslim';

  @override
  String get hadith39 =>
      '\"Qofkii dhawra waxa u dhexeeya afkiisa iyo lugihiisa, waxaan ugu dammaanad qaadayaa Jannada.\"\n— Bukhaari';

  @override
  String get hadith40 =>
      '\"Dhaha \'SubhanAllah\', \'Alhamdulillaah\' iyo \'Allaahu Akbar\' saddex iyo soddon jeer kasta oo salaad ka dib.\"\n— Muslim';

  @override
  String get hadith41 =>
      '\"Dhikriga ugu wanaagsan waa La ilaaha illallaah.\"\n— Tirmidhi';

  @override
  String get hadith42 =>
      '\"Waxaa jira labo nicmo oo ay dad badan khasaaraan: caafimaadka iyo waqtiga faariga ah.\"\n— Bukhaari';

  @override
  String get hadith43 =>
      '\"Ka faa\'iidaysta shan ka hor shan: yaranimo ka hor gaboob, caafimaad ka hor jirro, hodan ka hor faqri, waqti ka hor mashquul, iyo nolol ka hor dhimasho.\"\n— Hakim';

  @override
  String get hadith44 =>
      '\"Qofkii akhriyo Suuradda Al-Ikhlaas toban jeer, Ilaahay wuxuu ugu dhisaa guri Jannada.\"\n— Ahmad';

  @override
  String get hadith45 =>
      '\"Salaadda ugu wanaagsan ka dib fariidada waa salaadda habeenka.\"\n— Muslim';

  @override
  String get hadith46 =>
      '\"Sadaqadu way demisaa dambiyada sida biyuhu ay demiyaan dabka.\"\n— Tirmidhi';

  @override
  String get hadith47 =>
      '\"Kan xiriirka qaraabada xajiya maaha kan ku abtirsa, waa kan xajiya xitaa markay go\'do.\"\n— Bukhaari';

  @override
  String get hadith48 =>
      '\"Fal wanaag kasta sadaqo weeye.\"\n— Bukhaari & Muslim';

  @override
  String get hadith49 =>
      '\"Qofkii cuna oo yidhaahda: \'Mahad Allaah oo i siiyay cuntadan oo aan wax awood iyo xoog ah iigu samaynin ii soo fidiyey,\' dambiyadiisii hore waa la cafiyaa.\"\n— Tirmidhi';

  @override
  String get hadith50 =>
      '\"Dadka Ilaahay ugu jecel waa kuwa dadka kale ugu wanaagsan ugu faa\'iideysa.\"\n— Tabaraani';

  @override
  String get hadith51 =>
      '\"Qofkii xanaaqiisa celiyo isagoo awood u leh inuu ku dhaqmo, Ilaahay wuxuu ugu yeerayaa maalinta Qiyaamaha dhammaan uunka hortooda si uu u doorto abaalmarintiisa.\"\n— Tirmidhi';

  @override
  String get hadith52 =>
      '\"Ku dhaqso sadaqada, maxaa yeelay waxay ka hor istaagaysaa musiibooyinka.\"\n— Tirmidhi';

  @override
  String get hadith53 =>
      '\"Ha quudhsin wax kasta oo wanaagsan, xitaa haddii ay tahay inaad walaalkaa kula kulanto waji bashbash ah.\"\n— Muslim';

  @override
  String get hadith54 =>
      '\"Kuwiinna ugu wanaagsan waa ka ugu wanaagsan qoyskiisa.\"\n— Tirmidhi';

  @override
  String get hadith55 =>
      '\"Qofkii habeenkii akhriya labada aayad ee ugu dambeeya Suurada Al-Baqarah, waa ku filan yihiin.\"\n— Bukhaari & Muslim';

  @override
  String get hadith56 =>
      '\"Adduunyadani waa raashin, raashintii ugu fiicnaydna waa naag wanaagsan.\"\n— Muslim';

  @override
  String get hadith57 =>
      '\"Saddex ducooyin ah oo aan la celin: ducada qofka sooman, hogaamiyaha cadliska ah, iyo qofka la dulmi jiray.\"\n— Tirmidhi';

  @override
  String get hadith58 =>
      '\"Qofkii hal mar salaad iigu diro, Ilaahay toban jeer buu naxariis ugu diraa.\"\n— Muslim';

  @override
  String get hadith59 =>
      '\"Masaajidku waa guriga qof kasta oo muttaqii ah.\"\n— Tabaraani';

  @override
  String get hadith60 =>
      '\"Qofkii yidhaahda \'Laa hawla walaa quwwata illaa billaah\' — waa dawo sagaashan iyo sagaal cudur, kan ugu fududna waa walaac.\"\n— Haakim';

  @override
  String get hadith61 =>
      '\"Ilaahay wuxuu jecel yahay marka aad wax qabsataan, inaad si heer sare leh u qabsataan.\"\n— Tabaraani';

  @override
  String get hadith62 =>
      '\"Jannadu waxay ku hoos taallaa cagaha hooyooyinka.\"\n— Nasaa\'i';

  @override
  String get hadith63 =>
      '\"Camalada Alle ugu jecel: salaadda waqtigeeda, ka dibna waalidka u nicmeyn, ka dibna jihaadka jidka Alle.\"\n— Bukhaari & Muslim';

  @override
  String get hadith64 =>
      '\"Qofkii ku mahadiya wax yar, wax badan ayaa la siinayaa.\"\n— Bayhaqi';

  @override
  String get hadith65 =>
      '\"Mu\'minku waa muraayaddii mu\'minka.\"\n— Abu Dawud';

  @override
  String get hadith66 =>
      '\"Runtu waxay horseedaa wanaag, wanaaguna wuxuu horseedaa Jannada.\"\n— Bukhaari & Muslim';

  @override
  String get hadith67 =>
      '\"U celi amaanada qofka kugu aaminay, hana khiyaanayn qofka ku khiyaanay.\"\n— Abu Dawud & Tirmidhi';

  @override
  String get hadith68 =>
      '\"Daal, cudur, murug, tiiraanyo, waxyeello ama walaac oo Muslim-ka gaaraya, xitaa qodax oo ku mudhda, Ilaahay wuxuu ku cafiyaa qaar ka mid ah dambiyaashiisa.\"\n— Bukhaari & Muslim';

  @override
  String get hadith69 =>
      '\"Ducada Muslimka uu u sameeyo walaalki isagoo maqan had iyo jeer waa la aqbalaa.\"\n— Muslim';

  @override
  String get hadith70 =>
      '\"Qofkii saddex jeer Ilaahay ka waydiista Jannada, Jannadu waxay tidhaahdaa: Ilaahayow, Jannada geli.\"\n— Tirmidhi';

  @override
  String get hadith71 =>
      '\"Soonka ugu fiican ee ka dambeeya Ramadaan waa soonka bisha Ilaahay ee Muharram.\"\n— Muslim';

  @override
  String get hadith72 =>
      '\"Qofkii xajka sameeya oo aan hadal xun ku hadlin dambina samayn, wuxuu u soo noqdaa sida maalin hooyadii dhashay.\"\n— Bukhaari & Muslim';

  @override
  String get hadith73 =>
      '\"Cumrada ilaa cumrada kale waa kafaarad dambiyada u dhexeeya.\"\n— Bukhaari & Muslim';

  @override
  String get hadith74 =>
      '\"Ku dhaqso camalka wanaagsan ka hor fitnooyin u imanaya sida qayb ka mid ah habeen madow.\"\n— Muslim';

  @override
  String get hadith75 =>
      '\"Laba rakcadood ee salaadda Fajr way ka wanaagsan yihiin adduunka iyo waxa ku jira oo dhan.\"\n— Muslim';

  @override
  String get hadith76 =>
      '\"Qofka joogtada ah istigfaar sameeya, Allaah wuxuu ka siinayaa meel uu kaga baxo dhib kasta.\"\n— Abu Dawud';

  @override
  String get hadith77 =>
      '\"Haddii aad Allaah ku tawakushaan sida loo tawakuli lahaa, wuxuu idinku rizqin lahaa sida uu u rizqeeyo shimbiraha.\"\n— Tirmidhi';

  @override
  String get hadith78 =>
      '\"Qofka booqda qof buka, wuxuu ku suganyahay beeraha Jannada ilaa uu soo noqdo.\"\n— Muslim';

  @override
  String get hadith79 =>
      '\"Faafia salaamta, quudi dadka gaajaysan, salaadna tuka habeenkii markii dadku hurdo — Jannada nabad ku galaysaan.\"\n— Tirmidhi';

  @override
  String get hadith80 =>
      '\"Qofkii aan dadka u mahad naqi karin, Allaah na mahad naqayo.\"\n— Tirmidhi';

  @override
  String get hadith81 =>
      '\"Xasaddu waa la oggolaan karaa laba kiis oo keliya: nin Allaah maal siiyay oo jidka xaqa ku bixiya, iyo nin Allaah xigmad siiyay oo ku xukuma kuna baraa.\"\n— Bukhari & Muslim';

  @override
  String get hadith82 =>
      '\"Qofku wuxuu ku socda diinta saaxiibkiis, sidaas darteed mid kastaaba ha eego qofka uu saaxiib la yahay.\"\n— Abu Dawud & Tirmidhi';

  @override
  String get hadith83 =>
      '\"Badanaa xasuusta dhimashada, waayo, waxay nadiifisaa qalbiga.\"\n— Tirmidhi';

  @override
  String get hadith84 =>
      '\"Cibaadada ugu wanaagsan waa sugitaanka fududaynta.\"\n— Tirmidhi';

  @override
  String get hadith85 =>
      '\"Qofkii u dhaafa wax Allaah daraaddiis, Allaah wuxuu ugu beddeli doonaa wax ka wanaagsan.\"\n— Ahmad';

  @override
  String get hadith86 =>
      '\"Qofka qariiya ceebta Muslim, Allaah wuxuu qariinayaa ceebtiisa Maalinta Qiyaamaha.\"\n— Bukhari & Muslim';

  @override
  String get hadith87 =>
      '\"Adduunkan ku jir sidii aad qariib tahay ama musaafir.\"\n— Bukhari';

  @override
  String get hadith88 =>
      '\"Qofka u fududeeya qof dhibaato ku jira, Allaah wuxuu ugu fududeeyaa adduunka iyo aakhirada.\"\n— Muslim';

  @override
  String get hadith89 =>
      '\"Abaalgudka camalku wuxuu ku xiran yahay niyada.\"\n— Bukhari & Muslim';

  @override
  String get hadith90 =>
      '\"Ka fogaada tuhmada, waayo, tuhmadu waa hadalka ugu beenta badan.\"\n— Bukhari & Muslim';

  @override
  String get hadith91 =>
      '\"Qofka ka taga beenta Allaah daraaddiis, xitaa kaftan, waxaan u dammaanad qaadayaa guri ku yaal darfaha Jannada.\"\n— Abu Dawud';

  @override
  String get hadith92 =>
      '\"Albaabbada khayrku way badan yihiin: Allaah ku weyneyn, Allaah ku ammaanid, sadaqo, wanaaga ku amrid, iyo jidka wax laga saaro.\"\n— Muslim';

  @override
  String get hadith93 =>
      '\"Wada cuna oo magaca Allaah sheega, waxaa laydiin barakadeeyaa.\"\n— Abu Dawud';

  @override
  String get hadith94 =>
      '\"Kulanku ugu wanaagsan waa kan ugu ballaaran.\"\n— Abu Dawud';

  @override
  String get hadith95 =>
      '\"Iscafimaadya, waana laydiin cafi doonaa.\"\n— Ahmad';

  @override
  String get hadith96 =>
      '\"Geelahaaga xidh, kaddibna Allaah ku tawakul.\"\n— Tirmidhi';

  @override
  String get hadith97 =>
      '\"Waa lala yaabaa arrimaha mu\'minka — wax walba waa u wanaagsan yihiin.\"\n— Muslim';

  @override
  String get hadith98 =>
      '\"Muslimku waa walaalka Muslimka: ma dulmiyo, ma dayaco, mana quudhsado.\"\n— Muslim';

  @override
  String get hadith99 =>
      '\"Hadalka Allaah ugu jecel waa: SubhanAllaahi wa bihamdihi, SubhanAllaahil Aziim.\"\n— Bukhari & Muslim';
}
