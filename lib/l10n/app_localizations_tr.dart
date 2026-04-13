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
  String get hadith1 =>
      '\"Gücü yettiğiniz kadar salih amel işleyin. Çünkü amellerin en hayırlısı az da olsa devamlı olanıdır.\"\n— İbn Mâce';

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
  String get hadith5 =>
      '\"İnsanların en hayırlısı, insanlara en faydalısı olandır.\"\n— Dârekutnî';

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
}
