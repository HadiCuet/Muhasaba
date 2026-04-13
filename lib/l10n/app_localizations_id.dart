// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get appTitle => 'Muhasaba';

  @override
  String get tabToday => 'Hari Ini';

  @override
  String get tabStats => 'Statistik';

  @override
  String get tabHistory => 'Riwayat';

  @override
  String get tabSettings => 'Pengaturan';

  @override
  String get newAmal => 'Amal baru';

  @override
  String get editAmal => 'Edit amal';

  @override
  String get newAmalTitle => 'Amal baru';

  @override
  String get save => 'Simpan';

  @override
  String get cancel => 'Batal';

  @override
  String get clear => 'Hapus';

  @override
  String get titleLabel => 'Judul';

  @override
  String get titleRequired => 'Judul wajib diisi';

  @override
  String get titleTooLong => 'Judul terlalu panjang';

  @override
  String get frequencyLabel => 'Frekuensi';

  @override
  String get frequencyDaily => 'Harian';

  @override
  String get frequencyWeekly => 'Mingguan';

  @override
  String get frequencyMonthly => 'Bulanan';

  @override
  String get categoryLabel => 'Kategori';

  @override
  String get categoryOther => 'Lainnya';

  @override
  String get categorySalah => 'Shalat';

  @override
  String get categoryDhikr => 'Dzikir';

  @override
  String get categoryQuran => 'Al-Quran';

  @override
  String get categoryCharity => 'Sedekah';

  @override
  String get timesPerPeriod => 'Kali per periode';

  @override
  String get custom => 'Kustom';

  @override
  String get customTargetHint => 'cth. 50';

  @override
  String get dayOfWeek => 'Hari dalam seminggu';

  @override
  String get anyDay => 'Semua';

  @override
  String get anyDayHint =>
      'Hari apa saja (tetap terlihat hari ini, tersembunyi besok)';

  @override
  String onlyDayHint(String day) {
    return 'Hanya hari $day';
  }

  @override
  String get dateOfMonth => 'Tanggal dalam sebulan';

  @override
  String get anyDate => 'Semua';

  @override
  String get anyDateHint =>
      'Tanggal apa saja (tetap terlihat hari ini, tersembunyi besok)';

  @override
  String onlyDateHint(String date) {
    return 'Hanya tanggal $date';
  }

  @override
  String get startPreChecked => 'Mulai tercentang';

  @override
  String get startPreCheckedSubtitle =>
      'Saat periode baru dimulai, amal ini otomatis ditandai selesai sampai Anda menghapus centangnya.';

  @override
  String get reminder => 'Pengingat';

  @override
  String get reminderNone => 'Tidak ada';

  @override
  String reminderTime(String time) {
    return 'Pengingat: $time';
  }

  @override
  String get reminderPermissionWarning =>
      'Pengingat disimpan, tetapi notifikasi tidak diizinkan. Aktifkan di pengaturan sistem untuk menerima notifikasi.';

  @override
  String get groupByCategory => 'Kelompokkan berdasarkan kategori';

  @override
  String get flatList => 'Daftar biasa';

  @override
  String errorGeneric(String error) {
    return 'Kesalahan: $error';
  }

  @override
  String get todayEmptyHint => 'Ketuk + untuk menambahkan amal pertama Anda.';

  @override
  String get noteLabel => 'Catatan';

  @override
  String get noteHint => 'cth. Shalat di masjid';

  @override
  String get completed => 'selesai';

  @override
  String get notCompleted => 'belum selesai';

  @override
  String progressOf(int progress, int target) {
    return '$progress dari $target selesai';
  }

  @override
  String get removeFromToday => 'Hapus dari hari ini';

  @override
  String get removeFromTodaySubtitle =>
      'Sembunyikan untuk hari ini saja. Akan muncul lagi besok.';

  @override
  String get removeFromTracking => 'Hapus dari pelacakan';

  @override
  String get removeFromTrackingSubtitle =>
      'Hapus permanen dari daftar Anda. Riwayat tetap tersimpan.';

  @override
  String get chooseIcon => 'Pilih ikon';

  @override
  String get iconNone => 'Tidak ada';

  @override
  String get recentlyUsed => 'Terakhir Digunakan';

  @override
  String get emojiSectionGeneral => 'Umum';

  @override
  String get categoryNameHint => 'Nama';

  @override
  String get categoryNew => '+ Baru';

  @override
  String get addAmal => 'Tambah Amal';

  @override
  String get customAmal => 'Amal Kustom';

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
  String get templateDuhaPrayer => 'Shalat Dhuha';

  @override
  String get settingsTitle => 'Pengaturan';

  @override
  String settingsLoadError(String error) {
    return 'Gagal memuat pengaturan:\n$error';
  }

  @override
  String get sectionDayBoundary => 'Batas hari';

  @override
  String get rolloverHour => 'Jam pergantian hari';

  @override
  String get rolloverAtMidnight => 'Hari ini berakhir pada tengah malam.';

  @override
  String rolloverSubtitle(String time) {
    return 'Amal kemarin tetap bisa diedit sampai $time.';
  }

  @override
  String get pickRolloverHour => 'Pilih jam pergantian hari';

  @override
  String get sectionWeekMonth => 'Minggu & bulan';

  @override
  String get startOfWeek => 'Awal minggu';

  @override
  String get startOfMonth => 'Awal bulan';

  @override
  String get startOfMonthClamped =>
      'Tanggal di atas 28 akan disesuaikan ke hari terakhir bulan yang lebih pendek.';

  @override
  String get sectionAppearance => 'Tampilan';

  @override
  String get theme => 'Tema';

  @override
  String get themeSystem => 'Sistem';

  @override
  String get themeLight => 'Terang';

  @override
  String get themeDark => 'Gelap';

  @override
  String get sectionLanguage => 'Bahasa';

  @override
  String get language => 'Bahasa';

  @override
  String get systemDefault => 'Bawaan sistem';

  @override
  String get aboutTitle => 'Muhasaba';

  @override
  String get aboutSubtitle =>
      'Jurnal muhasabah pribadi untuk akuntabilitas deen. Semua data tersimpan di perangkat ini.';

  @override
  String get statsTitle => 'Statistik';

  @override
  String statsLoadError(String error) {
    return 'Gagal memuat statistik:\n$error';
  }

  @override
  String get perAmal => 'Per amal';

  @override
  String get thisWeek => 'Minggu ini';

  @override
  String get thisMonth => 'Bulan ini';

  @override
  String get totalCompletions => 'total penyelesaian';

  @override
  String get streakCurrent => 'Saat ini';

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
      'Belum ada amal. Tambahkan di Hari Ini untuk mulai melacak.';

  @override
  String get statsToday => 'Hari Ini';

  @override
  String get statsThisWeek => 'Minggu Ini';

  @override
  String get statsThisMonth => 'Bulan Ini';

  @override
  String get statsAllTime => 'Semua Waktu';

  @override
  String get statsCustomRange => 'Rentang Kustom';

  @override
  String get statsAllCategories => 'Semua';

  @override
  String get statsAllAmals => 'Semua';

  @override
  String get statsCompleted => 'Selesai';

  @override
  String get statsExpected => 'Diharapkan';

  @override
  String get statsVsPrevious => 'vs Sebelumnya';

  @override
  String get statsByCategory => 'Per Kategori';

  @override
  String get statsPerAmal => 'Per Amal';

  @override
  String get statsCurrentStreak => 'Streak Saat Ini';

  @override
  String get statsBestStreak => 'Streak Terbaik';

  @override
  String get statsTotalDays => 'Total Hari';

  @override
  String get statsConsistency => 'Konsistensi';

  @override
  String get statsLast5Weeks => '5 minggu terakhir';

  @override
  String get statsDailyBreakdown => 'Rincian Harian';

  @override
  String get statsCompletionRate => 'Tingkat penyelesaian';

  @override
  String get statsFilterTime => 'Waktu';

  @override
  String get statsFilterCategory => 'Kategori';

  @override
  String get statsFilterAmal => 'Amal';

  @override
  String get statsStreaks => 'Streak';

  @override
  String get statsSelectDateRange => 'Pilih rentang tanggal';

  @override
  String get historyTitle => 'Riwayat';

  @override
  String get jumpToDate => 'Lompat ke tanggal';

  @override
  String historyEmptyDay(String date) {
    return 'Tidak ada amal yang dilacak pada $date';
  }

  @override
  String get streakUnitD => 'h';

  @override
  String get streakUnitW => 'm';

  @override
  String get streakUnitM => 'b';

  @override
  String get mondayShort => 'Sen';

  @override
  String get tuesdayShort => 'Sel';

  @override
  String get wednesdayShort => 'Rab';

  @override
  String get thursdayShort => 'Kam';

  @override
  String get fridayShort => 'Jum';

  @override
  String get saturdayShort => 'Sab';

  @override
  String get sundayShort => 'Min';

  @override
  String get mondayFull => 'Senin';

  @override
  String get tuesdayFull => 'Selasa';

  @override
  String get wednesdayFull => 'Rabu';

  @override
  String get thursdayFull => 'Kamis';

  @override
  String get fridayFull => 'Jumat';

  @override
  String get saturdayFull => 'Sabtu';

  @override
  String get sundayFull => 'Minggu';

  @override
  String get hadith0 =>
      '\"Amalan yang paling dicintai Allah adalah yang dilakukan secara konsisten, meskipun sedikit.\"\n— Bukhari & Muslim';

  @override
  String get hadith1 =>
      '\"Lakukanlah amalan kebaikan sesuai kemampuanmu, karena amalan terbaik adalah yang dilakukan secara konsisten meskipun sedikit.\"\n— Ibnu Majah';

  @override
  String get hadith2 =>
      '\"Apabila anak Adam meninggal dunia, terputuslah amalnya kecuali tiga perkara: sedekah jariyah, ilmu yang bermanfaat, atau anak saleh yang mendoakannya.\"\n— Muslim';

  @override
  String get hadith3 =>
      '\"Barangsiapa yang menjaga dua shalat dingin (Subuh dan Ashar), maka ia akan masuk surga.\"\n— Bukhari';

  @override
  String get hadith4 =>
      '\"Sesungguhnya Allah tidak melihat rupa dan hartamu, tetapi Dia melihat hati dan amalmu.\"\n— Muslim';

  @override
  String get hadith5 =>
      '\"Sebaik-baik manusia adalah yang paling bermanfaat bagi manusia.\"\n— Daraquthni';

  @override
  String get hadith6 =>
      '\"Mudahkanlah dan jangan mempersulit; berilah kabar gembira dan jangan membuat orang lari.\"\n— Bukhari';

  @override
  String get hadith7 =>
      '\"Barangsiapa menempuh jalan untuk menuntut ilmu, Allah akan memudahkan baginya jalan menuju surga.\"\n— Muslim';

  @override
  String get hadith8 => '\"Sedekah tidak mengurangi harta.\"\n— Muslim';

  @override
  String get hadith9 =>
      '\"Mukmin yang kuat lebih baik dan lebih dicintai Allah daripada mukmin yang lemah, dan pada keduanya ada kebaikan.\"\n— Muslim';

  @override
  String historyDayCompleted(int completed, int total) {
    return '$completed dari $total selesai';
  }
}
