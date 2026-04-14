// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appTitle => 'Muhasaba';

  @override
  String get tabToday => 'Bugün';

  @override
  String get tabStats => 'İstatistik';

  @override
  String get tabHistory => 'Geçmiş';

  @override
  String get tabSettings => 'Ayarlar';

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
  String get timesPerPeriod => 'Dönem başına tekrar';

  @override
  String get custom => 'Özel';

  @override
  String get customTargetHint => 'örn. 50';

  @override
  String get dayOfWeek => 'Haftanın günü';

  @override
  String get anyDay => 'Herhangi';

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
  String get anyDate => 'Herhangi';

  @override
  String get anyDateHint =>
      'Herhangi bir tarih (bugün görünür, ertesi gün gizlenir)';

  @override
  String onlyDateHint(String date) {
    return 'Yalnızca $date tarihinde';
  }

  @override
  String get startPreChecked => 'İşaretli başlat';

  @override
  String get startPreCheckedSubtitle =>
      'Yeni dönem başladığında bu amel varsayılan olarak tamamlanmış işaretlenir; siz işaretini kaldırabilirsiniz.';

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
  String get groupByCategory => 'Kategoriye göre grupla';

  @override
  String get flatList => 'Düz liste';

  @override
  String errorGeneric(String error) {
    return 'Hata: $error';
  }

  @override
  String get todayEmptyHint => 'İlk amelinizi eklemek için + tuşuna basın.';

  @override
  String get noteLabel => 'Not';

  @override
  String get noteHint => 'örn. Camide kıldım';

  @override
  String get completed => 'tamamlandı';

  @override
  String get notCompleted => 'tamamlanmadı';

  @override
  String progressOf(int progress, int target) {
    return '$target içerisinden $progress tamamlandı';
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
      'Listenizden kalıcı olarak kaldırır. Geçmiş kayıtları saklanır.';

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
  String get templateTasbih => 'Tesbih 33x';

  @override
  String get templateIstighfar => 'İstiğfar 100x';

  @override
  String get templateSurahKahf => 'Kehf Suresi';

  @override
  String get templateSadaqah => 'Sadaka';

  @override
  String get templateTahajjud => 'Teheccüd';

  @override
  String get templateDuhaPrayer => 'Kuşluk Namazı';

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
    return 'Dünkü ameller saat $time\'a kadar düzenlenebilir.';
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
      '28\'den sonraki günler kısa aylarda ayın son gününe yuvarlanır.';

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
      'Kişisel bir din muhasebe günlüğü. Tüm veriler bu cihazda kalır.';

  @override
  String get statsTitle => 'İstatistik';

  @override
  String statsLoadError(String error) {
    return 'İstatistikler yüklenemedi:\n$error';
  }

  @override
  String get perAmal => 'Amel başına';

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
  String get statsPerAmal => 'Amel Başına';

  @override
  String get statsCurrentStreak => 'Mevcut Seri';

  @override
  String get statsBestStreak => 'En İyi Seri';

  @override
  String get statsTotalDays => 'Toplam Gün';

  @override
  String get statsConsistency => 'Tutarlılık';

  @override
  String get statsLast5Weeks => 'Son 5 hafta';

  @override
  String get statsDailyBreakdown => 'Günlük Dağılım';

  @override
  String get statsCompletionRate => 'Tamamlanma oranı';

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
      '\"Allah\'a en sevimli ameller, az da olsa devamlılığı olanlardır.\"\n— Buhârî ve Müslim';

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
      '\"Kim günde yüz defa \'Sübhanallahi ve bihamdihi\' derse, denizin köpüğü kadar da olsa günahları bağışlanır.\"\n— Buhari';

  @override
  String get hadith12 =>
      '\"Kim her farz namazdan sonra Ayet el-Kürsi\'yi okursa, onu cennete girmekten ancak ölüm alıkoyar.\"\n— Nesai';

  @override
  String get hadith13 => '\"Güzel söz sadakadır.\"\n— Buhari ve Müslim';

  @override
  String get hadith14 =>
      '\"Allah\'a ve ahiret gününe iman eden, ya hayır söylesin ya da sussun.\"\n— Buhari ve Müslim';

  @override
  String get hadith15 =>
      '\"Dul ve yoksulun işini gören kimse, Allah yolunda cihad eden gibidir.\"\n— Buhari';

  @override
  String get hadith16 => '\"Kardeşine tebessüm etmen sadakadır.\"\n— Tirmizi';

  @override
  String get hadith17 =>
      '\"Sizin en hayırlınız Kur\'an\'ı öğrenen ve öğretendir.\"\n— Buhari';

  @override
  String get hadith18 =>
      '\"Hiç kimse kendi elinin emeğinden daha hayırlı bir yemek yememiştir.\"\n— Buhari';

  @override
  String get hadith19 =>
      '\"Allah Refîk\'tir (yumuşaktır) ve her işte yumuşaklığı sever.\"\n— Buhari ve Müslim';

  @override
  String historyDayCompleted(int completed, int total) {
    return '$total üzerinden $completed tamamlandı';
  }

  @override
  String get settingsSchedule => 'Zamanlama';

  @override
  String get settingsAppearance => 'Görünüm';

  @override
  String get settingsAboutTagline => 'Günlük din yoldaşınız';

  @override
  String get settingsRolloverSub => 'Gün ne zaman sıfırlanır';

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
      '\"Sıla-i rahim yapan, karşılık gören değildir. Asıl sıla-i rahim yapan, akrabası ilişkiyi kestiğinde bile devam edendir.\"\n— Buhârî';

  @override
  String get hadith49 =>
      '\"Kim yemek yeyip \'Bu yemeği bana yediren ve güç ve kuvvetim olmaksızın onu bana nasip eden Allah\'a hamd olsun\' derse, geçmiş günahları bağışlanır.\"\n— Tirmizî';

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
      '\"Müslüman\'a isabet eden yorgunluk, hastalık, üzüntü, keder, sıkıntı ve gamdan — hatta ayağına batan dikenden bile — Allah mutlaka günahlarından bir kısmını bağışlar.\"\n— Buhârî ve Müslim';

  @override
  String get hadith69 =>
      '\"Müslüman\'ın gıyabında kardeşi için yaptığı dua kabul olunur.\"\n— Müslim';

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
      '\"Hastayı ziyaret eden kimse, dönünceye kadar cennet bahçesindedir.\"\n— Müslim';

  @override
  String get hadith79 =>
      '\"Selâmı yayın, yemek yedirin, insanlar uyurken gece namazı kılın; selâmetle cennete girersiniz.\"\n— Tirmizî';

  @override
  String get hadith80 =>
      '\"İnsanlara teşekkür etmeyen, Allah\'a da şükretmez.\"\n— Tirmizî';

  @override
  String get hadith81 =>
      '\"Gıpta ancak iki kişiye yapılır: Allah\'ın mal verip hak yolda harcatan kişiye ve Allah\'ın hikmet verip onunla hükmeden ve onu öğreten kişiye.\"\n— Buhârî ve Müslim';

  @override
  String get hadith82 =>
      '\"Kişi dostunun dini üzeredir. Bu yüzden her biriniz kiminle arkadaşlık ettiğine dikkat etsin.\"\n— Ebû Dâvûd ve Tirmizî';

  @override
  String get hadith85 =>
      '\"Kim Allah rızası için bir şeyi terk ederse, Allah ona daha hayırlısını verir.\"\n— Ahmed';

  @override
  String get hadith86 =>
      '\"Kim bir Müslüman\'ın ayıbını örterse, Allah da kıyamet gününde onun ayıbını örter.\"\n— Buhârî ve Müslim';

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
      '\"Birlikte yiyin ve besmele çekin; yemeğiniz bereketlenir.\"\n— Ebû Dâvûd';

  @override
  String get hadith94 =>
      '\"Meclislerin en hayırlısı en geniş olanıdır.\"\n— Ebû Dâvûd';

  @override
  String get hadith95 => '\"Affet ki affolunasin.\"\n— Ahmed';

  @override
  String get hadith96 =>
      '\"Deveni bağla, sonra Allah\'a tevekkül et.\"\n— Tirmizî';

  @override
  String get hadith97 =>
      '\"Mü\'minin hâli ne hoştur; her hâli onun için hayırdır.\"\n— Müslim';

  @override
  String get hadith98 =>
      '\"Müslüman Müslüman\'ın kardeşidir: ona zulmetmez, onu yalnız bırakmaz, onu küçümsemez.\"\n— Müslim';
}
