// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malay (`ms`).
class AppLocalizationsMs extends AppLocalizations {
  AppLocalizationsMs([String locale = 'ms']) : super(locale);

  @override
  String get appTitle => 'Muhasaba';

  @override
  String get tabToday => 'Hari Ini';

  @override
  String get tabStats => 'Statistik';

  @override
  String get tabHistory => 'Sejarah';

  @override
  String get tabSettings => 'Tetapan';

  @override
  String get newAmal => 'Amal baharu';

  @override
  String get editAmal => 'Sunting amal';

  @override
  String get newAmalTitle => 'Amal baharu';

  @override
  String get save => 'Simpan';

  @override
  String get cancel => 'Batal';

  @override
  String get clear => 'Kosongkan';

  @override
  String get titleLabel => 'Tajuk';

  @override
  String get titleRequired => 'Tajuk diperlukan';

  @override
  String get titleTooLong => 'Tajuk terlalu panjang';

  @override
  String get frequencyLabel => 'Kekerapan';

  @override
  String get frequencyDaily => 'Harian';

  @override
  String get frequencyWeekly => 'Mingguan';

  @override
  String get frequencyMonthly => 'Bulanan';

  @override
  String get categoryLabel => 'Kategori';

  @override
  String get categoryOther => 'Lain-lain';

  @override
  String get categorySalah => 'Solat';

  @override
  String get categoryDhikr => 'Zikir';

  @override
  String get categoryQuran => 'Al-Quran';

  @override
  String get categoryCharity => 'Sedekah';

  @override
  String get timesPerPeriod => 'Kali setiap tempoh';

  @override
  String get custom => 'Tersuai';

  @override
  String get customTargetHint => 'cth. 50';

  @override
  String get dayOfWeek => 'Hari dalam minggu';

  @override
  String get anyDay => 'Mana-mana';

  @override
  String get anyDayHint => 'Mana-mana hari (kekal hari ini, hilang esok)';

  @override
  String onlyDayHint(String day) {
    return 'Hanya $day';
  }

  @override
  String get dateOfMonth => 'Tarikh dalam bulan';

  @override
  String get anyDate => 'Mana-mana';

  @override
  String get anyDateHint => 'Mana-mana tarikh (kekal hari ini, hilang esok)';

  @override
  String onlyDateHint(String date) {
    return 'Hanya pada $date';
  }

  @override
  String get startPreChecked => 'Mula ditanda siap';

  @override
  String get startPreCheckedSubtitle =>
      'Apabila tempoh baharu bermula, amal ini ditanda selesai secara lalai sehingga anda nyahtandanya.';

  @override
  String get reminder => 'Peringatan';

  @override
  String get reminderNone => 'Tiada';

  @override
  String reminderTime(String time) {
    return 'Peringatan: $time';
  }

  @override
  String get reminderPermissionWarning =>
      'Peringatan disimpan, tetapi notifikasi tidak dibenarkan. Aktifkannya di tetapan sistem untuk menerima makluman.';

  @override
  String get groupByCategory => 'Kumpul mengikut kategori';

  @override
  String get flatList => 'Senarai rata';

  @override
  String errorGeneric(String error) {
    return 'Ralat: $error';
  }

  @override
  String get todayEmptyHint => 'Ketik + untuk menambah amal pertama anda.';

  @override
  String get noteLabel => 'Nota';

  @override
  String get noteHint => 'cth. Solat di masjid';

  @override
  String get completed => 'selesai';

  @override
  String get notCompleted => 'belum selesai';

  @override
  String progressOf(int progress, int target) {
    return '$progress daripada $target selesai';
  }

  @override
  String get removeFromToday => 'Buang daripada hari ini';

  @override
  String get removeFromTodaySubtitle =>
      'Sembunyikan untuk hari ini sahaja. Ia akan kembali esok.';

  @override
  String get removeFromTracking => 'Buang daripada penjejakan';

  @override
  String get removeFromTrackingSubtitle =>
      'Buang secara kekal daripada senarai anda. Sejarah dikekalkan.';

  @override
  String get chooseIcon => 'Pilih ikon';

  @override
  String get iconNone => 'Tiada';

  @override
  String get recentlyUsed => 'Baru Digunakan';

  @override
  String get emojiSectionGeneral => 'Umum';

  @override
  String get categoryNameHint => 'Nama';

  @override
  String get categoryNew => '+ Baharu';

  @override
  String get addAmal => 'Tambah Amal';

  @override
  String get customAmal => 'Amal Tersuai';

  @override
  String get templateTasbih => 'Tasbih 33x';

  @override
  String get templateIstighfar => 'Istighfar 100x';

  @override
  String get templateSurahKahf => 'Surah Al-Kahfi';

  @override
  String get templateSadaqah => 'Sedekah';

  @override
  String get templateTahajjud => 'Tahajud';

  @override
  String get templateDuhaPrayer => 'Solat Dhuha';

  @override
  String get settingsTitle => 'Tetapan';

  @override
  String settingsLoadError(String error) {
    return 'Gagal memuatkan tetapan:\n$error';
  }

  @override
  String get sectionDayBoundary => 'Sempadan hari';

  @override
  String get rolloverHour => 'Jam peralihan';

  @override
  String get rolloverAtMidnight => 'Hari berakhir pada tengah malam.';

  @override
  String rolloverSubtitle(String time) {
    return 'Amal semalam masih boleh disunting sehingga $time.';
  }

  @override
  String get pickRolloverHour => 'Pilih jam peralihan hari';

  @override
  String get sectionWeekMonth => 'Minggu & bulan';

  @override
  String get startOfWeek => 'Permulaan minggu';

  @override
  String get startOfMonth => 'Permulaan bulan';

  @override
  String get startOfMonthClamped =>
      'Hari melebihi ke-28 akan diselaraskan kepada hari terakhir bulan yang lebih pendek.';

  @override
  String get sectionAppearance => 'Penampilan';

  @override
  String get theme => 'Tema';

  @override
  String get themeSystem => 'Sistem';

  @override
  String get themeLight => 'Cerah';

  @override
  String get themeDark => 'Gelap';

  @override
  String get sectionLanguage => 'Bahasa';

  @override
  String get language => 'Bahasa';

  @override
  String get systemDefault => 'Lalai sistem';

  @override
  String get aboutTitle => 'Muhasaba';

  @override
  String get aboutSubtitle =>
      'Jurnal muhasabah diri peribadi. Semua data kekal di peranti ini.';

  @override
  String get statsTitle => 'Statistik';

  @override
  String statsLoadError(String error) {
    return 'Gagal memuatkan statistik:\n$error';
  }

  @override
  String get perAmal => 'Setiap amal';

  @override
  String get thisWeek => 'Minggu ini';

  @override
  String get thisMonth => 'Bulan ini';

  @override
  String get totalCompletions => 'jumlah penyelesaian';

  @override
  String get streakCurrent => 'Semasa';

  @override
  String get streakLongest => 'Terpanjang';

  @override
  String get ratioWeek => 'Minggu';

  @override
  String get ratioMonth => 'Bulan';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'hari',
      one: 'hari',
    );
    return '$_temp0';
  }

  @override
  String streakWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'minggu',
      one: 'minggu',
    );
    return '$_temp0';
  }

  @override
  String streakMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'bulan',
      one: 'bulan',
    );
    return '$_temp0';
  }

  @override
  String get frequencyBadgeDaily => 'harian';

  @override
  String get frequencyBadgeWeekly => 'mingguan';

  @override
  String get frequencyBadgeMonthly => 'bulanan';

  @override
  String get statsEmpty =>
      'Belum ada amal. Tambahkan satu di Hari Ini untuk mula menjejak.';

  @override
  String get statsToday => 'Hari Ini';

  @override
  String get statsThisWeek => 'Minggu Ini';

  @override
  String get statsThisMonth => 'Bulan Ini';

  @override
  String get statsAllTime => 'Sepanjang Masa';

  @override
  String get statsCustomRange => 'Julat Tersuai';

  @override
  String get statsAllCategories => 'Semua';

  @override
  String get statsAllAmals => 'Semua';

  @override
  String get statsCompleted => 'Selesai';

  @override
  String get statsExpected => 'Dijangka';

  @override
  String get statsVsPrevious => 'vs Sebelumnya';

  @override
  String get statsByCategory => 'Mengikut Kategori';

  @override
  String get statsPerAmal => 'Setiap Amal';

  @override
  String get statsCurrentStreak => 'Rentak Semasa';

  @override
  String get statsBestStreak => 'Rentak Terbaik';

  @override
  String get statsTotalDays => 'Jumlah Hari';

  @override
  String get statsConsistency => 'Konsistensi';

  @override
  String get statsLast5Weeks => '5 minggu lepas';

  @override
  String get statsDailyBreakdown => 'Pecahan Harian';

  @override
  String get statsCompletionRate => 'Kadar penyelesaian';

  @override
  String get statsFilterTime => 'Masa';

  @override
  String get statsFilterCategory => 'Kategori';

  @override
  String get statsFilterAmal => 'Amal';

  @override
  String get statsStreaks => 'Rentak';

  @override
  String get statsSelectDateRange => 'Pilih julat tarikh';

  @override
  String get historyTitle => 'Sejarah';

  @override
  String get jumpToDate => 'Lompat ke tarikh';

  @override
  String historyEmptyDay(String date) {
    return 'Tiada amal dijejak pada $date';
  }

  @override
  String get streakUnitD => 'h';

  @override
  String get streakUnitW => 'm';

  @override
  String get streakUnitM => 'b';

  @override
  String get mondayShort => 'Isn';

  @override
  String get tuesdayShort => 'Sel';

  @override
  String get wednesdayShort => 'Rab';

  @override
  String get thursdayShort => 'Kha';

  @override
  String get fridayShort => 'Jum';

  @override
  String get saturdayShort => 'Sab';

  @override
  String get sundayShort => 'Ahd';

  @override
  String get mondayFull => 'Isnin';

  @override
  String get tuesdayFull => 'Selasa';

  @override
  String get wednesdayFull => 'Rabu';

  @override
  String get thursdayFull => 'Khamis';

  @override
  String get fridayFull => 'Jumaat';

  @override
  String get saturdayFull => 'Sabtu';

  @override
  String get sundayFull => 'Ahad';

  @override
  String get hadith0 =>
      '\"Amalan yang paling dicintai Allah ialah yang dilakukan secara istiqamah, walaupun sedikit.\"\n— Bukhari & Muslim';

  @override
  String get hadith1 =>
      '\"Lakukanlah amalan kebaikan sekadar kemampuan kamu, kerana amalan yang terbaik ialah yang dilakukan secara istiqamah walaupun sedikit.\"\n— Ibn Majah';

  @override
  String get hadith2 =>
      '\"Apabila anak Adam meninggal dunia, terputuslah segala amalannya kecuali tiga perkara: sedekah jariah, ilmu yang bermanfaat, atau anak soleh yang mendoakannya.\"\n— Muslim';

  @override
  String get hadith3 =>
      '\"Sesiapa yang menunaikan dua solat yang sejuk (Subuh dan Asar) akan masuk syurga.\"\n— Bukhari';

  @override
  String get hadith4 =>
      '\"Allah tidak melihat rupa paras kamu atau harta kamu, tetapi Dia melihat hati dan amalan kamu.\"\n— Muslim';

  @override
  String get hadith5 =>
      '\"Sebaik-baik manusia ialah yang paling bermanfaat kepada manusia lain.\"\n— Daraqutni';

  @override
  String get hadith6 =>
      '\"Permudahkanlah dan jangan menyusahkan; berilah khabar gembira dan jangan menakut-nakutkan orang.\"\n— Bukhari';

  @override
  String get hadith7 =>
      '\"Sesiapa yang menempuh jalan untuk menuntut ilmu, Allah akan memudahkan baginya jalan ke syurga.\"\n— Muslim';

  @override
  String get hadith8 => '\"Sedekah tidak mengurangi harta.\"\n— Muslim';

  @override
  String get hadith9 =>
      '\"Mukmin yang kuat lebih baik dan lebih dicintai Allah daripada mukmin yang lemah, dan pada kedua-duanya ada kebaikan.\"\n— Muslim';

  @override
  String historyDayCompleted(int completed, int total) {
    return '$completed daripada $total selesai';
  }

  @override
  String get settingsSchedule => 'Jadual';

  @override
  String get settingsAppearance => 'Penampilan';

  @override
  String get settingsAboutTagline => 'Teman deen harian anda';

  @override
  String get settingsRolloverSub => 'Bila hari ditetapkan semula';
}
