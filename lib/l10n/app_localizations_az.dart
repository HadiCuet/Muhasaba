// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Azerbaijani (`az`).
class AppLocalizationsAz extends AppLocalizations {
  AppLocalizationsAz([String locale = 'az']) : super(locale);

  @override
  String get appTitle => 'Muhasaba';

  @override
  String get tabToday => 'Bu gun';

  @override
  String get tabStats => 'Statistika';

  @override
  String get tabHistory => 'Tarixce';

  @override
  String get tabSettings => 'Parametrler';

  @override
  String get newAmal => 'Yeni emel';

  @override
  String get editAmal => 'Emeli redakte et';

  @override
  String get newAmalTitle => 'Yeni emel';

  @override
  String get save => 'Saxla';

  @override
  String get cancel => 'Legv et';

  @override
  String get clear => 'Temizle';

  @override
  String get titleLabel => 'Basliq';

  @override
  String get titleRequired => 'Basliq teleb olunur';

  @override
  String get titleTooLong => 'Basliq cox uzundur';

  @override
  String get frequencyLabel => 'Tezlik';

  @override
  String get frequencyDaily => 'Gundelik';

  @override
  String get frequencyWeekly => 'Heftelik';

  @override
  String get frequencyMonthly => 'Ayliq';

  @override
  String get categoryLabel => 'Kateqoriya';

  @override
  String get categoryOther => 'Diger';

  @override
  String get categorySalah => 'Namaz';

  @override
  String get categoryDhikr => 'Zikr';

  @override
  String get categoryQuran => 'Quran';

  @override
  String get categoryCharity => 'Sedeqe';

  @override
  String get timesPerPeriod => 'Dovre erzinde defe';

  @override
  String get custom => 'Ferdi';

  @override
  String get customTargetHint => 'mes. 50';

  @override
  String get dayOfWeek => 'Heftenin gunu';

  @override
  String get anyDay => 'Istenielen';

  @override
  String get anyDayHint => 'Istenielen gun (bu gun gosterilir, sabah gizlenir)';

  @override
  String onlyDayHint(String day) {
    return 'Yalniz $day';
  }

  @override
  String get dateOfMonth => 'Ayin tarixi';

  @override
  String get anyDate => 'Istenielen';

  @override
  String get anyDateHint =>
      'Istenielen tarix (bu gun gosterilir, sabah gizlenir)';

  @override
  String onlyDateHint(String date) {
    return 'Yalniz $date-de';
  }

  @override
  String get startPreChecked => 'Qeyd olunmus baslat';

  @override
  String get startPreCheckedSubtitle =>
      'Yeni dovre basladiqda, bu emel siz legv edene qeder tamamlanmis sayilir.';

  @override
  String get reminder => 'Xatirlatma';

  @override
  String get reminderNone => 'Yoxdur';

  @override
  String reminderTime(String time) {
    return 'Xatirlatma: $time';
  }

  @override
  String get reminderPermissionWarning =>
      'Xatirlatma saxlanildi, lakin bildirisler icaze verilmeyib. Xeberdar olmaq ucun sistem parametrlerinde aktiv edin.';

  @override
  String get groupByCategory => 'Kateqoriyaya gore qrupla';

  @override
  String get flatList => 'Sade siyahi';

  @override
  String errorGeneric(String error) {
    return 'Xeta: $error';
  }

  @override
  String get todayEmptyHint => 'Ilk emelinizi elave etmek ucun + basin.';

  @override
  String get noteLabel => 'Qeyd';

  @override
  String get noteHint => 'mes. Mescidde namaz qildim';

  @override
  String get completed => 'tamamlandi';

  @override
  String get notCompleted => 'tamamlanmadi';

  @override
  String progressOf(int progress, int target) {
    return '$target-dan $progress tamamlandi';
  }

  @override
  String get removeFromToday => 'Bu gunden sil';

  @override
  String get removeFromTodaySubtitle =>
      'Yalniz bu gun ucun gizlenir. Sabah geri qayidir.';

  @override
  String get removeFromTracking => 'Izlemeden sil';

  @override
  String get removeFromTrackingSubtitle =>
      'Siyahinizdan hemiselik silinir. Tarixce saxlanilir.';

  @override
  String get chooseIcon => 'Simvol secin';

  @override
  String get iconNone => 'Yoxdur';

  @override
  String get recentlyUsed => 'Son istifade olunan';

  @override
  String get emojiSectionGeneral => 'Umumi';

  @override
  String get categoryNameHint => 'Ad';

  @override
  String get categoryNew => '+ Yeni';

  @override
  String get categoryNewSheetTitle => 'Yeni kateqoriya';

  @override
  String get categoryEditSheetTitle => 'Kateqoriyanı redaktə et';

  @override
  String get addAmal => 'Emel elave et';

  @override
  String get customAmal => 'Ferdi emel';

  @override
  String get templateTasbih => 'Tesbih 33x';

  @override
  String get templateIstighfar => 'Istigfar 100x';

  @override
  String get templateSurahKahf => 'Kehf suresi';

  @override
  String get templateSadaqah => 'Sedeqe';

  @override
  String get templateTahajjud => 'Tehecud';

  @override
  String get templateDuhaPrayer => 'Zuha namazi';

  @override
  String get settingsTitle => 'Parametrler';

  @override
  String settingsLoadError(String error) {
    return 'Parametrleri yuklemek mumkun olmadi:\n$error';
  }

  @override
  String get sectionDayBoundary => 'Gun serhedi';

  @override
  String get rolloverHour => 'Kecid saati';

  @override
  String get rolloverAtMidnight => 'Bu gun geceyarisi basa catir.';

  @override
  String rolloverSubtitle(String time) {
    return 'Dunenki emeller $time-dek redakte oluna biler.';
  }

  @override
  String get pickRolloverHour => 'Gunun kecid saatini secin';

  @override
  String get sectionWeekMonth => 'Hefte ve ay';

  @override
  String get startOfWeek => 'Heftenin baslangici';

  @override
  String get startOfMonth => 'Ayin baslangici';

  @override
  String get startOfMonthClamped =>
      '28-den sonraki gunler qisa aylarda ayin son gunune uygunlasdirilir.';

  @override
  String get sectionAppearance => 'Gorunus';

  @override
  String get theme => 'Movzu';

  @override
  String get themeSystem => 'Sistem';

  @override
  String get themeLight => 'Isiqli';

  @override
  String get themeDark => 'Qaranlig';

  @override
  String get sectionLanguage => 'Dil';

  @override
  String get language => 'Dil';

  @override
  String get systemDefault => 'Sistem susmaya gore';

  @override
  String get aboutTitle => 'Muhasaba';

  @override
  String get aboutSubtitle =>
      'Sexsi din mesuliyyet jurnali. Butun melumatlar bu cihazda qalir.';

  @override
  String get statsTitle => 'Statistika';

  @override
  String statsLoadError(String error) {
    return 'Statistikani yuklemek mumkun olmadi:\n$error';
  }

  @override
  String get perAmal => 'Her emel ucun';

  @override
  String get thisWeek => 'Bu hefte';

  @override
  String get thisMonth => 'Bu ay';

  @override
  String get totalCompletions => 'umumi tamamlanma';

  @override
  String get streakCurrent => 'Cari';

  @override
  String get streakLongest => 'En uzun';

  @override
  String get ratioWeek => 'Hefte';

  @override
  String get ratioMonth => 'Ay';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'gun',
      one: 'gun',
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
      other: 'ay',
      one: 'ay',
    );
    return '$_temp0';
  }

  @override
  String get frequencyBadgeDaily => 'gundelik';

  @override
  String get frequencyBadgeWeekly => 'heftelik';

  @override
  String get frequencyBadgeMonthly => 'ayliq';

  @override
  String get statsEmpty =>
      'Hele emel yoxdur. Izlemeye baslamaq ucun Bu gun sehifesinde elave edin.';

  @override
  String get statsToday => 'Bu gun';

  @override
  String get statsThisWeek => 'Bu hefte';

  @override
  String get statsThisMonth => 'Bu ay';

  @override
  String get statsAllTime => 'Butun zamanlar';

  @override
  String get statsCustomRange => 'Ferdi araliq';

  @override
  String get statsAllCategories => 'Hamisi';

  @override
  String get statsAllAmals => 'Hamisi';

  @override
  String get statsCompleted => 'Tamamlandi';

  @override
  String get statsExpected => 'Gozlenilen';

  @override
  String get statsVsPrevious => 'Evvelkine nisbeten';

  @override
  String get statsByCategory => 'Kateqoriyaya gore';

  @override
  String get statsPerAmal => 'Her emel ucun';

  @override
  String get statsCurrentStreak => 'Cari seriya';

  @override
  String get statsBestStreak => 'En yaxsi seriya';

  @override
  String get statsTotalDays => 'Umumi gunler';

  @override
  String get statsConsistency => 'Ardicilliq';

  @override
  String get statsLast5Weeks => 'Son 5 hefte';

  @override
  String get statsDailyBreakdown => 'Gunluk tefsir';

  @override
  String get statsCompletionRate => 'Tamamlanma derecesi';

  @override
  String get statsFilterTime => 'Vaxt';

  @override
  String get statsFilterCategory => 'Kateqoriya';

  @override
  String get statsFilterAmal => 'Emel';

  @override
  String get statsStreaks => 'Seriyalar';

  @override
  String get statsSelectDateRange => 'Tarix araligini secin';

  @override
  String get historyTitle => 'Tarixce';

  @override
  String get jumpToDate => 'Tarixe kec';

  @override
  String historyEmptyDay(String date) {
    return '$date tarixinde emel izlenmeyib';
  }

  @override
  String get streakUnitD => 'g';

  @override
  String get streakUnitW => 'h';

  @override
  String get streakUnitM => 'a';

  @override
  String get mondayShort => 'B.e';

  @override
  String get tuesdayShort => 'C.a';

  @override
  String get wednesdayShort => 'C';

  @override
  String get thursdayShort => 'C.a';

  @override
  String get fridayShort => 'C';

  @override
  String get saturdayShort => 'S';

  @override
  String get sundayShort => 'B';

  @override
  String get mondayFull => 'Bazar ertesi';

  @override
  String get tuesdayFull => 'Cersenbe axsami';

  @override
  String get wednesdayFull => 'Cersenbe';

  @override
  String get thursdayFull => 'Cumme axsami';

  @override
  String get fridayFull => 'Cumme';

  @override
  String get saturdayFull => 'Senbe';

  @override
  String get sundayFull => 'Bazar';

  @override
  String get hadith0 =>
      '\"Allahın ən sevdiyi əməllər az da olsa davamlı olanlardır.\"\n— Buxari və Müslim';

  @override
  String get hadith2 =>
      '\"Adəm övladı öldüyü zaman əməlləri üç şeydən başqa kəsilir: davamlı sədəqə, faydalı elm və ya onun üçün dua edən saleh övlad.\"\n— Müslim';

  @override
  String get hadith3 =>
      '\"Kim iki sərin namazı (Sübh və Əsr) qılarsa, Cənnətə daxil olar.\"\n— Buxari';

  @override
  String get hadith4 =>
      '\"Allah sizin xarici görünüşünüzə və var-dövlətinizə baxmır, O sizin ürəklərinizə və əməllərinizə baxır.\"\n— Müslim';

  @override
  String get hadith6 =>
      '\"Asanlaşdırın, çətinləşdirməyin; müjdə verin, insanları uzaqlaşdırmayın.\"\n— Buxari';

  @override
  String get hadith7 =>
      '\"Kim elm axtarışı yoluna çıxarsa, Allah onun üçün Cənnət yolunu asanlaşdırar.\"\n— Müslim';

  @override
  String get hadith8 => '\"Sədəqə malı azaltmaz.\"\n— Müslim';

  @override
  String get hadith9 =>
      '\"Güclü mömin zəif mömindan daha yaxşı və Allaha daha sevimlidir, hərçənd hər ikisində xeyir var.\"\n— Müslim';

  @override
  String get hadith10 =>
      '\"Kim gündə yüz dəfə \'SubhanAllahi və bihamdihi\' desə, günahları bağışlanar, hətta dənizin köpüyü qədər olsa belə.\"\n— Buxari və Müslim';

  @override
  String get hadith12 =>
      '\"Kim hər fərz namazdan sonra Ayətəl-Kürsi oxusa, onu cənnətə girməkdən yalnız ölüm saxlayar.\"\n— Nəsai';

  @override
  String get hadith13 => '\"Gözəl söz sədəqədir.\"\n— Buxari və Müslim';

  @override
  String get hadith14 =>
      '\"Allaha və axirət gününə iman gətirən xeyir söyləsin və ya sussun.\"\n— Buxari və Müslim';

  @override
  String get hadith15 =>
      '\"Dul qadına və miskinə baxan adam Allah yolunda mübarizə aparan kimidir.\"\n— Buxari və Müslim';

  @override
  String get hadith16 => '\"Qardaşına təbəssüm etməyin sədəqədir.\"\n— Tirmizi';

  @override
  String get hadith17 =>
      '\"Sizin ən xeyirliniz Quranı öyrənən və öyrədəndir.\"\n— Buxari';

  @override
  String get hadith18 =>
      '\"Heç kəs öz əlinin zəhməti ilə qazandığından yaxşı yemək yeməmişdir.\"\n— Buxari';

  @override
  String get hadith19 =>
      '\"Allah mülayimdir və hər işdə mülayimliyi sevir.\"\n— Buxari və Müslim';

  @override
  String historyDayCompleted(int completed, int total) {
    return '$total-dən $completed tamamlandı';
  }

  @override
  String get settingsSchedule => 'Cədvəl';

  @override
  String get settingsAppearance => 'Görünüş';

  @override
  String get settingsAboutTagline => 'Gündəlik din yoldaşınız';

  @override
  String get settingsRolloverSub => 'Gün nə vaxt sıfırlanır';

  @override
  String get settingsAbout => 'Haqqında';

  @override
  String get settingsVersion => 'Versiya';

  @override
  String get settingsDeveloper => 'Tərtibatçı';

  @override
  String get settingsSupport => 'Dəstək';

  @override
  String get settingsRate => 'Tətbiqi qiymətləndirin';

  @override
  String get settingsContact => 'Bizimlə əlaqə';

  @override
  String get settingsReportBug => 'Xəta bildir';

  @override
  String get settingsRequestFeature => 'Funksiya tələb et';

  @override
  String settingsSupportFallback(String email) {
    return 'Poçt açıla bilmədi. Zəhmət olmasa $email ünvanına yazın.';
  }

  @override
  String get settingsPrivacyPolicy => 'Məxfilik siyasəti';

  @override
  String get settingsPrivacyOpenFailed => 'Məxfilik siyasəti açıla bilmədi.';

  @override
  String get hadith20 =>
      '\"Kim Ramazanı iman və savab ümidi ilə oruc tutarsa, keçmiş günahları bağışlanar.\"\n— Buxari və Müslim';

  @override
  String get hadith22 =>
      '\"Azan ilə iqamə arasındakı dua rədd edilməz.\"\n— Əbu Davud';

  @override
  String get hadith23 =>
      '\"Kim Allah üçün bir məscid tikərsə, Allah onun üçün cənnətdə bir ev tikər.\"\n— Buxari və Müslim';

  @override
  String get hadith24 =>
      '\"Kişilər üçün ən yaxşı cərgələr birinci cərgələr, qadınlar üçün ən yaxşı cərgələr isə son cərgələrdir.\"\n— Müslim';

  @override
  String get hadith25 => '\"Oruc cəhənnəm atəşindən bir qalxandır.\"\n— Nəsai';

  @override
  String get hadith26 =>
      '\"Kim on iki rükət sünnət namazı qılarsa, onun üçün cənnətdə bir ev tikilər.\"\n— Müslim';

  @override
  String get hadith27 =>
      '\"Quranı gözəl oxuyan şəxs kərim olan mələklərlə birlikdə olacaq.\"\n— Buxari və Müslim';

  @override
  String get hadith29 => '\"Sədəqənin ən yaxşısı su içirməkdir.\"\n— Əhməd';

  @override
  String get hadith30 =>
      '\"Kim bir möminə bir çətinliyi aradan qaldırarsa, Allah da Qiyamət günü onun bir çətinliyini aradan qaldırar.\"\n— Müslim';

  @override
  String get hadith32 => '\"Həya imandandır.\"\n— Buxari və Müslim';

  @override
  String get hadith34 =>
      '\"Kim səbr edərsə, Allah ona səbr verər.\"\n— Buxari və Müslim';

  @override
  String get hadith36 =>
      '\"Heç biriniz özünə istədiyini qardaşına da istəmədikcə həqiqi iman etmiş olmaz.\"\n— Buxari və Müslim';

  @override
  String get hadith37 =>
      '\"Acları doyurun, xəstələri ziyarət edin və əsirləri azad edin.\"\n— Buxari';

  @override
  String get hadith38 =>
      '\"Güclü insan güləşdə qalib gələn deyil, qəzəb anında özünə hakim olandır.\"\n— Buxari və Müslim';

  @override
  String get hadith40 =>
      '\"Hər namazdan sonra otuz üç dəfə \'SubhanAllah\', \'Əlhəmdulilləh\' və \'Allahu Əkbər\' deyin.\"\n— Müslim';

  @override
  String get hadith41 => '\"Ən yaxşı zikr La ilahə illəllahdır.\"\n— Tirmizi';

  @override
  String get hadith42 =>
      '\"İnsanların çoxunun israf etdiyi iki nemət var: sağlamlıq və boş vaxt.\"\n— Buxari';

  @override
  String get hadith43 =>
      '\"Beşdən əvvəl beşi qənimət bilin: qocalmadan gəncliyi, xəstəlikdən sağlamlığı, yoxsulluqdan varlığı, məşğuliyyətdən boş vaxtı və ölümdən həyatı.\"\n— Hakim';

  @override
  String get hadith44 =>
      '\"Kim İxlas surəsini on dəfə oxuyarsa, Allah onun üçün cənnətdə bir ev tikər.\"\n— Əhməd';

  @override
  String get hadith45 =>
      '\"Fərz namazlardan sonra ən yaxşı namaz gecə namazıdır.\"\n— Müslim';

  @override
  String get hadith46 =>
      '\"Sədəqə günahları suyun odu söndürdüyü kimi söndürür.\"\n— Tirmizi';

  @override
  String get hadith47 =>
      '\"Qohumluq əlaqəsini saxlayan ona qarşılıq verən deyil, əlaqəsi kəsilsə belə onu davam etdirəndir.\"\n— Buxari';

  @override
  String get hadith49 =>
      '\"Kim yemək yeyib: \'Bu yeməyi mənə yedirdən və heç bir güc və qüvvətim olmadan bunu mənə nəsib edən Allaha həmd olsun\' deyərsə, keçmiş günahları bağışlanar.\"\n— Tirmizi';

  @override
  String get hadith53 =>
      '\"Heç bir yaxşılığı kiçik görmə, hətta qardaşını gülər üzlə qarşılamaq olsa belə.\"\n— Müslim';

  @override
  String get hadith54 =>
      '\"Sizin ən xeyirliniz ailəsinə ən yaxşı davrananınızdır.\"\n— Tirmizi';

  @override
  String get hadith55 =>
      '\"Kim gecə Bəqərə surəsinin son iki ayəsini oxusa, bu ona kifayət edər.\"\n— Buxari & Müslim';

  @override
  String get hadith56 =>
      '\"Dünya bir nemətdir, ən yaxşı neməti isə saleh qadındır.\"\n— Müslim';

  @override
  String get hadith57 =>
      '\"Üç dua geri qaytarılmaz: oruclunun duası, ədalətli hökmdarın duası və məzlumun duası.\"\n— Tirmizi';

  @override
  String get hadith58 =>
      '\"Kim mənə bir dəfə salavat göndərsə, Allah ona on dəfə rəhmət edər.\"\n— Müslim';

  @override
  String get hadith65 => '\"Mömin möminin güzgüsüdür.\"\n— Əbu Davud';

  @override
  String get hadith66 =>
      '\"Doğruluq xeyirxahlığa aparır, xeyirxahlıq isə Cənnətə aparır.\"\n— Buxari & Müslim';

  @override
  String get hadith67 =>
      '\"Əmanəti sənə etibar edənə qaytar, sənə xəyanət edənə xəyanət etmə.\"\n— Əbu Davud & Tirmizi';

  @override
  String get hadith68 =>
      '\"Müsəlmana gələn yorğunluq, xəstəlik, kədər, qəm, əziyyət və ya narahatlıq, hətta bir tikan batması belə olsa, Allah onun günahlarının bir hissəsini bağışlayar.\"\n— Buxari & Müslim';

  @override
  String get hadith69 =>
      '\"Müsəlmanın qardaşına qaib halında etdiyi dua həmişə qəbul olunar.\"\n— Müslim';

  @override
  String get hadith70 =>
      '\"Kim Allahdan üç dəfə Cənnət istəsə, Cənnət deyər: Allahım, onu Cənnətə daxil et.\"\n— Tirmizi';

  @override
  String get hadith71 =>
      '\"Ramazandan sonra ən fəzilətli oruc Allahın ayı Məhərrəm orucudur.\"\n— Müslim';

  @override
  String get hadith72 =>
      '\"Kim həcc edib pis söz söyləməzsə və günah etməzsə, anasının onu doğduğu gündəki kimi qayıdar.\"\n— Buxari & Müslim';

  @override
  String get hadith73 =>
      '\"Bir ümrə digər ümrəyə qədər aralarındakı günahların kəffarəsidir.\"\n— Buxari & Müslim';

  @override
  String get hadith74 =>
      '\"Qaranlıq gecənin parçaları kimi fitnələr gəlməzdən əvvəl xeyirli işlərə tələsin.\"\n— Müslim';

  @override
  String get hadith75 =>
      '\"Sübh namazının iki rəkəti dünyadan və ondakı hər şeydən xeyirlidir.\"\n— Müslim';

  @override
  String get hadith77 =>
      '\"Əgər siz Allaha layiqincə təvəkkül etsəydiniz, O sizi quşları ruzilədirdiyi kimi ruziləndirərdi.\"\n— Tirmizi';

  @override
  String get hadith78 =>
      '\"Kim xəstəni ziyarət etsə, qayıdana qədər cənnət bağındadır.\"\n— Müslim';

  @override
  String get hadith79 =>
      '\"Salamı yayın, yemək verin və insanlar yatarkən gecə namazı qılın — cənnətə salamatlıqla girərsiniz.\"\n— Tirmizi';

  @override
  String get hadith80 =>
      '\"İnsanlara təşəkkür etməyən Allaha da şükür etməz.\"\n— Tirmizi';

  @override
  String get hadith81 =>
      '\"Qibtə yalnız iki halda icazəlidir: Allahın mal verib haqq yolunda xərcləyən adam, və Allahın hikmət verib onunla hökm çıxarıb öyrədən adam.\"\n— Buxari və Müslim';

  @override
  String get hadith82 =>
      '\"İnsan dostunun dini üzərindədir, ona görə hər biriniz kiminlə dost olduğuna baxsın.\"\n— Əbu Davud və Tirmizi';

  @override
  String get hadith85 =>
      '\"Kim Allah xatirinə bir şeyi tərk edərsə, Allah ona ondan daha yaxşısını verər.\"\n— Əhməd';

  @override
  String get hadith86 =>
      '\"Kim müsəlmanın eybini gizlətsə, Allah Qiyamət günü onun eybini gizlədər.\"\n— Buxari və Müslim';

  @override
  String get hadith87 => '\"Dünyada qərib və ya yolçu kimi ol.\"\n— Buxari';

  @override
  String get hadith88 =>
      '\"Kim çətinlikdəki adama asanlıq etsə, Allah ona dünyada və axirətdə asanlıq edər.\"\n— Müslim';

  @override
  String get hadith89 =>
      '\"Əməllərin mükafatı niyyətlərə bağlıdır.\"\n— Buxari və Müslim';

  @override
  String get hadith90 =>
      '\"Şübhədən çəkinin, çünki şübhə ən yalan sözdür.\"\n— Buxari və Müslim';

  @override
  String get hadith93 =>
      '\"Birlikdə yeyin və Allahın adını çəkin, sizin üçün bərəkətli olacaq.\"\n— Əbu Davud';

  @override
  String get hadith94 =>
      '\"Hər hansı bir qövm Allahı zikr edərək otursa, mütləq mələklər onları əhatə edər, rəhmət onları bürüyər və sükunət onların üstünə enər.\"\n— Müslim';

  @override
  String get hadith95 =>
      '\"Allah bağışlayan quluna ancaq izzət artırar.\"\n— Müslim';

  @override
  String get hadith96 =>
      '\"Dəvəni bağla, sonra Allaha təvəkkül et.\"\n— Tirmizi';

  @override
  String get hadith97 =>
      '\"Möminin işi qəribədir — hər şey onun üçün xeyirdir.\"\n— Müslim';

  @override
  String get hadith98 =>
      '\"Müsəlman müsəlmanın qardaşıdır: ona zülm etməz, onu tərk etməz, onu kiçik görməz.\"\n— Müslim';

  @override
  String get delete => 'Sil';

  @override
  String get remove => 'Çıxar';

  @override
  String get deleteAmalConfirmTitle => 'İzləmədən çıxarılsın?';

  @override
  String deleteAmalConfirmBody(String title) {
    return '\"$title\" siyahınızdan gizlədiləcək. Tarixçəniz saxlanılacaq.';
  }

  @override
  String get genericError => 'Xəta baş verdi. Zəhmət olmasa yenidən cəhd edin.';
}
