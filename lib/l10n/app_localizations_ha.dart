// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hausa (`ha`).
class AppLocalizationsHa extends AppLocalizations {
  AppLocalizationsHa([String locale = 'ha']) : super(locale);

  @override
  String get repeatsOnDaysHint => 'Yana maimaituwa a kwanakin da aka zaɓa';

  @override
  String get newDayStarted => 'Sabuwar rana ta fara';

  @override
  String get appTitle => 'Muhasaba';

  @override
  String get tabToday => 'Yau';

  @override
  String get tabStats => 'Ƙididdiga';

  @override
  String get tabHistory => 'Tarihi';

  @override
  String get tabSettings => 'Saituna';

  @override
  String get tabChallenge => 'Buri';

  @override
  String get tabInsights => 'Ƙididdiga';

  @override
  String get insightsTitle => 'Ƙididdiga';

  @override
  String get insightsOverview => 'Taƙaitawa';

  @override
  String get insightsDaily => 'Kowace rana';

  @override
  String get insightsArchive => 'Ajiya';

  @override
  String get archivedEmpty =>
      'Babu komai a nan tukuna. Amalin da aka cire daga bin diddigi za su bayyana a nan, don a iya mayar da su.';

  @override
  String archivedStoppedOn(String date) {
    return 'An cire a ranar $date';
  }

  @override
  String get archivedRestore => 'Mayar';

  @override
  String archivedRestored(String title) {
    return 'An mayar da \"$title\" cikin jerinka.';
  }

  @override
  String get newChallenge => 'Sabon buri';

  @override
  String get newAmal => 'Sabon amali';

  @override
  String get editAmal => 'Gyara amali';

  @override
  String get newAmalTitle => 'Sabon amali';

  @override
  String get save => 'Ajiye';

  @override
  String get cancel => 'Soke';

  @override
  String get ok => 'OK';

  @override
  String get clear => 'Share';

  @override
  String get titleLabel => 'Take';

  @override
  String get titleRequired => 'Ana buƙatar take';

  @override
  String get titleTooLong => 'Take ya yi tsawo';

  @override
  String get frequencyLabel => 'Yawan maimaitawa';

  @override
  String get frequencyDaily => 'Kowace rana';

  @override
  String get frequencyWeekly => 'Kowane mako';

  @override
  String get frequencyMonthly => 'Kowane wata';

  @override
  String get categoryLabel => 'Rukuni';

  @override
  String get categoryOther => 'Wasu';

  @override
  String get categorySalah => 'Sallah';

  @override
  String get categoryDhikr => 'Zikiri';

  @override
  String get categoryQuran => 'Alƙur\'ani';

  @override
  String get categoryCharity => 'Sadaka';

  @override
  String get categorySunnah => 'Sunnah';

  @override
  String get timesPerPeriod => 'Sau nawa a kowane lokaci';

  @override
  String get custom => 'Na musamman';

  @override
  String get customTargetHint => 'misali 50';

  @override
  String get targetAny => 'Ko nawa';

  @override
  String get targetAnyHelp => 'Babu manufa — ko nawa aka yi, an kammala';

  @override
  String get dayOfWeek => 'Ranar mako';

  @override
  String get anyDay => 'Kowace';

  @override
  String get anyDayHint => 'Kowace rana (yana nan a yau, zai ɓoyu gobe)';

  @override
  String onlyDayHint(String day) {
    return 'Ranar $day kaɗai';
  }

  @override
  String get dateOfMonth => 'Kwanan wata';

  @override
  String get repeatMode => 'Maimaitawa';

  @override
  String get onSetDays => 'A kwanakin da aka ƙayyade';

  @override
  String get onSetDates => 'A ranakun wata da aka ƙayyade';

  @override
  String get anyDayMode => 'Kowace rana';

  @override
  String get datesOfMonth => 'Kwanakin wata';

  @override
  String get daysPerWeekQuestion => 'Kwana nawa a mako?';

  @override
  String get daysPerMonthQuestion => 'Kwana nawa a wata?';

  @override
  String get pickAtLeastOneDay => 'Zaɓi aƙalla rana ɗaya';

  @override
  String get pickAtLeastOneDate => 'Zaɓi aƙalla kwanan wata ɗaya';

  @override
  String get previewDaily => 'Yana maimaituwa kowace rana';

  @override
  String previewWeeklyDays(String days) {
    return 'Yana maimaituwa kowace $days';
  }

  @override
  String previewWeeklyAny(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'kwana $count',
      one: 'kwana ɗaya',
    );
    return 'Yana maimaituwa $_temp0 a kowane mako';
  }

  @override
  String previewMonthlyDates(int count, String dates) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Yana maimaituwa a kwanakin $dates na kowane wata',
      one: 'Yana maimaituwa a ranar $dates ta kowane wata',
    );
    return '$_temp0';
  }

  @override
  String previewMonthlyAny(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'kwana $count',
      one: 'kwana ɗaya',
    );
    return 'Yana maimaituwa $_temp0 a kowane wata';
  }

  @override
  String get anyDate => 'Kowace';

  @override
  String get anyDateHint =>
      'Kowane kwanan wata (yana nan a yau, zai ɓoyu gobe)';

  @override
  String onlyDateHint(String date) {
    return 'Ranar $date kaɗai';
  }

  @override
  String get startPreChecked => 'Fara da alamar kammala';

  @override
  String get startPreCheckedSubtitle =>
      'Idan sabon lokaci ya fara, wannan amalin zai kasance da alamar kammala har sai an cire alamar.';

  @override
  String get reminder => 'Tunatarwa';

  @override
  String get reminderNone => 'Babu';

  @override
  String reminderTime(String time) {
    return 'Tunatarwa: $time';
  }

  @override
  String get reminderPermissionWarning =>
      'An ajiye tunatarwa, amma ba a ba da izinin sanarwa ba. Kunna su a saitunan waya don samun sanarwa.';

  @override
  String get settingsReminders => 'Tunatarwa';

  @override
  String get dailyReminder => 'Tunatarwa ta kowace rana';

  @override
  String get dailyReminderSubtitle => 'Ɗan tunatarwa don bin diddigin amalinka';

  @override
  String get dailyReminderTimeLabel => 'Lokacin tunatarwa';

  @override
  String get dailyReminderBody =>
      'Ɗauki ɗan lokaci don bin diddigin amalinka na yau.';

  @override
  String get groupByCategory => 'Rarraba ta rukuni';

  @override
  String get flatList => 'Jeri ɗaya';

  @override
  String errorGeneric(String error) {
    return 'Kuskure: $error';
  }

  @override
  String get todayEmptyHint => 'Danna + don ƙara amalinka na farko.';

  @override
  String get noteLabel => 'Bayani';

  @override
  String get noteHint => 'misali: Na yi sallah a masallaci';

  @override
  String get completed => 'an kammala';

  @override
  String get notCompleted => 'ba a kammala ba';

  @override
  String progressOf(String progress, String target) {
    return 'An kammala $progress daga cikin $target';
  }

  @override
  String progressOpen(String count) {
    return 'An kammala $count';
  }

  @override
  String get removeFromToday => 'Cire daga yau';

  @override
  String get removeFromTodaySubtitle =>
      'Ɓoye shi a wannan rana kawai. Zai dawo gobe.';

  @override
  String get removeFromTracking => 'Cire daga bin diddigi';

  @override
  String get removeFromTrackingSubtitle =>
      'Cire shi gaba ɗaya daga jerinka. Za a adana tarihinsa.';

  @override
  String get chooseIcon => 'Zaɓi gunki';

  @override
  String get iconNone => 'Babu';

  @override
  String get recentlyUsed => 'Na baya-bayan nan';

  @override
  String get emojiSectionGeneral => 'Gama-gari';

  @override
  String get categoryNameHint => 'Suna';

  @override
  String get categoryNew => '+ Sabo';

  @override
  String get categoryNewSheetTitle => 'Sabon rukuni';

  @override
  String get categoryEditSheetTitle => 'Gyara rukuni';

  @override
  String get addAmal => 'Ƙara amali';

  @override
  String get customAmal => 'Amali na musamman';

  @override
  String get amalTasbih => 'Tasbihi 33x';

  @override
  String get amalIstighfar => 'Istigfari';

  @override
  String get amalSurahKahf => 'Suratul Kahfi';

  @override
  String get amalSadaqah => 'Sadaka';

  @override
  String get amalTahajjud => 'Tahajjudi';

  @override
  String get amalDuha => 'Sallar Walaha';

  @override
  String get amalFajr => 'Asuba';

  @override
  String get amalDhuhr => 'Azahar';

  @override
  String get amalAsr => 'La\'asar';

  @override
  String get amalMaghrib => 'Magariba';

  @override
  String get amalIsha => 'Isha\'i';

  @override
  String get amalMorningAdhkar => 'Azkar na safe';

  @override
  String get amalEveningAdhkar => 'Azkar na yamma';

  @override
  String get amalTilawah => 'Tilawa';

  @override
  String get settingsTitle => 'Saituna';

  @override
  String settingsLoadError(String error) {
    return 'Ba a iya loda saituna ba:\n$error';
  }

  @override
  String get sectionDayBoundary => 'Iyakar rana';

  @override
  String get rolloverHour => 'Sa\'ar sauyin rana';

  @override
  String get rolloverAtMidnight => 'Rana tana ƙarewa a tsakar dare.';

  @override
  String rolloverSubtitle(String time) {
    return 'Ana iya gyara amalin jiya har zuwa $time.';
  }

  @override
  String get pickRolloverHour => 'Zaɓi sa\'ar da rana ke sauyawa';

  @override
  String get sectionWeekMonth => 'Mako da wata';

  @override
  String get startOfWeek => 'Farkon mako';

  @override
  String get startOfMonth => 'Farkon wata';

  @override
  String get startOfMonthClamped =>
      'Ranakun da suka wuce 28 za su koma ranar ƙarshe a watannin da suka fi gajarta.';

  @override
  String get sectionAppearance => 'Kamanni';

  @override
  String get theme => 'Jigo';

  @override
  String get themeSystem => 'Na na\'ura';

  @override
  String get themeLight => 'Haske';

  @override
  String get themeDark => 'Duhu';

  @override
  String get sectionLanguage => 'Harshe';

  @override
  String get language => 'Harshe';

  @override
  String get systemDefault => 'Kamar na na\'ura';

  @override
  String get aboutTitle => 'Muhasaba';

  @override
  String get aboutSubtitle =>
      'Kundin muhasabar kai a addini. Duk bayanai suna zama a wannan na\'ura kaɗai.';

  @override
  String get statsTitle => 'Ƙididdiga';

  @override
  String statsLoadError(String error) {
    return 'Ba a iya loda ƙididdiga ba:\n$error';
  }

  @override
  String get perAmal => 'Kowane amali';

  @override
  String get thisWeek => 'Makon nan';

  @override
  String get thisMonth => 'Watan nan';

  @override
  String get totalCompletions => 'jimlar kammalawa';

  @override
  String get streakCurrent => 'Na yanzu';

  @override
  String get streakLongest => 'Mafi tsawo';

  @override
  String get ratioWeek => 'Mako';

  @override
  String get ratioMonth => 'Wata';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ranaku',
      one: 'rana',
    );
    return '$_temp0';
  }

  @override
  String streakWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'makwanni',
      one: 'mako',
    );
    return '$_temp0';
  }

  @override
  String streakMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'watanni',
      one: 'wata',
    );
    return '$_temp0';
  }

  @override
  String get frequencyBadgeDaily => 'kowace rana';

  @override
  String get frequencyBadgeWeekly => 'kowane mako';

  @override
  String get frequencyBadgeMonthly => 'kowane wata';

  @override
  String get statsEmpty =>
      'Babu amali tukuna. Ƙara ɗaya a shafin Yau don fara bin diddigi.';

  @override
  String get statsToday => 'Yau';

  @override
  String get statsThisWeek => 'Makon nan';

  @override
  String get statsThisMonth => 'Watan nan';

  @override
  String get statsAllTime => 'Tun farko';

  @override
  String get statsCustomRange => 'Zaɓaɓɓen lokaci';

  @override
  String get statsAllCategories => 'Duka';

  @override
  String get statsAllAmals => 'Duka';

  @override
  String get statsCompleted => 'An kammala';

  @override
  String get statsExpected => 'Ana sa rai';

  @override
  String get statsVsPrevious => 'Kwatanta da na baya';

  @override
  String get statsByCategory => 'Ta rukuni';

  @override
  String get statsPerAmal => 'Kowane amali';

  @override
  String get statsTotalCaption => 'jimla';

  @override
  String statsDaysFraction(String done, String expectedText, num expected) {
    String _temp0 = intl.Intl.pluralLogic(
      expected,
      locale: localeName,
      other: 'kwana $done/$expectedText',
      one: 'kwana $done/$expectedText',
    );
    return '$_temp0';
  }

  @override
  String get statsCurrentStreak => 'Jeri na yanzu';

  @override
  String get statsBestStreak => 'Jeri mafi tsawo';

  @override
  String get statsTotalDays => 'Jimlar ranaku';

  @override
  String get statsConsistency => 'Dorewa';

  @override
  String get statsLast5Weeks => 'Makwanni 5 da suka gabata';

  @override
  String get statsDailyBreakdown => 'Bayanin kowace rana';

  @override
  String get statsCompletionRate => 'Kashi na kammalawa';

  @override
  String get statsAmountPerDay => 'Adadi a kowace rana';

  @override
  String statsCountTotal(String count) {
    return 'Jimla $count';
  }

  @override
  String statsCountAvg(String amount) {
    return 'Matsakaici $amount/rana';
  }

  @override
  String statsCountBest(String count, String day) {
    return 'Mafi yawa $count · $day';
  }

  @override
  String get statsFilterTime => 'Lokaci';

  @override
  String get statsFilterCategory => 'Rukuni';

  @override
  String get statsFilterAmal => 'Amali';

  @override
  String get statsStreaks => 'Jerurruka';

  @override
  String get statsSelectDateRange => 'Zaɓi tazarar kwanaki';

  @override
  String get historyTitle => 'Tarihi';

  @override
  String get jumpToDate => 'Je zuwa wata rana';

  @override
  String historyEmptyDay(String date) {
    return 'Babu amalin da aka bibiya a ranar $date';
  }

  @override
  String get streakUnitD => 'r';

  @override
  String get streakUnitW => 'm';

  @override
  String get streakUnitM => 'w';

  @override
  String get mondayShort => 'Lit';

  @override
  String get tuesdayShort => 'Tal';

  @override
  String get wednesdayShort => 'Lar';

  @override
  String get thursdayShort => 'Alh';

  @override
  String get fridayShort => 'Jum';

  @override
  String get saturdayShort => 'Asa';

  @override
  String get sundayShort => 'Lah';

  @override
  String get mondayFull => 'Litinin';

  @override
  String get tuesdayFull => 'Talata';

  @override
  String get wednesdayFull => 'Laraba';

  @override
  String get thursdayFull => 'Alhamis';

  @override
  String get fridayFull => 'Juma\'a';

  @override
  String get saturdayFull => 'Asabar';

  @override
  String get sundayFull => 'Lahadi';

  @override
  String get hadith0 =>
      '\"Ayyukan da Allah ya fi so su ne waɗanda ake yi a kai a kai, ko da kaɗan ne.\"\n— Bukhari da Muslim';

  @override
  String get hadith2 =>
      '\"Idan ɗan Adam ya mutu, aikinsa ya yanke sai daga abubuwa uku: sadaka mai gudana, ilimi da ake amfana da shi, ko ɗa nagari da yake yi masa addu\'a.\"\n— Muslim';

  @override
  String get hadith3 =>
      '\"Duk wanda ya yi sallolin sanyi biyu (Asuba da La\'asar) zai shiga Aljanna.\"\n— Bukhari';

  @override
  String get hadith4 =>
      '\"Allah ba ya duba kamanninku ko dukiyoyinku, amma yana duba zukatanku da ayyukanku.\"\n— Muslim';

  @override
  String get hadith6 =>
      '\"Ku sauƙaƙa, kada ku tsananta; ku yi bushara, kada ku kori mutane.\"\n— Bukhari';

  @override
  String get hadith7 =>
      '\"Duk wanda ya bi hanya don neman ilimi, Allah zai sauƙaƙa masa hanyar zuwa Aljanna.\"\n— Muslim';

  @override
  String get hadith8 => '\"Sadaka ba ta rage dukiya.\"\n— Muslim';

  @override
  String get hadith9 =>
      '\"Mumini mai ƙarfi ya fi alheri kuma ya fi soyuwa ga Allah fiye da mumini mai rauni, kuma akwai alheri a cikin kowannensu.\"\n— Muslim';

  @override
  String get hadith10 =>
      '\"Duk wanda ya ce \'SubhanAllahi wa bihamdihi\' sau ɗari a rana, za a gafarta masa zunubansa ko da sun kasance kamar kumfar teku.\"\n— Bukhari da Muslim';

  @override
  String get hadith12 =>
      '\"Duk wanda ya karanta Ayatul Kursiyyu bayan kowace sallar farilla, babu abin da zai hana shi shiga Aljanna sai mutuwa.\"\n— Nasa\'i';

  @override
  String get hadith13 => '\"Magana mai kyau sadaka ce.\"\n— Bukhari da Muslim';

  @override
  String get hadith14 =>
      '\"Duk wanda ya yi imani da Allah da Ranar Lahira, to ya faɗi alheri ko ya yi shiru.\"\n— Bukhari da Muslim';

  @override
  String get hadith15 =>
      '\"Mai kula da gwauruwa ko miskini kamar mai jihadi ne a tafarkin Allah.\"\n— Bukhari da Muslim';

  @override
  String get hadith16 => '\"Murmushinka ga ɗan\'uwanka sadaka ce.\"\n— Tirmizi';

  @override
  String get hadith17 =>
      '\"Mafi alherinku shi ne wanda ya koyi Alƙur\'ani kuma ya koyar.\"\n— Bukhari';

  @override
  String get hadith18 =>
      '\"Ba wanda ya ci abinci mafi kyau fiye da wanda ya samu daga aikin hannayensa.\"\n— Bukhari';

  @override
  String get hadith19 =>
      '\"Allah Mai tausasawa ne, kuma Yana son tausasawa a cikin kowane al\'amari.\"\n— Bukhari da Muslim';

  @override
  String historyDayCompleted(String completed, String total) {
    return 'An kammala $completed daga cikin $total';
  }

  @override
  String get settingsSchedule => 'Jadawali';

  @override
  String get settingsAppearance => 'Kamanni';

  @override
  String get settingsAboutTagline => 'Abokin ibada na yau da kullum';

  @override
  String get settingsRolloverSub => 'Lokacin da rana ke sake farawa';

  @override
  String get settingsAbout => 'Game da manhaja';

  @override
  String get settingsVersion => 'Siga';

  @override
  String get settingsDeveloper => 'Mai haɓaka';

  @override
  String get settingsSupport => 'Tallafi';

  @override
  String get settingsRate => 'Yi wa manhajar maki';

  @override
  String get settingsContact => 'Tuntuɓe mu';

  @override
  String get settingsReportBug => 'Kai rahoton matsala';

  @override
  String get settingsRequestFeature => 'Nemi sabon fasali';

  @override
  String settingsSupportFallback(String email) {
    return 'Ba a iya buɗe imel ba. Don Allah a aika imel zuwa $email.';
  }

  @override
  String get settingsPrivacyPolicy => 'Manufar Sirri';

  @override
  String get settingsPrivacyOpenFailed => 'Ba a iya buɗe manufar sirri ba.';

  @override
  String get hadith20 =>
      '\"Duk wanda ya yi azumin Ramadan da imani kuma yana neman lada, za a gafarta masa zunubansa na baya.\"\n— Bukhari da Muslim';

  @override
  String get hadith22 =>
      '\"Addu\'a tsakanin kiran sallah da iƙama ba a mayar da ita.\"\n— Abu Dawud';

  @override
  String get hadith23 =>
      '\"Duk wanda ya gina masallaci saboda Allah, Allah zai gina masa gida a Aljanna.\"\n— Bukhari da Muslim';

  @override
  String get hadith24 =>
      '\"Mafi kyawun sahu ga maza su ne na gaba, mafi kyawun sahu ga mata su ne na baya.\"\n— Muslim';

  @override
  String get hadith25 =>
      '\"Azumi garkuwa ne daga wutar Jahannama.\"\n— Nasa\'i';

  @override
  String get hadith26 =>
      '\"Duk wanda ya yi raka\'a goma sha biyu na nafila, za a gina masa gida a Aljanna.\"\n— Muslim';

  @override
  String get hadith27 =>
      '\"Mai gwaninta wajen karatun Alƙur\'ani zai kasance tare da mala\'iku masu daraja.\"\n— Bukhari da Muslim';

  @override
  String get hadith29 =>
      '\"Mafi kyawun sadaka ita ce ba da ruwa a sha.\"\n— Ahmad';

  @override
  String get hadith30 =>
      '\"Duk wanda ya yaye wa mumini wata wahala, Allah zai yaye masa wata wahala a Ranar Kiyama.\"\n— Muslim';

  @override
  String get hadith32 =>
      '\"Kunya wani ɓangare ne na imani.\"\n— Bukhari da Muslim';

  @override
  String get hadith34 =>
      '\"Duk wanda ya yi haƙuri, Allah zai ba shi haƙuri.\"\n— Bukhari da Muslim';

  @override
  String get hadith36 =>
      '\"Ɗayanku ba zai yi imani na gaskiya ba sai ya so wa ɗan\'uwansa abin da yake so wa kansa.\"\n— Bukhari da Muslim';

  @override
  String get hadith37 =>
      '\"Ku ciyar da masu yunwa, ku ziyarci marasa lafiya, ku kuma \'yantar da kamammu.\"\n— Bukhari';

  @override
  String get hadith38 =>
      '\"Mai ƙarfi ba shi ne wanda ya yi nasara a kokawa ba, mai ƙarfi shi ne wanda ya mallaki kansa a lokacin fushi.\"\n— Bukhari da Muslim';

  @override
  String get hadith40 =>
      '\"Ku ce \'SubhanAllah\', \'Alhamdulillah\', da \'Allahu Akbar\' sau talatin da uku kowanne bayan kowace sallah.\"\n— Muslim';

  @override
  String get hadith41 =>
      '\"Mafi kyawun zikiri shi ne La ilaha illallah.\"\n— Tirmizi';

  @override
  String get hadith42 =>
      '\"Akwai ni\'imomi biyu da mutane da yawa ke ɓata su: lafiya da hutu.\"\n— Bukhari';

  @override
  String get hadith43 =>
      '\"Ka yi amfani da biyar kafin biyar: ƙurciyarka kafin tsufa, lafiyarka kafin rashin lafiya, arzikinka kafin talauci, hutunka kafin shagala, da rayuwarka kafin mutuwa.\"\n— Hakim';

  @override
  String get hadith44 =>
      '\"Duk wanda ya karanta Suratul Ikhlas sau goma, Allah zai gina masa gida a Aljanna.\"\n— Ahmad';

  @override
  String get hadith45 =>
      '\"Mafi kyawun sallah bayan farilla ita ce sallar dare.\"\n— Muslim';

  @override
  String get hadith46 =>
      '\"Sadaka tana kashe zunubi kamar yadda ruwa ke kashe wuta.\"\n— Tirmizi';

  @override
  String get hadith47 =>
      '\"Mai sada zumunci ba shi ne mai rama sadarwa ba; mai sada zumunci shi ne wanda idan an yanke masa zumunci, yake sadar da shi.\"\n— Bukhari';

  @override
  String get hadith49 =>
      '\"Duk wanda ya ci abinci ya ce: \'Godiya ta tabbata ga Allah wanda ya ciyar da ni wannan kuma ya azurta ni da shi ba tare da wata dabara ko ƙarfi daga gare ni ba,\' za a gafarta masa zunubansa na baya.\"\n— Tirmizi';

  @override
  String get hadith53 =>
      '\"Kada ka raina wani abu na alheri, ko da haɗuwa da ɗan\'uwanka da fuska mai fara\'a ne.\"\n— Muslim';

  @override
  String get hadith54 =>
      '\"Mafi alherinku shi ne wanda ya fi alheri ga iyalinsa.\"\n— Tirmizi';

  @override
  String get hadith55 =>
      '\"Duk wanda ya karanta ayoyi biyu na ƙarshen Suratul Baƙara da dare, za su isar masa.\"\n— Bukhari da Muslim';

  @override
  String get hadith56 =>
      '\"Duniya jin daɗi ce, mafi kyawun jin daɗinta kuwa mace ta kirki ce.\"\n— Muslim';

  @override
  String get hadith57 =>
      '\"Addu\'o\'i uku ba a mayar da su: addu\'ar mai azumi, da ta shugaba mai adalci, da ta wanda aka zalunta.\"\n— Tirmizi';

  @override
  String get hadith58 =>
      '\"Duk wanda ya yi mini salati sau ɗaya, Allah zai yi masa salati sau goma.\"\n— Muslim';

  @override
  String get hadith65 => '\"Mumini madubi ne ga mumini.\"\n— Abu Dawud';

  @override
  String get hadith66 =>
      '\"Gaskiya tana kai ga alheri, alheri kuma yana kai ga Aljanna.\"\n— Bukhari da Muslim';

  @override
  String get hadith67 =>
      '\"Ka mayar da amana ga wanda ya amince maka, kada ka ci amanar wanda ya ci amanarka.\"\n— Abu Dawud da Tirmizi';

  @override
  String get hadith68 =>
      '\"Babu gajiya, cuta, baƙin ciki, takaici, rauni ko damuwa da ke samun Musulmi, har ma ƙayar da ta soke shi, face Allah ya kankare masa wasu daga zunubansa da ita.\"\n— Bukhari da Muslim';

  @override
  String get hadith69 =>
      '\"Addu\'ar Musulmi ga ɗan\'uwansa a bayan idonsa karɓaɓɓiya ce.\"\n— Muslim';

  @override
  String get hadith70 =>
      '\"Duk wanda ya roƙi Allah Aljanna sau uku, Aljanna ta ce: Ya Allah, ka shigar da shi Aljanna.\"\n— Tirmizi';

  @override
  String get hadith71 =>
      '\"Azumi mafi falala bayan Ramadan shi ne azumin watan Allah, Muharram.\"\n— Muslim';

  @override
  String get hadith72 =>
      '\"Duk wanda ya yi Hajji bai yi alfasha ba bai kuma yi zunubi ba, ya koma kamar ranar da mahaifiyarsa ta haife shi.\"\n— Bukhari da Muslim';

  @override
  String get hadith73 =>
      '\"Umra zuwa Umra kafara ce ga zunuban da ke tsakaninsu.\"\n— Bukhari da Muslim';

  @override
  String get hadith74 =>
      '\"Ku yi gaggawar ayyukan alheri kafin fitinu su zo kamar yankin dare mai duhu.\"\n— Muslim';

  @override
  String get hadith75 =>
      '\"Raka\'o\'i biyu na Asuba sun fi duniya da abin da ke cikinta alheri.\"\n— Muslim';

  @override
  String get hadith77 =>
      '\"Da kun dogara ga Allah kamar yadda ya kamata, da ya azurta ku kamar yadda yake azurtar tsuntsaye.\"\n— Tirmizi';

  @override
  String get hadith78 =>
      '\"Wanda ya ziyarci mai rashin lafiya, yana cikin gonar Aljanna har ya dawo.\"\n— Muslim';

  @override
  String get hadith79 =>
      '\"Ku yaɗa sallama, ku ciyar da masu yunwa, ku yi sallah da dare lokacin da mutane suke barci — za ku shiga Aljanna cikin aminci.\"\n— Tirmizi';

  @override
  String get hadith80 =>
      '\"Wanda bai gode wa mutane ba, bai gode wa Allah ba.\"\n— Tirmizi';

  @override
  String get hadith81 =>
      '\"Hassada ba ta halatta sai ga mutum biyu: mutumin da Allah ya ba shi dukiya, sai ya kashe ta a hanyar gaskiya, da mutumin da Allah ya ba shi hikima, yana hukunci da ita kuma yana koyar da ita.\"\n— Bukhari da Muslim';

  @override
  String get hadith82 =>
      '\"Mutum yana bin addinin abokinsa, saboda haka kowannenku ya duba wanda yake abokantaka da shi.\"\n— Abu Dawud da Tirmizi';

  @override
  String get hadith85 =>
      '\"Duk wanda ya bar wani abu saboda Allah, Allah zai musanya masa da abin da ya fi shi alheri.\"\n— Ahmad';

  @override
  String get hadith86 =>
      '\"Wanda ya rufe aibin Musulmi, Allah zai rufe aibinsa a Ranar Kiyama.\"\n— Bukhari da Muslim';

  @override
  String get hadith87 =>
      '\"Ka kasance a duniya kamar kai baƙo ne ko matafiyi.\"\n— Bukhari';

  @override
  String get hadith88 =>
      '\"Wanda ya sawwaƙa wa wanda yake cikin wahala, Allah zai sawwaƙa masa a duniya da lahira.\"\n— Muslim';

  @override
  String get hadith89 =>
      '\"Ladan ayyuka ya dogara ne ga niyya.\"\n— Bukhari da Muslim';

  @override
  String get hadith90 =>
      '\"Ku guji zato, domin zato shi ne mafi ƙaryar magana.\"\n— Bukhari da Muslim';

  @override
  String get hadith93 =>
      '\"Ku ci tare kuma ku ambaci sunan Allah, za a sa muku albarka.\"\n— Abu Dawud';

  @override
  String get hadith94 =>
      '\"Babu wasu mutane da za su zauna suna ambaton Allah face mala\'iku sun kewaye su, rahama ta lulluɓe su, kuma natsuwa ta sauka a kansu.\"\n— Muslim';

  @override
  String get hadith95 =>
      '\"Allah ba Ya ƙara wa bawa saboda yafewa face daraja.\"\n— Muslim';

  @override
  String get hadith96 =>
      '\"Ka ɗaure raƙuminka sannan ka dogara ga Allah.\"\n— Tirmizi';

  @override
  String get hadith97 =>
      '\"Abin mamaki ne al\'amarin mumini — komai alheri ne a gare shi.\"\n— Muslim';

  @override
  String get hadith98 =>
      '\"Musulmi ɗan\'uwan Musulmi ne: ba ya zaluntarsa, ba ya yashe shi, kuma ba ya rena shi.\"\n— Muslim';

  @override
  String get delete => 'Share';

  @override
  String get remove => 'Cire';

  @override
  String get deleteAmalConfirmTitle => 'Cire daga bin diddigi?';

  @override
  String deleteAmalConfirmBody(String title) {
    return 'Za a ɓoye \"$title\" daga jerinka. Za a adana tarihinsa.';
  }

  @override
  String get genericError => 'An samu matsala. Don Allah a sake gwadawa.';

  @override
  String get notificationChannelName => 'Tunatarwar amali';

  @override
  String get notificationChannelDescription =>
      'Tunatarwa ta yau da kullum don amalin da ake bin diddigi.';

  @override
  String get invalidAmalId => 'ID na amali mara inganci';

  @override
  String get tutorialSettingsRow => 'Yadda ake amfani da Muhasaba';

  @override
  String get tutorialSkip => 'Tsallake';

  @override
  String get tutorialNext => 'Na gaba';

  @override
  String get tutorialDone => 'An gama';

  @override
  String get tutorialTapTitle => 'Danna don kammalawa';

  @override
  String get tutorialTapBody =>
      'Danna sau ɗaya don yi wa amali alamar an kammala na yau. Sake danna don sokewa.';

  @override
  String get tutorialEditTitle => 'Danna sau biyu don gyara';

  @override
  String get tutorialEditBody =>
      'Yana buɗe fom ɗin gyara — canza sunansa, ko canza yawan maimaitawarsa.';

  @override
  String get tutorialReorderTitle => 'Danna ka riƙe don sake tsarawa';

  @override
  String get tutorialReorderBody =>
      'Riƙe layi, sannan ka jawo shi. Ana adana tsarinka.';

  @override
  String get tutorialRemoveTitle => 'Ja gefe don cirewa';

  @override
  String get tutorialRemoveBody =>
      'Ja layin gefe don ɓoye shi na yau, ko daina bin diddiginsa.';

  @override
  String get tutorialCountTitle => 'Ƙidaya maimaitawa';

  @override
  String get tutorialCountBody =>
      'Ga amalin da manufarsa ta wuce ɗaya, yi amfani da − da + a kowace maimaitawa.';

  @override
  String get tutorialViewTitle => 'Rukuni ko jeri ɗaya';

  @override
  String get tutorialViewBody =>
      'Sauya tsakanin rarraba ta rukuni da jeri ɗaya.';

  @override
  String get tutorialLibraryTitle => 'Ƙara amali da ke a shirye';

  @override
  String get tutorialLibraryBody =>
      'Duba Taskar Amali rukuni-rukuni, sannan danna + don ƙara amali a Yau.';

  @override
  String get tutorialChallengeLogTitle => 'Danna don rubuta na yau';

  @override
  String get tutorialChallengeLogBody =>
      'Danna sau ɗaya yana rubuta na yau. A burin da ake ƙidaya, kowace dannawa tana ƙara mataki ɗaya.';

  @override
  String get tutorialChallengeOpenTitle => 'Danna sau biyu don buɗewa';

  @override
  String get tutorialChallengeOpenBody =>
      'Yana buɗe burin — duba kowace rana, gyara wadda aka rasa, ko share shi.';

  @override
  String get tutorialChallengeDeleteBody => 'Ja katin gefe don share burin.';

  @override
  String get tutorialChallengeAmountTitle => 'Rubuta ainihin adadi';

  @override
  String get tutorialChallengeAmountBody =>
      'Yi amfani da − da + don canzawa, ko danna lambar don rubuta ainihin adadi.';

  @override
  String get challengeOpenDetailsAction => 'Buɗe bayanin buri';

  @override
  String get challengesActive => 'Masu gudana';

  @override
  String get challengesPast => 'Waɗanda suka wuce';

  @override
  String challengeJustFinished(int count, String title) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'An kammala buri $count — na baya-bayan nan: $title',
      one: 'An kammala $title',
    );
    return '$_temp0';
  }

  @override
  String get challengeSectionEnded => 'Sun ƙare';

  @override
  String get challengesPastEmpty => 'Babu abin da ya ƙare tukuna.';

  @override
  String get challengesEmptyTitle => 'Babu buri tukuna';

  @override
  String get challengesEmptyBody =>
      'Ka sanya wa kanka buri — kamar raka\'a 20 cikin kwana 7 — sannan ka bi shi a nan.';

  @override
  String get editChallenge => 'Gyara buri';

  @override
  String get deleteChallenge => 'Share buri';

  @override
  String get deleteChallengeConfirm =>
      'A share wannan buri da duk ci gaban da aka rubuta?';

  @override
  String get challengeShapeQuestion => 'Wane irin buri ne wannan?';

  @override
  String get challengeShapeTotal => 'Adadin da za a cimma';

  @override
  String get challengeShapeTotalBody =>
      'Salati 1000, juzu\'i 30. Ana rubuta adadi, sai ya taru.';

  @override
  String get challengeShapeStreak => 'Kowace rana ba fashi';

  @override
  String get challengeShapeStreakBody =>
      'Tahajjudi, Asuba a jam\'i. Alama ɗaya a rana, adadi ba shi da muhimmanci.';

  @override
  String get challengeTargetLabel => 'Manufa';

  @override
  String get challengeTargetRequired => 'Shigar da adadin da ya fi sifiri';

  @override
  String get challengeUnitLabel => 'Ma\'auni (na zaɓi)';

  @override
  String get challengeUnitHint => 'raka\'a, shafi, sau';

  @override
  String get challengeOneTapAdds => 'Kowace dannawa tana ƙara';

  @override
  String get challengeHowManyDays => 'Kwana nawa?';

  @override
  String get challengeReachHowMuch => 'Adadi nawa za a kai?';

  @override
  String get challengeSpreadOver => 'Tsawon lokaci';

  @override
  String get challengeSpreadEveryDay => 'Kowace rana';

  @override
  String get challengeSpreadLonger => 'Lokaci mafi tsawo';

  @override
  String get challengeByWhen => 'Kafin yaushe?';

  @override
  String get challengeWindowDuration => 'Kammala cikin';

  @override
  String get challengeByDate => 'Zuwa takamaiman rana';

  @override
  String challengePlanRange(String start, String end) {
    return '$start zuwa $end';
  }

  @override
  String challengePlanExact(String start, String end) {
    return '$start zuwa $end · ɗaya a rana, ba fashi';
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
    return '$start zuwa $end · $target cikin kwana $window — ana iya rasa $slack';
  }

  @override
  String challengePlanRate(String start, String end, String rate) {
    return '$start zuwa $end · kusan $rate kowace rana';
  }

  @override
  String challengePlanOpen(String start) {
    return 'Farawa $start · babu wa\'adi';
  }

  @override
  String challengeTooTight(
    String target,
    String window,
    num targetCount,
    num windowCount,
  ) {
    return 'Kwana $target ba za su dace cikin kwana $window ba — jeri yana ƙidaya ɗaya a rana.';
  }

  @override
  String challengeDurationLabel(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'kwanaki $count',
      one: 'kwana $count',
    );
    return '$_temp0';
  }

  @override
  String get challengeStartDate => 'Farawa';

  @override
  String get challengeEndDate => 'Ƙarewa';

  @override
  String challengeProgressCount(String done, String target, String unit) {
    return '$done daga cikin $unit $target';
  }

  @override
  String challengeProgressPlain(String done, String target) {
    return '$done daga cikin $target';
  }

  @override
  String challengeProgressDays(String done, String target) {
    return '$done daga cikin kwanaki $target';
  }

  @override
  String challengeDaysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'saura kwana $count',
      one: 'saura kwana ɗaya',
    );
    return '$_temp0';
  }

  @override
  String get challengeNoDeadline => 'Babu wa\'adi';

  @override
  String challengeOnTrack(String rate) {
    return 'Kan hanya · $rate/rana';
  }

  @override
  String challengeBehind(String rate) {
    return 'A baya · $rate/rana';
  }

  @override
  String challengeLastDay(String remaining) {
    return 'Rana ta ƙarshe · saura $remaining';
  }

  @override
  String get challengeReached => 'An cimma manufa';

  @override
  String get challengeCompleted => 'An kammala';

  @override
  String challengeEnded(String done, String target) {
    return 'Ya ƙare · $done/$target';
  }

  @override
  String get challengeExpiredTitle => 'Burin ya ƙare';

  @override
  String challengeExpiredBody(String title, String done, String target) {
    return '$title ya ƙare a kan $done daga cikin $target.';
  }

  @override
  String get challengeExtend => 'Ƙara lokaci';

  @override
  String get challengeRestart => 'Fara sabo';

  @override
  String get challengeArchive => 'Ajiye a tarihi';

  @override
  String get challengeDailyBreakdown => 'Bayanan kowace rana';

  @override
  String challengeNudgeBody(String title, String rate) {
    return '$title: $rate kowace rana don kammalawa cikin lokaci.';
  }

  @override
  String challengeLastDayBody(String title, String remaining) {
    return '$title: rana ta ƙarshe — saura $remaining.';
  }

  @override
  String get challengeGroupGoal => 'Manufarka';

  @override
  String get challengeGroupShape => 'Nau\'i';

  @override
  String get challengeGroupPlan => 'Shiri';

  @override
  String get challengeGroupReminders => 'Tunatarwa';

  @override
  String get challengeStartFromTemplate => 'Fara daga samfuri';

  @override
  String get challengeTemplateBlank => 'Fanko';

  @override
  String get challengePreview => 'Duba tukuna';

  @override
  String get challengeTmplTahajjud => 'Tahajjudi dare 40';

  @override
  String get challengeTmplSalawat => 'Salati 1000';

  @override
  String get challengeTmplKhatm => 'Sauke Alƙur\'ani cikin kwana 30';

  @override
  String get challengeTmplFajrJamaah => 'Asuba a jam\'i kwanaki 30';

  @override
  String get challengeTmplSadaqah => 'Sadaka kwanaki 30';

  @override
  String get listSeparator => ' · ';

  @override
  String get tierRafiq => 'Rafiq';

  @override
  String get tierNasir => 'Nasir';

  @override
  String get tierMuhsin => 'Muhsin';

  @override
  String get tierAnsar => 'Ansar';

  @override
  String get tierRafiqMeaning => 'aboki';

  @override
  String get tierNasirMeaning => 'mai goyon baya';

  @override
  String get tierMuhsinMeaning => 'mai kyautatawa';

  @override
  String get tierAnsarMeaning => 'mai taimako';

  @override
  String get supportCardBody =>
      'Kyauta ce, babu talla, babu buƙatar asusu. Ana iya tallafa wa ci gabanta da ɗan abu — ko nawa ne, a duk lokacin da aka ga dama.';

  @override
  String get supportCta => 'Tallafa wa Muhasaba';

  @override
  String get supportAgain => 'Sake tallafawa';

  @override
  String get supporterThanks =>
      'Allah ya saka da alheri — in sha Allah Muhasaba za ta ci gaba da zama kyauta babu talla.';

  @override
  String supporterSince(String tier, String month) {
    return '$tier tun $month';
  }

  @override
  String get supportPromptTitle => 'Tallafa wa Muhasaba';

  @override
  String get supportPromptBody =>
      'Muhasaba kyauta ce, babu talla, babu buƙatar asusu. Ana iya tallafa wa ci gabanta da ɗan abu — ko nawa ne, a duk lokacin da aka ga dama. Babu abin da aka kulle saboda haka.';

  @override
  String get supportPromptNow => 'Tallafa yanzu';

  @override
  String get supportPromptLater => 'Tunatar da ni daga baya';

  @override
  String get supportPromptNever => 'Kada a sake tambaya';

  @override
  String get tipSheetTitle => 'Tallafa wa Muhasaba';

  @override
  String get tipSheetBody =>
      'Zaɓi kowane adadi, a duk lokacin da aka ga dama. Kuɗin suna taimakawa wajen kula da manhajar — in sha Allah za ta ci gaba da zama kyauta babu talla. A matsayin godiya, za a sanya alamar mai tallafi a Saituna.';

  @override
  String tipSheetSupporterLine(String tier) {
    return '$tier — Allah ya saka da alheri.';
  }

  @override
  String get tipSheetSupporterAgain =>
      'Sake tallafawa a duk lokacin da aka ga dama.';

  @override
  String tipSheetStoreNote(String store) {
    return '$store ne ke gudanar da biyan kuɗi — ba ma taɓa ganin bayanan biyanka.';
  }

  @override
  String get tipSheetOtherWays => 'Babu zaɓin da ya dace?';

  @override
  String get tipSheetWriteToUs => 'Rubuto mana';

  @override
  String get supportEmailBody =>
      'Assalamu alaikum,\n\nIna son tallafa wa ci gaban Muhasaba kai tsaye.\n\nƘasa:\nYadda nake son aikawa:\nAdadi (na zaɓi):';

  @override
  String tipBusy(String store) {
    return 'Ana buɗe $store…';
  }

  @override
  String get tipThanks => 'Allah ya saka da alheri — Allah ya karɓa.';

  @override
  String get tipDone => 'An gama';

  @override
  String get tipFailed => 'Sayen bai yi nasara ba. Ba a cire komai ba.';

  @override
  String tipPending(String store) {
    return 'Tallafin yana jiran tabbatarwa daga $store — za a ƙara baji da zarar an tabbatar.';
  }

  @override
  String get tipUnavailable => 'A halin yanzu ba a iya saye a wannan na\'ura.';

  @override
  String get optionSetJamaa => 'Jam\'i';

  @override
  String get optionJamaaAlone => 'Kaɗai';

  @override
  String get optionJamaaHome => 'Jam\'i a gida';

  @override
  String get optionJamaaMasjid => 'Jam\'i a masallaci';

  @override
  String get optionSetOnTime => 'A kan lokaci';

  @override
  String get optionOnTimeOnTime => 'A kan lokaci';

  @override
  String get optionOnTimeLate => 'An makara';

  @override
  String get optionOnTimeQada => 'Ramuwa';

  @override
  String get optionSetQuranSession => 'Zaman Alƙur\'ani';

  @override
  String get optionQuranRecited => 'An karanta';

  @override
  String get optionQuranMemorised => 'An haddace';

  @override
  String get optionQuranMeaning => 'Da ma\'ana';

  @override
  String get optionQuranListened => 'An saurara';

  @override
  String get optionSetSadaqahType => 'Nau\'in sadaka';

  @override
  String get optionSadaqahMoney => 'Kuɗi';

  @override
  String get optionSadaqahFood => 'Abinci';

  @override
  String get optionSadaqahTime => 'Lokaci';

  @override
  String get optionSadaqahOther => 'Wasu';

  @override
  String get optionSetIntensity => 'Matakin ƙarfi';

  @override
  String get optionIntensityLight => 'Mai sauƙi';

  @override
  String get optionIntensityModerate => 'Matsakaici';

  @override
  String get optionIntensityIntense => 'Mai tsanani';

  @override
  String get optionSetNewTitle => 'Sabon saitin zaɓi';

  @override
  String get optionSetEditTitle => 'Gyara saitin zaɓi';

  @override
  String get optionSetNameLabel => 'Sunan saiti';

  @override
  String get optionSetNameHint => 'misali Jam\'i';

  @override
  String get optionsLabel => 'Zaɓuɓɓuka';

  @override
  String get optionAdd => 'Ƙara zaɓi';

  @override
  String optionHint(int index) {
    return 'Zaɓi $index';
  }

  @override
  String optionsMaxReached(int max) {
    return 'Zaɓi $max ne iyaka.';
  }

  @override
  String get optionSetPreviewLabel => 'Duba tukuna — layin Yau';

  @override
  String optionSetKeptForHistory(String labels) {
    return 'An ajiye don tarihi: $labels';
  }

  @override
  String get optionSetDelete => 'Share saiti';

  @override
  String get optionSetDeleteConfirm =>
      'Amalin da ke amfani da wannan saiti ba za su ƙara nuna zaɓuɓɓuka ba. Kwanakin da aka riga aka rubuta za su ci gaba da riƙe zaɓinsu.';

  @override
  String get optionSetNameRequired => 'Sanya wa saitin suna';

  @override
  String get optionsMinRequired => 'Ƙara aƙalla zaɓi biyu';

  @override
  String get optionSetNameTooLong => 'Sunan saiti ya yi tsawo';

  @override
  String optionTooLong(int index) {
    return 'Zaɓi $index ya yi tsawo';
  }

  @override
  String get optionSetNone => 'Babu';

  @override
  String get optionSetNew => 'Sabon saiti';

  @override
  String get requireChoiceLabel => 'Dole a zaɓa';

  @override
  String get requireChoiceHelp =>
      'Layin ba zai sami alama ba sai an zaɓi wani abu';

  @override
  String get requireChoicePickSetFirst => 'Da farko zaɓi saiti';

  @override
  String get requireChoiceCountHelp => 'Ana kammala amalin ƙidaya da − da +';

  @override
  String get optionPreviewCaption =>
      'Kowace rana za ka zaɓi ɗaya daga cikin waɗannan a Yau:';

  @override
  String optionsUsedOf(int used, int max) {
    return 'An yi amfani da zaɓi $used daga cikin $max.';
  }

  @override
  String get choiceNeeded => 'Ana buƙatar zaɓi';

  @override
  String optionSelected(String label) {
    return '$label, an zaɓa';
  }

  @override
  String optionNotSelected(String label) {
    return '$label, ba a zaɓa ba';
  }

  @override
  String optionBreakdownTitle(String set) {
    return 'Rarrabuwar zaɓuɓɓuka — $set';
  }

  @override
  String optionBreakdownCaption(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'kammalawa $count',
      one: 'kammalawa 1',
    );
    return 'Kason $_temp0 da aka rubuta zaɓi';
  }

  @override
  String optionNoChoiceRecorded(int none, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other: 'ranaku $total da aka kammala',
      one: 'rana 1 da aka kammala',
    );
    return 'Ba a rubuta zaɓi ba — $none daga cikin $_temp0';
  }

  @override
  String get optionRemovedSuffix => 'an cire';

  @override
  String get optionAllAmals => 'Duka';

  @override
  String optionScopedCaption(String amal, int count) {
    return '$amal · an rubuta $count';
  }

  @override
  String get optionBreakdownSectionTitle => 'Rarrabuwar zaɓuɓɓuka';

  @override
  String optionBreakdownSwipeHint(int count) {
    return 'Saiti $count · ja gefe';
  }

  @override
  String get optionDetailEmpty =>
      'Ba a rubuta wani zaɓi ba tukuna a wannan saiti.';

  @override
  String get optionDetailTrendHeading => 'Yadda ya canja';

  @override
  String optionDetailTrendReadout(String option, String from, String to) {
    return 'Rabon $option ya canja daga $from zuwa $to tsakanin mako na farko da na ƙarshe.';
  }

  @override
  String get optionDetailByAmalHeading => 'Bisa ga amali';

  @override
  String optionDetailByAmalReadout(
    String best,
    String bestShare,
    String worst,
    String worstShare,
  ) {
    return 'Mafi yawa: $best ($bestShare); mafi ƙaranci: $worst ($worstShare).';
  }

  @override
  String get optionDetailRecordsHeading => 'Rikodi';

  @override
  String get optionDetailLongestRun => 'Jeri mafi tsawo';

  @override
  String get optionDetailBestWeek => 'Mako mafi kyau';

  @override
  String get optionDetailCurrentRun => 'Jerin yanzu';

  @override
  String get optionDetailRecordsCaption =>
      'Bisa shekarar da ta gabata, ba tare da la\'akari da tacewar lokacin da ke sama ba.';

  @override
  String get optionDetailRecentDaysHeading => 'Kwanakin baya-bayan nan';

  @override
  String optionDetailRecentDaysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kwana $count da suka gabata',
      one: 'Kwana ɗaya da ya gabata',
    );
    return '$_temp0';
  }

  @override
  String get amalFivePrayers => 'Salloli biyar';

  @override
  String get amalJumuah => 'Sallar Juma\'a';

  @override
  String get amalWitr => 'Sallar Wutiri';

  @override
  String get amalQada => 'Ramuwar salloli';

  @override
  String get amalFajrSunnah => 'Sunnar Asuba';

  @override
  String get amalDhuhrSunnah => 'Sunnar Azahar';

  @override
  String get amalAsrSunnah => 'Sunnar La\'asar';

  @override
  String get amalMaghribSunnah => 'Sunnar Magariba';

  @override
  String get amalIshaSunnah => 'Sunnar Isha\'i';

  @override
  String get amalRawatib => 'Sunnonin Rawatib';

  @override
  String get amalSiwak => 'Asuwaki';

  @override
  String get amalWuduSleep => 'Alwala kafin barci';

  @override
  String get amalFridayGhusl => 'Wankan Juma\'a';

  @override
  String get amalIshraq => 'Sallar Ishraq';

  @override
  String get amalWuduPrayer => 'Raka\'a biyu bayan alwala';

  @override
  String get amalTahiyyah => 'Gaisuwar masallaci';

  @override
  String get amalEarlyJumuah => 'Zuwa Juma\'a da wuri';

  @override
  String get amalAfterSalah => 'Azkar bayan sallah';

  @override
  String get amalAfterFajr => 'Azkar bayan Asuba';

  @override
  String get amalAfterDhuhr => 'Azkar bayan Azahar';

  @override
  String get amalAfterAsr => 'Azkar bayan La\'asar';

  @override
  String get amalAfterMaghrib => 'Azkar bayan Magariba';

  @override
  String get amalAfterIsha => 'Azkar bayan Isha\'i';

  @override
  String get amalAyatKursi => 'Ayatul Kursiyyu';

  @override
  String get amalKursiFajr => 'Ayatul Kursiyyu bayan Asuba';

  @override
  String get amalKursiDhuhr => 'Ayatul Kursiyyu bayan Azahar';

  @override
  String get amalKursiAsr => 'Ayatul Kursiyyu bayan La\'asar';

  @override
  String get amalKursiMaghrib => 'Ayatul Kursiyyu bayan Magariba';

  @override
  String get amalKursiIsha => 'Ayatul Kursiyyu bayan Isha\'i';

  @override
  String get amalSayyidIstighfar => 'Sayyidul Istigfari';

  @override
  String get amalSalawat => 'Salati ga Annabi ﷺ';

  @override
  String get amalSubhanallah => 'Subhanallahi wa bihamdihi';

  @override
  String get amalTahlil => 'La ilaha illallahu';

  @override
  String get amalBedtimeAdhkar => 'Azkar na barci';

  @override
  String get amalFridaySalawat => 'Salati ranar Juma\'a';

  @override
  String get amalHawqala => 'La hawla wa la ƙuwwata';

  @override
  String get amalTasbihFatimah => 'Tasbihin Fatima';

  @override
  String get amalWakingAdhkar => 'Azkar na farkawa';

  @override
  String get amalDuaAdhan => 'Addu\'a bayan kiran sallah';

  @override
  String get amalDuaIqamah => 'Addu\'a tsakanin kiran sallah da iƙama';

  @override
  String get amalDuaSujood => 'Addu\'a a sujada';

  @override
  String get amalDuaParents => 'Addu\'a ga iyaye';

  @override
  String get amalDuaOthers => 'Addu\'a ga wasu';

  @override
  String get amalFridayHour => 'Addu\'a a sa\'ar ƙarshe ta Juma\'a';

  @override
  String get amalLastThird => 'Addu\'a a sulusin ƙarshe na dare';

  @override
  String get amalMulk => 'Suratul Mulk';

  @override
  String get amalBaqarahEnd => 'Ayoyi biyu na ƙarshen Baƙara';

  @override
  String get amalSajdah => 'Suratus Sajda';

  @override
  String get amalQuls => 'Ƙul uku';

  @override
  String get amalYasin => 'Suratu Yasin';

  @override
  String get amalWaqiah => 'Suratul Waƙi\'a';

  @override
  String get amalHifz => 'Haddar Alƙur\'ani';

  @override
  String get amalMurajaah => 'Maimaita hadda';

  @override
  String get amalTafsir => 'Tafsiri';

  @override
  String get amalListenQuran => 'Sauraron Alƙur\'ani';

  @override
  String get amalTeachQuran => 'Koyar da Alƙur\'ani';

  @override
  String get amalMonThu => 'Azumin Litinin da Alhamis';

  @override
  String get amalThreeDays => 'Azumin kwana uku a wata';

  @override
  String get amalDailySadaqah => 'Sadaka ta kowace rana';

  @override
  String get amalFeed => 'Ciyar da wani';

  @override
  String get amalHelpNeed => 'Taimakon mabuƙaci';

  @override
  String get amalOrphan => 'Kula da maraya';

  @override
  String get amalGiveWater => 'Ba da ruwa';

  @override
  String get amalLearnHadith => 'Koyon hadisi ɗaya';

  @override
  String get amalReadBook => 'Karatun littafin Musulunci';

  @override
  String get amalSeerah => 'Nazarin Sira';

  @override
  String get amalClass => 'Halartar karatu';

  @override
  String get amalArabic => 'Koyon Larabci';

  @override
  String get amalLearnDua => 'Koyon sabuwar addu\'a';

  @override
  String get amalShare => 'Raba ilimi';

  @override
  String get amalFiqh => 'Nazarin fiƙihu';

  @override
  String get amalMuhasaba => 'Muhasabar dare';

  @override
  String get amalSpeakGood => 'Faɗin alheri ko yin shiru';

  @override
  String get amalNoBackbiting => 'Gujewa gulma';

  @override
  String get amalAnger => 'Danne fushi';

  @override
  String get amalGaze => 'Runtse ido';

  @override
  String get amalTruthful => 'Faɗin gaskiya';

  @override
  String get amalSmile => 'Murmushi';

  @override
  String get amalSalam => 'Yaɗa sallama';

  @override
  String get amalForgive => 'Yafe wa wasu';

  @override
  String get amalGratitude => 'Godiya';

  @override
  String get amalVisitSick => 'Gaida mara lafiya';

  @override
  String get amalNeighbours => 'Kyautata wa maƙwabta';

  @override
  String get amalRemoveHarm => 'Kawar da cuta daga hanya';

  @override
  String get amalParents => 'Kyautata wa iyaye';

  @override
  String get amalFamilyTies => 'Sada zumunci';

  @override
  String get amalHelpHome => 'Taimako a gida';

  @override
  String get amalTeachChildren => 'Koyar da \'ya\'ya';

  @override
  String get amalSpouse => 'Kyautata wa abokin aure';

  @override
  String get categoryDua => 'Addu\'a';

  @override
  String get categoryFasting => 'Azumi';

  @override
  String get categoryKnowledge => 'Ilimi';

  @override
  String get categoryCharacter => 'Ɗabi\'a';

  @override
  String get categoryFamily => 'Iyali';

  @override
  String get libraryTitle => 'Taskar Amali';

  @override
  String get librarySearchHint => 'Nemi amali';

  @override
  String get libraryAll => 'Duka';

  @override
  String get libraryAdded => 'An ƙara a Yau';

  @override
  String libraryAddedShowsOn(String days) {
    return 'An ƙara · zai bayyana: $days';
  }

  @override
  String libraryNoMatch(String query) {
    return 'Babu amalin da ya dace da “$query”';
  }

  @override
  String libraryCreateNamed(String query) {
    return 'Ƙirƙiri “$query”';
  }

  @override
  String get libraryPickBanner => 'Zaɓa daga Taskar Amali';

  @override
  String libraryPickBannerSubtitle(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Amali $countText a shirye',
    );
    return '$_temp0';
  }

  @override
  String get libraryFilledIn => 'An cike daga Taskar Amali';

  @override
  String get libraryChange => 'Canza';

  @override
  String get libraryEditAction => 'Gyara';

  @override
  String libraryWeeklyAny(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kwana $countText a mako',
      one: 'Sau ɗaya a mako',
    );
    return '$_temp0';
  }

  @override
  String libraryMonthlyAny(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kwana $countText a wata',
      one: 'Sau ɗaya a wata',
    );
    return '$_temp0';
  }

  @override
  String libraryTimes(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Sau $countText',
    );
    return '$_temp0';
  }

  @override
  String get libraryAnyAmount => 'Ko nawa';

  @override
  String libraryAddTooltip(String title) {
    return 'Ƙara $title';
  }

  @override
  String get libraryOnList => 'Yana cikin jerinka';

  @override
  String get todayEmptyBrowse => 'Duba Taskar Amali';
}
