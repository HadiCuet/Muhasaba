// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hausa (`ha`).
class AppLocalizationsHa extends AppLocalizations {
  AppLocalizationsHa([String locale = 'ha']) : super(locale);

  @override
  String get appTitle => 'Muhasaba';

  @override
  String get tabToday => 'Yau';

  @override
  String get tabStats => 'Kididdiga';

  @override
  String get tabHistory => 'Tarihi';

  @override
  String get tabSettings => 'Saituna';

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
  String get clear => 'Share';

  @override
  String get titleLabel => 'Take';

  @override
  String get titleRequired => 'Ana bukatar take';

  @override
  String get titleTooLong => 'Take ya yi tsawo';

  @override
  String get frequencyLabel => 'Yawan lokaci';

  @override
  String get frequencyDaily => 'Kowace rana';

  @override
  String get frequencyWeekly => 'Kowace mako';

  @override
  String get frequencyMonthly => 'Kowace wata';

  @override
  String get categoryLabel => 'Nau\'i';

  @override
  String get categoryOther => 'Wansu';

  @override
  String get categorySalah => 'Sallah';

  @override
  String get categoryDhikr => 'Zikiri';

  @override
  String get categoryQuran => 'Alqur\'ani';

  @override
  String get categoryCharity => 'Sadaka';

  @override
  String get timesPerPeriod => 'Sau a kowane lokaci';

  @override
  String get custom => 'Na musamman';

  @override
  String get customTargetHint => 'misali 50';

  @override
  String get dayOfWeek => 'Ranar mako';

  @override
  String get anyDay => 'Kowace';

  @override
  String get anyDayHint => 'Kowace rana (ana ganinta yau, ta boye gobe)';

  @override
  String onlyDayHint(String day) {
    return '$day kadai';
  }

  @override
  String get dateOfMonth => 'Kwanan wata';

  @override
  String get anyDate => 'Kowace';

  @override
  String get anyDateHint => 'Kowace kwana (ana ganinta yau, ta boye gobe)';

  @override
  String onlyDateHint(String date) {
    return 'Kawai ranar $date';
  }

  @override
  String get startPreChecked => 'Fara an yi masa alama';

  @override
  String get startPreCheckedSubtitle =>
      'Lokacin da sabon lokaci ya fara, wannan amalin yana da alamar kammala ta asali har sai ka cire shi.';

  @override
  String get reminder => 'Tunatar da kai';

  @override
  String get reminderNone => 'Babu';

  @override
  String reminderTime(String time) {
    return 'Tunatar da kai: $time';
  }

  @override
  String get reminderPermissionWarning =>
      'An ajiye tunatar da kai, amma ba a ba da izinin sanarwa ba. Ka kunna su a saituna na tsarin don samun fadar.';

  @override
  String get groupByCategory => 'Tsara ta nau\'i';

  @override
  String get flatList => 'Jerin shimfida';

  @override
  String errorGeneric(String error) {
    return 'Kuskure: $error';
  }

  @override
  String get todayEmptyHint => 'Danna + don kara amalin ka na farko.';

  @override
  String get noteLabel => 'Bayani';

  @override
  String get noteHint => 'misali Na yi sallah a masallaci';

  @override
  String get completed => 'an kammala';

  @override
  String get notCompleted => 'ba a kammala ba';

  @override
  String progressOf(int progress, int target) {
    return '$progress daga cikin $target an kammala';
  }

  @override
  String get removeFromToday => 'Cire daga yau';

  @override
  String get removeFromTodaySubtitle =>
      'Boye kawai a wannan rana. Zai dawo gobe.';

  @override
  String get removeFromTracking => 'Cire daga bin diddigin';

  @override
  String get removeFromTrackingSubtitle =>
      'Cire gaba daya daga jerin ka. Ana adana tarihi.';

  @override
  String get chooseIcon => 'Zabi gunki';

  @override
  String get iconNone => 'Babu';

  @override
  String get recentlyUsed => 'An yi amfani da su kwanan nan';

  @override
  String get emojiSectionGeneral => 'Na gaba daya';

  @override
  String get categoryNameHint => 'Suna';

  @override
  String get categoryNew => '+ Sabo';

  @override
  String get addAmal => 'Kara Amali';

  @override
  String get customAmal => 'Amali Na Musamman';

  @override
  String get templateTasbih => 'Tasbihi 33x';

  @override
  String get templateIstighfar => 'Istigfari 100x';

  @override
  String get templateSurahKahf => 'Suratul Kahfi';

  @override
  String get templateSadaqah => 'Sadaka';

  @override
  String get templateTahajjud => 'Tahajjud';

  @override
  String get templateDuhaPrayer => 'Sallar Duha';

  @override
  String get settingsTitle => 'Saituna';

  @override
  String settingsLoadError(String error) {
    return 'Ba a iya loda saituna ba:\n$error';
  }

  @override
  String get sectionDayBoundary => 'Iyakar rana';

  @override
  String get rolloverHour => 'Sa\'ar mika mulki';

  @override
  String get rolloverAtMidnight => 'Yau yana karewa da tsakar dare.';

  @override
  String rolloverSubtitle(String time) {
    return 'Amalin jiya suna ci gaba da gyarawa har $time.';
  }

  @override
  String get pickRolloverHour => 'Zabi sa\'ar da rana ke canjawa';

  @override
  String get sectionWeekMonth => 'Mako da wata';

  @override
  String get startOfWeek => 'Farkon mako';

  @override
  String get startOfMonth => 'Farkon wata';

  @override
  String get startOfMonthClamped =>
      'Ranaku bayan 28 ana rage su zuwa ranar karshe ta watannin da suka fi gajarta.';

  @override
  String get sectionAppearance => 'Bayyanar fuska';

  @override
  String get theme => 'Jigo';

  @override
  String get themeSystem => 'Na tsarin';

  @override
  String get themeLight => 'Haske';

  @override
  String get themeDark => 'Duhu';

  @override
  String get sectionLanguage => 'Harshe';

  @override
  String get language => 'Harshe';

  @override
  String get systemDefault => 'Na tsarin asali';

  @override
  String get aboutTitle => 'Muhasaba';

  @override
  String get aboutSubtitle =>
      'Littafin lissafin addini na sirri. Duk bayanan suna nan a wannan na\'ura.';

  @override
  String get statsTitle => 'Kididdiga';

  @override
  String statsLoadError(String error) {
    return 'Ba a iya loda kididdiga ba:\n$error';
  }

  @override
  String get perAmal => 'Kowane amali';

  @override
  String get thisWeek => 'Wannan makon';

  @override
  String get thisMonth => 'Wannan watan';

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
  String get frequencyBadgeWeekly => 'kowace mako';

  @override
  String get frequencyBadgeMonthly => 'kowace wata';

  @override
  String get statsEmpty =>
      'Babu amali tukuna. Ka kara daya a Yau don fara bin diddigi.';

  @override
  String get statsToday => 'Yau';

  @override
  String get statsThisWeek => 'Wannan makon';

  @override
  String get statsThisMonth => 'Wannan watan';

  @override
  String get statsAllTime => 'Dukkan lokaci';

  @override
  String get statsCustomRange => 'Zabin lokaci';

  @override
  String get statsAllCategories => 'Duka';

  @override
  String get statsAllAmals => 'Duka';

  @override
  String get statsCompleted => 'An kammala';

  @override
  String get statsExpected => 'Ana sa ran';

  @override
  String get statsVsPrevious => 'Idan aka kwatanta da na baya';

  @override
  String get statsByCategory => 'Ta nau\'i';

  @override
  String get statsPerAmal => 'Kowane amali';

  @override
  String get statsCurrentStreak => 'Jerin yanzu';

  @override
  String get statsBestStreak => 'Mafi kyawun jeri';

  @override
  String get statsTotalDays => 'Jimlar ranaku';

  @override
  String get statsConsistency => 'Daidaituwa';

  @override
  String get statsLast5Weeks => 'Makwanni 5 da suka gabata';

  @override
  String get statsDailyBreakdown => 'Rarraba na kowace rana';

  @override
  String get statsCompletionRate => 'Adadin kammalawa';

  @override
  String get statsFilterTime => 'Lokaci';

  @override
  String get statsFilterCategory => 'Nau\'i';

  @override
  String get statsFilterAmal => 'Amali';

  @override
  String get statsStreaks => 'Jerurruka';

  @override
  String get statsSelectDateRange => 'Zabi kewayon kwanakin';

  @override
  String get historyTitle => 'Tarihi';

  @override
  String get jumpToDate => 'Je zuwa kwanan wata';

  @override
  String historyEmptyDay(String date) {
    return 'Babu amali da aka bi diddigin a ranar $date';
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
      '\"Ayyukan da Allah ya fi so su ne wadanda ake yi a kai a kai, ko da kanana ne.\"\n— Bukhari da Muslim';

  @override
  String get hadith1 =>
      '\"Ku dauki ayyuka na alheri gwargwadon iyawar ku, domin mafi kyawun ayyuka su ne wadanda ake yi a kai a kai ko da kadan ne.\"\n— Ibn Majah';

  @override
  String get hadith2 =>
      '\"Idan dan Adam ya mutu, ayyukansa sun yanke sai uku: sadaka mai gudana, ilmi mai amfani, ko da mai alheri da yake masa addu\'a.\"\n— Muslim';

  @override
  String get hadith3 =>
      '\"Duk wanda ya yi sallolin sanyi biyu (Asuba da La\'asar) zai shiga Aljanna.\"\n— Bukhari';

  @override
  String get hadith4 =>
      '\"Allah ba ya duba kamanninku ko dukiyoyinku, amma yana duba zukatanku da ayyukanku.\"\n— Muslim';

  @override
  String get hadith5 =>
      '\"Mafi alherin mutane su ne wadanda suka fi amfanar mutane.\"\n— Tabarani';

  @override
  String get hadith6 =>
      '\"Ku saukaka al\'amura kada ku yi su da wuya; ku ba da bushara kada ku kore mutane.\"\n— Bukhari';

  @override
  String get hadith7 =>
      '\"Duk wanda ya bi hanya don neman ilmi, Allah zai saukake masa hanyar Aljanna.\"\n— Muslim';

  @override
  String get hadith8 => '\"Sadaka ba ta rage dukiya ba.\"\n— Muslim';

  @override
  String get hadith9 =>
      '\"Mumini mai karfi ya fi dacewa kuma ya fi soyuwa ga Allah fiye da mumini mai rauni, alhali akwai alheri a cikin dukkansu.\"\n— Muslim';

  @override
  String get hadith10 =>
      '\"Duk wanda ya ce \'SubhanAllahi wa bihamdihi\' sau ɗari a rana, za a gafarta masa zunubansa ko da sun kasance kamar kumfar teku.\"\n— Bukhari';

  @override
  String get hadith11 =>
      '\"Mafi kyawun addu\'a shi ne addu\'ar ranar Arafa, kuma mafi kyawun abin da na faɗa da Annabawan da suka gabace ni shi ne: La ilaha illallah.\"\n— Tirmizi';

  @override
  String get hadith12 =>
      '\"Duk wanda ya karanta Ayatul Kursi bayan kowace salla ta farilla, babu abin da zai hana shi shiga Aljanna sai mutuwa.\"\n— Nasa\'i';

  @override
  String get hadith13 => '\"Magana mai kyau sadaka ce.\"\n— Bukhari & Muslim';

  @override
  String get hadith14 =>
      '\"Duk wanda ya yi imani da Allah da Ranar Lahira, to ya faɗi alheri ko ya yi shiru.\"\n— Bukhari & Muslim';

  @override
  String get hadith15 =>
      '\"Mai kula da gwauruwa da miskini kamar mai jihadi a tafarkin Allah ne.\"\n— Bukhari';

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
      '\"Allah Mai tausayi ne, kuma Yana son tausayi a cikin komai.\"\n— Bukhari & Muslim';

  @override
  String historyDayCompleted(int completed, int total) {
    return '$completed daga $total an kammala';
  }

  @override
  String get settingsSchedule => 'Jadawalin';

  @override
  String get settingsAppearance => 'Bayyanar';

  @override
  String get settingsAboutTagline => 'Abokin addininku na yau da kullun';

  @override
  String get settingsRolloverSub => 'Yaushe ranar take fara';

  @override
  String get settingsAbout => 'Game da';

  @override
  String get settingsVersion => 'Sigar';

  @override
  String get settingsDeveloper => 'Mai haɓaka';

  @override
  String get settingsSupport => 'Tallafi';

  @override
  String get settingsRate => 'Ƙiyasta app';

  @override
  String get settingsContact => 'Tuntube mu';

  @override
  String get settingsReportBug => 'Bayar da rahoton kwaro';

  @override
  String get settingsRequestFeature => 'Nemi fasali';

  @override
  String settingsSupportFallback(String email) {
    return 'An kasa buɗe saƙo. Don Allah aiko saƙo zuwa $email.';
  }

  @override
  String get hadith20 =>
      '\"Duk wanda ya yi azumin Ramadan da imani kuma yana neman lada, za a gafarta masa zunubansa na baya.\"\n— Bukhari da Muslim';

  @override
  String get hadith21 => '\"Sallah ginshikin addini ne.\"\n— Bayhaqi';

  @override
  String get hadith22 =>
      '\"Addu\'ar da ke tsakanin azana da iqama ba ta komawa ba.\"\n— Abu Dawud';

  @override
  String get hadith23 =>
      '\"Duk wanda ya gina masallaci saboda Allah, Allah zai gina masa gida a Aljanna.\"\n— Bukhari da Muslim';

  @override
  String get hadith24 =>
      '\"Mafi kyawun sahu ga maza su ne na gaba, mafi kyawun sahu ga mata su ne na baya.\"\n— Muslim';

  @override
  String get hadith25 =>
      '\"Azumi garkuwa ce daga wutar Jahannama.\"\n— Nasa\'i';

  @override
  String get hadith26 =>
      '\"Duk wanda ya yi raka\'a goma sha biyu na nafila, za a gina masa gida a Aljanna.\"\n— Muslim';

  @override
  String get hadith27 =>
      '\"Mai gwaninta wajen karatun Alqur\'ani zai kasance tare da mala\'iku masu daraja.\"\n— Bukhari da Muslim';

  @override
  String get hadith28 =>
      '\"Neman ilmi wajibi ne ga kowane musulmi.\"\n— Ibn Majah';

  @override
  String get hadith29 =>
      '\"Mafi kyawun sadaka ita ce ba da ruwa a sha.\"\n— Ahmad';

  @override
  String get hadith30 =>
      '\"Duk wanda ya kawar da wahala ga mumini, Allah zai kawar da wahala gare shi a Ranar Kiyama.\"\n— Muslim';

  @override
  String get hadith31 =>
      '\"Masu rahama, Mai rahamar kowa yana yi musu rahama.\"\n— Abu Dawud da Tirmizi';

  @override
  String get hadith32 =>
      '\"Kunya wani bangare ne na imani.\"\n— Bukhari da Muslim';

  @override
  String get hadith33 => '\"Tsarki rabin imani ne.\"\n— Muslim';

  @override
  String get hadith34 =>
      '\"Duk wanda ya yi hakuri, Allah zai ba shi hakuri.\"\n— Bukhari da Muslim';

  @override
  String get hadith35 =>
      '\"Mafi kyawun dukiya ita ce harshen da ke ambaton Allah.\"\n— Tabarani';

  @override
  String get hadith36 =>
      '\"Ba wani daga cikinku zai yi imani na gaskiya ba sai ya so wa dan uwansa abin da yake so wa kansa.\"\n— Bukhari da Muslim';

  @override
  String get hadith37 =>
      '\"Ku ciyar da masu yunwa, ku ziyarci marasa lafiya, ku kuma \'yantar da fursunoni.\"\n— Bukhari';

  @override
  String get hadith38 =>
      '\"Mai karfi ba wanda ya ci nasara a kokawa ba ne, mai karfi shi ne wanda ya mallaki kansa a lokacin fushi.\"\n— Bukhari da Muslim';

  @override
  String get hadith39 =>
      '\"Duk wanda ya kiyaye abin da ke tsakanin muƙaminsa da ƙafafunsa, zan ba shi lamunin Aljanna.\"\n— Bukhari';

  @override
  String get hadith40 =>
      '\"Ku ce \'SubhanAllah\', \'Alhamdulillah\', da \'Allahu Akbar\' sau talatin da uku bayan kowace sallah.\"\n— Muslim';

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
      '\"Mai hada zumunci ba wanda ke mayar da ziyara ba ne, sai dai wanda ke ci gaba da hadin kai ko da an yanke.\"\n— Bukhari';

  @override
  String get hadith48 =>
      '\"Kowace kyakkyawar aiki sadaka ce.\"\n— Bukhari da Muslim';

  @override
  String get hadith49 =>
      '\"Duk wanda ya ci abinci ya ce: \'Godiya ta tabbata ga Allah wanda ya ciyar da ni wannan kuma ya azurta ni ba tare da wani iko ko karfi daga gare ni ba,\' za a gafarta masa zunubansa na baya.\"\n— Tirmizi';

  @override
  String get hadith50 =>
      '\"Mutanen da Allah ya fi so su ne waɗanda suka fi amfanar da sauran mutane.\"\n— Tabarani';

  @override
  String get hadith51 =>
      '\"Duk wanda ya riƙe fushinsa alhali yana iya aikata shi, Allah zai kira shi a gaban dukkan halittu a Ranar Ƙiyama don ya zaɓi ladansa.\"\n— Tirmizi';

  @override
  String get hadith52 =>
      '\"Ku yi gaggawa da sadaka, domin tana hana masifa.\"\n— Tirmizi';

  @override
  String get hadith53 =>
      '\"Kada ku raina wani alheri, ko da kuwa ganin dan uwanku da fuskar murna ne.\"\n— Muslim';

  @override
  String get hadith54 =>
      '\"Mafi alherin ku shi ne wanda ya fi alheri ga iyalinsa.\"\n— Tirmizi';

  @override
  String get hadith55 =>
      '\"Duk wanda ya karanta ayoyi biyu na ƙarshe na Suratul Baƙara a dare, sun ishe shi.\"\n— Bukhari da Muslim';

  @override
  String get hadith56 =>
      '\"Duniya jin daɗi ce, mafi kyawun jin daɗinta kuwa mace ta kirki ce.\"\n— Muslim';

  @override
  String get hadith57 =>
      '\"Addu\'o\'i uku ba a mayar da su ba: addu\'ar mai azumi, shugaba mai adalci, da wanda aka zalunta.\"\n— Tirmizi';

  @override
  String get hadith58 =>
      '\"Duk wanda ya yi mini salati sau ɗaya, Allah zai yi masa rahama sau goma.\"\n— Muslim';

  @override
  String get hadith59 =>
      '\"Masallaci gida ne ga kowane mutum mai ibada.\"\n— Tabarani';

  @override
  String get hadith60 =>
      '\"Duk wanda ya ce \'La hawla wa la ƙuwwata illa billah\' — magani ne ga cututtuka casa\'in da tara, mafi sauƙinsu ita ce damuwa.\"\n— Hakim';

  @override
  String get hadith61 =>
      '\"Allah yana son idan ɗayanku ya yi wani aiki, ya yi shi da kyau.\"\n— Tabarani';

  @override
  String get hadith62 => '\"Aljanna tana ƙarƙashin ƙafafun uwaye.\"\n— Nasa\'i';

  @override
  String get hadith63 =>
      '\"Ayyukan da Allah ya fi so: salla a lokacinta, sannan kyautatawa ga iyaye, sannan jihadi a tafarkin Allah.\"\n— Bukhari da Muslim';

  @override
  String get hadith64 =>
      '\"Duk wanda ya gode a kan ƙarami, za a ba shi mai yawa.\"\n— Bayhaqi';

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
      '\"Babu gajiya, cuta, baƙin ciki, takaici, rauni ko damuwa da take samu Musulmi, har ma ƙaya da ta soke shi, face Allah ya kankare wasu daga zunubansa.\"\n— Bukhari da Muslim';

  @override
  String get hadith69 =>
      '\"Addu\'ar Musulmi ga ɗan uwansa a bayan sa kullum ana karɓa.\"\n— Muslim';

  @override
  String get hadith70 =>
      '\"Duk wanda ya roƙi Allah Aljanna sau uku, Aljanna tace: Ya Allah ka shigar da shi Aljanna.\"\n— Tirmizi';

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
      '\"Ku yi gaggawa da ayyukan alheri kafin fitnoni su zo kamar yanki na dare mai duhu.\"\n— Muslim';

  @override
  String get hadith75 =>
      '\"Raka\'a biyu na Sallar Asuba sun fi alheri fiye da duniya da duk abin da ke cikinta.\"\n— Muslim';

  @override
  String get hadith76 =>
      '\"Wanda ya lazimci istigfari, Allah zai ba shi mafita daga kowace wahala.\"\n— Abu Dawud';

  @override
  String get hadith77 =>
      '\"Da kun dogara ga Allah kamar yadda ya kamata, da ya azurta ku kamar yadda yake azurtar tsuntsaye.\"\n— Tirmizi';

  @override
  String get hadith78 =>
      '\"Wanda ya ziyarci mai rashin lafiya, yana cikin gonar Aljanna har ya dawo.\"\n— Muslim';

  @override
  String get hadith79 =>
      '\"Ku yada sallama, ku ciyar da masu yunwa, ku yi sallah da dare lokacin da mutane suke barci — za ku shiga Aljanna cikin salama.\"\n— Tirmizi';

  @override
  String get hadith80 =>
      '\"Wanda bai gode wa mutane ba, bai gode wa Allah ba.\"\n— Tirmizi';

  @override
  String get hadith81 =>
      '\"Ba a yarda da hassada sai a wajen mutum biyu: mutumin da Allah ya ba shi dukiya ya kuma kashe ta a hanyar gaskiya, da mutumin da Allah ya ba shi hikima ya kuma yi hukunci kuma ya koyar da ita.\"\n— Bukhari da Muslim';

  @override
  String get hadith82 =>
      '\"Mutum yana bin addinin abokinsa, saboda haka kowannenku ya duba wanda yake abokantaka da shi.\"\n— Abu Dawud da Tirmizi';

  @override
  String get hadith83 =>
      '\"Ku yawaita tuna da mutuwa, domin tana tsarkake zuciya.\"\n— Tirmizi';

  @override
  String get hadith84 =>
      '\"Mafi kyawun ibada ita ce jiran samun sauƙi.\"\n— Tirmizi';

  @override
  String get hadith85 =>
      '\"Duk wanda ya bar wani abu saboda Allah, Allah zai maye masa da wani abu mafi alheri.\"\n— Ahmad';

  @override
  String get hadith86 =>
      '\"Wanda ya rufe aibin Musulmi, Allah zai rufe aibinsa a Ranar Kiyama.\"\n— Bukhari da Muslim';

  @override
  String get hadith87 =>
      '\"Ka kasance a cikin duniya kamar kai bako ne ko mai tafiya.\"\n— Bukhari';

  @override
  String get hadith88 =>
      '\"Wanda ya sawwaƙa wa wanda yake cikin wahala, Allah zai sawwaƙa masa a duniya da lahira.\"\n— Muslim';

  @override
  String get hadith89 =>
      '\"Ladan ayyuka ya danganta ga niyyoyi.\"\n— Bukhari da Muslim';

  @override
  String get hadith90 =>
      '\"Ku guji tunanin mugunta, domin tunanin mugunta shi ne magana mafi ƙarya.\"\n— Bukhari da Muslim';

  @override
  String get hadith91 =>
      '\"Wanda ya bar ƙarya saboda Allah, ko da a wasa, ina ba shi lamunin fada a gefen Aljanna.\"\n— Abu Dawud';

  @override
  String get hadith92 =>
      '\"Ƙofofin alheri suna da yawa: tsarkake Allah, yabonsa, sadaka, umurni da alheri, da cire cikas daga hanya.\"\n— Muslim';

  @override
  String get hadith93 =>
      '\"Ku ci tare kuma ku ambaci sunan Allah, za a sa muku albarka.\"\n— Abu Dawud';

  @override
  String get hadith94 => '\"Mafi alherin taro shi ne mafi fadi.\"\n— Abu Dawud';

  @override
  String get hadith95 => '\"Ku yi afuwa, za a yi muku afuwa.\"\n— Ahmad';

  @override
  String get hadith96 =>
      '\"Ka daure raƙuminka sannan ka dogara ga Allah.\"\n— Tirmizi';

  @override
  String get hadith97 =>
      '\"Abin mamaki ne al\'amarin mumini — komai alheri ne a gare shi.\"\n— Muslim';

  @override
  String get hadith98 =>
      '\"Musulmi ɗan\'uwan Musulmi ne: ba ya zaluntarsa, ba ya yashe shi, kuma ba ya rena shi.\"\n— Muslim';

  @override
  String get hadith99 =>
      '\"Mafi soyuwar magana ga Allah ita ce: SubhanAllahi wa bihamdihi, SubhanAllahil Azim.\"\n— Bukhari da Muslim';
}
