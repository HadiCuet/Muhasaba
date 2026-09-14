// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Azerbaijani (`az`).
class AppLocalizationsAz extends AppLocalizations {
  AppLocalizationsAz([String locale = 'az']) : super(locale);

  @override
  String get repeatsOnDaysHint => 'Seçilmiş günlərdə təkrarlanır';

  @override
  String get newDayStarted => 'Yeni bir gün başladı';

  @override
  String get appTitle => 'Mühasibat';

  @override
  String get tabToday => 'Bu gün';

  @override
  String get tabStats => 'Statistika';

  @override
  String get tabHistory => 'Tarixçə';

  @override
  String get tabSettings => 'Parametrlər';

  @override
  String get tabChallenge => 'Hədəf';

  @override
  String get tabInsights => 'Statistika';

  @override
  String get insightsTitle => 'Statistika';

  @override
  String get insightsOverview => 'Ümumi baxış';

  @override
  String get insightsDaily => 'Günlük';

  @override
  String get insightsArchive => 'Arxiv';

  @override
  String get archivedEmpty =>
      'Burada hələ heç nə yoxdur. İzləmədən çıxardığınız əməllər burada qalır və onları geri qaytara bilərsiniz.';

  @override
  String archivedStoppedOn(String date) {
    return '$date tarixində çıxarıldı';
  }

  @override
  String get archivedRestore => 'Geri qaytar';

  @override
  String archivedRestored(String title) {
    return '\"$title\" siyahınıza qaytarıldı.';
  }

  @override
  String get newChallenge => 'Yeni hədəf';

  @override
  String get newAmal => 'Yeni əməl';

  @override
  String get editAmal => 'Əməli redaktə et';

  @override
  String get newAmalTitle => 'Yeni əməl';

  @override
  String get save => 'Saxla';

  @override
  String get cancel => 'Ləğv et';

  @override
  String get ok => 'OK';

  @override
  String get clear => 'Təmizlə';

  @override
  String get titleLabel => 'Başlıq';

  @override
  String get titleRequired => 'Başlıq tələb olunur';

  @override
  String get titleTooLong => 'Başlıq çox uzundur';

  @override
  String get frequencyLabel => 'Tezlik';

  @override
  String get frequencyDaily => 'Gündəlik';

  @override
  String get frequencyWeekly => 'Həftəlik';

  @override
  String get frequencyMonthly => 'Aylıq';

  @override
  String get categoryLabel => 'Kateqoriya';

  @override
  String get categoryOther => 'Digər';

  @override
  String get categorySalah => 'Namaz';

  @override
  String get categoryDhikr => 'Zikr';

  @override
  String get categoryQuran => 'Quran';

  @override
  String get categoryCharity => 'Sədəqə';

  @override
  String get categorySunnah => 'Sünnə';

  @override
  String get timesPerPeriod => 'Dövrə ərzində dəfə';

  @override
  String get custom => 'Fərdi';

  @override
  String get customTargetHint => 'məs. 50';

  @override
  String get targetAny => 'Sərbəst';

  @override
  String get targetAnyHelp =>
      'Hədəf yoxdur — istənilən miqdar tamamlanmış sayılır';

  @override
  String get dayOfWeek => 'Həftənin günü';

  @override
  String get anyDay => 'İstənilən';

  @override
  String get anyDayHint => 'İstənilən gün (bu gün göstərilir, sabah gizlənir)';

  @override
  String onlyDayHint(String day) {
    return 'Yalnız $day';
  }

  @override
  String get dateOfMonth => 'Ayın tarixi';

  @override
  String get repeatMode => 'Təkrar';

  @override
  String get onSetDays => 'Müəyyən günlərdə';

  @override
  String get onSetDates => 'Müəyyən tarixlərdə';

  @override
  String get anyDayMode => 'İstənilən gün';

  @override
  String get datesOfMonth => 'Tarixlər';

  @override
  String get daysPerWeekQuestion => 'Həftədə neçə gün?';

  @override
  String get daysPerMonthQuestion => 'Ayda neçə gün?';

  @override
  String get pickAtLeastOneDay => 'Ən azı bir gün seçin';

  @override
  String get pickAtLeastOneDate => 'Ən azı bir tarix seçin';

  @override
  String get previewDaily => 'Hər gün təkrarlanır';

  @override
  String previewWeeklyDays(String days) {
    return 'Hər $days təkrarlanır';
  }

  @override
  String previewWeeklyAny(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gün',
    );
    return 'Həftədə istənilən $_temp0 təkrarlanır';
  }

  @override
  String previewMonthlyDates(int count, String dates) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Hər ayın $dates günlərində təkrarlanır',
      one: 'Hər ayın $dates günündə təkrarlanır',
    );
    return '$_temp0';
  }

  @override
  String previewMonthlyAny(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gün',
    );
    return 'Ayda istənilən $_temp0 təkrarlanır';
  }

  @override
  String get anyDate => 'İstənilən';

  @override
  String get anyDateHint =>
      'İstənilən tarix (bu gün göstərilir, sabah gizlənir)';

  @override
  String onlyDateHint(String date) {
    return 'Yalnız $date-də';
  }

  @override
  String get startPreChecked => 'Qeyd olunmuş başlat';

  @override
  String get startPreCheckedSubtitle =>
      'Yeni dövrə başladıqda, bu əməl siz ləğv edənə qədər tamamlanmış sayılır.';

  @override
  String get reminder => 'Xatırlatma';

  @override
  String get reminderNone => 'Yoxdur';

  @override
  String reminderTime(String time) {
    return 'Xatırlatma: $time';
  }

  @override
  String get reminderPermissionWarning =>
      'Xatırlatma saxlanıldı, lakin bildirişlərə icazə verilməyib. Xəbərdar olmaq üçün sistem parametrlərində aktiv edin.';

  @override
  String get settingsReminders => 'Xatırlatmalar';

  @override
  String get dailyReminder => 'Gündəlik xatırlatma';

  @override
  String get dailyReminderSubtitle =>
      'Əməllərinizi izləmək üçün yumşaq bir xatırlatma';

  @override
  String get dailyReminderTimeLabel => 'Xatırlatma saatı';

  @override
  String get dailyReminderBody =>
      'Bugünkü əməllərinizi izləmək üçün bir an ayırın.';

  @override
  String get groupByCategory => 'Kateqoriyaya görə qrupla';

  @override
  String get flatList => 'Sadə siyahı';

  @override
  String errorGeneric(String error) {
    return 'Xəta: $error';
  }

  @override
  String get todayEmptyHint => 'İlk əməlinizi əlavə etmək üçün + basın.';

  @override
  String get noteLabel => 'Qeyd';

  @override
  String get noteHint => 'məs. Məsciddə namaz qıldım';

  @override
  String get completed => 'tamamlandı';

  @override
  String get notCompleted => 'tamamlanmadı';

  @override
  String progressOf(String progress, String target) {
    return '$target-dan $progress tamamlandı';
  }

  @override
  String progressOpen(String count) {
    return '$count tamamlandı';
  }

  @override
  String get removeFromToday => 'Bu gündən sil';

  @override
  String get removeFromTodaySubtitle =>
      'Yalnız bu gün üçün gizlənir. Sabah geri qayıdır.';

  @override
  String get removeFromTracking => 'İzləmədən sil';

  @override
  String get removeFromTrackingSubtitle =>
      'Siyahınızdan həmişəlik silinir. Tarixçə saxlanılır.';

  @override
  String get chooseIcon => 'Simvol seçin';

  @override
  String get iconNone => 'Yoxdur';

  @override
  String get recentlyUsed => 'Son istifadə olunan';

  @override
  String get emojiSectionGeneral => 'Ümumi';

  @override
  String get categoryNameHint => 'Ad';

  @override
  String get categoryNew => '+ Yeni';

  @override
  String get categoryNewSheetTitle => 'Yeni kateqoriya';

  @override
  String get categoryEditSheetTitle => 'Kateqoriyanı redaktə et';

  @override
  String get addAmal => 'Əməl əlavə et';

  @override
  String get customAmal => 'Fərdi əməl';

  @override
  String get amalTasbih => 'Təsbih 33x';

  @override
  String get amalIstighfar => 'İstiğfar 100x';

  @override
  String get amalSurahKahf => 'Kəhf surəsi';

  @override
  String get amalSadaqah => 'Sədəqə';

  @override
  String get amalTahajjud => 'Təhəccüd';

  @override
  String get amalDuha => 'Zuha namazı';

  @override
  String get amalFajr => 'Sübh';

  @override
  String get amalDhuhr => 'Zöhr';

  @override
  String get amalAsr => 'Əsr';

  @override
  String get amalMaghrib => 'Məğrib';

  @override
  String get amalIsha => 'İşa';

  @override
  String get amalMorningAdhkar => 'Səhər zikrləri';

  @override
  String get amalEveningAdhkar => 'Axşam zikrləri';

  @override
  String get amalTilawah => 'Tilavət';

  @override
  String get settingsTitle => 'Parametrlər';

  @override
  String settingsLoadError(String error) {
    return 'Parametrləri yükləmək mümkün olmadı:\n$error';
  }

  @override
  String get sectionDayBoundary => 'Gün sərhədi';

  @override
  String get rolloverHour => 'Keçid saatı';

  @override
  String get rolloverAtMidnight => 'Bu gün gecəyarısı başa çatır.';

  @override
  String rolloverSubtitle(String time) {
    return 'Dünənki əməllər $time-dək redaktə oluna bilər.';
  }

  @override
  String get pickRolloverHour => 'Günün keçid saatını seçin';

  @override
  String get sectionWeekMonth => 'Həftə və ay';

  @override
  String get startOfWeek => 'Həftənin başlanğıcı';

  @override
  String get startOfMonth => 'Ayın başlanğıcı';

  @override
  String get startOfMonthClamped =>
      '28-dən sonrakı günlər qısa aylarda ayın son gününə uyğunlaşdırılır.';

  @override
  String get sectionAppearance => 'Görünüş';

  @override
  String get theme => 'Mövzu';

  @override
  String get themeSystem => 'Sistem';

  @override
  String get themeLight => 'İşıqlı';

  @override
  String get themeDark => 'Qaranlıq';

  @override
  String get sectionLanguage => 'Dil';

  @override
  String get language => 'Dil';

  @override
  String get systemDefault => 'Sistem susmaya görə';

  @override
  String get aboutTitle => 'Muhasaba';

  @override
  String get aboutSubtitle =>
      'Şəxsi din məsuliyyət jurnalı. Bütün məlumatlar bu cihazda qalır.';

  @override
  String get statsTitle => 'Statistika';

  @override
  String statsLoadError(String error) {
    return 'Statistikanı yükləmək mümkün olmadı:\n$error';
  }

  @override
  String get perAmal => 'Hər əməl üçün';

  @override
  String get thisWeek => 'Bu həftə';

  @override
  String get thisMonth => 'Bu ay';

  @override
  String get totalCompletions => 'ümumi tamamlanma';

  @override
  String get streakCurrent => 'Cari';

  @override
  String get streakLongest => 'Ən uzun';

  @override
  String get ratioWeek => 'Həftə';

  @override
  String get ratioMonth => 'Ay';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'gün',
      one: 'gün',
    );
    return '$_temp0';
  }

  @override
  String streakWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'həftə',
      one: 'həftə',
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
  String get frequencyBadgeDaily => 'gündəlik';

  @override
  String get frequencyBadgeWeekly => 'həftəlik';

  @override
  String get frequencyBadgeMonthly => 'aylıq';

  @override
  String get statsEmpty =>
      'Hələ əməl yoxdur. İzləməyə başlamaq üçün Bu gün səhifəsində əlavə edin.';

  @override
  String get statsToday => 'Bu gün';

  @override
  String get statsThisWeek => 'Bu həftə';

  @override
  String get statsThisMonth => 'Bu ay';

  @override
  String get statsAllTime => 'Bütün zamanlar';

  @override
  String get statsCustomRange => 'Fərdi aralıq';

  @override
  String get statsAllCategories => 'Hamısı';

  @override
  String get statsAllAmals => 'Hamısı';

  @override
  String get statsCompleted => 'Tamamlandı';

  @override
  String get statsExpected => 'Gözlənilən';

  @override
  String get statsVsPrevious => 'Əvvəlkinə nisbətən';

  @override
  String get statsByCategory => 'Kateqoriyaya görə';

  @override
  String get statsPerAmal => 'Hər əməl üçün';

  @override
  String get statsTotalCaption => 'cəmi';

  @override
  String statsDaysFraction(String done, String expectedText, num expected) {
    String _temp0 = intl.Intl.pluralLogic(
      expected,
      locale: localeName,
      other: 'gün',
      one: 'gün',
    );
    return '$done/$expectedText $_temp0';
  }

  @override
  String get statsCurrentStreak => 'Cari seriya';

  @override
  String get statsBestStreak => 'Ən yaxşı seriya';

  @override
  String get statsTotalDays => 'Ümumi günlər';

  @override
  String get statsConsistency => 'Ardıcıllıq';

  @override
  String get statsLast5Weeks => 'Son 5 həftə';

  @override
  String get statsDailyBreakdown => 'Günlük bölgü';

  @override
  String get statsCompletionRate => 'Tamamlanma dərəcəsi';

  @override
  String get statsAmountPerDay => 'Günlük miqdar';

  @override
  String statsCountTotal(String count) {
    return 'Cəmi $count';
  }

  @override
  String statsCountAvg(String amount) {
    return 'Orta $amount/gün';
  }

  @override
  String statsCountBest(String count, String day) {
    return 'Ən çox $count · $day';
  }

  @override
  String get statsFilterTime => 'Vaxt';

  @override
  String get statsFilterCategory => 'Kateqoriya';

  @override
  String get statsFilterAmal => 'Əməl';

  @override
  String get statsStreaks => 'Seriyalar';

  @override
  String get statsSelectDateRange => 'Tarix aralığını seçin';

  @override
  String get historyTitle => 'Tarixçə';

  @override
  String get jumpToDate => 'Tarixə keç';

  @override
  String historyEmptyDay(String date) {
    return '$date tarixində əməl izlənməyib';
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
  String get tuesdayShort => 'Ç.a';

  @override
  String get wednesdayShort => 'Ç';

  @override
  String get thursdayShort => 'C.a';

  @override
  String get fridayShort => 'C';

  @override
  String get saturdayShort => 'Ş';

  @override
  String get sundayShort => 'B';

  @override
  String get mondayFull => 'Bazar ertesi';

  @override
  String get tuesdayFull => 'Çərşənbə axşamı';

  @override
  String get wednesdayFull => 'Çərşənbə';

  @override
  String get thursdayFull => 'Cümə axşamı';

  @override
  String get fridayFull => 'Cümə';

  @override
  String get saturdayFull => 'Şənbə';

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
      '\"Güclü mömin zəif mömindən daha yaxşı və Allaha daha sevimlidir, hərçənd hər ikisində xeyir var.\"\n— Müslim';

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
  String historyDayCompleted(String completed, String total) {
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

  @override
  String get notificationChannelName => 'Əməl xatırlatmaları';

  @override
  String get notificationChannelDescription =>
      'İzlədiyiniz əməllər üçün gündəlik xatırlatmalar.';

  @override
  String get invalidAmalId => 'Yanlış əməl identifikatoru';

  @override
  String get tutorialSettingsRow => 'Mühasibat necə istifadə olunur';

  @override
  String get tutorialSkip => 'Keç';

  @override
  String get tutorialNext => 'İrəli';

  @override
  String get tutorialDone => 'Hazır';

  @override
  String get tutorialTapTitle => 'Tamamlamaq üçün toxunun';

  @override
  String get tutorialTapBody =>
      'Bir toxunuş əməli bu gün üçün tamamlanmış kimi işarələyir. Geri almaq üçün yenidən toxunun.';

  @override
  String get tutorialEditTitle => 'Redaktə üçün iki dəfə toxunun';

  @override
  String get tutorialEditBody =>
      'Redaktə formasını açır — adını dəyişin və ya nə qədər tez-tez təkrarlandığını dəyişin.';

  @override
  String get tutorialReorderTitle => 'Sıralamaq üçün basıb saxlayın';

  @override
  String get tutorialReorderBody =>
      'Sətri basıb saxlayın, sonra sürüşdürün. Sıranız yadda saxlanılır.';

  @override
  String get tutorialRemoveTitle => 'Silmək üçün sürüşdürün';

  @override
  String get tutorialRemoveBody =>
      'Sətri yana sürüşdürərək bu gün üçün gizlədin və ya izləməni dayandırın.';

  @override
  String get tutorialCountTitle => 'Təkrarların sayılması';

  @override
  String get tutorialCountBody =>
      'Hədəfi birdən çox olan əməllər üçün hər təkrarda − və + istifadə edin.';

  @override
  String get tutorialViewTitle => 'Qruplaşdır və ya sadə siyahı';

  @override
  String get tutorialViewBody =>
      'Kateqoriyaya görə qruplaşdırma ilə tək sadə siyahı arasında keçid edin.';

  @override
  String get tutorialChallengeLogTitle => 'Bu günü qeyd etmək üçün toxunun';

  @override
  String get tutorialChallengeLogBody =>
      'Bir toxunuş bu günü qeyd edir. Sayılan hədəfdə hər toxunuş bir addım əlavə edir.';

  @override
  String get tutorialChallengeOpenTitle => 'Açmaq üçün iki dəfə toxunun';

  @override
  String get tutorialChallengeOpenBody =>
      'Hədəfi açır — hər günü görün, buraxdığınız günü düzəldin və ya onu silin.';

  @override
  String get tutorialChallengeDeleteBody =>
      'Hədəfi silmək üçün kartı yana sürüşdürün.';

  @override
  String get tutorialChallengeAmountTitle => 'Dəqiq miqdarın qeydi';

  @override
  String get tutorialChallengeAmountBody =>
      'Dəyişmək üçün − və + istifadə edin, ya da rəqəmə toxunub dəqiq miqdarı yazın.';

  @override
  String get challengeOpenDetailsAction => 'Hədəf təfərrüatlarını aç';

  @override
  String get challengesActive => 'Davam edən';

  @override
  String get challengesPast => 'Keçmiş';

  @override
  String challengeJustFinished(int count, String title) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hədəf bitdi — sonuncu $title',
      one: '$title bitdi',
    );
    return '$_temp0';
  }

  @override
  String get challengeSectionEnded => 'Bitdi';

  @override
  String get challengesPastEmpty => 'Hələ bitən yoxdur.';

  @override
  String get challengesEmptyTitle => 'Hələ hədəf yoxdur';

  @override
  String get challengesEmptyBody =>
      'Özünüz üçün bir hədəf qoyun — məsələn, 7 gündə 20 rükət — və onu burada izləyin.';

  @override
  String get editChallenge => 'Hədəfi redaktə et';

  @override
  String get deleteChallenge => 'Hədəfi sil';

  @override
  String get deleteChallengeConfirm =>
      'Bu hədəf və qeyd olunmuş bütün irəliləyiş silinsin?';

  @override
  String get challengeShapeQuestion => 'Bu necə bir hədəfdir?';

  @override
  String get challengeShapeTotal => 'Çatmaq istədiyiniz say';

  @override
  String get challengeShapeTotalBody =>
      '1000 salavat, 30 cüz. Miqdar yazırsınız, o da toplanır.';

  @override
  String get challengeShapeStreak => 'Hər günlük ardıcıllıq';

  @override
  String get challengeShapeStreakBody =>
      'Təhəccüd, camaatla sübh namazı. Gündə bir işarə, miqdar önəmli deyil.';

  @override
  String get challengeTargetLabel => 'Hədəf sayı';

  @override
  String get challengeTargetRequired => 'Sıfırdan böyük hədəf daxil edin';

  @override
  String get challengeUnitLabel => 'Vahid (istəyə bağlı)';

  @override
  String get challengeUnitHint => 'rükət, səhifə, dəfə';

  @override
  String get challengeOneTapAdds => 'Bir toxunuş əlavə edir';

  @override
  String get challengeHowManyDays => 'Neçə gün?';

  @override
  String get challengeReachHowMuch => 'Nə qədərə çatmaq?';

  @override
  String get challengeSpreadOver => 'Yayılma müddəti';

  @override
  String get challengeSpreadEveryDay => 'Hər gün';

  @override
  String get challengeSpreadLonger => 'Daha uzun müddət';

  @override
  String get challengeByWhen => 'Nə vaxta qədər?';

  @override
  String get challengeWindowDuration => 'Müddət';

  @override
  String get challengeByDate => 'Konkret tarixə';

  @override
  String challengePlanRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String challengePlanExact(String start, String end) {
    return '$start – $end · gündə bir, hər gün';
  }

  @override
  String challengePlanSlack(
    String start,
    String end,
    String target,
    String window,
    String slack,
  ) {
    return '$start – $end · $window gündən $target — $slack buraxa bilərsiniz';
  }

  @override
  String challengePlanRate(String start, String end, String rate) {
    return '$start – $end · gündə təxminən $rate';
  }

  @override
  String challengePlanOpen(String start) {
    return '$start tarixində başlayır · müddətsiz';
  }

  @override
  String challengeTooTight(String target, String window) {
    return '$target gün $window günə sığmır — ardıcıllıq gündə bir sayılır.';
  }

  @override
  String challengeDurationLabel(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gün',
    );
    return '$_temp0';
  }

  @override
  String get challengeStartDate => 'Başlayır';

  @override
  String get challengeEndDate => 'Bitir';

  @override
  String challengeProgressCount(String done, String target, String unit) {
    return '$target $unit içindən $done';
  }

  @override
  String challengeProgressPlain(String done, String target) {
    return '$target-dan $done';
  }

  @override
  String challengeProgressDays(String done, String target) {
    return '$target gündən $done';
  }

  @override
  String challengeDaysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gün qalıb',
    );
    return '$_temp0';
  }

  @override
  String get challengeNoDeadline => 'Müddətsiz';

  @override
  String challengeOnTrack(String rate) {
    return 'Qrafikdə · $rate/gün';
  }

  @override
  String challengeBehind(String rate) {
    return 'Geridə · $rate/gün lazım';
  }

  @override
  String challengeLastDay(String remaining) {
    return 'Son gün · $remaining qalıb';
  }

  @override
  String get challengeReached => 'Hədəfə çatıldı';

  @override
  String get challengeCompleted => 'Tamamlandı';

  @override
  String challengeEnded(String done, String target) {
    return 'Bitdi · $done/$target';
  }

  @override
  String get challengeExpiredTitle => 'Hədəf başa çatdı';

  @override
  String challengeExpiredBody(String title, String done, String target) {
    return '$title $done/$target ilə başa çatdı.';
  }

  @override
  String get challengeExtend => 'Uzat';

  @override
  String get challengeRestart => 'Yenidən başla';

  @override
  String get challengeArchive => 'Arxivləşdir';

  @override
  String get challengeDailyBreakdown => 'Gündəlik qeyd';

  @override
  String challengeNudgeBody(String title, String rate) {
    return '$title: vaxtında bitirmək üçün gündə $rate.';
  }

  @override
  String challengeLastDayBody(String title, String remaining) {
    return '$title: son gün — $remaining qalıb.';
  }

  @override
  String get challengeGroupGoal => 'Hədəf';

  @override
  String get challengeGroupShape => 'Növ';

  @override
  String get challengeGroupPlan => 'Plan';

  @override
  String get challengeGroupReminders => 'Xatırlatmalar';

  @override
  String get challengeStartFromTemplate => 'Şablondan başla';

  @override
  String get challengeTemplateBlank => 'Boş';

  @override
  String get challengePreview => 'Önizləmə';

  @override
  String get challengeTmplTahajjud => '40 gecə Təhəccüd';

  @override
  String get challengeTmplSalawat => '1000 salavat';

  @override
  String get challengeTmplKhatm => '30 gündə Quran xətmi';

  @override
  String get challengeTmplFajrJamaah => '30 gün camaatla Sübh';

  @override
  String get challengeTmplSadaqah => '30 gün Sədəqə';

  @override
  String get listSeparator => ' · ';

  @override
  String get tierRafiq => 'Rəfiq';

  @override
  String get tierNasir => 'Nasir';

  @override
  String get tierMuhsin => 'Möhsün';

  @override
  String get tierAnsar => 'Ənsar';

  @override
  String get tierRafiqMeaning => 'yoldaş';

  @override
  String get tierNasirMeaning => 'dəstəkçi';

  @override
  String get tierMuhsinMeaning => 'xeyirxah';

  @override
  String get tierAnsarMeaning => 'köməkçi';

  @override
  String get supportCardBody =>
      'Pulsuzdur; reklam yoxdur, hesab tələb olunmur. İstəsəniz, kiçik bir töhfə ilə inkişafına dəstək ola bilərsiniz — istədiyiniz məbləğdə, istədiyiniz vaxt.';

  @override
  String get supportCta => 'Muhasaba-ya dəstək ol';

  @override
  String get supportAgain => 'Yenidən dəstək ol';

  @override
  String get supporterThanks =>
      'Allah razı olsun — inşallah, Muhasaba pulsuz və reklamsız qalacaq.';

  @override
  String supporterSince(String tier, String month) {
    return '$month tarixindən bəri $tier';
  }

  @override
  String get supportPromptTitle => 'Muhasaba\'ya dəstək olun';

  @override
  String get supportPromptBody =>
      'Muhasaba pulsuzdur; reklam yoxdur, hesab tələb olunmur. İstəsəniz, kiçik bir töhfə ilə inkişafına dəstək ola bilərsiniz — istədiyiniz məbləğdə, istədiyiniz vaxt. Heç bir funksiya buna bağlı deyil.';

  @override
  String get supportPromptNow => 'İndi dəstək ol';

  @override
  String get supportPromptLater => 'Sonra xatırlat';

  @override
  String get supportPromptNever => 'Bir daha soruşma';

  @override
  String get tipSheetTitle => 'Muhasaba-ya dəstək ol';

  @override
  String get tipSheetBody =>
      'İstədiyiniz məbləği seçin, istədiyiniz qədər tez-tez. Töhfələr tətbiqin baxımına sərf olunur — inşallah, o, pulsuz və reklamsız qalacaq. Təşəkkür olaraq Parametrlərdə dəstəkçi kimi göstəriləcəksiniz.';

  @override
  String tipSheetSupporterLine(String tier) {
    return '$tier — Allah razı olsun.';
  }

  @override
  String get tipSheetSupporterAgain =>
      'İstədiyiniz vaxt yenidən dəstək ola bilərsiniz.';

  @override
  String tipSheetStoreNote(String store) {
    return 'Ödəniş $store vasitəsilə aparılır — ödəniş məlumatlarınızı heç vaxt görmürük.';
  }

  @override
  String get tipSheetOtherWays => 'Sizə uyğun bir seçim tapmadınız?';

  @override
  String get tipSheetWriteToUs => 'Bizə yazın';

  @override
  String get supportEmailBody =>
      'Əssəlamu əleykum,\n\nMuhasaba-nın inkişafını birbaşa dəstəkləmək istəyirəm.\n\nÖlkə:\nGöndərmək istədiyim üsul:\nMəbləğ (istəyə bağlı):';

  @override
  String tipBusy(String store) {
    return '$store açılır…';
  }

  @override
  String get tipThanks => 'Allah razı olsun — Allah sizdən qəbul etsin.';

  @override
  String get tipDone => 'Hazır';

  @override
  String get tipFailed => 'Alış tamamlanmadı. Heç bir məbləğ tutulmayıb.';

  @override
  String tipPending(String store) {
    return 'Töhfəniz $store tərəfində gözləmədədir — təsdiqlənən kimi nişanınız əlavə olunacaq.';
  }

  @override
  String get tipUnavailable => 'Hazırda bu cihazda alış mümkün deyil.';

  @override
  String get optionSetJamaa => 'Camaat';

  @override
  String get optionJamaaAlone => 'Tək';

  @override
  String get optionJamaaHome => 'Evdə camaatla';

  @override
  String get optionJamaaMasjid => 'Məsciddə camaatla';

  @override
  String get optionSetOnTime => 'Vaxt';

  @override
  String get optionOnTimeOnTime => 'Vaxtında';

  @override
  String get optionOnTimeLate => 'Gecikmiş';

  @override
  String get optionOnTimeQada => 'Qəza';

  @override
  String get optionSetQuranSession => 'Quran dərsi';

  @override
  String get optionQuranRecited => 'Oxundu';

  @override
  String get optionQuranMemorised => 'Əzbərləndi';

  @override
  String get optionQuranMeaning => 'Mənası ilə';

  @override
  String get optionQuranListened => 'Dinlənildi';

  @override
  String get optionSetSadaqahType => 'Sədəqə növü';

  @override
  String get optionSadaqahMoney => 'Pul';

  @override
  String get optionSadaqahFood => 'Yemək';

  @override
  String get optionSadaqahTime => 'Vaxt';

  @override
  String get optionSadaqahOther => 'Digər';

  @override
  String get optionSetIntensity => 'Dərəcə';

  @override
  String get optionIntensityLight => 'Yüngül';

  @override
  String get optionIntensityModerate => 'Orta';

  @override
  String get optionIntensityIntense => 'Güclü';

  @override
  String get optionSetNewTitle => 'Yeni variant dəsti';

  @override
  String get optionSetEditTitle => 'Variant dəstini redaktə et';

  @override
  String get optionSetNameLabel => 'Dəstin adı';

  @override
  String get optionSetNameHint => 'məs. Camaat';

  @override
  String get optionsLabel => 'Variantlar';

  @override
  String get optionAdd => 'Variant əlavə et';

  @override
  String optionHint(int index) {
    return 'Variant $index';
  }

  @override
  String optionsMaxReached(int max) {
    return 'Maksimum $max variant.';
  }

  @override
  String get optionSetPreviewLabel => 'Önizləmə — Bu gün sətri';

  @override
  String optionSetKeptForHistory(String labels) {
    return 'Tarixçə üçün saxlanıb: $labels';
  }

  @override
  String get optionSetDelete => 'Dəsti sil';

  @override
  String get optionSetDeleteConfirm =>
      'Bu dəstdən istifadə edən əməllər artıq variant göstərməyəcək. Artıq qeydə alınmış günlər öz seçimini saxlayacaq.';

  @override
  String get optionSetNameRequired => 'Dəstə ad verin';

  @override
  String get optionsMinRequired => 'Ən azı iki variant əlavə edin';

  @override
  String get optionSetNone => 'Yoxdur';

  @override
  String get optionSetNew => 'Yeni dəst';

  @override
  String get requireChoiceLabel => 'Seçim tələb olunsun';

  @override
  String get requireChoiceHelp =>
      'Variant seçilənə qədər sətir işarələnməyəcək';

  @override
  String get requireChoicePickSetFirst => 'Əvvəlcə dəst seçin';

  @override
  String get requireChoiceCountHelp => 'Sayılan əməllər − və + ilə tamamlanır';

  @override
  String optionsUsedOf(int used, int max) {
    return '$max variantdan $used istifadə olunub.';
  }

  @override
  String get choiceNeeded => 'Seçim lazımdır';

  @override
  String optionSelected(String label) {
    return '$label, seçilib';
  }

  @override
  String optionNotSelected(String label) {
    return '$label, seçilməyib';
  }

  @override
  String optionBreakdownTitle(String set) {
    return 'Variant bölgüsü — $set';
  }

  @override
  String optionBreakdownCaption(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dəfədən',
    );
    return '$_temp0 seçim qeydə alınanların payı';
  }

  @override
  String optionNoChoiceRecorded(int none, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other: '$total gündən',
    );
    return '$_temp0 $none gündə seçim qeydə alınmayıb';
  }

  @override
  String get optionRemovedSuffix => 'silinib';

  @override
  String get optionAllAmals => 'Hamısı';

  @override
  String optionScopedCaption(String amal, int count) {
    return '$amal · $count qeydə alınıb';
  }

  @override
  String get optionBreakdownSectionTitle => 'Variant bölgüsü';

  @override
  String optionBreakdownSwipeHint(int count) {
    return '$count dəst · sürüşdürün';
  }

  @override
  String get optionDetailEmpty => 'Bu dəst üçün hələ seçim qeydə alınmayıb.';

  @override
  String get optionDetailTrendHeading => 'Zamanla dəyişim';

  @override
  String optionDetailTrendReadout(String option, String from, String to) {
    return '$option payı ilk həftədə $from, son həftədə $to olub.';
  }

  @override
  String get optionDetailByAmalHeading => 'Əmələ görə';

  @override
  String optionDetailByAmalReadout(
    String best,
    String bestShare,
    String worst,
    String worstShare,
  ) {
    return 'Ən yüksək: $best ($bestShare); ən aşağı: $worst ($worstShare).';
  }

  @override
  String get optionDetailRecordsHeading => 'Rekordlar';

  @override
  String get optionDetailLongestRun => 'Ən uzun seriya';

  @override
  String get optionDetailBestWeek => 'Ən yaxşı həftə';

  @override
  String get optionDetailCurrentRun => 'Cari seriya';

  @override
  String get optionDetailRecordsCaption =>
      'Son bir il əsasında hesablanır; yuxarıdakı dövr filtrindən asılı deyil.';

  @override
  String get optionDetailRecentDaysHeading => 'Son günlər';

  @override
  String optionDetailRecentDaysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Son $count gün',
      one: 'Son 1 gün',
    );
    return '$_temp0';
  }
}
