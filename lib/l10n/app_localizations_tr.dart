// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get repeatsOnDaysHint => 'Seçili günlerde tekrarlanır';

  @override
  String get newDayStarted => 'Yeni bir gün başladı';

  @override
  String get appTitle => 'Muhasebe';

  @override
  String get tabToday => 'Bugün';

  @override
  String get tabStats => 'İstatistik';

  @override
  String get tabHistory => 'Geçmiş';

  @override
  String get tabSettings => 'Ayarlar';

  @override
  String get tabChallenge => 'Hedef';

  @override
  String get tabInsights => 'İstatistik';

  @override
  String get insightsTitle => 'İstatistik';

  @override
  String get insightsOverview => 'Genel bakış';

  @override
  String get insightsDaily => 'Günlük';

  @override
  String get insightsArchive => 'Arşiv';

  @override
  String get archivedEmpty =>
      'Burada henüz bir şey yok. Takipten kaldırdığınız ameller burada görünür; dilediğinizde geri getirebilirsiniz.';

  @override
  String archivedStoppedOn(String date) {
    return '$date tarihinde kaldırıldı';
  }

  @override
  String get archivedRestore => 'Geri getir';

  @override
  String archivedRestored(String title) {
    return '\"$title\" listenize geri döndü.';
  }

  @override
  String get newChallenge => 'Yeni hedef';

  @override
  String get newAmal => 'Yeni amel';

  @override
  String get editAmal => 'Ameli düzenle';

  @override
  String get newAmalTitle => 'Yeni amel';

  @override
  String get save => 'Kaydet';

  @override
  String get cancel => 'İptal';

  @override
  String get ok => 'Tamam';

  @override
  String get clear => 'Temizle';

  @override
  String get titleLabel => 'Başlık';

  @override
  String get titleRequired => 'Başlık zorunludur';

  @override
  String get titleTooLong => 'Başlık çok uzun';

  @override
  String get frequencyLabel => 'Sıklık';

  @override
  String get frequencyDaily => 'Günlük';

  @override
  String get frequencyWeekly => 'Haftalık';

  @override
  String get frequencyMonthly => 'Aylık';

  @override
  String get categoryLabel => 'Kategori';

  @override
  String get categoryOther => 'Diğer';

  @override
  String get categorySalah => 'Namaz';

  @override
  String get categoryDhikr => 'Zikir';

  @override
  String get categoryQuran => 'Kur\'an';

  @override
  String get categoryCharity => 'Sadaka';

  @override
  String get categorySunnah => 'Sünnet';

  @override
  String get timesPerPeriod => 'Dönem başına kaç kez';

  @override
  String get custom => 'Özel';

  @override
  String get customTargetHint => 'örn. 50';

  @override
  String get targetAny => 'Serbest';

  @override
  String get targetAnyHelp =>
      'Hedef yok — ne kadar yapılsa tamamlanmış sayılır';

  @override
  String get dayOfWeek => 'Haftanın günü';

  @override
  String get anyDay => 'Fark etmez';

  @override
  String get anyDayHint =>
      'Herhangi bir gün (bugün görünür, ertesi gün gizlenir)';

  @override
  String onlyDayHint(String day) {
    return 'Yalnızca $day';
  }

  @override
  String get dateOfMonth => 'Ayın günü';

  @override
  String get repeatMode => 'Tekrar';

  @override
  String get onSetDays => 'Belirli günlerde';

  @override
  String get onSetDates => 'Belirli tarihlerde';

  @override
  String get anyDayMode => 'Herhangi bir gün';

  @override
  String get datesOfMonth => 'Ayın günleri';

  @override
  String get daysPerWeekQuestion => 'Haftada kaç gün?';

  @override
  String get daysPerMonthQuestion => 'Ayda kaç gün?';

  @override
  String get pickAtLeastOneDay => 'En az bir gün seçin';

  @override
  String get pickAtLeastOneDate => 'En az bir tarih seçin';

  @override
  String get previewDaily => 'Her gün tekrarlanır';

  @override
  String previewWeeklyDays(String days) {
    return 'Her hafta $days günleri tekrarlanır';
  }

  @override
  String previewWeeklyAny(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gününde',
    );
    return 'Haftanın herhangi $_temp0 tekrarlanır';
  }

  @override
  String previewMonthlyDates(int count, String dates) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Her ayın $dates günlerinde tekrarlanır',
      one: 'Her ayın $dates gününde tekrarlanır',
    );
    return '$_temp0';
  }

  @override
  String previewMonthlyAny(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gününde',
    );
    return 'Ayın herhangi $_temp0 tekrarlanır';
  }

  @override
  String get anyDate => 'Fark etmez';

  @override
  String get anyDateHint =>
      'Herhangi bir tarih (bugün görünür, ertesi gün gizlenir)';

  @override
  String onlyDateHint(String date) {
    return 'Yalnızca $date tarihinde';
  }

  @override
  String get startPreChecked => 'İşaretli başlasın';

  @override
  String get startPreCheckedSubtitle =>
      'Yeni dönem başladığında bu amel, siz işareti kaldırana kadar tamamlanmış sayılır.';

  @override
  String get reminder => 'Hatırlatıcı';

  @override
  String get reminderNone => 'Yok';

  @override
  String reminderTime(String time) {
    return 'Hatırlatıcı: $time';
  }

  @override
  String get reminderPermissionWarning =>
      'Hatırlatıcı kaydedildi, ancak bildirim izni verilmemiş. Uyarı almak için sistem ayarlarından bildirimleri etkinleştirin.';

  @override
  String get settingsReminders => 'Hatırlatıcılar';

  @override
  String get dailyReminder => 'Günlük hatırlatıcı';

  @override
  String get dailyReminderSubtitle =>
      'Amellerinizi takip etmeniz için küçük bir hatırlatma';

  @override
  String get dailyReminderTimeLabel => 'Hatırlatıcı saati';

  @override
  String get dailyReminderBody =>
      'Bugünkü amellerinizi işaretlemek için bir dakikanızı ayırın.';

  @override
  String get groupByCategory => 'Kategoriye göre grupla';

  @override
  String get flatList => 'Düz liste';

  @override
  String errorGeneric(String error) {
    return 'Hata: $error';
  }

  @override
  String get todayEmptyHint =>
      'İlk amelinizi eklemek için + düğmesine dokunun.';

  @override
  String get noteLabel => 'Not';

  @override
  String get noteHint => 'örn. Camide kıldım';

  @override
  String get completed => 'tamamlandı';

  @override
  String get notCompleted => 'tamamlanmadı';

  @override
  String progressOf(String progress, String target) {
    return '$target içerisinden $progress tamamlandı';
  }

  @override
  String progressOpen(String count) {
    return '$count tamamlandı';
  }

  @override
  String get removeFromToday => 'Bugünden kaldır';

  @override
  String get removeFromTodaySubtitle =>
      'Yalnızca bugün için gizle. Yarın tekrar görünür.';

  @override
  String get removeFromTracking => 'Takipten kaldır';

  @override
  String get removeFromTrackingSubtitle =>
      'Listenizden kalıcı olarak kaldırılır. Geçmiş kayıtlar saklanır.';

  @override
  String get chooseIcon => 'Simge seç';

  @override
  String get iconNone => 'Yok';

  @override
  String get recentlyUsed => 'Son Kullanılanlar';

  @override
  String get emojiSectionGeneral => 'Genel';

  @override
  String get categoryNameHint => 'Ad';

  @override
  String get categoryNew => '+ Yeni';

  @override
  String get categoryNewSheetTitle => 'Yeni kategori';

  @override
  String get categoryEditSheetTitle => 'Kategoriyi düzenle';

  @override
  String get addAmal => 'Amel Ekle';

  @override
  String get customAmal => 'Özel Amel';

  @override
  String get amalTasbih => 'Tesbih 33x';

  @override
  String get amalIstighfar => 'İstiğfar';

  @override
  String get amalSurahKahf => 'Kehf Suresi';

  @override
  String get amalSadaqah => 'Sadaka';

  @override
  String get amalTahajjud => 'Teheccüd';

  @override
  String get amalDuha => 'Kuşluk Namazı';

  @override
  String get amalFajr => 'Sabah';

  @override
  String get amalDhuhr => 'Öğle';

  @override
  String get amalAsr => 'İkindi';

  @override
  String get amalMaghrib => 'Akşam';

  @override
  String get amalIsha => 'Yatsı';

  @override
  String get amalMorningAdhkar => 'Sabah Zikirleri';

  @override
  String get amalEveningAdhkar => 'Akşam Zikirleri';

  @override
  String get amalTilawah => 'Tilavet';

  @override
  String get settingsTitle => 'Ayarlar';

  @override
  String settingsLoadError(String error) {
    return 'Ayarlar yüklenemedi:\n$error';
  }

  @override
  String get sectionDayBoundary => 'Gün sınırı';

  @override
  String get rolloverHour => 'Geçiş saati';

  @override
  String get rolloverAtMidnight => 'Gün gece yarısında sona erer.';

  @override
  String rolloverSubtitle(String time) {
    return 'Dünkü ameller $time saatine kadar düzenlenebilir.';
  }

  @override
  String get pickRolloverHour => 'Günün geçiş saatini seçin';

  @override
  String get sectionWeekMonth => 'Hafta ve ay';

  @override
  String get startOfWeek => 'Hafta başı';

  @override
  String get startOfMonth => 'Ay başı';

  @override
  String get startOfMonthClamped =>
      'Ayın 28\'inden sonraki günler, kısa aylarda ayın son gününe kaydırılır.';

  @override
  String get sectionAppearance => 'Görünüm';

  @override
  String get theme => 'Tema';

  @override
  String get themeSystem => 'Sistem';

  @override
  String get themeLight => 'Açık';

  @override
  String get themeDark => 'Koyu';

  @override
  String get sectionLanguage => 'Dil';

  @override
  String get language => 'Dil';

  @override
  String get systemDefault => 'Sistem varsayılanı';

  @override
  String get aboutTitle => 'Muhasaba';

  @override
  String get aboutSubtitle =>
      'Kişisel bir nefis muhasebesi defteri. Tüm verileriniz bu cihazda kalır.';

  @override
  String get statsTitle => 'İstatistik';

  @override
  String statsLoadError(String error) {
    return 'İstatistikler yüklenemedi:\n$error';
  }

  @override
  String get perAmal => 'Amellere göre';

  @override
  String get thisWeek => 'Bu hafta';

  @override
  String get thisMonth => 'Bu ay';

  @override
  String get totalCompletions => 'toplam tamamlanma';

  @override
  String get streakCurrent => 'Mevcut';

  @override
  String get streakLongest => 'En uzun';

  @override
  String get ratioWeek => 'Hafta';

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
      other: 'hafta',
      one: 'hafta',
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
  String get frequencyBadgeDaily => 'günlük';

  @override
  String get frequencyBadgeWeekly => 'haftalık';

  @override
  String get frequencyBadgeMonthly => 'aylık';

  @override
  String get statsEmpty =>
      'Henüz amel yok. Takibe başlamak için Bugün sekmesinden bir tane ekleyin.';

  @override
  String get statsToday => 'Bugün';

  @override
  String get statsThisWeek => 'Bu Hafta';

  @override
  String get statsThisMonth => 'Bu Ay';

  @override
  String get statsAllTime => 'Tüm Zamanlar';

  @override
  String get statsCustomRange => 'Özel Aralık';

  @override
  String get statsAllCategories => 'Tümü';

  @override
  String get statsAllAmals => 'Tümü';

  @override
  String get statsCompleted => 'Tamamlanan';

  @override
  String get statsExpected => 'Beklenen';

  @override
  String get statsVsPrevious => 'Öncekine göre';

  @override
  String get statsByCategory => 'Kategoriye Göre';

  @override
  String get statsPerAmal => 'Amellere Göre';

  @override
  String get statsTotalCaption => 'toplam';

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
  String get statsCurrentStreak => 'Mevcut Seri';

  @override
  String get statsBestStreak => 'En İyi Seri';

  @override
  String get statsTotalDays => 'Toplam Gün';

  @override
  String get statsConsistency => 'İstikrar';

  @override
  String get statsLast5Weeks => 'Son 5 hafta';

  @override
  String get statsDailyBreakdown => 'Günlük Dağılım';

  @override
  String get statsCompletionRate => 'Tamamlanma oranı';

  @override
  String get statsAmountPerDay => 'Günlük miktar';

  @override
  String statsCountTotal(String count) {
    return 'Toplam $count';
  }

  @override
  String statsCountAvg(String amount) {
    return 'Ort. $amount/gün';
  }

  @override
  String statsCountBest(String count, String day) {
    return 'En çok $count · $day';
  }

  @override
  String get statsFilterTime => 'Zaman';

  @override
  String get statsFilterCategory => 'Kategori';

  @override
  String get statsFilterAmal => 'Amel';

  @override
  String get statsStreaks => 'Seriler';

  @override
  String get statsSelectDateRange => 'Tarih aralığı seçin';

  @override
  String get historyTitle => 'Geçmiş';

  @override
  String get jumpToDate => 'Tarihe git';

  @override
  String historyEmptyDay(String date) {
    return '$date tarihinde takip edilen amel yok';
  }

  @override
  String get streakUnitD => 'g';

  @override
  String get streakUnitW => 'h';

  @override
  String get streakUnitM => 'a';

  @override
  String get mondayShort => 'Pzt';

  @override
  String get tuesdayShort => 'Sal';

  @override
  String get wednesdayShort => 'Çar';

  @override
  String get thursdayShort => 'Per';

  @override
  String get fridayShort => 'Cum';

  @override
  String get saturdayShort => 'Cmt';

  @override
  String get sundayShort => 'Paz';

  @override
  String get mondayFull => 'Pazartesi';

  @override
  String get tuesdayFull => 'Salı';

  @override
  String get wednesdayFull => 'Çarşamba';

  @override
  String get thursdayFull => 'Perşembe';

  @override
  String get fridayFull => 'Cuma';

  @override
  String get saturdayFull => 'Cumartesi';

  @override
  String get sundayFull => 'Pazar';

  @override
  String get hadith0 =>
      '\"Allah katında amellerin en sevimlisi, az da olsa devamlı olanıdır.\"\n— Buhârî ve Müslim';

  @override
  String get hadith2 =>
      '\"İnsanoğlu öldüğünde ameli kesilir; ancak üç şey bundan müstesnadır: sadaka-i câriye, faydalanılan ilim, kendisine dua eden salih evlat.\"\n— Müslim';

  @override
  String get hadith3 =>
      '\"Kim iki serin (sabah ve ikindi) namazını kılarsa cennete girer.\"\n— Buhârî';

  @override
  String get hadith4 =>
      '\"Allah sizin dışınıza ve mallarınıza bakmaz; fakat kalplerinize ve amellerinize bakar.\"\n— Müslim';

  @override
  String get hadith6 =>
      '\"Kolaylaştırınız, zorlaştırmayınız; müjdeleyiniz, nefret ettirmeyiniz.\"\n— Buhârî';

  @override
  String get hadith7 =>
      '\"Kim ilim aramak için bir yola girerse, Allah ona cennetin yolunu kolaylaştırır.\"\n— Müslim';

  @override
  String get hadith8 => '\"Sadaka malı eksiltmez.\"\n— Müslim';

  @override
  String get hadith9 =>
      '\"Kuvvetli mü\'min, zayıf mü\'minden daha hayırlı ve Allah\'a daha sevimlidir. Her ikisinde de hayır vardır.\"\n— Müslim';

  @override
  String get hadith10 =>
      '\"Kim günde yüz defa \'Sübhânallâhi ve bihamdihî\' derse, denizin köpüğü kadar da olsa günahları bağışlanır.\"\n— Buhârî ve Müslim';

  @override
  String get hadith12 =>
      '\"Kim her farz namazdan sonra Âyetü\'l-Kürsî\'yi okursa, onu cennete girmekten ancak ölüm alıkoyar.\"\n— Nesâî';

  @override
  String get hadith13 => '\"Güzel söz sadakadır.\"\n— Buhârî ve Müslim';

  @override
  String get hadith14 =>
      '\"Allah\'a ve ahiret gününe iman eden, ya hayır söylesin ya da sussun.\"\n— Buhârî ve Müslim';

  @override
  String get hadith15 =>
      '\"Dul ve yoksulun işini gören kimse, Allah yolunda cihad eden gibidir.\"\n— Buhârî ve Müslim';

  @override
  String get hadith16 => '\"Kardeşine tebessüm etmen sadakadır.\"\n— Tirmizî';

  @override
  String get hadith17 =>
      '\"Sizin en hayırlınız Kur\'an\'ı öğrenen ve öğretendir.\"\n— Buhârî';

  @override
  String get hadith18 =>
      '\"Hiç kimse kendi elinin emeğinden daha hayırlı bir yemek yememiştir.\"\n— Buhârî';

  @override
  String get hadith19 =>
      '\"Allah Refîk\'tir (yumuşaktır) ve her işte yumuşaklığı sever.\"\n— Buhârî ve Müslim';

  @override
  String historyDayCompleted(String completed, String total) {
    return '$completed/$total tamamlandı';
  }

  @override
  String get settingsSchedule => 'Zamanlama';

  @override
  String get settingsAppearance => 'Görünüm';

  @override
  String get settingsAboutTagline => 'Günlük ibadet yoldaşınız';

  @override
  String get settingsRolloverSub => 'Günün sıfırlandığı saat';

  @override
  String get settingsAbout => 'Hakkında';

  @override
  String get settingsVersion => 'Sürüm';

  @override
  String get settingsDeveloper => 'Geliştirici';

  @override
  String get settingsSupport => 'Destek';

  @override
  String get settingsRate => 'Uygulamayı değerlendir';

  @override
  String get settingsContact => 'Bize ulaşın';

  @override
  String get settingsReportBug => 'Hata bildir';

  @override
  String get settingsRequestFeature => 'Özellik iste';

  @override
  String settingsSupportFallback(String email) {
    return 'Posta açılamadı. Lütfen $email adresine e-posta gönderin.';
  }

  @override
  String get settingsPrivacyPolicy => 'Gizlilik Politikası';

  @override
  String get settingsPrivacyOpenFailed => 'Gizlilik politikası açılamadı.';

  @override
  String get hadith20 =>
      '\"Kim Ramazan\'da iman ederek ve sevabını umarak oruç tutarsa, geçmiş günahları bağışlanır.\"\n— Buhârî ve Müslim';

  @override
  String get hadith22 =>
      '\"Ezan ile kamet arasında yapılan dua reddedilmez.\"\n— Ebû Dâvûd';

  @override
  String get hadith23 =>
      '\"Kim Allah için bir mescit inşa ederse, Allah da ona cennette bir ev inşa eder.\"\n— Buhârî ve Müslim';

  @override
  String get hadith24 =>
      '\"Erkekler için en hayırlı saf birinci saf, kadınlar için en hayırlı saf ise son saftır.\"\n— Müslim';

  @override
  String get hadith25 => '\"Oruç cehennem ateşinden bir kalkandır.\"\n— Nesâî';

  @override
  String get hadith26 =>
      '\"Kim her gün on iki rekât sünnet namazı kılarsa, ona cennette bir ev inşa edilir.\"\n— Müslim';

  @override
  String get hadith27 =>
      '\"Kur\'an\'ı güzel okuyan kimse, şerefli ve itaatkâr meleklerle beraberdir.\"\n— Buhârî ve Müslim';

  @override
  String get hadith29 =>
      '\"Sadakanın en faziletlisi su ikram etmektir.\"\n— Ahmed';

  @override
  String get hadith30 =>
      '\"Kim bir mü\'minden dünya sıkıntılarından birini giderirse, Allah da kıyamet gününde onun sıkıntılarından birini giderir.\"\n— Müslim';

  @override
  String get hadith32 => '\"Hayâ imandandır.\"\n— Buhârî ve Müslim';

  @override
  String get hadith34 =>
      '\"Kim sabrederse, Allah ona sabır verir.\"\n— Buhârî ve Müslim';

  @override
  String get hadith36 =>
      '\"Sizden biriniz kendisi için istediğini din kardeşi için de istemedikçe gerçek anlamda iman etmiş olmaz.\"\n— Buhârî ve Müslim';

  @override
  String get hadith37 =>
      '\"Aç olanı doyurun, hasta olanı ziyaret edin ve esirleri serbest bırakın.\"\n— Buhârî';

  @override
  String get hadith38 =>
      '\"Kuvvetli kişi güreşte yenen değil, öfke anında kendine hâkim olandır.\"\n— Buhârî ve Müslim';

  @override
  String get hadith40 =>
      '\"Her namazdan sonra otuz üçer kere \'Sübhânallah\', \'Elhamdülillah\' ve \'Allahu Ekber\' deyin.\"\n— Müslim';

  @override
  String get hadith41 =>
      '\"Zikrin en faziletlisi Lâ ilâhe illallah\'tır.\"\n— Tirmizî';

  @override
  String get hadith42 =>
      '\"İnsanların çoğunun aldandığı iki nimet vardır: sağlık ve boş vakit.\"\n— Buhârî';

  @override
  String get hadith43 =>
      '\"Beş şeyi beş şeyden önce değerlendir: gençliğini yaşlılığından önce, sağlığını hastalığından önce, zenginliğini fakirliğinden önce, boş vaktini meşguliyetinden önce ve hayatını ölümünden önce.\"\n— Hâkim';

  @override
  String get hadith44 =>
      '\"Kim İhlâs suresini on kere okursa, Allah ona cennette bir ev inşa eder.\"\n— Ahmed';

  @override
  String get hadith45 =>
      '\"Farz namazlardan sonra en faziletli namaz gece namazıdır.\"\n— Müslim';

  @override
  String get hadith46 =>
      '\"Sadaka, suyun ateşi söndürdüğü gibi günahları söndürür.\"\n— Tirmizî';

  @override
  String get hadith47 =>
      '\"Sıla-i rahim yapan, karşılık veren değildir. Asıl sıla-i rahim yapan, akrabası ilişkiyi kestiğinde bile onu sürdürendir.\"\n— Buhârî';

  @override
  String get hadith49 =>
      '\"Kim yemek yedikten sonra \'Bana bu yemeği yediren ve hiçbir güç ve kuvvetim olmadan onu bana rızık olarak veren Allah\'a hamdolsun\' derse, geçmiş günahları bağışlanır.\"\n— Tirmizî';

  @override
  String get hadith53 =>
      '\"Hiçbir iyiliği küçümseme; din kardeşini güler yüzle karşılaman bile olsa.\"\n— Müslim';

  @override
  String get hadith54 =>
      '\"Sizin en hayırlınız, ailesine karşı en iyi olanınızdır.\"\n— Tirmizî';

  @override
  String get hadith55 =>
      '\"Kim gece Bakara suresinin son iki ayetini okursa, ona yeter.\"\n— Buhârî ve Müslim';

  @override
  String get hadith56 =>
      '\"Dünya bir geçimlik metadır; en hayırlı meta ise saliha bir kadındır.\"\n— Müslim';

  @override
  String get hadith57 =>
      '\"Üç dua reddedilmez: oruçlunun duası, âdil yöneticinin duası ve mazlumun duası.\"\n— Tirmizî';

  @override
  String get hadith58 =>
      '\"Kim bana bir kere salât getirirse, Allah ona on kere salât eder.\"\n— Müslim';

  @override
  String get hadith65 => '\"Mü\'min mü\'minin aynasıdır.\"\n— Ebû Dâvûd';

  @override
  String get hadith66 =>
      '\"Doğruluk iyiliğe, iyilik de cennete götürür.\"\n— Buhârî ve Müslim';

  @override
  String get hadith67 =>
      '\"Emaneti sana bırakana emanetini ver; sana ihanet edene ihanet etme.\"\n— Ebû Dâvûd ve Tirmizî';

  @override
  String get hadith68 =>
      '\"Müslümanın başına gelen hiçbir yorgunluk, hastalık, keder, üzüntü, eziyet ve gam yoktur ki — ayağına batan bir diken bile — Allah onun sebebiyle günahlarından bir kısmını silmesin.\"\n— Buhârî ve Müslim';

  @override
  String get hadith69 =>
      '\"Müslümanın, yanında olmayan kardeşi için yaptığı dua kabul olunur.\"\n— Müslim';

  @override
  String get hadith70 =>
      '\"Kim Allah\'tan üç kere cennet isterse, cennet \'Allah\'ım, onu cennete koy\' der.\"\n— Tirmizî';

  @override
  String get hadith71 =>
      '\"Ramazan\'dan sonra en faziletli oruç, Allah\'ın ayı olan Muharrem\'de tutulan oruçtur.\"\n— Müslim';

  @override
  String get hadith72 =>
      '\"Kim hac yapar da kötü söz söylemez ve günah işlemezse, annesinin onu doğurduğu günkü gibi döner.\"\n— Buhârî ve Müslim';

  @override
  String get hadith73 =>
      '\"Bir umre, diğer umreye kadar olan günahlara kefarettir.\"\n— Buhârî ve Müslim';

  @override
  String get hadith74 =>
      '\"Karanlık gecenin parçaları gibi fitneler gelmeden önce hayırlı amellere koşun.\"\n— Müslim';

  @override
  String get hadith75 =>
      '\"Sabah namazının iki rekât sünneti, dünya ve içindeki her şeyden daha hayırlıdır.\"\n— Müslim';

  @override
  String get hadith77 =>
      '\"Allah\'a hakkıyla tevekkül etseydiniz, kuşları rızıklandırdığı gibi sizi de rızıklandırırdı.\"\n— Tirmizî';

  @override
  String get hadith78 =>
      '\"Hastayı ziyaret eden kimse, dönünceye kadar cennetin meyve bahçesindedir.\"\n— Müslim';

  @override
  String get hadith79 =>
      '\"Selâmı yayın, yemek yedirin, insanlar uyurken gece namazı kılın; selâmetle cennete girersiniz.\"\n— Tirmizî';

  @override
  String get hadith80 =>
      '\"İnsanlara teşekkür etmeyen, Allah\'a da şükretmez.\"\n— Tirmizî';

  @override
  String get hadith81 =>
      '\"Gıpta ancak iki kişiye edilir: Allah\'ın kendisine mal verip onu hak yolda harcamaya muvaffak kıldığı kişiye ve Allah\'ın kendisine hikmet verip onunla hükmeden ve onu öğreten kişiye.\"\n— Buhârî ve Müslim';

  @override
  String get hadith82 =>
      '\"Kişi dostunun dini üzeredir. Bu yüzden her biriniz kiminle arkadaşlık ettiğine dikkat etsin.\"\n— Ebû Dâvûd ve Tirmizî';

  @override
  String get hadith85 =>
      '\"Kim Allah rızası için bir şeyi terk ederse, Allah ona daha hayırlısını verir.\"\n— Ahmed';

  @override
  String get hadith86 =>
      '\"Kim bir Müslümanın ayıbını örterse, Allah da kıyamet gününde onun ayıbını örter.\"\n— Buhârî ve Müslim';

  @override
  String get hadith87 =>
      '\"Dünyada bir garip ya da bir yolcu gibi ol.\"\n— Buhârî';

  @override
  String get hadith88 =>
      '\"Kim zor durumda olana kolaylık gösterirse, Allah da dünya ve ahirette ona kolaylık gösterir.\"\n— Müslim';

  @override
  String get hadith89 => '\"Ameller niyetlere göredir.\"\n— Buhârî ve Müslim';

  @override
  String get hadith90 =>
      '\"Zandan sakının; çünkü zan sözün en yalanıdır.\"\n— Buhârî ve Müslim';

  @override
  String get hadith93 =>
      '\"Yemeğinizi birlikte yiyin ve Allah\'ın adını anın; yemeğiniz bereketli olur.\"\n— Ebû Dâvûd';

  @override
  String get hadith94 =>
      '\"Hiçbir topluluk Allah\'ı zikrederek oturmaz ki melekler onları kuşatmasın, rahmet onları kaplamasın ve sekînet üzerlerine inmesin.\"\n— Müslim';

  @override
  String get hadith95 =>
      '\"Allah, affeden kulunun ancak şerefini artırır.\"\n— Müslim';

  @override
  String get hadith96 =>
      '\"Deveni bağla, sonra Allah\'a tevekkül et.\"\n— Tirmizî';

  @override
  String get hadith97 =>
      '\"Mü\'minin hâli ne hoştur; her hâli onun için hayırdır.\"\n— Müslim';

  @override
  String get hadith98 =>
      '\"Müslüman Müslümanın kardeşidir: ona zulmetmez, onu yalnız bırakmaz, onu küçümsemez.\"\n— Müslim';

  @override
  String get delete => 'Sil';

  @override
  String get remove => 'Kaldır';

  @override
  String get deleteAmalConfirmTitle => 'Takipten kaldırılsın mı?';

  @override
  String deleteAmalConfirmBody(String title) {
    return '\"$title\" listenizden gizlenecek. Geçmişiniz korunacaktır.';
  }

  @override
  String get genericError => 'Bir hata oluştu. Lütfen tekrar deneyin.';

  @override
  String get notificationChannelName => 'Amel hatırlatıcıları';

  @override
  String get notificationChannelDescription =>
      'Takip ettiğiniz ameller için günlük hatırlatıcılar.';

  @override
  String get invalidAmalId => 'Geçersiz amel kimliği';

  @override
  String get tutorialSettingsRow => 'Muhasebe nasıl kullanılır';

  @override
  String get tutorialSkip => 'Atla';

  @override
  String get tutorialNext => 'İleri';

  @override
  String get tutorialDone => 'Bitti';

  @override
  String get tutorialTapTitle => 'Tamamlamak için dokunun';

  @override
  String get tutorialTapBody =>
      'Tek dokunuşla amel bugün için tamamlanmış olarak işaretlenir. Geri almak için tekrar dokunun.';

  @override
  String get tutorialEditTitle => 'Düzenlemek için çift dokunun';

  @override
  String get tutorialEditBody =>
      'Düzenleme formunu açar — adını değiştirin veya ne sıklıkta tekrarlandığını ayarlayın.';

  @override
  String get tutorialReorderTitle => 'Sıralamak için basılı tutun';

  @override
  String get tutorialReorderBody =>
      'Bir satırı basılı tutun, sonra sürükleyin. Sıralamanız kaydedilir.';

  @override
  String get tutorialRemoveTitle => 'Kaldırmak için kaydırın';

  @override
  String get tutorialRemoveBody =>
      'Satırı yana kaydırarak bugünlük gizleyin veya takibi bırakın.';

  @override
  String get tutorialCountTitle => 'Tekrarları sayma';

  @override
  String get tutorialCountBody =>
      'Hedefi birden fazla olan ameller için her tekrarda − ve + kullanın.';

  @override
  String get tutorialViewTitle => 'Gruplu veya düz liste';

  @override
  String get tutorialViewBody =>
      'Kategoriye göre gruplama ile tek düz liste arasında geçiş yapın.';

  @override
  String get tutorialLibraryTitle => 'Hazır amel ekleyin';

  @override
  String get tutorialLibraryBody =>
      'Amel Kütüphanesi\'ne kategori kategori göz atın, ardından Bugüne eklemek için + düğmesine dokunun.';

  @override
  String get tutorialChallengeLogTitle => 'Bugünü kaydetmek için dokunun';

  @override
  String get tutorialChallengeLogBody =>
      'Tek dokunuş bugünü kaydeder. Sayılı hedeflerde her dokunuş bir adım ekler.';

  @override
  String get tutorialChallengeOpenTitle => 'Açmak için çift dokunun';

  @override
  String get tutorialChallengeOpenBody =>
      'Hedefi açar — her günü görün, kaçırdığınız günü düzeltin veya silin.';

  @override
  String get tutorialChallengeDeleteBody =>
      'Hedefi silmek için kartı yana kaydırın.';

  @override
  String get tutorialChallengeAmountTitle => 'Tam miktarı kaydetme';

  @override
  String get tutorialChallengeAmountBody =>
      'Değiştirmek için − ve + kullanın veya sayıya dokunup tam miktarı yazın.';

  @override
  String get challengeOpenDetailsAction => 'Hedef ayrıntılarını aç';

  @override
  String get challengesActive => 'Devam eden';

  @override
  String get challengesPast => 'Geçmiş';

  @override
  String challengeJustFinished(int count, String title) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hedef bitti — en son $title',
      one: '$title bitti',
    );
    return '$_temp0';
  }

  @override
  String get challengeSectionEnded => 'Sona erdi';

  @override
  String get challengesPastEmpty => 'Henüz biten hedef yok.';

  @override
  String get challengesEmptyTitle => 'Henüz hedef yok';

  @override
  String get challengesEmptyBody =>
      'Kendinize bir hedef belirleyin — örneğin 7 günde 20 rekât — ve burada takip edin.';

  @override
  String get editChallenge => 'Hedefi düzenle';

  @override
  String get deleteChallenge => 'Hedefi sil';

  @override
  String get deleteChallengeConfirm =>
      'Bu hedef ve kaydedilen tüm ilerleme silinsin mi?';

  @override
  String get challengeShapeQuestion => 'Bu nasıl bir hedef?';

  @override
  String get challengeShapeTotal => 'Ulaşılacak bir toplam';

  @override
  String get challengeShapeTotalBody =>
      '1000 salavat, 30 cüz. Miktar girersiniz, toplam yükselir.';

  @override
  String get challengeShapeStreak => 'Günlük seri';

  @override
  String get challengeShapeStreakBody =>
      'Teheccüd, cemaatle sabah namazı. Günde bir işaret, miktar önemli değil.';

  @override
  String get challengeTargetLabel => 'Hedef sayısı';

  @override
  String get challengeTargetRequired => 'Sıfırdan büyük bir hedef girin';

  @override
  String get challengeUnitLabel => 'Birim (isteğe bağlı)';

  @override
  String get challengeUnitHint => 'rekât, sayfa, kez';

  @override
  String get challengeOneTapAdds => 'Dokunuş başına';

  @override
  String get challengeHowManyDays => 'Kaç gün?';

  @override
  String get challengeReachHowMuch => 'Ne kadara ulaşılacak?';

  @override
  String get challengeSpreadOver => 'Yayılacağı süre';

  @override
  String get challengeSpreadEveryDay => 'Her gün';

  @override
  String get challengeSpreadLonger => 'Daha uzun süre';

  @override
  String get challengeByWhen => 'Ne zamana kadar?';

  @override
  String get challengeWindowDuration => 'Belirli süre';

  @override
  String get challengeByDate => 'Bir tarihe kadar';

  @override
  String challengePlanRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String challengePlanExact(String start, String end) {
    return '$start – $end · günde bir, her gün';
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
    return '$start – $end · $window günde $target — $slack gün kaçırabilirsiniz';
  }

  @override
  String challengePlanRate(String start, String end, String rate) {
    return '$start – $end · günde yaklaşık $rate';
  }

  @override
  String challengePlanOpen(String start) {
    return '$start tarihinde başlar · süre sınırı yok';
  }

  @override
  String challengeTooTight(
    String target,
    String window,
    num targetCount,
    num windowCount,
  ) {
    return '$target gün $window güne sığmaz — seride her güne yalnızca bir kayıt sayılır.';
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
  String get challengeStartDate => 'Başlangıç';

  @override
  String get challengeEndDate => 'Bitiş';

  @override
  String challengeProgressCount(String done, String target, String unit) {
    return '$done/$target $unit';
  }

  @override
  String challengeProgressPlain(String done, String target) {
    return '$done/$target';
  }

  @override
  String challengeProgressDays(String done, String target) {
    return '$done/$target gün';
  }

  @override
  String challengeDaysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gün kaldı',
    );
    return '$_temp0';
  }

  @override
  String get challengeNoDeadline => 'Süre sınırı yok';

  @override
  String challengeOnTrack(String rate) {
    return 'Yolunda · $rate/gün';
  }

  @override
  String challengeBehind(String rate) {
    return 'Geride · $rate/gün gerekli';
  }

  @override
  String challengeLastDay(String remaining) {
    return 'Son gün · $remaining kaldı';
  }

  @override
  String get challengeReached => 'Hedefe ulaşıldı';

  @override
  String get challengeCompleted => 'Tamamlandı';

  @override
  String challengeEnded(String done, String target) {
    return 'Sona erdi · $done/$target';
  }

  @override
  String get challengeExpiredTitle => 'Hedef sona erdi';

  @override
  String challengeExpiredBody(String title, String done, String target) {
    return '$title $done/$target ile sona erdi.';
  }

  @override
  String get challengeExtend => 'Uzat';

  @override
  String get challengeRestart => 'Yeniden başla';

  @override
  String get challengeArchive => 'Arşivle';

  @override
  String get challengeDailyBreakdown => 'Günlük kayıt';

  @override
  String challengeNudgeBody(String title, String rate) {
    return '$title: zamanında bitirmek için günde $rate.';
  }

  @override
  String challengeLastDayBody(String title, String remaining) {
    return '$title: son gün — $remaining kaldı.';
  }

  @override
  String get challengeGroupGoal => 'Hedef';

  @override
  String get challengeGroupShape => 'Tür';

  @override
  String get challengeGroupPlan => 'Plan';

  @override
  String get challengeGroupReminders => 'Hatırlatıcılar';

  @override
  String get challengeStartFromTemplate => 'Bir şablondan başla';

  @override
  String get challengeTemplateBlank => 'Boş';

  @override
  String get challengePreview => 'Önizleme';

  @override
  String get challengeTmplTahajjud => '40 gece Teheccüd';

  @override
  String get challengeTmplSalawat => '1000 salavat';

  @override
  String get challengeTmplKhatm => '30 günde hatim';

  @override
  String get challengeTmplFajrJamaah => '30 gün cemaatle sabah namazı';

  @override
  String get challengeTmplSadaqah => '30 gün sadaka';

  @override
  String get listSeparator => ' · ';

  @override
  String get tierRafiq => 'Refik';

  @override
  String get tierNasir => 'Nâsır';

  @override
  String get tierMuhsin => 'Muhsin';

  @override
  String get tierAnsar => 'Ensar';

  @override
  String get tierRafiqMeaning => 'yoldaş';

  @override
  String get tierNasirMeaning => 'destekçi';

  @override
  String get tierMuhsinMeaning => 'iyiliksever';

  @override
  String get tierAnsarMeaning => 'yardımcı';

  @override
  String get supportCardBody =>
      'Ücretsiz; reklam yok, hesap yok. Geliştirilmesine küçük bir katkıyla destek olabilirsiniz — dilediğiniz tutarda, dilediğiniz zaman.';

  @override
  String get supportCta => 'Muhasaba\'ya destek ol';

  @override
  String get supportAgain => 'Yeniden destek ol';

  @override
  String get supporterThanks =>
      'Allah razı olsun — inşallah Muhasaba ücretsiz ve reklamsız kalır.';

  @override
  String supporterSince(String tier, String month) {
    return '$month tarihinden beri $tier';
  }

  @override
  String get supportPromptTitle => 'Muhasaba\'ya destek ol';

  @override
  String get supportPromptBody =>
      'Muhasaba ücretsiz; reklam yok, hesap yok. Geliştirilmesine küçük bir katkıyla destek olabilirsiniz — dilediğiniz tutarda, dilediğiniz zaman. Hiçbir özellik buna bağlı değil.';

  @override
  String get supportPromptNow => 'Şimdi destek ol';

  @override
  String get supportPromptLater => 'Sonra hatırlat';

  @override
  String get supportPromptNever => 'Bir daha sorma';

  @override
  String get tipSheetTitle => 'Muhasaba\'ya destek ol';

  @override
  String get tipSheetBody =>
      'Dilediğiniz tutarı, dilediğiniz sıklıkta seçin. Katkılar uygulamanın bakımına harcanır — inşallah ücretsiz ve reklamsız kalır. Teşekkür mahiyetinde, Ayarlar\'da destekçi olarak işaretlenirsiniz.';

  @override
  String tipSheetSupporterLine(String tier) {
    return '$tier — Allah razı olsun.';
  }

  @override
  String get tipSheetSupporterAgain =>
      'Dilediğiniz zaman yeniden destek olabilirsiniz.';

  @override
  String tipSheetStoreNote(String store) {
    return 'Ödeme $store üzerinden yapılır — ödeme bilgilerinizi hiçbir zaman görmeyiz.';
  }

  @override
  String get tipSheetOtherWays => 'Size uygun bir seçenek göremiyor musunuz?';

  @override
  String get tipSheetWriteToUs => 'Bize yazın';

  @override
  String get supportEmailBody =>
      'Selamün aleyküm,\n\nMuhasaba\'nın geliştirilmesine doğrudan destek olmak istiyorum.\n\nÜlke:\nGönderme yöntemi:\nTutar (isteğe bağlı):';

  @override
  String tipBusy(String store) {
    return '$store açılıyor…';
  }

  @override
  String get tipThanks => 'Allah razı olsun, kabul etsin.';

  @override
  String get tipDone => 'Tamam';

  @override
  String get tipFailed => 'Satın alma tamamlanamadı. Ücret alınmadı.';

  @override
  String tipPending(String store) {
    return 'Katkınız $store tarafında beklemede — onaylandığında rozetiniz eklenecek.';
  }

  @override
  String get tipUnavailable => 'Satın alma şu anda bu cihazda kullanılamıyor.';

  @override
  String get optionSetJamaa => 'Cemaat';

  @override
  String get optionJamaaAlone => 'Tek başına';

  @override
  String get optionJamaaHome => 'Evde cemaatle';

  @override
  String get optionJamaaMasjid => 'Camide cemaatle';

  @override
  String get optionSetOnTime => 'Vakit';

  @override
  String get optionOnTimeOnTime => 'Vaktinde';

  @override
  String get optionOnTimeLate => 'Geç';

  @override
  String get optionOnTimeQada => 'Kaza';

  @override
  String get optionSetQuranSession => 'Kur\'an okuması';

  @override
  String get optionQuranRecited => 'Okuma';

  @override
  String get optionQuranMemorised => 'Ezber';

  @override
  String get optionQuranMeaning => 'Meal';

  @override
  String get optionQuranListened => 'Dinleme';

  @override
  String get optionSetSadaqahType => 'Sadaka türü';

  @override
  String get optionSadaqahMoney => 'Para';

  @override
  String get optionSadaqahFood => 'Yiyecek';

  @override
  String get optionSadaqahTime => 'Zaman';

  @override
  String get optionSadaqahOther => 'Diğer';

  @override
  String get optionSetIntensity => 'Yoğunluk';

  @override
  String get optionIntensityLight => 'Hafif';

  @override
  String get optionIntensityModerate => 'Orta';

  @override
  String get optionIntensityIntense => 'Yoğun';

  @override
  String get optionSetNewTitle => 'Yeni seçenek seti';

  @override
  String get optionSetEditTitle => 'Seçenek setini düzenle';

  @override
  String get optionSetNameLabel => 'Set adı';

  @override
  String get optionSetNameHint => 'örn. Cemaat';

  @override
  String get optionsLabel => 'Seçenekler';

  @override
  String get optionAdd => 'Seçenek ekle';

  @override
  String optionHint(int index) {
    return 'Seçenek $index';
  }

  @override
  String optionsMaxReached(int max) {
    return 'En fazla $max seçenek.';
  }

  @override
  String get optionSetPreviewLabel => 'Önizleme — Bugün satırı';

  @override
  String optionSetKeptForHistory(String labels) {
    return 'Geçmiş için saklandı: $labels';
  }

  @override
  String get optionSetDelete => 'Seti sil';

  @override
  String get optionSetDeleteConfirm =>
      'Bu seti kullanan ameller artık seçenek göstermez. Önceden kaydettiğiniz günlerin seçimi korunur.';

  @override
  String get optionSetNameRequired => 'Sete bir ad verin';

  @override
  String get optionsMinRequired => 'En az iki seçenek ekleyin';

  @override
  String get optionSetNameTooLong => 'Set adı çok uzun';

  @override
  String optionTooLong(int index) {
    return '$index. seçenek çok uzun';
  }

  @override
  String get optionSetNone => 'Yok';

  @override
  String get optionSetNew => 'Yeni set';

  @override
  String get requireChoiceLabel => 'Seçim zorunlu';

  @override
  String get requireChoiceHelp => 'Seçenek seçilmeden satır işaretlenmez';

  @override
  String get requireChoicePickSetFirst => 'Önce bir set seçin';

  @override
  String get requireChoiceCountHelp => 'Sayılan ameller sayaçla tamamlanır';

  @override
  String optionsUsedOf(int used, int max) {
    return '$max seçenekten $used kullanıldı.';
  }

  @override
  String get choiceNeeded => 'Seçim gerekli';

  @override
  String optionSelected(String label) {
    return '$label, seçili';
  }

  @override
  String optionNotSelected(String label) {
    return '$label, seçili değil';
  }

  @override
  String optionBreakdownTitle(String set) {
    return 'Seçenek dağılımı — $set';
  }

  @override
  String optionBreakdownCaption(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tamamlanmaya',
    );
    return 'Seçim kaydedilen $_temp0 göre oranlar';
  }

  @override
  String optionNoChoiceRecorded(int none, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other: 'tamamlanan $total günden',
    );
    return 'Seçim kaydedilmedi — $_temp0 $none';
  }

  @override
  String get optionRemovedSuffix => 'kaldırıldı';

  @override
  String get optionAllAmals => 'Tümü';

  @override
  String optionScopedCaption(String amal, int count) {
    return '$amal · $count kayıt';
  }

  @override
  String get optionBreakdownSectionTitle => 'Seçenek dağılımı';

  @override
  String optionBreakdownSwipeHint(int count) {
    return '$count set · kaydırın';
  }

  @override
  String get optionDetailEmpty => 'Bu set için henüz seçim kaydedilmedi.';

  @override
  String get optionDetailTrendHeading => 'Zaman içinde değişim';

  @override
  String optionDetailTrendReadout(String option, String from, String to) {
    return '$option oranı ilk haftada $from, son haftada $to oldu.';
  }

  @override
  String get optionDetailByAmalHeading => 'Amele göre';

  @override
  String optionDetailByAmalReadout(
    String best,
    String bestShare,
    String worst,
    String worstShare,
  ) {
    return 'En yüksek: $best ($bestShare); en düşük: $worst ($worstShare).';
  }

  @override
  String get optionDetailRecordsHeading => 'Rekorlar';

  @override
  String get optionDetailLongestRun => 'En Uzun Seri';

  @override
  String get optionDetailBestWeek => 'En İyi Hafta';

  @override
  String get optionDetailCurrentRun => 'Mevcut Seri';

  @override
  String get optionDetailRecordsCaption =>
      'Son bir yıla göre hesaplanır; yukarıdaki dönem filtresinden bağımsızdır.';

  @override
  String get optionDetailRecentDaysHeading => 'Son günler';

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

  @override
  String get amalFivePrayers => 'Beş Vakit Namaz';

  @override
  String get amalJumuah => 'Cuma Namazı';

  @override
  String get amalWitr => 'Vitir Namazı';

  @override
  String get amalQada => 'Kaza Namazları';

  @override
  String get amalFajrSunnah => 'Sabah Sünneti';

  @override
  String get amalDhuhrSunnah => 'Öğle Sünneti';

  @override
  String get amalAsrSunnah => 'İkindi Sünneti';

  @override
  String get amalMaghribSunnah => 'Akşam Sünneti';

  @override
  String get amalIshaSunnah => 'Yatsı Sünneti';

  @override
  String get amalRawatib => 'Müekked Sünnetler';

  @override
  String get amalSiwak => 'Misvak';

  @override
  String get amalWuduSleep => 'Yatmadan Önce Abdest';

  @override
  String get amalFridayGhusl => 'Cuma Guslü';

  @override
  String get amalIshraq => 'İşrak Namazı';

  @override
  String get amalWuduPrayer => 'Abdest Sonrası İki Rekât';

  @override
  String get amalTahiyyah => 'Tahiyyetü\'l-Mescid';

  @override
  String get amalEarlyJumuah => 'Cumaya Erken Gitmek';

  @override
  String get amalAfterSalah => 'Namaz Tesbihatı';

  @override
  String get amalAfterFajr => 'Sabah Namazı Tesbihatı';

  @override
  String get amalAfterDhuhr => 'Öğle Namazı Tesbihatı';

  @override
  String get amalAfterAsr => 'İkindi Namazı Tesbihatı';

  @override
  String get amalAfterMaghrib => 'Akşam Namazı Tesbihatı';

  @override
  String get amalAfterIsha => 'Yatsı Namazı Tesbihatı';

  @override
  String get amalAyatKursi => 'Âyetü\'l-Kürsî';

  @override
  String get amalKursiFajr => 'Âyetü\'l-Kürsî (Sabah)';

  @override
  String get amalKursiDhuhr => 'Âyetü\'l-Kürsî (Öğle)';

  @override
  String get amalKursiAsr => 'Âyetü\'l-Kürsî (İkindi)';

  @override
  String get amalKursiMaghrib => 'Âyetü\'l-Kürsî (Akşam)';

  @override
  String get amalKursiIsha => 'Âyetü\'l-Kürsî (Yatsı)';

  @override
  String get amalSayyidIstighfar => 'Seyyidü\'l-İstiğfar';

  @override
  String get amalSalawat => 'Salavat';

  @override
  String get amalSubhanallah => 'Sübhânallâhi ve Bihamdihî';

  @override
  String get amalTahlil => 'Lâ İlâhe İllallah';

  @override
  String get amalBedtimeAdhkar => 'Yatmadan Önce Zikirler';

  @override
  String get amalFridaySalawat => 'Cuma Salavatı';

  @override
  String get amalHawqala => 'Lâ Havle ve Lâ Kuvvete';

  @override
  String get amalTasbihFatimah => 'Hz. Fâtıma Tesbihi';

  @override
  String get amalWakingAdhkar => 'Uyanınca Zikirler';

  @override
  String get amalDuaAdhan => 'Ezandan Sonra Dua';

  @override
  String get amalDuaIqamah => 'Ezan ile Kamet Arası Dua';

  @override
  String get amalDuaSujood => 'Secdede Dua';

  @override
  String get amalDuaParents => 'Anne Babaya Dua';

  @override
  String get amalDuaOthers => 'Başkalarına Dua';

  @override
  String get amalFridayHour => 'Cumanın Son Saatinde Dua';

  @override
  String get amalLastThird => 'Gecenin Son Üçte Birinde Dua';

  @override
  String get amalMulk => 'Mülk Suresi';

  @override
  String get amalBaqarahEnd => 'Bakara\'nın Son İki Ayeti';

  @override
  String get amalSajdah => 'Secde Suresi';

  @override
  String get amalQuls => 'İhlâs, Felak ve Nâs';

  @override
  String get amalYasin => 'Yâsîn Suresi';

  @override
  String get amalWaqiah => 'Vâkıa Suresi';

  @override
  String get amalHifz => 'Kur\'an Ezberi';

  @override
  String get amalMurajaah => 'Ezber Tekrarı';

  @override
  String get amalTafsir => 'Tefsir';

  @override
  String get amalListenQuran => 'Kur\'an Dinlemek';

  @override
  String get amalTeachQuran => 'Kur\'an Öğretmek';

  @override
  String get amalMonThu => 'Pazartesi ve Perşembe Orucu';

  @override
  String get amalThreeDays => 'Ayda Üç Gün Oruç';

  @override
  String get amalDailySadaqah => 'Günlük Sadaka';

  @override
  String get amalFeed => 'Birini Doyurmak';

  @override
  String get amalHelpNeed => 'İhtiyaç Sahibine Yardım';

  @override
  String get amalOrphan => 'Yetim Desteği';

  @override
  String get amalGiveWater => 'Su İkram Etmek';

  @override
  String get amalLearnHadith => 'Bir Hadis Öğrenmek';

  @override
  String get amalReadBook => 'İslami Kitap Okumak';

  @override
  String get amalSeerah => 'Siyer Okumak';

  @override
  String get amalClass => 'Derse Katılmak';

  @override
  String get amalArabic => 'Arapça Öğrenmek';

  @override
  String get amalLearnDua => 'Yeni Bir Dua Öğrenmek';

  @override
  String get amalShare => 'Öğrendiğini Paylaşmak';

  @override
  String get amalFiqh => 'Fıkıh Çalışmak';

  @override
  String get amalMuhasaba => 'Gece Muhasebesi';

  @override
  String get amalSpeakGood => 'Ya Hayır Söyle Ya Sus';

  @override
  String get amalNoBackbiting => 'Gıybetten Kaçınmak';

  @override
  String get amalAnger => 'Öfkeyi Yenmek';

  @override
  String get amalGaze => 'Gözü Haramdan Sakınmak';

  @override
  String get amalTruthful => 'Doğru Sözlü Olmak';

  @override
  String get amalSmile => 'Tebessüm';

  @override
  String get amalSalam => 'Selamı Yaymak';

  @override
  String get amalForgive => 'Başkalarını Affetmek';

  @override
  String get amalGratitude => 'Şükür';

  @override
  String get amalVisitSick => 'Hasta Ziyareti';

  @override
  String get amalNeighbours => 'Komşuya İyilik';

  @override
  String get amalRemoveHarm => 'Yoldan Eziyeti Kaldırmak';

  @override
  String get amalParents => 'Anne Babaya İyilik';

  @override
  String get amalFamilyTies => 'Sıla-i Rahim';

  @override
  String get amalHelpHome => 'Ev İşlerine Yardım';

  @override
  String get amalTeachChildren => 'Çocuklara Din Öğretmek';

  @override
  String get amalSpouse => 'Eşe İyi Davranmak';

  @override
  String get categoryDua => 'Dua';

  @override
  String get categoryFasting => 'Oruç';

  @override
  String get categoryKnowledge => 'İlim';

  @override
  String get categoryCharacter => 'Ahlak';

  @override
  String get categoryFamily => 'Aile';

  @override
  String get libraryTitle => 'Amel Kütüphanesi';

  @override
  String get librarySearchHint => 'Amel ara';

  @override
  String get libraryAll => 'Tümü';

  @override
  String get libraryAdded => 'Bugüne eklendi';

  @override
  String libraryAddedShowsOn(String days) {
    return 'Eklendi · gösterileceği günler: $days';
  }

  @override
  String libraryNoMatch(String query) {
    return '“$query” ile eşleşen amel yok';
  }

  @override
  String libraryCreateNamed(String query) {
    return '“$query” oluştur';
  }

  @override
  String get libraryPickBanner => 'Amel Kütüphanesi\'nden seçin';

  @override
  String libraryPickBannerSubtitle(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countText hazır amel',
      one: '$countText hazır amel',
    );
    return '$_temp0';
  }

  @override
  String get libraryFilledIn => 'Amel Kütüphanesi\'nden dolduruldu';

  @override
  String get libraryChange => 'Değiştir';

  @override
  String get libraryEditAction => 'Düzenle';

  @override
  String libraryWeeklyAny(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Haftada $countText gün',
      one: 'Haftada bir',
    );
    return '$_temp0';
  }

  @override
  String libraryMonthlyAny(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ayda $countText gün',
      one: 'Ayda bir',
    );
    return '$_temp0';
  }

  @override
  String libraryTimes(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countText kez',
    );
    return '$_temp0';
  }

  @override
  String get libraryAnyAmount => 'Serbest miktar';

  @override
  String libraryAddTooltip(String title) {
    return '$title ekle';
  }

  @override
  String get libraryOnList => 'Listenizde var';

  @override
  String get todayEmptyBrowse => 'Amel Kütüphanesi\'ne göz atın';
}
