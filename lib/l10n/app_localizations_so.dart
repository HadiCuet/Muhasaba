// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Somali (`so`).
class AppLocalizationsSo extends AppLocalizations {
  AppLocalizationsSo([String locale = 'so']) : super(locale);

  @override
  String get repeatsOnDaysHint => 'Wuxuu soo noqnoqdaa maalmaha la doortay';

  @override
  String get newDayStarted => 'Maalin cusub ayaa bilaabatay';

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
  String get tabChallenge => 'Yool';

  @override
  String get tabInsights => 'Tirakoob';

  @override
  String get insightsTitle => 'Tirakoob';

  @override
  String get insightsOverview => 'Guud ahaan';

  @override
  String get insightsDaily => 'Maalinle';

  @override
  String get insightsArchive => 'Arkiifka';

  @override
  String get archivedEmpty =>
      'Weli waxba halkan ma yaallaan. Camallada aad ka saarto raadraaca halkan ayay ka muuqdaan, si aad dib ugu soo celiso.';

  @override
  String archivedStoppedOn(String date) {
    return 'Waa la joojiyay $date';
  }

  @override
  String get archivedRestore => 'Soo celi';

  @override
  String archivedRestored(String title) {
    return '\"$title\" ayaa liiskaaga ku soo laabtay.';
  }

  @override
  String get newChallenge => 'Yool cusub';

  @override
  String get newAmal => 'Camal cusub';

  @override
  String get editAmal => 'Wax ka beddel camalka';

  @override
  String get newAmalTitle => 'Camal cusub';

  @override
  String get save => 'Kaydi';

  @override
  String get cancel => 'Ka noqo';

  @override
  String get ok => 'OK';

  @override
  String get clear => 'Nadiifi';

  @override
  String get titleLabel => 'Cinwaan';

  @override
  String get titleRequired => 'Cinwaanka waa in la qoraa';

  @override
  String get titleTooLong => 'Cinwaanku aad buu u dheer yahay';

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
  String get categoryOther => 'Kale';

  @override
  String get categorySalah => 'Salaadda';

  @override
  String get categoryDhikr => 'Dikri';

  @override
  String get categoryQuran => 'Quraanka';

  @override
  String get categoryCharity => 'Sadaqo';

  @override
  String get categorySunnah => 'Sunno';

  @override
  String get timesPerPeriod => 'Tirada muddo walba';

  @override
  String get custom => 'Gaar ah';

  @override
  String get customTargetHint => 'tus. 50';

  @override
  String get targetAny => 'Tiro kasta';

  @override
  String get targetAnyHelp =>
      'Bartilmaameed ma jiro — tiro kasta ayaa dhammaystirta';

  @override
  String get dayOfWeek => 'Maalinta toddobaadka';

  @override
  String get anyDay => 'Maalin kasta';

  @override
  String get anyDayHint =>
      'Maalin kasta (maanta wuu muuqanayaa, berri wuu qarsoomayaa)';

  @override
  String onlyDayHint(String day) {
    return 'Kaliya $day';
  }

  @override
  String get dateOfMonth => 'Taariikhda bisha';

  @override
  String get repeatMode => 'Soo noqnoqosho';

  @override
  String get onSetDays => 'Maalmo la go\'aamiyay';

  @override
  String get onSetDates => 'Taariikho la go\'aamiyay';

  @override
  String get anyDayMode => 'Maalin kasta';

  @override
  String get datesOfMonth => 'Taariikhaha';

  @override
  String get daysPerWeekQuestion => 'Immisa maalmood toddobaadkii?';

  @override
  String get daysPerMonthQuestion => 'Immisa maalmood bishii?';

  @override
  String get pickAtLeastOneDay => 'Dooro ugu yaraan hal maalin';

  @override
  String get pickAtLeastOneDate => 'Dooro ugu yaraan hal taariikh';

  @override
  String get previewDaily => 'Wuxuu soo noqnoqdaa maalin kasta';

  @override
  String previewWeeklyDays(String days) {
    return 'Wuxuu soo noqnoqdaa $days';
  }

  @override
  String previewWeeklyAny(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count maalmood',
      one: 'hal maalin',
    );
    return 'Wuxuu soo noqnoqdaa $_temp0 toddobaadkii';
  }

  @override
  String previewMonthlyDates(int count, String dates) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Wuxuu soo noqnoqdaa maalmaha $dates ee bil kasta',
      one: 'Wuxuu soo noqnoqdaa maalinta $dates ee bil kasta',
    );
    return '$_temp0';
  }

  @override
  String previewMonthlyAny(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count maalmood',
      one: 'hal maalin',
    );
    return 'Wuxuu soo noqnoqdaa $_temp0 bishii';
  }

  @override
  String get anyDate => 'Taariikh kasta';

  @override
  String get anyDateHint =>
      'Taariikh kasta (maanta wuu muuqanayaa, berri wuu qarsoomayaa)';

  @override
  String onlyDateHint(String date) {
    return 'Kaliya maalinta $date';
  }

  @override
  String get startPreChecked => 'Ku bilow isagoo calaamadsan';

  @override
  String get startPreCheckedSubtitle =>
      'Marka muddo cusub bilaabato, camalkan si caadi ah ayaa loogu calaamadeeyaa dhammaystiran ilaa aad calaamadda ka saarto.';

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
      'Xusuusinta waa la kaydiyay, laakiin ogeysiisyada lama oggola. Ka oggolow dejinta qalabka si ay xusuusinuhu kuu soo gaadhaan.';

  @override
  String get settingsReminders => 'Xusuusinta';

  @override
  String get dailyReminder => 'Xusuusin maalinle ah';

  @override
  String get dailyReminderSubtitle =>
      'Xusuusin jilicsan si aad u raadraacdo camalladaada';

  @override
  String get dailyReminderTimeLabel => 'Wakhtiga xusuusinta';

  @override
  String get dailyReminderBody =>
      'Daqiiqad yar u qaado raadraaca camallada maanta.';

  @override
  String get groupByCategory => 'U kala saar qaybo';

  @override
  String get flatList => 'Liis fudud';

  @override
  String errorGeneric(String error) {
    return 'Khalad: $error';
  }

  @override
  String get todayEmptyHint =>
      'Riix + si aad ugu darto camalkaaga ugu horreeya.';

  @override
  String get noteLabel => 'Qoraal';

  @override
  String get noteHint => 'tus. Masjidka ayaan ku tukaday';

  @override
  String get completed => 'la dhammeeyay';

  @override
  String get notCompleted => 'lama dhammayn';

  @override
  String progressOf(String progress, String target) {
    return '$progress ka mid ah $target ayaa la dhammeeyay';
  }

  @override
  String progressOpen(String count) {
    return '$count la dhammeeyay';
  }

  @override
  String get removeFromToday => 'Ka saar maanta';

  @override
  String get removeFromTodaySubtitle =>
      'Maanta oo keliya qari. Berri wuu soo noqonayaa.';

  @override
  String get removeFromTracking => 'Ka saar raadraaca';

  @override
  String get removeFromTrackingSubtitle =>
      'Si joogto ah uga saar liiskaaga. Taariikhdu way kaydsanaanaysaa.';

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
  String get categoryNewSheetTitle => 'Qayb cusub';

  @override
  String get categoryEditSheetTitle => 'Wax ka beddel qaybta';

  @override
  String get addAmal => 'Ku dar camal';

  @override
  String get customAmal => 'Camal gaar ah';

  @override
  String get amalTasbih => 'Tasbiix 33x';

  @override
  String get amalIstighfar => 'Istigfaar';

  @override
  String get amalSurahKahf => 'Suuradda Al-Kahf';

  @override
  String get amalSadaqah => 'Sadaqo';

  @override
  String get amalTahajjud => 'Tahajjud';

  @override
  String get amalDuha => 'Salaadda Duxa';

  @override
  String get amalFajr => 'Subax';

  @override
  String get amalDhuhr => 'Duhur';

  @override
  String get amalAsr => 'Casar';

  @override
  String get amalMaghrib => 'Maqrib';

  @override
  String get amalIsha => 'Cishe';

  @override
  String get amalMorningAdhkar => 'Adkaarta subaxa';

  @override
  String get amalEveningAdhkar => 'Adkaarta fiidka';

  @override
  String get amalTilawah => 'Tilaawo';

  @override
  String get settingsTitle => 'Dejinta';

  @override
  String settingsLoadError(String error) {
    return 'Dejinta lama soo rari karin:\n$error';
  }

  @override
  String get sectionDayBoundary => 'Xadka maalinta';

  @override
  String get rolloverHour => 'Saacadda maalintu bilaabato';

  @override
  String get rolloverAtMidnight => 'Maantu waxay ku dhammaanaysaa saqda dhexe.';

  @override
  String rolloverSubtitle(String time) {
    return 'Camallada shalay wax baad ka beddeli kartaa ilaa $time.';
  }

  @override
  String get pickRolloverHour => 'Dooro saacadda ay maalin cusubi bilaabato';

  @override
  String get sectionWeekMonth => 'Toddobaadka & bisha';

  @override
  String get startOfWeek => 'Bilowga toddobaadka';

  @override
  String get startOfMonth => 'Bilowga bisha';

  @override
  String get startOfMonthClamped =>
      'Maalmaha ka dambeeya 28-ka waxay u wareegaan maalinta ugu dambaysa ee bilaha ka gaaban.';

  @override
  String get sectionAppearance => 'Muuqaalka';

  @override
  String get theme => 'Muuqaalka';

  @override
  String get themeSystem => 'Nidaamka';

  @override
  String get themeLight => 'Iftiin';

  @override
  String get themeDark => 'Mugdi';

  @override
  String get sectionLanguage => 'Luuqadda';

  @override
  String get language => 'Luuqadda';

  @override
  String get systemDefault => 'Sida qalabka';

  @override
  String get aboutTitle => 'Muhasaba';

  @override
  String get aboutSubtitle =>
      'Diiwaan gaar ah oo aad diintaada isugu xisaabiso. Xogtaada oo dhan waxay ku jirtaa qalabkan oo keliya.';

  @override
  String get statsTitle => 'Tirakoob';

  @override
  String statsLoadError(String error) {
    return 'Tirakoobka lama soo rari karin:\n$error';
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
  String get frequencyBadgeDaily => 'maalinle';

  @override
  String get frequencyBadgeWeekly => 'toddobaadle';

  @override
  String get frequencyBadgeMonthly => 'bille';

  @override
  String get statsEmpty =>
      'Weli camal ma jiro. Mid ku dar bogga Maanta si aad u bilowdo raadraaca.';

  @override
  String get statsToday => 'Maanta';

  @override
  String get statsThisWeek => 'Toddobaadkan';

  @override
  String get statsThisMonth => 'Bishan';

  @override
  String get statsAllTime => 'Wakhtiga oo dhan';

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
  String get statsVsPrevious => 'Marka la eego kii hore';

  @override
  String get statsByCategory => 'Qaybo ahaan';

  @override
  String get statsPerAmal => 'Camal walba';

  @override
  String get statsTotalCaption => 'wadarta';

  @override
  String statsDaysFraction(String done, String expectedText, num expected) {
    String _temp0 = intl.Intl.pluralLogic(
      expected,
      locale: localeName,
      other: 'maalmood',
      one: 'maalin',
    );
    return '$done/$expectedText $_temp0';
  }

  @override
  String get statsCurrentStreak => 'Taxanaha hadda';

  @override
  String get statsBestStreak => 'Taxanaha ugu fiican';

  @override
  String get statsTotalDays => 'Wadarta maalmaha';

  @override
  String get statsConsistency => 'Joogtaynta';

  @override
  String get statsLast5Weeks => '5-dii toddobaad ee ugu dambeeyay';

  @override
  String get statsDailyBreakdown => 'Faahfaahin maalinle ah';

  @override
  String get statsCompletionRate => 'Heerka dhammaystirka';

  @override
  String get statsAmountPerDay => 'Tirada maalintii';

  @override
  String statsCountTotal(String count) {
    return 'Wadarta $count';
  }

  @override
  String statsCountAvg(String amount) {
    return 'Celcelis $amount/maalin';
  }

  @override
  String statsCountBest(String count, String day) {
    return 'Ugu badan $count · $day';
  }

  @override
  String get statsFilterTime => 'Wakhtiga';

  @override
  String get statsFilterCategory => 'Qaybta';

  @override
  String get statsFilterAmal => 'Camal';

  @override
  String get statsStreaks => 'Taxanayaasha';

  @override
  String get statsSelectDateRange => 'Dooro muddo';

  @override
  String get historyTitle => 'Taariikhda';

  @override
  String get jumpToDate => 'U gudub taariikh';

  @override
  String historyEmptyDay(String date) {
    return '$date wax camal ah lama raadraacin';
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
      '\"Camallada Alle ugu jecel yahay waa kuwa si joogto ah loo sameeyo, xitaa hadday yar yihiin.\"\n— Bukhaari & Muslim';

  @override
  String get hadith2 =>
      '\"Marka uu ina-Aadam dhinto, camalkiisu wuu go\'aa saddex mooyee: sadaqo socota, cilmi laga faa\'iidaysto, ama ilmo suubban oo u duceeya.\"\n— Muslim';

  @override
  String get hadith3 =>
      '\"Qofkii tukada labada salaadood ee qabow (Subax iyo Casar) wuxuu geli doonaa Jannada.\"\n— Bukhaari';

  @override
  String get hadith4 =>
      '\"Alle ma eego muuqaalkiinna iyo hantidiinna, laakiin wuxuu eegaa qalbiyadiinna iyo camalladiinna.\"\n— Muslim';

  @override
  String get hadith6 =>
      '\"Fududeeya ee ha adkaynina, bishaareeya ee ha nacsiinina.\"\n— Bukhaari';

  @override
  String get hadith7 =>
      '\"Qofkii mara jid uu cilmi ku raadinayo, Alle wuxuu u fududeeyaa jid Jannada loo maro.\"\n— Muslim';

  @override
  String get hadith8 => '\"Sadaqadu hantida ma yareeyo.\"\n— Muslim';

  @override
  String get hadith9 =>
      '\"Mu\'minka xoogga leh ayaa ka khayr badan, Allena uga jecel mu\'minka daciifka ah, labadaba khayr baa ku jira.\"\n— Muslim';

  @override
  String get hadith10 =>
      '\"Qofkii maalintii boqol jeer yidhaahda \'Subxaanallaahi wa bixamdihi\', dambiyadiisa waa loo dhaafaa xitaa hadday la mid yihiin xumbada badda.\"\n— Bukhaari & Muslim';

  @override
  String get hadith12 =>
      '\"Qofkii akhriya Aayatul Kursiga salaad kasta oo fard ah kadib, waxba kama celinayaan inuu Jannada galo geeri mooyee.\"\n— Nasaai';

  @override
  String get hadith13 => '\"Hadal wanaagsan waa sadaqo.\"\n— Bukhaari & Muslim';

  @override
  String get hadith14 =>
      '\"Qofkii rumaysan Alle iyo Maalinta Aakhiro, ha ku hadlo khayr ama ha aamuso.\"\n— Bukhaari & Muslim';

  @override
  String get hadith15 =>
      '\"Qofka u adeega carmalka iyo miskiinka waa sida mujaahid Alle dartiis u dagaallamaya.\"\n— Bukhaari & Muslim';

  @override
  String get hadith16 =>
      '\"Inaad walaalkaa u dhoolla caddayso waa sadaqo.\"\n— Tirmidhi';

  @override
  String get hadith17 =>
      '\"Kiinna ugu khayr badan waa kan Quraanka barta oo bara.\"\n— Bukhaari';

  @override
  String get hadith18 =>
      '\"Qofna ma cunin cunto ka khayr badan tan uu gacantiisa ku shaqaystay.\"\n— Bukhaari';

  @override
  String get hadith19 =>
      '\"Alle waa Rafiiq, wuxuuna jecel yahay debecsanaanta arrin kasta.\"\n— Bukhaari & Muslim';

  @override
  String historyDayCompleted(String completed, String total) {
    return '$completed ka mid ah $total ayaa la dhammeeyay';
  }

  @override
  String get settingsSchedule => 'Jadwalka';

  @override
  String get settingsAppearance => 'Muuqaalka';

  @override
  String get settingsAboutTagline => 'Saaxiibkaaga diinta ee maalin kasta';

  @override
  String get settingsRolloverSub => 'Goorta maalintu dib u bilaabato';

  @override
  String get settingsAbout => 'Ku saabsan';

  @override
  String get settingsVersion => 'Nuqulka';

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
  String get settingsRequestFeature => 'Soo jeedi adeeg cusub';

  @override
  String settingsSupportFallback(String email) {
    return 'Iimaylka lama furi karin. Fadlan iimayl u dir $email.';
  }

  @override
  String get settingsPrivacyPolicy => 'Siyaasadda Asturnaanta';

  @override
  String get settingsPrivacyOpenFailed =>
      'Siyaasadda asturnaanta lama furi karin.';

  @override
  String get hadith20 =>
      '\"Qofkii Ramadaan u sooma iimaan iyo ajar-doon, waxaa loo dhaafaa dambiyadiisii hore.\"\n— Bukhaari & Muslim';

  @override
  String get hadith22 =>
      '\"Ducada u dhexaysa aadaanka iyo iqaamadda lama celiyo.\"\n— Abu Dawud';

  @override
  String get hadith23 =>
      '\"Qofkii Alle u dhisa masjid, Alle wuxuu u dhisaa guri Jannada.\"\n— Bukhaari & Muslim';

  @override
  String get hadith24 =>
      '\"Safafka ugu wanaagsan ee ragga waa kuwa hore, safafka ugu wanaagsan ee haweenka waa kuwa dambe.\"\n— Muslim';

  @override
  String get hadith25 => '\"Soomku waa gaashaan ka dhawra Naarta.\"\n— Nasaai';

  @override
  String get hadith26 =>
      '\"Qofkii tukada laba iyo toban rakcadood oo sunno ah, guri ayaa looga dhisaa Jannada.\"\n— Muslim';

  @override
  String get hadith27 =>
      '\"Kan si fiican u akhriyo Quraanka wuxuu la jiri doonaa malaa\'igta sharafta leh.\"\n— Bukhaari & Muslim';

  @override
  String get hadith29 =>
      '\"Sadaqada ugu fadliga badan waa biyo waraabin.\"\n— Ahmad';

  @override
  String get hadith30 =>
      '\"Qofkii mu\'min dhib ka dul qaada, Alle wuxuu dhib ka dul qaadi doonaa Maalinta Qiyaamaha.\"\n— Muslim';

  @override
  String get hadith32 =>
      '\"Xishoodku waa qayb ka mid ah iimaanka.\"\n— Bukhaari & Muslim';

  @override
  String get hadith34 =>
      '\"Qofkii is-samirsiiya, Alle samir buu siiyaa.\"\n— Bukhaari & Muslim';

  @override
  String get hadith36 =>
      '\"Midkiin ma rumaysna ilaa uu walaalkiis u jeclaado wuxuu naftiisa u jecel yahay.\"\n— Bukhaari & Muslim';

  @override
  String get hadith37 =>
      '\"Quudiya gaajaysanka, booqda bukaanka, xoreeyana maxaabiista.\"\n— Bukhaari';

  @override
  String get hadith38 =>
      '\"Qofka xoogga leh maaha kan ku guulaysta legdanka, waa kan is-xakama markuu cadhaysan yahay.\"\n— Bukhaari & Muslim';

  @override
  String get hadith40 =>
      '\"Dhaha \'Subxaanallaah\', \'Alxamdulillaah\' iyo \'Allaahu Akbar\' mid kasta saddex iyo soddon jeer salaad kasta kadib.\"\n— Muslim';

  @override
  String get hadith41 =>
      '\"Dikriga ugu fadliga badan waa Laa ilaaha illallaah.\"\n— Tirmidhi';

  @override
  String get hadith42 =>
      '\"Laba nicmo ayaa dad badani ku khasaaraan: caafimaadka iyo firaaqada.\"\n— Bukhaari';

  @override
  String get hadith43 =>
      '\"Ka faa\'iidaysta shan ka hor shan: dhallinyaranimo ka hor gabow, caafimaad ka hor jirro, hodantinimo ka hor faqri, firaaqo ka hor mashquul, iyo nolol ka hor dhimasho.\"\n— Hakim';

  @override
  String get hadith44 =>
      '\"Qofkii akhriya Suuradda Al-Ikhlaas toban jeer, Alle wuxuu u dhisaa guri Jannada.\"\n— Ahmad';

  @override
  String get hadith45 =>
      '\"Salaadda ugu fadliga badan salaadaha fardka ah kadib waa salaadda habeenka.\"\n— Muslim';

  @override
  String get hadith46 =>
      '\"Sadaqadu way demisaa dambiyada sida biyuhu ay demiyaan dabka.\"\n— Tirmidhi';

  @override
  String get hadith47 =>
      '\"Qaraabo-xiriiriyuhu maaha kan wax ku celiya; waa kan xiriiriya xitaa marka laga gooyo.\"\n— Bukhaari';

  @override
  String get hadith49 =>
      '\"Qofkii cunto cuna oo yidhaahda: \'Mahad waxaa leh Alle i quudiyay tan oo ii arzaaqay iyadoo aanay jirin awood iyo xoog aniga iga yimid,\' waxaa loo dhaafaa dambiyadiisii hore.\"\n— Tirmidhi';

  @override
  String get hadith53 =>
      '\"Ha quudhsin wax kasta oo wanaagsan, xitaa haddii ay tahay inaad walaalkaa kula kulanto waji bashbash ah.\"\n— Muslim';

  @override
  String get hadith54 =>
      '\"Kiinna ugu khayr badan waa kan ugu khayr badan qoyskiisa.\"\n— Tirmidhi';

  @override
  String get hadith55 =>
      '\"Qofkii habeenkii akhriya labada aayadood ee u dambeeya Suuradda Al-Baqara, way ku filnaanayaan.\"\n— Bukhaari & Muslim';

  @override
  String get hadith56 =>
      '\"Adduunku waa raaxo, raaxadiisa ugu khayr badanna waa haweeney suubban.\"\n— Muslim';

  @override
  String get hadith57 =>
      '\"Saddex duco lama celiyo: ducada qofka sooman, ducada hoggaamiyaha cadliga ah, iyo ducada qofka la dulmiyay.\"\n— Tirmidhi';

  @override
  String get hadith58 =>
      '\"Qofkii hal mar igu salliya, Alle toban jeer ayuu ku sallaa.\"\n— Muslim';

  @override
  String get hadith65 =>
      '\"Mu\'minku waa muraayaddii mu\'minka.\"\n— Abu Dawud';

  @override
  String get hadith66 =>
      '\"Runtu waxay horseedaa wanaag, wanaaguna wuxuu horseedaa Jannada.\"\n— Bukhaari & Muslim';

  @override
  String get hadith67 =>
      '\"U celi amaanada qofkii kugu aaminay, hana khiyaamin qofkii ku khiyaamay.\"\n— Abu Dawud & Tirmidhi';

  @override
  String get hadith68 =>
      '\"Muslimka ma gaadho daal, cudur, walbahaar, murug, dhib iyo walaac, xitaa qodax ku mudata, in Alle dambiyadiisa qaar ku dhaafo mooyee.\"\n— Bukhaari & Muslim';

  @override
  String get hadith69 =>
      '\"Ducada Muslimku walaalkiis ugu duceeyo isagoo maqan waa la aqbalaa.\"\n— Muslim';

  @override
  String get hadith70 =>
      '\"Qofkii saddex jeer Alle Jannada weydiista, Jannadu waxay tidhaahdaa: Ilaahayow, Jannada geli.\"\n— Tirmidhi';

  @override
  String get hadith71 =>
      '\"Soonka ugu fadliga badan Ramadaan kadib waa soonka bisha Alle ee Muxarram.\"\n— Muslim';

  @override
  String get hadith72 =>
      '\"Qofkii xajka guta oo aan faxshi ku hadlin dambina samayn, wuxuu u soo noqdaa sidii maalintii hooyadii dhashay.\"\n— Bukhaari & Muslim';

  @override
  String get hadith73 =>
      '\"Cumrada ilaa cumrada kale waa kafaarad dambiyada u dhexeeya.\"\n— Bukhaari & Muslim';

  @override
  String get hadith74 =>
      '\"Ku degdega camallada wanaagsan ka hor fidmooyin u imanaya sida googo\'ooyin habeen mugdi ah.\"\n— Muslim';

  @override
  String get hadith75 =>
      '\"Labada rakcadood ee Subax way ka khayr badan yihiin adduunka iyo waxa ku jira oo dhan.\"\n— Muslim';

  @override
  String get hadith77 =>
      '\"Haddii aad Alle ugu tawakkali lahaydeen sida xaqa ah, wuxuu idiin arsaaqi lahaa sida uu shimbiraha u arsaaqo.\"\n— Tirmidhi';

  @override
  String get hadith78 =>
      '\"Qofkii booqda qof buka, wuxuu ku jiraa midhaha Jannada ilaa uu ka soo noqdo.\"\n— Muslim';

  @override
  String get hadith79 =>
      '\"Faafiya salaanta, quudiya gaajaysanka, tukadana habeenkii marka dadku hurdaan — Jannada nabad baad ku geli doontaan.\"\n— Tirmidhi';

  @override
  String get hadith80 =>
      '\"Qofkii aan dadka u mahadnaqin, Alle uma mahadnaqo.\"\n— Tirmidhi';

  @override
  String get hadith81 =>
      '\"Xasad ma bannaana laba mooyee: nin Alle maal siiyay oo xaqa ku bixiya, iyo nin Alle xikmad siiyay oo ku xukuma kuna bara.\"\n— Bukhaari & Muslim';

  @override
  String get hadith82 =>
      '\"Qofku wuxuu ku jiraa diinta saaxiibkiis, ee midkiin ha eego cidda uu saaxiib la yahay.\"\n— Abu Dawud & Tirmidhi';

  @override
  String get hadith85 =>
      '\"Qofkii wax uga taga Alle dartiis, Alle wuxuu ugu beddelaa wax ka khayr badan.\"\n— Ahmad';

  @override
  String get hadith86 =>
      '\"Qofkii qariya ceebta Muslim, Alle wuxuu qarin doonaa ceebtiisa Maalinta Qiyaamaha.\"\n— Bukhaari & Muslim';

  @override
  String get hadith87 =>
      '\"Adduunka ku noolow sidii qariib ama socoto.\"\n— Bukhaari';

  @override
  String get hadith88 =>
      '\"Qofkii u fududeeya qof dhib ku jira, Alle wuxuu u fududeeyaa adduunka iyo aakhirada.\"\n— Muslim';

  @override
  String get hadith89 =>
      '\"Ajarka camalladu wuxuu ku xiran yahay niyada.\"\n— Bukhaari & Muslim';

  @override
  String get hadith90 =>
      '\"Ka digtoonaada malaha, waayo malahu waa hadalka ugu beenta badan.\"\n— Bukhaari & Muslim';

  @override
  String get hadith93 =>
      '\"Wada cuna oo magaca Alle xusa, waa laydiinku barakayn doonaa.\"\n— Abu Dawud';

  @override
  String get hadith94 =>
      '\"Ma jiraan dad fadhiista iyagoo Alle xusaya, in malaa\'igtu hareereeyaan, naxariistu daboosho, xasilloonina ku soo degto mooyee.\"\n— Muslim';

  @override
  String get hadith95 =>
      '\"Addoonka cafiskiisa Alle wuxuu ugu kordhiyaa sharaf oo keliya.\"\n— Muslim';

  @override
  String get hadith96 =>
      '\"Awrkaaga xidh, kaddibna Alle ku tawakal.\"\n— Tirmidhi';

  @override
  String get hadith97 =>
      '\"Arrinka mu\'minku waa la yaab — arrinkiisa oo dhan waa khayr.\"\n— Muslim';

  @override
  String get hadith98 =>
      '\"Muslimku waa walaalka Muslimka: ma dulmiyo, ma dayaco, mana quudhsado.\"\n— Muslim';

  @override
  String get delete => 'Tirtir';

  @override
  String get remove => 'Ka saar';

  @override
  String get deleteAmalConfirmTitle => 'Ka saar raadraaca?';

  @override
  String deleteAmalConfirmBody(String title) {
    return '\"$title\" waa laga qarinayaa liiskaaga. Taariikhdaadu way kaydsanaanaysaa.';
  }

  @override
  String get genericError => 'Khalad ayaa dhacay. Fadlan isku day mar kale.';

  @override
  String get notificationChannelName => 'Xusuusinta camallada';

  @override
  String get notificationChannelDescription =>
      'Xusuusin maalinle ah oo ku saabsan camallada aad raadraacdo.';

  @override
  String get invalidAmalId => 'Aqoonsi camal oo aan sax ahayn';

  @override
  String get tutorialSettingsRow => 'Sida loo isticmaalo Muhasaba';

  @override
  String get tutorialSkip => 'Ka bood';

  @override
  String get tutorialNext => 'Xiga';

  @override
  String get tutorialDone => 'Waa hagaag';

  @override
  String get tutorialTapTitle => 'Taabo si aad u dhammaystirto';

  @override
  String get tutorialTapBody =>
      'Hal taabasho ayaa camalka u calaamadaysa in maanta la dhammeeyay. Mar kale taabo si aad uga noqoto.';

  @override
  String get tutorialEditTitle => 'Laba jeer taabo si aad wax uga beddesho';

  @override
  String get tutorialEditBody =>
      'Waxay furaysaa foomka wax-ka-beddelka — magaca beddel, ama beddel inta jeer ee uu soo noqnoqdo.';

  @override
  String get tutorialReorderTitle => 'Riix oo hay si aad u kala habayso';

  @override
  String get tutorialReorderBody =>
      'Hay safka, kadibna jiid. Habayntaada waa la kaydiyaa.';

  @override
  String get tutorialRemoveTitle => 'Dhinac u jiid si aad u saarto';

  @override
  String get tutorialRemoveBody =>
      'Safka dhinac u jiid si aad maanta u qariso, ama aad raadraaca uga joojiso.';

  @override
  String get tutorialCountTitle => 'Tirinta celcelinta';

  @override
  String get tutorialCountBody =>
      'Camallada bartilmaameedkoodu ka badan yahay mid, isticmaal − iyo + celcelin kasta.';

  @override
  String get tutorialViewTitle => 'Kooxayn ama liis fudud';

  @override
  String get tutorialViewBody =>
      'Kala dooro in qaybo loo kala saaro iyo hal liis fudud.';

  @override
  String get tutorialChallengeLogTitle => 'Taabo si aad maanta u diiwaangeliso';

  @override
  String get tutorialChallengeLogBody =>
      'Hal taabasho ayaa maanta diiwaangelisa. Yoolka la tirinayo, taabasho kastaa hal tallaabo ayay ku dartaa.';

  @override
  String get tutorialChallengeOpenTitle => 'Laba jeer taabo si aad u furto';

  @override
  String get tutorialChallengeOpenBody =>
      'Waxay furaysaa yoolka — maalin kasta arag, mid aad seegtay sax, ama tirtir.';

  @override
  String get tutorialChallengeDeleteBody =>
      'Kaadhka dhinac u jiid si aad yoolka u tirtirto.';

  @override
  String get tutorialChallengeAmountTitle => 'Diiwaangelinta tiro sax ah';

  @override
  String get tutorialChallengeAmountBody =>
      'Isticmaal − iyo + si aad u beddesho, ama taabo lambarka si aad u qorto tiro sax ah.';

  @override
  String get challengeOpenDetailsAction => 'Fur faahfaahinta yoolka';

  @override
  String get challengesActive => 'Socda';

  @override
  String get challengesPast => 'Kuwii hore';

  @override
  String challengeJustFinished(int count, String title) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count yool ayaa dhammaaday — kii ugu dambeeyay $title',
      one: 'Waa dhammaaday: $title',
    );
    return '$_temp0';
  }

  @override
  String get challengeSectionEnded => 'Muddo dhaaf';

  @override
  String get challengesPastEmpty => 'Weli waxba ma dhammaanin.';

  @override
  String get challengesEmptyTitle => 'Weli yool ma jiro';

  @override
  String get challengesEmptyBody =>
      'Yool iska dhig — sida 20 rakcadood 7 maalmood gudahood — kuna raadraac halkan.';

  @override
  String get editChallenge => 'Wax ka beddel yoolka';

  @override
  String get deleteChallenge => 'Tirtir yoolka';

  @override
  String get deleteChallengeConfirm =>
      'Ma tirtiraysaa yoolkan iyo dhammaan horumarkii la diiwaangeliyay?';

  @override
  String get challengeShapeQuestion => 'Yoolkani waa nooc kee?';

  @override
  String get challengeShapeTotal => 'Wadar la gaarayo';

  @override
  String get challengeShapeTotalBody =>
      '1000 salawaad, 30 juz. Tirooyin baad diiwaangelinaysaa, wadartuna way kordhaysaa.';

  @override
  String get challengeShapeStreak => 'Taxane maalin-maalin ah';

  @override
  String get challengeShapeStreakBody =>
      'Tahajjud, Subax jamaaco ah. Hal calaamad maalintii, tiradu muhiim ma aha.';

  @override
  String get challengeTargetLabel => 'Bartilmaameed';

  @override
  String get challengeTargetRequired => 'Geli tiro ka weyn eber';

  @override
  String get challengeUnitLabel => 'Halbeeg (ikhtiyaar)';

  @override
  String get challengeUnitHint => 'rakcad, bog, jeer';

  @override
  String get challengeOneTapAdds => 'Hal taabasho waxay ku daraysaa';

  @override
  String get challengeHowManyDays => 'Immisa maalin?';

  @override
  String get challengeReachHowMuch => 'Ilaa immisa?';

  @override
  String get challengeSpreadOver => 'Muddada';

  @override
  String get challengeSpreadEveryDay => 'Maalin kasta';

  @override
  String get challengeSpreadLonger => 'Muddo ka dheer';

  @override
  String get challengeByWhen => 'Ilaa goorma?';

  @override
  String get challengeWindowDuration => 'Muddo gudaheed';

  @override
  String get challengeByDate => 'Ilaa taariikh';

  @override
  String challengePlanRange(String start, String end) {
    return '$start ilaa $end';
  }

  @override
  String challengePlanExact(String start, String end) {
    return '$start ilaa $end · mid maalintii, maalin kasta';
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
    return '$start ilaa $end · $target ka mid ah $window maalmood — $slack waad seegi kartaa';
  }

  @override
  String challengePlanRate(String start, String end, String rate) {
    return '$start ilaa $end · qiyaastii $rate maalintii';
  }

  @override
  String challengePlanOpen(String start) {
    return 'Wuxuu bilaabmayaa $start · muddo ma leh';
  }

  @override
  String challengeTooTight(
    String target,
    String window,
    num targetCount,
    num windowCount,
  ) {
    return '$target maalmood kuma qasmaan $window maalmood — taxanuhu maalintii hal mar buu tiriyaa.';
  }

  @override
  String challengeDurationLabel(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count maalmood',
      one: '$count maalin',
    );
    return '$_temp0';
  }

  @override
  String get challengeStartDate => 'Bilowga';

  @override
  String get challengeEndDate => 'Dhammaadka';

  @override
  String challengeProgressCount(String done, String target, String unit) {
    return '$done ka mid ah $target $unit';
  }

  @override
  String challengeProgressPlain(String done, String target) {
    return '$done ka mid ah $target';
  }

  @override
  String challengeProgressDays(String done, String target) {
    return '$done ka mid ah $target maalmood';
  }

  @override
  String challengeDaysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count maalmood ayaa hadhay',
      one: 'Hal maalin ayaa hadhay',
    );
    return '$_temp0';
  }

  @override
  String get challengeNoDeadline => 'Muddo ma leh';

  @override
  String challengeOnTrack(String rate) {
    return 'Jadwalka ku socda · $rate/maalin';
  }

  @override
  String challengeBehind(String rate) {
    return 'Dib u dhac · $rate/maalin si aad u dhammayso';
  }

  @override
  String challengeLastDay(String remaining) {
    return 'Maalinta u dambaysa · $remaining ayaa hadhay';
  }

  @override
  String get challengeReached => 'Bartilmaameedka waa la gaadhay';

  @override
  String get challengeCompleted => 'Dhammaystiran';

  @override
  String challengeEnded(String done, String target) {
    return 'Dhammaaday · $done/$target';
  }

  @override
  String get challengeExpiredTitle => 'Yoolku wuu dhammaaday';

  @override
  String challengeExpiredBody(String title, String done, String target) {
    return '$title wuxuu ku dhammaaday $done ka mid ah $target.';
  }

  @override
  String get challengeExtend => 'Kordhi';

  @override
  String get challengeRestart => 'Dib u bilow';

  @override
  String get challengeArchive => 'Arkiifi';

  @override
  String get challengeDailyBreakdown => 'Diiwaan maalinle';

  @override
  String challengeNudgeBody(String title, String rate) {
    return '$title: $rate maalintii si aad wakhtigiisa ugu dhammayso.';
  }

  @override
  String challengeLastDayBody(String title, String remaining) {
    return '$title: maalinta u dambaysa — $remaining ayaa hadhay.';
  }

  @override
  String get challengeGroupGoal => 'Yoolka';

  @override
  String get challengeGroupShape => 'Nooca';

  @override
  String get challengeGroupPlan => 'Qorshaha';

  @override
  String get challengeGroupReminders => 'Xusuusinta';

  @override
  String get challengeStartFromTemplate => 'Ka bilow qaab diyaarsan';

  @override
  String get challengeTemplateBlank => 'Madhan';

  @override
  String get challengePreview => 'Horu-eegid';

  @override
  String get challengeTmplTahajjud => '40 habeen Tahajjud';

  @override
  String get challengeTmplSalawat => '1000 salawaad';

  @override
  String get challengeTmplKhatm => 'Khatmi 30 maalmood gudahood';

  @override
  String get challengeTmplFajrJamaah => '30 maalmood Subax jamaaco ah';

  @override
  String get challengeTmplSadaqah => 'Sadaqo 30 maalmood';

  @override
  String get listSeparator => ' · ';

  @override
  String get tierRafiq => 'Rafiiq';

  @override
  String get tierNasir => 'Naasir';

  @override
  String get tierMuhsin => 'Muxsin';

  @override
  String get tierAnsar => 'Ansaar';

  @override
  String get tierRafiqMeaning => 'saaxiib';

  @override
  String get tierNasirMeaning => 'taageere';

  @override
  String get tierMuhsinMeaning => 'samafale';

  @override
  String get tierAnsarMeaning => 'caawiye';

  @override
  String get supportCardBody =>
      'Waa bilaash, xayeysiis iyo akoon midna ma leh. Horumarintiisa waxaad ku taageeri kartaa hadiyad — lacag kasta, mar kasta oo aad doonto.';

  @override
  String get supportCta => 'Taageer Muhasaba';

  @override
  String get supportAgain => 'Mar kale taageer';

  @override
  String get supporterThanks =>
      'Alle khayr ha idinka siiyo — insha Allaah, Muhasaba wuxuu sii ahaan doonaa bilaash, xayeysiis la\'aan.';

  @override
  String supporterSince(String tier, String month) {
    return '$tier tan iyo $month';
  }

  @override
  String get supportPromptTitle => 'Taageer Muhasaba';

  @override
  String get supportPromptBody =>
      'Muhasaba waa bilaash, xayeysiis iyo akoon midna ma leh. Horumarintiisa waxaad ku taageeri kartaa hadiyad — lacag kasta, mar kasta oo aad doonto. Wax xiran oo taageerada ku xiran ma jiro.';

  @override
  String get supportPromptNow => 'Hadda taageer';

  @override
  String get supportPromptLater => 'Mar dambe i xusuusi';

  @override
  String get supportPromptNever => 'Mar dambe ha i weydiin';

  @override
  String get tipSheetTitle => 'Taageer Muhasaba';

  @override
  String get tipSheetBody =>
      'Dooro lacag kasta, inta jeer ee aad doonto. Hadiyaduhu waxay galaan dayactirka abka — insha Allaah, wuxuu sii ahaan doonaa bilaash, xayeysiis la\'aan. Mahadnaq ahaan, Dejinta waxaa lagugu muujin doonaa taageere.';

  @override
  String tipSheetSupporterLine(String tier) {
    return '$tier — Alle khayr ha idinka siiyo.';
  }

  @override
  String get tipSheetSupporterAgain =>
      'Mar kale taageer mar kasta oo aad doonto.';

  @override
  String tipSheetStoreNote(String store) {
    return 'Waxaa maamula $store — weligeen ma aragno xogta lacag-bixintaada.';
  }

  @override
  String get tipSheetOtherWays => 'Ma waydaa ikhtiyaar kugu habboon?';

  @override
  String get tipSheetWriteToUs => 'Noo qor';

  @override
  String get supportEmailBody =>
      'Assalaamu calaykum,\n\nWaxaan jeclaan lahaa inaan si toos ah u taageero horumarinta Muhasaba.\n\nDalka:\nHabka aan u dirayo:\nLacagta (ikhtiyaar):';

  @override
  String tipBusy(String store) {
    return '$store waa la furayaa…';
  }

  @override
  String get tipThanks => 'Alle khayr ha idinka siiyo — Alle ha idinka aqbalo.';

  @override
  String get tipDone => 'Waa hagaag';

  @override
  String get tipFailed => 'Iibsigu ma dhicin. Wax lacag ah lagaama jarin.';

  @override
  String tipPending(String store) {
    return 'Hadiyaddaadu weli waxay sugaysaa $store — sumaddaada waxaa la dari doonaa marka la xaqiijiyo.';
  }

  @override
  String get tipUnavailable => 'Iibsashada hadda laguma heli karo qalabkan.';

  @override
  String get optionSetJamaa => 'Jamaaco';

  @override
  String get optionJamaaAlone => 'Kali ahaan';

  @override
  String get optionJamaaHome => 'Jamaaco guriga';

  @override
  String get optionJamaaMasjid => 'Jamaaco masjidka';

  @override
  String get optionSetOnTime => 'Wakhtigii';

  @override
  String get optionOnTimeOnTime => 'Wakhtigii';

  @override
  String get optionOnTimeLate => 'Daahid';

  @override
  String get optionOnTimeQada => 'Qadaa';

  @override
  String get optionSetQuranSession => 'Fadhiga Quraanka';

  @override
  String get optionQuranRecited => 'La akhriyay';

  @override
  String get optionQuranMemorised => 'La xifdiyay';

  @override
  String get optionQuranMeaning => 'Macnaha la socda';

  @override
  String get optionQuranListened => 'La dhegaystay';

  @override
  String get optionSetSadaqahType => 'Nooca sadaqada';

  @override
  String get optionSadaqahMoney => 'Lacag';

  @override
  String get optionSadaqahFood => 'Cunto';

  @override
  String get optionSadaqahTime => 'Wakhti';

  @override
  String get optionSadaqahOther => 'Kale';

  @override
  String get optionSetIntensity => 'Heerka';

  @override
  String get optionIntensityLight => 'Fudud';

  @override
  String get optionIntensityModerate => 'Dhexdhexaad';

  @override
  String get optionIntensityIntense => 'Adag';

  @override
  String get optionSetNewTitle => 'Urur cusub oo ikhtiyaarro ah';

  @override
  String get optionSetEditTitle => 'Wax ka beddel ururka ikhtiyaarrada';

  @override
  String get optionSetNameLabel => 'Magaca ururka';

  @override
  String get optionSetNameHint => 'tus. Jamaaco';

  @override
  String get optionsLabel => 'Ikhtiyaarrada';

  @override
  String get optionAdd => 'Ku dar ikhtiyaar';

  @override
  String optionHint(int index) {
    return 'Ikhtiyaar $index';
  }

  @override
  String optionsMaxReached(int max) {
    return 'Ugu badnaan $max ikhtiyaar.';
  }

  @override
  String get optionSetPreviewLabel => 'Horu-eegid — safka Maanta';

  @override
  String optionSetKeptForHistory(String labels) {
    return 'Taariikhda loo hayo: $labels';
  }

  @override
  String get optionSetDelete => 'Tirtir ururka';

  @override
  String get optionSetDeleteConfirm =>
      'Camallada adeegsada ururkan ikhtiyaarro mar dambe ma muujin doonaan. Maalmihii aad horay u diiwaangelisay doorashadoodii way sii haysanayaan.';

  @override
  String get optionSetNameRequired => 'Ururka magac u dhig';

  @override
  String get optionsMinRequired => 'Ku dar ugu yaraan laba ikhtiyaar';

  @override
  String get optionSetNameTooLong => 'Magaca ururka aad buu u dheer yahay';

  @override
  String optionTooLong(int index) {
    return 'Ikhtiyaarka $index aad buu u dheer yahay';
  }

  @override
  String get optionSetNone => 'Midna';

  @override
  String get optionSetNew => 'Urur cusub';

  @override
  String get requireChoiceLabel => 'Ka dhig doorasho qasab ah';

  @override
  String get requireChoiceHelp =>
      'Safka lama calaamadeyn karo ilaa ikhtiyaar la doorto';

  @override
  String get requireChoicePickSetFirst => 'Marka hore urur dooro';

  @override
  String get requireChoiceCountHelp =>
      'Camallada la tiriyo waxaa lagu dhammaystiraa − iyo +';

  @override
  String optionsUsedOf(int used, int max) {
    return '$used ka mid ah $max ikhtiyaar ayaa la isticmaalay.';
  }

  @override
  String get choiceNeeded => 'Doorasho ayaa loo baahan yahay';

  @override
  String optionSelected(String label) {
    return '$label, waa la doortay';
  }

  @override
  String optionNotSelected(String label) {
    return '$label, lama doorin';
  }

  @override
  String optionBreakdownTitle(String set) {
    return 'Kala-qaybinta ikhtiyaarrada — $set';
  }

  @override
  String optionBreakdownCaption(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dhammaystir',
      one: '1 dhammaystir',
    );
    return 'Saamiga $_temp0 ee doorasho lagu diiwaangeliyay';
  }

  @override
  String optionNoChoiceRecorded(int none, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other: '$total maalmood oo la dhammeeyay',
      one: '1 maalin oo la dhammeeyay',
    );
    return 'Doorasho lama diiwaangelin — $none ka mid ah $_temp0';
  }

  @override
  String get optionRemovedSuffix => 'la saaray';

  @override
  String get optionAllAmals => 'Dhammaan';

  @override
  String optionScopedCaption(String amal, int count) {
    return '$amal · $count la diiwaangeliyay';
  }

  @override
  String get optionBreakdownSectionTitle => 'Kala-qaybinta ikhtiyaarrada';

  @override
  String optionBreakdownSwipeHint(int count) {
    return '$count urur · jiid';
  }

  @override
  String get optionDetailEmpty => 'Weli doorasho looma diiwaangelin ururkan.';

  @override
  String get optionDetailTrendHeading => 'Sida uu isu beddelay';

  @override
  String optionDetailTrendReadout(String option, String from, String to) {
    return 'Saamiga $option toddobaadka koowaad wuxuu ahaa $from, kan ugu dambeeyayna $to.';
  }

  @override
  String get optionDetailByAmalHeading => 'Camal ahaan';

  @override
  String optionDetailByAmalReadout(
    String best,
    String bestShare,
    String worst,
    String worstShare,
  ) {
    return 'Ugu sarreeya: $best ($bestShare); ugu hooseeya: $worst ($worstShare).';
  }

  @override
  String get optionDetailRecordsHeading => 'Rikoorrada';

  @override
  String get optionDetailLongestRun => 'Taxanaha ugu dheer';

  @override
  String get optionDetailBestWeek => 'Toddobaadka ugu fiican';

  @override
  String get optionDetailCurrentRun => 'Taxanaha hadda';

  @override
  String get optionDetailRecordsCaption =>
      'Waxay ku salaysan tahay sannadkii la soo dhaafay, kumana xirna muddada kor lagu doortay.';

  @override
  String get optionDetailRecentDaysHeading => 'Maalmihii ugu dambeeyay';

  @override
  String optionDetailRecentDaysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count-dii maalmood ee ugu dambeeyay',
      one: 'Maalintii ugu dambaysay',
    );
    return '$_temp0';
  }

  @override
  String get amalFivePrayers => 'Shanta salaadood';

  @override
  String get amalJumuah => 'Salaadda Jimcaha';

  @override
  String get amalWitr => 'Salaadda Witirka';

  @override
  String get amalQada => 'Qadaynta salaadaha';

  @override
  String get amalFajrSunnah => 'Sunnada Subax';

  @override
  String get amalDhuhrSunnah => 'Sunnada Duhur';

  @override
  String get amalAsrSunnah => 'Sunnada Casar';

  @override
  String get amalMaghribSunnah => 'Sunnada Maqrib';

  @override
  String get amalIshaSunnah => 'Sunnada Cishe';

  @override
  String get amalRawatib => 'Sunnooyinka rawaatibka';

  @override
  String get amalSiwak => 'Caday';

  @override
  String get amalWuduSleep => 'Weysada ka hor hurdada';

  @override
  String get amalFridayGhusl => 'Qubeyska Jimcaha';

  @override
  String get amalIshraq => 'Salaadda Ishraaqa';

  @override
  String get amalWuduPrayer => 'Laba rakcadood weysada kadib';

  @override
  String get amalTahiyyah => 'Taxiyyatul Masjid';

  @override
  String get amalEarlyJumuah => 'Hore u tegidda Jimcaha';

  @override
  String get amalAfterSalah => 'Adkaarta salaadda kadib';

  @override
  String get amalAfterFajr => 'Adkaarta Subax kadib';

  @override
  String get amalAfterDhuhr => 'Adkaarta Duhur kadib';

  @override
  String get amalAfterAsr => 'Adkaarta Casar kadib';

  @override
  String get amalAfterMaghrib => 'Adkaarta Maqrib kadib';

  @override
  String get amalAfterIsha => 'Adkaarta Cishe kadib';

  @override
  String get amalAyatKursi => 'Aayatul Kursi';

  @override
  String get amalKursiFajr => 'Aayatul Kursi Subax kadib';

  @override
  String get amalKursiDhuhr => 'Aayatul Kursi Duhur kadib';

  @override
  String get amalKursiAsr => 'Aayatul Kursi Casar kadib';

  @override
  String get amalKursiMaghrib => 'Aayatul Kursi Maqrib kadib';

  @override
  String get amalKursiIsha => 'Aayatul Kursi Cishe kadib';

  @override
  String get amalSayyidIstighfar => 'Sayidul Istigfaar';

  @override
  String get amalSalawat => 'Salawaadka Nabiga ﷺ';

  @override
  String get amalSubhanallah => 'Subxaanallaahi wa bixamdihi';

  @override
  String get amalTahlil => 'Laa ilaaha illallaah';

  @override
  String get amalBedtimeAdhkar => 'Adkaarta hurdada';

  @override
  String get amalFridaySalawat => 'Salawaadka Jimcaha';

  @override
  String get amalHawqala => 'Laa xawla walaa quwwata';

  @override
  String get amalTasbihFatimah => 'Tasbiixa Faadumo';

  @override
  String get amalWakingAdhkar => 'Adkaarta toosidda';

  @override
  String get amalDuaAdhan => 'Ducada aadaanka kadib';

  @override
  String get amalDuaIqamah => 'Ducada u dhexaysa aadaanka iyo iqaamadda';

  @override
  String get amalDuaSujood => 'Ducada sujuudda';

  @override
  String get amalDuaParents => 'Ducada waalidiinta';

  @override
  String get amalDuaOthers => 'Ducada dadka kale';

  @override
  String get amalFridayHour => 'Ducada saacadda u dambeysa Jimcaha';

  @override
  String get amalLastThird => 'Ducada qaybta dambe ee habeenka';

  @override
  String get amalMulk => 'Suuradda Al-Mulk';

  @override
  String get amalBaqarahEnd => 'Labada aayadood ee u dambeeya Al-Baqara';

  @override
  String get amalSajdah => 'Suuradda As-Sajda';

  @override
  String get amalQuls => 'Saddexda Qul';

  @override
  String get amalYasin => 'Suuradda Yaasiin';

  @override
  String get amalWaqiah => 'Suuradda Al-Waaqica';

  @override
  String get amalHifz => 'Xifdinta Quraanka';

  @override
  String get amalMurajaah => 'Muraajacada xifdiga';

  @override
  String get amalTafsir => 'Tafsiirka';

  @override
  String get amalListenQuran => 'Dhegaysiga Quraanka';

  @override
  String get amalTeachQuran => 'Barista Quraanka';

  @override
  String get amalMonThu => 'Soonka Isniinta iyo Khamiista';

  @override
  String get amalThreeDays => 'Saddex soon bishii';

  @override
  String get amalDailySadaqah => 'Sadaqo maalinle ah';

  @override
  String get amalFeed => 'Quudinta qof';

  @override
  String get amalHelpNeed => 'Caawinta qof baahan';

  @override
  String get amalOrphan => 'Kafaalada agoonta';

  @override
  String get amalGiveWater => 'Biyo waraabin';

  @override
  String get amalLearnHadith => 'Barashada xadiis';

  @override
  String get amalReadBook => 'Akhrinta buug Islaami ah';

  @override
  String get amalSeerah => 'Barashada siirada';

  @override
  String get amalClass => 'Ka qaybgalka cashar';

  @override
  String get amalArabic => 'Barashada Carabiga';

  @override
  String get amalLearnDua => 'Barashada duco cusub';

  @override
  String get amalShare => 'La wadaagidda cilmiga';

  @override
  String get amalFiqh => 'Barashada fiqhiga';

  @override
  String get amalMuhasaba => 'Muxaasabada habeenka';

  @override
  String get amalSpeakGood => 'Khayr sheeg ama aamus';

  @override
  String get amalNoBackbiting => 'Ka fogaanshaha xanta';

  @override
  String get amalAnger => 'Xakamaynta cadhada';

  @override
  String get amalGaze => 'Ilaalinta indhaha';

  @override
  String get amalTruthful => 'Run sheegidda';

  @override
  String get amalSmile => 'Dhoolla-caddayn';

  @override
  String get amalSalam => 'Faafinta salaanta';

  @override
  String get amalForgive => 'Cafinta dadka kale';

  @override
  String get amalGratitude => 'Mahadnaq';

  @override
  String get amalVisitSick => 'Booqashada qofka buka';

  @override
  String get amalNeighbours => 'U wanaagsanaanta deriska';

  @override
  String get amalRemoveHarm => 'Ka qaadista wax dhib leh jidka';

  @override
  String get amalParents => 'U wanaagsanaanta waalidiinta';

  @override
  String get amalFamilyTies => 'Xiriirinta qaraabada';

  @override
  String get amalHelpHome => 'Ka caawinta guriga';

  @override
  String get amalTeachChildren => 'Barista carruurta';

  @override
  String get amalSpouse => 'U wanaagsanaanta lammaanaha';

  @override
  String get categoryDua => 'Duco';

  @override
  String get categoryFasting => 'Soon';

  @override
  String get categoryKnowledge => 'Cilmi';

  @override
  String get categoryCharacter => 'Akhlaaq';

  @override
  String get categoryFamily => 'Qoys';

  @override
  String get libraryTitle => 'Maktabadda Camallada';

  @override
  String get librarySearchHint => 'Raadi camal';

  @override
  String get libraryAll => 'Dhammaan';

  @override
  String get libraryAdded => 'Waxaa lagu daray Maanta';

  @override
  String libraryAddedShowsOn(String days) {
    return 'Waa lagu daray · wuxuu soo baxayaa: $days';
  }

  @override
  String libraryNoMatch(String query) {
    return 'Camal “$query” ah lama helin';
  }

  @override
  String libraryCreateNamed(String query) {
    return 'Samee “$query”';
  }

  @override
  String get libraryPickBanner => 'Ka dooro Maktabadda Camallada';

  @override
  String libraryPickBannerSubtitle(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countText camal oo diyaar ah',
      one: '$countText camal oo diyaar ah',
    );
    return '$_temp0';
  }

  @override
  String get libraryFilledIn => 'Waxaa laga soo qaatay Maktabadda Camallada';

  @override
  String get libraryChange => 'Beddel';

  @override
  String get libraryEditAction => 'Wax ka beddel';

  @override
  String libraryWeeklyAny(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countText maalmood toddobaadkii',
      one: 'Hal mar toddobaadkii',
    );
    return '$_temp0';
  }

  @override
  String libraryMonthlyAny(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countText maalmood bishii',
      one: 'Hal mar bishii',
    );
    return '$_temp0';
  }

  @override
  String libraryTimes(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countText jeer',
    );
    return '$_temp0';
  }

  @override
  String get libraryAnyAmount => 'Tiro kasta';

  @override
  String libraryAddTooltip(String title) {
    return 'Ku dar $title';
  }

  @override
  String get libraryOnList => 'Liiskaaga ayuu ku jiraa';

  @override
  String get todayEmptyBrowse => 'Eeg Maktabadda Camallada';
}
