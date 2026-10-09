// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get repeatsOnDaysHint => 'Berulang pada hari yang dipilih';

  @override
  String get newDayStarted => 'Hari baru telah dimulai';

  @override
  String get appTitle => 'Muhasabah';

  @override
  String get tabToday => 'Hari Ini';

  @override
  String get tabStats => 'Statistik';

  @override
  String get tabHistory => 'Riwayat';

  @override
  String get tabSettings => 'Pengaturan';

  @override
  String get tabChallenge => 'Tantangan';

  @override
  String get tabInsights => 'Statistik';

  @override
  String get insightsTitle => 'Statistik';

  @override
  String get insightsOverview => 'Ringkasan';

  @override
  String get insightsDaily => 'Harian';

  @override
  String get insightsArchive => 'Arsip';

  @override
  String get archivedEmpty =>
      'Belum ada apa-apa di sini. Amal yang Anda hapus dari pelacakan akan muncul di sini agar bisa dipulihkan.';

  @override
  String archivedStoppedOn(String date) {
    return 'Dihentikan pada $date';
  }

  @override
  String get archivedRestore => 'Pulihkan';

  @override
  String archivedRestored(String title) {
    return '\"$title\" kembali ke daftar Anda.';
  }

  @override
  String get newChallenge => 'Tantangan baru';

  @override
  String get newAmal => 'Amal baru';

  @override
  String get editAmal => 'Ubah amal';

  @override
  String get newAmalTitle => 'Amal baru';

  @override
  String get save => 'Simpan';

  @override
  String get cancel => 'Batal';

  @override
  String get ok => 'OK';

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
  String get categorySunnah => 'Sunnah';

  @override
  String get timesPerPeriod => 'Kali per periode';

  @override
  String get custom => 'Kustom';

  @override
  String get customTargetHint => 'cth. 50';

  @override
  String get targetAny => 'Berapa pun';

  @override
  String get targetAnyHelp =>
      'Tanpa target — berapa pun jumlahnya dihitung selesai';

  @override
  String get dayOfWeek => 'Hari dalam seminggu';

  @override
  String get anyDay => 'Bebas';

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
  String get repeatMode => 'Pengulangan';

  @override
  String get onSetDays => 'Pada hari tertentu';

  @override
  String get onSetDates => 'Pada tanggal tertentu';

  @override
  String get anyDayMode => 'Hari apa saja';

  @override
  String get datesOfMonth => 'Tanggal';

  @override
  String get daysPerWeekQuestion => 'Berapa hari dalam seminggu?';

  @override
  String get daysPerMonthQuestion => 'Berapa hari dalam sebulan?';

  @override
  String get pickAtLeastOneDay => 'Pilih setidaknya satu hari';

  @override
  String get pickAtLeastOneDate => 'Pilih setidaknya satu tanggal';

  @override
  String get previewDaily => 'Berulang setiap hari';

  @override
  String previewWeeklyDays(String days) {
    return 'Berulang setiap $days';
  }

  @override
  String previewWeeklyAny(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hari',
    );
    return 'Berulang $_temp0 mana saja dalam seminggu';
  }

  @override
  String previewMonthlyDates(int count, String dates) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Berulang pada tanggal $dates setiap bulan',
    );
    return '$_temp0';
  }

  @override
  String previewMonthlyAny(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hari',
    );
    return 'Berulang $_temp0 mana saja dalam sebulan';
  }

  @override
  String get anyDate => 'Bebas';

  @override
  String get anyDateHint =>
      'Tanggal apa saja (tetap terlihat hari ini, tersembunyi besok)';

  @override
  String onlyDateHint(String date) {
    return 'Hanya tanggal $date';
  }

  @override
  String get startPreChecked => 'Otomatis tercentang';

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
  String get settingsReminders => 'Pengingat';

  @override
  String get dailyReminder => 'Pengingat harian';

  @override
  String get dailyReminderSubtitle =>
      'Pengingat ringan untuk mencatat amal Anda';

  @override
  String get dailyReminderTimeLabel => 'Waktu pengingat';

  @override
  String get dailyReminderBody =>
      'Luangkan waktu sejenak untuk mencatat amal hari ini.';

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
  String progressOf(String progress, String target) {
    return '$progress dari $target selesai';
  }

  @override
  String progressOpen(String count) {
    return '$count selesai';
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
  String get categoryNewSheetTitle => 'Kategori baru';

  @override
  String get categoryEditSheetTitle => 'Ubah kategori';

  @override
  String get addAmal => 'Tambah Amal';

  @override
  String get customAmal => 'Amal Kustom';

  @override
  String get amalTasbih => 'Tasbih 33x';

  @override
  String get amalIstighfar => 'Istighfar';

  @override
  String get amalSurahKahf => 'Surah Al-Kahfi';

  @override
  String get amalSadaqah => 'Sedekah';

  @override
  String get amalTahajjud => 'Tahajud';

  @override
  String get amalDuha => 'Shalat Dhuha';

  @override
  String get amalFajr => 'Subuh';

  @override
  String get amalDhuhr => 'Zuhur';

  @override
  String get amalAsr => 'Ashar';

  @override
  String get amalMaghrib => 'Maghrib';

  @override
  String get amalIsha => 'Isya';

  @override
  String get amalMorningAdhkar => 'Dzikir Pagi';

  @override
  String get amalEveningAdhkar => 'Dzikir Petang';

  @override
  String get amalTilawah => 'Tilawah';

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
    return 'Amal kemarin tetap bisa diubah hingga pukul $time.';
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
      'Tanggal setelah 28 disesuaikan ke hari terakhir pada bulan yang lebih pendek.';

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
  String get aboutTitle => 'Muhasabah';

  @override
  String get aboutSubtitle =>
      'Jurnal pribadi untuk muhasabah amal ibadah. Semua data tersimpan di perangkat ini.';

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
  String get totalCompletions => 'total selesai';

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
  String get statsAllTime => 'Sepanjang Waktu';

  @override
  String get statsCustomRange => 'Rentang Kustom';

  @override
  String get statsAllCategories => 'Semua';

  @override
  String get statsAllAmals => 'Semua';

  @override
  String get statsCompleted => 'Selesai';

  @override
  String get statsExpected => 'Target';

  @override
  String get statsVsPrevious => 'vs Sebelumnya';

  @override
  String get statsByCategory => 'Per Kategori';

  @override
  String get statsPerAmal => 'Per Amal';

  @override
  String get statsTotalCaption => 'total';

  @override
  String statsDaysFraction(String done, String expectedText, num expected) {
    String _temp0 = intl.Intl.pluralLogic(
      expected,
      locale: localeName,
      other: 'hari',
      one: 'hari',
    );
    return '$done/$expectedText $_temp0';
  }

  @override
  String get statsCurrentStreak => 'Runtunan Saat Ini';

  @override
  String get statsBestStreak => 'Runtunan Terbaik';

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
  String get statsAmountPerDay => 'Jumlah per hari';

  @override
  String statsCountTotal(String count) {
    return 'Total $count';
  }

  @override
  String statsCountAvg(String amount) {
    return 'Rata-rata $amount/hari';
  }

  @override
  String statsCountBest(String count, String day) {
    return 'Tertinggi $count · $day';
  }

  @override
  String get statsFilterTime => 'Waktu';

  @override
  String get statsFilterCategory => 'Kategori';

  @override
  String get statsFilterAmal => 'Amal';

  @override
  String get statsStreaks => 'Runtunan';

  @override
  String get statsSelectDateRange => 'Pilih rentang tanggal';

  @override
  String get historyTitle => 'Riwayat';

  @override
  String get jumpToDate => 'Lompat ke tanggal';

  @override
  String historyEmptyDay(String date) {
    return 'Tidak ada amal yang tercatat pada $date';
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
  String get hadith2 =>
      '\"Apabila anak Adam meninggal dunia, terputuslah amalnya kecuali tiga perkara: sedekah jariyah, ilmu yang bermanfaat, atau anak saleh yang mendoakannya.\"\n— Muslim';

  @override
  String get hadith3 =>
      '\"Barangsiapa mengerjakan dua shalat di waktu dingin (Subuh dan Ashar), ia akan masuk surga.\"\n— Bukhari';

  @override
  String get hadith4 =>
      '\"Sesungguhnya Allah tidak melihat rupa dan hartamu, tetapi Dia melihat hati dan amalmu.\"\n— Muslim';

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
  String get hadith10 =>
      '\"Barangsiapa membaca \'SubhanAllah wa bihamdihi\' seratus kali dalam sehari, dosanya akan diampuni walaupun sebanyak buih di lautan.\"\n— Bukhari & Muslim';

  @override
  String get hadith12 =>
      '\"Barangsiapa membaca Ayat Kursi setelah setiap shalat wajib, tidak ada yang menghalanginya masuk surga kecuali kematian.\"\n— Nasa\'i';

  @override
  String get hadith13 =>
      '\"Perkataan yang baik adalah sedekah.\"\n— Bukhari & Muslim';

  @override
  String get hadith14 =>
      '\"Barangsiapa beriman kepada Allah dan hari akhir, hendaklah berkata baik atau diam.\"\n— Bukhari & Muslim';

  @override
  String get hadith15 =>
      '\"Orang yang mengurus janda atau orang miskin seperti pejuang di jalan Allah.\"\n— Bukhari & Muslim';

  @override
  String get hadith16 =>
      '\"Tersenyum kepada saudaramu adalah sedekah.\"\n— Tirmidzi';

  @override
  String get hadith17 =>
      '\"Sebaik-baik kalian adalah yang mempelajari Al-Quran dan mengajarkannya.\"\n— Bukhari';

  @override
  String get hadith18 =>
      '\"Tidaklah seseorang memakan makanan yang lebih baik daripada hasil kerja tangannya sendiri.\"\n— Bukhari';

  @override
  String get hadith19 =>
      '\"Sesungguhnya Allah Maha Lembut dan mencintai kelembutan dalam segala hal.\"\n— Bukhari & Muslim';

  @override
  String historyDayCompleted(String completed, String total) {
    return '$completed dari $total selesai';
  }

  @override
  String get settingsSchedule => 'Jadwal';

  @override
  String get settingsAppearance => 'Tampilan';

  @override
  String get settingsAboutTagline => 'Teman ibadah harian Anda';

  @override
  String get settingsRolloverSub => 'Saat hari berganti';

  @override
  String get settingsAbout => 'Tentang';

  @override
  String get settingsVersion => 'Versi';

  @override
  String get settingsDeveloper => 'Pengembang';

  @override
  String get settingsSupport => 'Dukungan';

  @override
  String get settingsRate => 'Beri nilai aplikasi';

  @override
  String get settingsContact => 'Hubungi kami';

  @override
  String get settingsReportBug => 'Laporkan bug';

  @override
  String get settingsRequestFeature => 'Usulkan fitur';

  @override
  String settingsSupportFallback(String email) {
    return 'Tidak dapat membuka aplikasi email. Silakan kirim email ke $email.';
  }

  @override
  String get settingsPrivacyPolicy => 'Kebijakan Privasi';

  @override
  String get settingsPrivacyOpenFailed =>
      'Tidak dapat membuka kebijakan privasi.';

  @override
  String get hadith20 =>
      '\"Barangsiapa berpuasa Ramadan karena iman dan mengharap pahala, diampunilah dosa-dosanya yang telah lalu.\"\n— Bukhari & Muslim';

  @override
  String get hadith22 =>
      '\"Doa antara azan dan iqamah tidak ditolak.\"\n— Abu Dawud';

  @override
  String get hadith23 =>
      '\"Barangsiapa membangun masjid karena Allah, Allah akan membangunkan untuknya rumah di surga.\"\n— Bukhari & Muslim';

  @override
  String get hadith24 =>
      '\"Sebaik-baik shaf laki-laki adalah yang pertama, dan sebaik-baik shaf perempuan adalah yang terakhir.\"\n— Muslim';

  @override
  String get hadith25 => '\"Puasa adalah perisai dari api neraka.\"\n— Nasa\'i';

  @override
  String get hadith26 =>
      '\"Barangsiapa shalat dua belas rakaat sunnah, dibangunkan untuknya rumah di surga.\"\n— Muslim';

  @override
  String get hadith27 =>
      '\"Orang yang mahir membaca Al-Quran akan bersama para malaikat yang mulia.\"\n— Bukhari & Muslim';

  @override
  String get hadith29 =>
      '\"Sebaik-baik sedekah adalah memberi air minum.\"\n— Ahmad';

  @override
  String get hadith30 =>
      '\"Barangsiapa menghilangkan satu kesusahan dari seorang mukmin, Allah akan menghilangkan satu kesusahan darinya pada Hari Kiamat.\"\n— Muslim';

  @override
  String get hadith32 =>
      '\"Malu adalah bagian dari iman.\"\n— Bukhari & Muslim';

  @override
  String get hadith34 =>
      '\"Barangsiapa bersabar, Allah akan memberinya kesabaran.\"\n— Bukhari & Muslim';

  @override
  String get hadith36 =>
      '\"Tidaklah sempurna iman salah seorang di antara kalian hingga ia mencintai untuk saudaranya apa yang ia cintai untuk dirinya sendiri.\"\n— Bukhari & Muslim';

  @override
  String get hadith37 =>
      '\"Berilah makan orang yang lapar, jenguklah orang yang sakit, dan bebaskanlah tawanan.\"\n— Bukhari';

  @override
  String get hadith38 =>
      '\"Orang yang kuat bukanlah yang pandai bergulat, melainkan yang mampu mengendalikan dirinya saat marah.\"\n— Bukhari & Muslim';

  @override
  String get hadith40 =>
      '\"Ucapkanlah \'SubhanAllah\', \'Alhamdulillah\', dan \'Allahu Akbar\' masing-masing tiga puluh tiga kali setelah setiap shalat.\"\n— Muslim';

  @override
  String get hadith41 =>
      '\"Sebaik-baik dzikir adalah La ilaha illallah.\"\n— Tirmidzi';

  @override
  String get hadith42 =>
      '\"Ada dua nikmat yang sering disia-siakan banyak orang: kesehatan dan waktu luang.\"\n— Bukhari';

  @override
  String get hadith43 =>
      '\"Manfaatkanlah lima sebelum lima: masa muda sebelum tua, sehat sebelum sakit, kaya sebelum miskin, waktu luang sebelum sibuk, dan hidup sebelum mati.\"\n— Hakim';

  @override
  String get hadith44 =>
      '\"Barangsiapa membaca Surah Al-Ikhlas sepuluh kali, Allah akan membangunkan untuknya sebuah rumah di surga.\"\n— Ahmad';

  @override
  String get hadith45 =>
      '\"Shalat terbaik setelah shalat wajib adalah shalat malam.\"\n— Muslim';

  @override
  String get hadith46 =>
      '\"Sedekah memadamkan dosa sebagaimana air memadamkan api.\"\n— Tirmidzi';

  @override
  String get hadith47 =>
      '\"Orang yang menyambung tali silaturahmi bukanlah yang membalas kebaikan, melainkan yang tetap menyambungnya meskipun diputuskan.\"\n— Bukhari';

  @override
  String get hadith49 =>
      '\"Barangsiapa makan lalu berkata: \'Segala puji bagi Allah yang telah memberiku makan ini dan menganugerahkannya tanpa daya dan kekuatan dariku,\' maka dosa-dosanya yang lalu akan diampuni.\"\n— Tirmidzi';

  @override
  String get hadith53 =>
      '\"Janganlah meremehkan kebaikan sekecil apa pun, meskipun hanya bertemu saudaramu dengan wajah berseri.\"\n— Muslim';

  @override
  String get hadith54 =>
      '\"Sebaik-baik kalian adalah yang terbaik terhadap keluarganya.\"\n— Tirmidzi';

  @override
  String get hadith55 =>
      '\"Barangsiapa membaca dua ayat terakhir Surah Al-Baqarah pada malam hari, maka itu cukup baginya.\"\n— Bukhari & Muslim';

  @override
  String get hadith56 =>
      '\"Dunia adalah perhiasan, dan sebaik-baik perhiasan adalah istri yang salehah.\"\n— Muslim';

  @override
  String get hadith57 =>
      '\"Tiga doa yang tidak ditolak: doa orang yang berpuasa, pemimpin yang adil, dan orang yang teraniaya.\"\n— Tirmidzi';

  @override
  String get hadith58 =>
      '\"Barangsiapa bershalawat kepadaku sekali, Allah akan bershalawat kepadanya sepuluh kali.\"\n— Muslim';

  @override
  String get hadith65 =>
      '\"Mukmin adalah cermin bagi mukmin lainnya.\"\n— Abu Dawud';

  @override
  String get hadith66 =>
      '\"Kejujuran membawa kepada kebaikan, dan kebaikan membawa kepada surga.\"\n— Bukhari & Muslim';

  @override
  String get hadith67 =>
      '\"Kembalikanlah amanah kepada yang mempercayaimu, dan jangan berkhianat kepada yang mengkhianatimu.\"\n— Abu Dawud & Tirmidzi';

  @override
  String get hadith68 =>
      '\"Tidaklah seorang muslim tertimpa kelelahan, penyakit, kesedihan, kesusahan, gangguan, atau kegelisahan, bahkan tertusuk duri sekalipun, melainkan Allah menghapus sebagian dosanya karenanya.\"\n— Bukhari & Muslim';

  @override
  String get hadith69 =>
      '\"Doa seorang muslim untuk saudaranya tanpa sepengetahuannya selalu dikabulkan.\"\n— Muslim';

  @override
  String get hadith70 =>
      '\"Barangsiapa meminta surga kepada Allah tiga kali, surga berkata: Ya Allah, masukkanlah ia ke surga.\"\n— Tirmidzi';

  @override
  String get hadith71 =>
      '\"Puasa yang paling utama setelah Ramadan adalah puasa di bulan Allah, Muharram.\"\n— Muslim';

  @override
  String get hadith72 =>
      '\"Barangsiapa menunaikan haji dan tidak berkata-kata kotor serta tidak berbuat fasik, maka ia kembali seperti hari ia dilahirkan ibunya.\"\n— Bukhari & Muslim';

  @override
  String get hadith73 =>
      '\"Umrah ke umrah adalah penghapus dosa di antara keduanya.\"\n— Bukhari & Muslim';

  @override
  String get hadith74 =>
      '\"Bersegeralah melakukan amal kebaikan sebelum datang fitnah bagaikan potongan malam yang gelap.\"\n— Muslim';

  @override
  String get hadith75 =>
      '\"Dua rakaat fajar lebih baik daripada dunia dan seisinya.\"\n— Muslim';

  @override
  String get hadith77 =>
      '\"Seandainya kalian bertawakal kepada Allah dengan sebenar-benarnya, niscaya Dia akan memberi kalian rezeki sebagaimana Dia memberi rezeki kepada burung.\"\n— Tirmidzi';

  @override
  String get hadith78 =>
      '\"Barangsiapa menjenguk orang sakit, ia berada di taman surga hingga ia kembali.\"\n— Muslim';

  @override
  String get hadith79 =>
      '\"Sebarkanlah salam, berilah makan, dan shalatlah di malam hari saat orang-orang tidur — kalian akan masuk surga dengan selamat.\"\n— Tirmidzi';

  @override
  String get hadith80 =>
      '\"Barangsiapa tidak berterima kasih kepada manusia, maka ia tidak bersyukur kepada Allah.\"\n— Tirmidzi';

  @override
  String get hadith81 =>
      '\"Tidak boleh iri kecuali dalam dua hal: seseorang yang diberi harta oleh Allah lalu ia membelanjakannya di jalan yang benar, dan seseorang yang diberi hikmah oleh Allah lalu ia memutuskan perkara dengannya dan mengajarkannya.\"\n— Bukhari & Muslim';

  @override
  String get hadith82 =>
      '\"Seseorang itu mengikuti agama temannya, maka hendaklah salah seorang dari kalian melihat siapa yang ia jadikan teman.\"\n— Abu Dawud & Tirmidzi';

  @override
  String get hadith85 =>
      '\"Barangsiapa meninggalkan sesuatu karena Allah, Allah akan menggantinya dengan yang lebih baik.\"\n— Ahmad';

  @override
  String get hadith86 =>
      '\"Barangsiapa menutupi aib seorang muslim, Allah akan menutupi aibnya pada Hari Kiamat.\"\n— Bukhari & Muslim';

  @override
  String get hadith87 =>
      '\"Jadilah di dunia ini seakan-akan engkau orang asing atau musafir.\"\n— Bukhari';

  @override
  String get hadith88 =>
      '\"Barangsiapa memudahkan orang yang dalam kesulitan, Allah akan memudahkannya di dunia dan akhirat.\"\n— Muslim';

  @override
  String get hadith89 =>
      '\"Sesungguhnya setiap amal tergantung pada niatnya.\"\n— Bukhari & Muslim';

  @override
  String get hadith90 =>
      '\"Jauhilah prasangka, karena prasangka adalah ucapan yang paling dusta.\"\n— Bukhari & Muslim';

  @override
  String get hadith93 =>
      '\"Makanlah bersama-sama dan sebutlah nama Allah, niscaya akan diberkahi untuk kalian.\"\n— Abu Dawud';

  @override
  String get hadith94 =>
      '\"Tidak ada kaum yang duduk berdzikir kepada Allah kecuali para malaikat mengelilingi mereka, rahmat meliputi mereka, dan ketenangan turun kepada mereka.\"\n— Muslim';

  @override
  String get hadith95 =>
      '\"Allah tidak menambahkan kepada seorang hamba yang memaafkan kecuali kemuliaan.\"\n— Muslim';

  @override
  String get hadith96 =>
      '\"Ikatlah untamu, kemudian bertawakallah kepada Allah.\"\n— Tirmidzi';

  @override
  String get hadith97 =>
      '\"Sungguh menakjubkan urusan orang beriman — segala sesuatunya baik baginya.\"\n— Muslim';

  @override
  String get hadith98 =>
      '\"Seorang muslim adalah saudara bagi muslim lainnya: ia tidak menzaliminya, tidak meninggalkannya, dan tidak menghinakannya.\"\n— Muslim';

  @override
  String get delete => 'Hapus';

  @override
  String get remove => 'Hapus';

  @override
  String get deleteAmalConfirmTitle => 'Hapus dari pelacakan?';

  @override
  String deleteAmalConfirmBody(String title) {
    return '\"$title\" akan disembunyikan dari daftar Anda. Riwayat Anda tetap tersimpan.';
  }

  @override
  String get genericError => 'Terjadi kesalahan. Silakan coba lagi.';

  @override
  String get notificationChannelName => 'Pengingat amal';

  @override
  String get notificationChannelDescription =>
      'Pengingat harian untuk amal yang Anda lacak.';

  @override
  String get invalidAmalId => 'ID amal tidak valid';

  @override
  String get tutorialSettingsRow => 'Cara menggunakan Muhasabah';

  @override
  String get tutorialSkip => 'Lewati';

  @override
  String get tutorialNext => 'Lanjut';

  @override
  String get tutorialDone => 'Selesai';

  @override
  String get tutorialTapTitle => 'Ketuk untuk menyelesaikan';

  @override
  String get tutorialTapBody =>
      'Satu ketukan menandai amal selesai untuk hari ini. Ketuk lagi untuk membatalkan.';

  @override
  String get tutorialEditTitle => 'Ketuk dua kali untuk mengubah';

  @override
  String get tutorialEditBody =>
      'Membuka formulir untuk mengubahnya — ganti namanya, atau atur seberapa sering diulang.';

  @override
  String get tutorialReorderTitle => 'Tekan dan tahan untuk menyusun ulang';

  @override
  String get tutorialReorderBody =>
      'Tahan baris, lalu seret. Urutannya akan tersimpan.';

  @override
  String get tutorialRemoveTitle => 'Geser untuk menghapus';

  @override
  String get tutorialRemoveBody =>
      'Geser baris ke samping untuk menyembunyikannya hari ini, atau berhenti melacaknya.';

  @override
  String get tutorialCountTitle => 'Menghitung pengulangan';

  @override
  String get tutorialCountBody =>
      'Untuk amal dengan target lebih dari satu, gunakan − dan + untuk setiap pengulangan.';

  @override
  String get tutorialViewTitle => 'Per kategori atau satu daftar';

  @override
  String get tutorialViewBody =>
      'Beralih antara pengelompokan berdasarkan kategori dan satu daftar biasa.';

  @override
  String get tutorialLibraryTitle => 'Tambahkan amal siap pakai';

  @override
  String get tutorialLibraryBody =>
      'Jelajahi Pustaka Amal per kategori, lalu ketuk + untuk menambahkan amal ke Hari Ini.';

  @override
  String get tutorialChallengeLogTitle => 'Ketuk untuk mencatat hari ini';

  @override
  String get tutorialChallengeLogBody =>
      'Satu ketukan mencatat hari ini. Pada tantangan dengan hitungan, tiap ketukan menambah satu langkah.';

  @override
  String get tutorialChallengeOpenTitle => 'Ketuk dua kali untuk membuka';

  @override
  String get tutorialChallengeOpenBody =>
      'Membuka tantangan — lihat setiap hari, lengkapi hari yang terlewat, atau hapus tantangan.';

  @override
  String get tutorialChallengeDeleteBody =>
      'Geser kartu ke samping untuk menghapus tantangan.';

  @override
  String get tutorialChallengeAmountTitle => 'Mencatat jumlah tepat';

  @override
  String get tutorialChallengeAmountBody =>
      'Gunakan − dan + untuk mengubah, atau ketuk angkanya untuk mengetik jumlah tepat.';

  @override
  String get challengeOpenDetailsAction => 'Buka detail tantangan';

  @override
  String get challengesActive => 'Aktif';

  @override
  String get challengesPast => 'Sebelumnya';

  @override
  String challengeJustFinished(int count, String title) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tantangan telah berakhir — terbaru $title',
      one: '$title telah berakhir',
    );
    return '$_temp0';
  }

  @override
  String get challengeSectionEnded => 'Berakhir';

  @override
  String get challengesPastEmpty => 'Belum ada yang selesai.';

  @override
  String get challengesEmptyTitle => 'Belum ada tantangan';

  @override
  String get challengesEmptyBody =>
      'Tetapkan target untuk diri Anda — misalnya 20 rakaat dalam 7 hari — dan lacak di sini.';

  @override
  String get editChallenge => 'Ubah tantangan';

  @override
  String get deleteChallenge => 'Hapus tantangan';

  @override
  String get deleteChallengeConfirm =>
      'Hapus tantangan ini beserta seluruh catatan kemajuannya?';

  @override
  String get challengeShapeQuestion => 'Jenis tantangan apa ini?';

  @override
  String get challengeShapeTotal => 'Total yang ingin dicapai';

  @override
  String get challengeShapeTotalBody =>
      '1000 shalawat, 30 juz. Anda mencatat jumlah dan totalnya bertambah.';

  @override
  String get challengeShapeStreak => 'Runtunan harian';

  @override
  String get challengeShapeStreakBody =>
      'Tahajud, Subuh berjamaah. Satu centang sehari, jumlahnya tidak penting.';

  @override
  String get challengeTargetLabel => 'Target';

  @override
  String get challengeTargetRequired => 'Masukkan target lebih dari nol';

  @override
  String get challengeUnitLabel => 'Satuan (opsional)';

  @override
  String get challengeUnitHint => 'rakaat, halaman, kali';

  @override
  String get challengeOneTapAdds => 'Sekali ketuk menambah';

  @override
  String get challengeHowManyDays => 'Berapa hari?';

  @override
  String get challengeReachHowMuch => 'Targetnya berapa?';

  @override
  String get challengeSpreadOver => 'Rentang waktu';

  @override
  String get challengeSpreadEveryDay => 'Setiap hari';

  @override
  String get challengeSpreadLonger => 'Rentang lebih panjang';

  @override
  String get challengeByWhen => 'Sampai kapan?';

  @override
  String get challengeWindowDuration => 'Selesai dalam';

  @override
  String get challengeByDate => 'Sampai tanggal';

  @override
  String challengePlanRange(String start, String end) {
    return '$start sampai $end';
  }

  @override
  String challengePlanExact(String start, String end) {
    return '$start sampai $end · satu sehari, setiap hari';
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
    return '$start sampai $end · $target dari $window hari — $slack boleh terlewat';
  }

  @override
  String challengePlanRate(String start, String end, String rate) {
    return '$start sampai $end · sekitar $rate sehari';
  }

  @override
  String challengePlanOpen(String start) {
    return 'Mulai $start · tanpa batas waktu';
  }

  @override
  String challengeTooTight(
    String target,
    String window,
    num targetCount,
    num windowCount,
  ) {
    return '$target hari tidak muat dalam $window hari — runtunan dihitung satu per hari.';
  }

  @override
  String challengeDurationLabel(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hari',
    );
    return '$_temp0';
  }

  @override
  String get challengeStartDate => 'Mulai';

  @override
  String get challengeEndDate => 'Berakhir';

  @override
  String challengeProgressCount(String done, String target, String unit) {
    return '$done dari $target $unit';
  }

  @override
  String challengeProgressPlain(String done, String target) {
    return '$done dari $target';
  }

  @override
  String challengeProgressDays(String done, String target) {
    return '$done dari $target hari';
  }

  @override
  String challengeDaysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hari lagi',
    );
    return '$_temp0';
  }

  @override
  String get challengeNoDeadline => 'Tanpa batas waktu';

  @override
  String challengeOnTrack(String rate) {
    return 'Sesuai target · $rate/hari';
  }

  @override
  String challengeBehind(String rate) {
    return 'Tertinggal · butuh $rate/hari';
  }

  @override
  String challengeLastDay(String remaining) {
    return 'Hari terakhir · sisa $remaining';
  }

  @override
  String get challengeReached => 'Target tercapai';

  @override
  String get challengeCompleted => 'Selesai';

  @override
  String challengeEnded(String done, String target) {
    return 'Berakhir · $done dari $target';
  }

  @override
  String get challengeExpiredTitle => 'Tantangan berakhir';

  @override
  String challengeExpiredBody(String title, String done, String target) {
    return '$title berakhir di angka $done dari $target.';
  }

  @override
  String get challengeExtend => 'Perpanjang';

  @override
  String get challengeRestart => 'Mulai lagi';

  @override
  String get challengeArchive => 'Arsipkan';

  @override
  String get challengeDailyBreakdown => 'Catatan harian';

  @override
  String challengeNudgeBody(String title, String rate) {
    return '$title: $rate per hari agar selesai tepat waktu.';
  }

  @override
  String challengeLastDayBody(String title, String remaining) {
    return '$title: hari terakhir — sisa $remaining.';
  }

  @override
  String get challengeGroupGoal => 'Tujuan';

  @override
  String get challengeGroupShape => 'Jenis';

  @override
  String get challengeGroupPlan => 'Rencana';

  @override
  String get challengeGroupReminders => 'Pengingat';

  @override
  String get challengeStartFromTemplate => 'Mulai dari templat';

  @override
  String get challengeTemplateBlank => 'Kosong';

  @override
  String get challengePreview => 'Pratinjau';

  @override
  String get challengeTmplTahajjud => '40 malam Tahajud';

  @override
  String get challengeTmplSalawat => '1000 Shalawat';

  @override
  String get challengeTmplKhatm => 'Khatam Al-Quran 30 hari';

  @override
  String get challengeTmplFajrJamaah => '30 hari Subuh berjamaah';

  @override
  String get challengeTmplSadaqah => 'Sedekah 30 hari';

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
  String get tierRafiqMeaning => 'sahabat';

  @override
  String get tierNasirMeaning => 'pendukung';

  @override
  String get tierMuhsinMeaning => 'dermawan';

  @override
  String get tierAnsarMeaning => 'penolong';

  @override
  String get supportCardBody =>
      'Gratis, tanpa iklan dan tanpa akun. Anda bisa mendukung pengembangannya dengan memberi tip — berapa pun, kapan pun Anda mau.';

  @override
  String get supportCta => 'Dukung Muhasabah';

  @override
  String get supportAgain => 'Dukung lagi';

  @override
  String get supporterThanks =>
      'JazakumAllahu khairan — insyaAllah Muhasabah tetap gratis dan bebas iklan.';

  @override
  String supporterSince(String tier, String month) {
    return '$tier sejak $month';
  }

  @override
  String get supportPromptTitle => 'Dukung Muhasabah';

  @override
  String get supportPromptBody =>
      'Muhasabah gratis, tanpa iklan dan tanpa akun. Anda bisa mendukung pengembangannya dengan memberi tip — berapa pun, kapan pun Anda mau. Tidak ada fitur yang dikunci.';

  @override
  String get supportPromptNow => 'Dukung sekarang';

  @override
  String get supportPromptLater => 'Ingatkan nanti';

  @override
  String get supportPromptNever => 'Jangan tanya lagi';

  @override
  String get tipSheetTitle => 'Dukung Muhasabah';

  @override
  String get tipSheetBody =>
      'Pilih jumlah berapa pun, sesering yang Anda mau. Tip digunakan untuk pemeliharaan aplikasi — insyaAllah tetap gratis dan bebas iklan. Sebagai ucapan terima kasih, Anda akan ditandai sebagai pendukung di Pengaturan.';

  @override
  String tipSheetSupporterLine(String tier) {
    return '$tier — JazakumAllahu khairan.';
  }

  @override
  String get tipSheetSupporterAgain => 'Dukung lagi kapan pun Anda mau.';

  @override
  String tipSheetStoreNote(String store) {
    return 'Diproses oleh $store — kami tidak pernah melihat detail pembayaran Anda.';
  }

  @override
  String get tipSheetOtherWays =>
      'Tidak menemukan pilihan yang cocok untuk Anda?';

  @override
  String get tipSheetWriteToUs => 'Kirim email ke kami';

  @override
  String get supportEmailBody =>
      'Assalamu\'alaikum,\n\nSaya ingin mendukung pengembangan Muhasabah secara langsung.\n\nNegara:\nCara pengiriman yang saya inginkan:\nJumlah (opsional):';

  @override
  String tipBusy(String store) {
    return 'Membuka $store…';
  }

  @override
  String get tipThanks =>
      'JazakumAllahu khairan — semoga Allah menerimanya dari Anda.';

  @override
  String get tipDone => 'Selesai';

  @override
  String get tipFailed =>
      'Pembelian tidak berhasil. Tidak ada biaya yang ditagihkan.';

  @override
  String tipPending(String store) {
    return 'Tip Anda masih tertunda di $store — lencana Anda akan ditambahkan begitu dikonfirmasi.';
  }

  @override
  String get tipUnavailable =>
      'Pembelian sedang tidak tersedia di perangkat ini.';

  @override
  String get optionSetJamaa => 'Jamaah';

  @override
  String get optionJamaaAlone => 'Sendiri';

  @override
  String get optionJamaaHome => 'Berjamaah di rumah';

  @override
  String get optionJamaaMasjid => 'Berjamaah di masjid';

  @override
  String get optionSetOnTime => 'Ketepatan waktu';

  @override
  String get optionOnTimeOnTime => 'Tepat waktu';

  @override
  String get optionOnTimeLate => 'Terlambat';

  @override
  String get optionOnTimeQada => 'Qadha';

  @override
  String get optionSetQuranSession => 'Sesi Al-Quran';

  @override
  String get optionQuranRecited => 'Dibaca';

  @override
  String get optionQuranMemorised => 'Dihafal';

  @override
  String get optionQuranMeaning => 'Dengan arti';

  @override
  String get optionQuranListened => 'Didengar';

  @override
  String get optionSetSadaqahType => 'Jenis sedekah';

  @override
  String get optionSadaqahMoney => 'Uang';

  @override
  String get optionSadaqahFood => 'Makanan';

  @override
  String get optionSadaqahTime => 'Waktu';

  @override
  String get optionSadaqahOther => 'Lainnya';

  @override
  String get optionSetIntensity => 'Intensitas';

  @override
  String get optionIntensityLight => 'Ringan';

  @override
  String get optionIntensityModerate => 'Sedang';

  @override
  String get optionIntensityIntense => 'Berat';

  @override
  String get optionSetNewTitle => 'Set opsi baru';

  @override
  String get optionSetEditTitle => 'Ubah set opsi';

  @override
  String get optionSetNameLabel => 'Nama set';

  @override
  String get optionSetNameHint => 'cth. Jamaah';

  @override
  String get optionsLabel => 'Opsi';

  @override
  String get optionAdd => 'Tambah opsi';

  @override
  String optionHint(int index) {
    return 'Opsi $index';
  }

  @override
  String optionsMaxReached(int max) {
    return 'Maksimal $max opsi.';
  }

  @override
  String get optionSetPreviewLabel => 'Pratinjau — baris Hari Ini';

  @override
  String optionSetKeptForHistory(String labels) {
    return 'Disimpan untuk riwayat: $labels';
  }

  @override
  String get optionSetDelete => 'Hapus set';

  @override
  String get optionSetDeleteConfirm =>
      'Amal yang menggunakan set ini tidak akan lagi menampilkan opsi. Hari yang sudah Anda catat tetap menyimpan pilihannya.';

  @override
  String get optionSetNameRequired => 'Beri nama set ini';

  @override
  String get optionsMinRequired => 'Tambahkan minimal dua opsi';

  @override
  String get optionSetNameTooLong => 'Nama set terlalu panjang';

  @override
  String optionTooLong(int index) {
    return 'Opsi $index terlalu panjang';
  }

  @override
  String get optionSetNone => 'Tidak ada';

  @override
  String get optionSetNew => 'Set baru';

  @override
  String get requireChoiceLabel => 'Wajib memilih';

  @override
  String get requireChoiceHelp =>
      'Baris tidak akan tercentang sebelum opsi dipilih';

  @override
  String get requireChoicePickSetFirst => 'Pilih set terlebih dahulu';

  @override
  String get requireChoiceCountHelp =>
      'Amal dengan hitungan diselesaikan lewat penghitung';

  @override
  String optionsUsedOf(int used, int max) {
    return '$used dari $max opsi digunakan.';
  }

  @override
  String get choiceNeeded => 'Perlu dipilih';

  @override
  String optionSelected(String label) {
    return '$label, dipilih';
  }

  @override
  String optionNotSelected(String label) {
    return '$label, tidak dipilih';
  }

  @override
  String optionBreakdownTitle(String set) {
    return 'Rincian opsi — $set';
  }

  @override
  String optionBreakdownCaption(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kali selesai',
    );
    return 'Persentase dari $_temp0 yang disertai pilihan';
  }

  @override
  String optionNoChoiceRecorded(int none, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other: '$total hari selesai',
    );
    return 'Tidak ada pilihan tercatat — $none dari $_temp0';
  }

  @override
  String get optionRemovedSuffix => 'dihapus';

  @override
  String get optionAllAmals => 'Semua';

  @override
  String optionScopedCaption(String amal, int count) {
    return '$amal · $count tercatat';
  }

  @override
  String get optionBreakdownSectionTitle => 'Rincian opsi';

  @override
  String optionBreakdownSwipeHint(int count) {
    return '$count set · geser';
  }

  @override
  String get optionDetailEmpty =>
      'Belum ada pilihan yang tercatat untuk set ini.';

  @override
  String get optionDetailTrendHeading => 'Perkembangan';

  @override
  String optionDetailTrendReadout(String option, String from, String to) {
    return '$option berubah dari $from menjadi $to antara minggu pertama dan minggu terakhir.';
  }

  @override
  String get optionDetailByAmalHeading => 'Per amal';

  @override
  String optionDetailByAmalReadout(
    String best,
    String bestShare,
    String worst,
    String worstShare,
  ) {
    return 'Tertinggi: $best ($bestShare); terendah: $worst ($worstShare).';
  }

  @override
  String get optionDetailRecordsHeading => 'Rekor';

  @override
  String get optionDetailLongestRun => 'Runtunan Terpanjang';

  @override
  String get optionDetailBestWeek => 'Minggu Terbaik';

  @override
  String get optionDetailCurrentRun => 'Runtunan Saat Ini';

  @override
  String get optionDetailRecordsCaption =>
      'Berdasarkan satu tahun terakhir, terlepas dari filter periode di atas.';

  @override
  String get optionDetailRecentDaysHeading => 'Hari-hari terakhir';

  @override
  String optionDetailRecentDaysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hari terakhir',
      one: '1 hari terakhir',
    );
    return '$_temp0';
  }

  @override
  String get amalFivePrayers => 'Shalat Lima Waktu';

  @override
  String get amalJumuah => 'Shalat Jumat';

  @override
  String get amalWitr => 'Shalat Witir';

  @override
  String get amalQada => 'Shalat Qadha';

  @override
  String get amalFajrSunnah => 'Qabliyah Subuh';

  @override
  String get amalDhuhrSunnah => 'Rawatib Zuhur';

  @override
  String get amalAsrSunnah => 'Qabliyah Ashar';

  @override
  String get amalMaghribSunnah => 'Ba\'diyah Maghrib';

  @override
  String get amalIshaSunnah => 'Ba\'diyah Isya';

  @override
  String get amalRawatib => 'Shalat Rawatib';

  @override
  String get amalSiwak => 'Siwak';

  @override
  String get amalWuduSleep => 'Wudhu Sebelum Tidur';

  @override
  String get amalFridayGhusl => 'Mandi Jumat';

  @override
  String get amalIshraq => 'Shalat Isyraq';

  @override
  String get amalWuduPrayer => 'Shalat Sunnah Wudhu';

  @override
  String get amalTahiyyah => 'Tahiyatul Masjid';

  @override
  String get amalEarlyJumuah => 'Bersegera ke Shalat Jumat';

  @override
  String get amalAfterSalah => 'Dzikir Setelah Shalat';

  @override
  String get amalAfterFajr => 'Dzikir Setelah Subuh';

  @override
  String get amalAfterDhuhr => 'Dzikir Setelah Zuhur';

  @override
  String get amalAfterAsr => 'Dzikir Setelah Ashar';

  @override
  String get amalAfterMaghrib => 'Dzikir Setelah Maghrib';

  @override
  String get amalAfterIsha => 'Dzikir Setelah Isya';

  @override
  String get amalAyatKursi => 'Ayat Kursi';

  @override
  String get amalKursiFajr => 'Ayat Kursi Setelah Subuh';

  @override
  String get amalKursiDhuhr => 'Ayat Kursi Setelah Zuhur';

  @override
  String get amalKursiAsr => 'Ayat Kursi Setelah Ashar';

  @override
  String get amalKursiMaghrib => 'Ayat Kursi Setelah Maghrib';

  @override
  String get amalKursiIsha => 'Ayat Kursi Setelah Isya';

  @override
  String get amalSayyidIstighfar => 'Sayyidul Istighfar';

  @override
  String get amalSalawat => 'Shalawat';

  @override
  String get amalSubhanallah => 'Subhanallahi wa Bihamdihi';

  @override
  String get amalTahlil => 'La Ilaha Illallah';

  @override
  String get amalBedtimeAdhkar => 'Dzikir Sebelum Tidur';

  @override
  String get amalFridaySalawat => 'Shalawat Hari Jumat';

  @override
  String get amalHawqala => 'La Haula wa La Quwwata';

  @override
  String get amalTasbihFatimah => 'Tasbih Fatimah';

  @override
  String get amalWakingAdhkar => 'Dzikir Bangun Tidur';

  @override
  String get amalDuaAdhan => 'Doa Setelah Azan';

  @override
  String get amalDuaIqamah => 'Doa antara Azan dan Iqamah';

  @override
  String get amalDuaSujood => 'Doa dalam Sujud';

  @override
  String get amalDuaParents => 'Doa untuk Orang Tua';

  @override
  String get amalDuaOthers => 'Doa untuk Sesama';

  @override
  String get amalFridayHour => 'Doa di Akhir Waktu Jumat';

  @override
  String get amalLastThird => 'Doa di Sepertiga Malam Terakhir';

  @override
  String get amalMulk => 'Surah Al-Mulk';

  @override
  String get amalBaqarahEnd => 'Dua Ayat Terakhir Al-Baqarah';

  @override
  String get amalSajdah => 'Surah As-Sajdah';

  @override
  String get amalQuls => 'Al-Ikhlas, Al-Falaq, An-Nas';

  @override
  String get amalYasin => 'Surah Yasin';

  @override
  String get amalWaqiah => 'Surah Al-Waqi\'ah';

  @override
  String get amalHifz => 'Hafalan Al-Quran';

  @override
  String get amalMurajaah => 'Murajaah Hafalan';

  @override
  String get amalTafsir => 'Tafsir';

  @override
  String get amalListenQuran => 'Mendengarkan Al-Quran';

  @override
  String get amalTeachQuran => 'Mengajarkan Al-Quran';

  @override
  String get amalMonThu => 'Puasa Senin Kamis';

  @override
  String get amalThreeDays => 'Puasa Tiga Hari Setiap Bulan';

  @override
  String get amalDailySadaqah => 'Sedekah Harian';

  @override
  String get amalFeed => 'Memberi Makan Orang';

  @override
  String get amalHelpNeed => 'Membantu yang Membutuhkan';

  @override
  String get amalOrphan => 'Menyantuni Anak Yatim';

  @override
  String get amalGiveWater => 'Memberi Minum';

  @override
  String get amalLearnHadith => 'Belajar Satu Hadits';

  @override
  String get amalReadBook => 'Membaca Buku Islami';

  @override
  String get amalSeerah => 'Mempelajari Sirah';

  @override
  String get amalClass => 'Menghadiri Kajian';

  @override
  String get amalArabic => 'Belajar Bahasa Arab';

  @override
  String get amalLearnDua => 'Belajar Doa Baru';

  @override
  String get amalShare => 'Membagikan Ilmu';

  @override
  String get amalFiqh => 'Belajar Fikih';

  @override
  String get amalMuhasaba => 'Muhasabah Malam';

  @override
  String get amalSpeakGood => 'Berkata Baik atau Diam';

  @override
  String get amalNoBackbiting => 'Menjauhi Ghibah';

  @override
  String get amalAnger => 'Menahan Amarah';

  @override
  String get amalGaze => 'Menundukkan Pandangan';

  @override
  String get amalTruthful => 'Berkata Jujur';

  @override
  String get amalSmile => 'Tersenyum';

  @override
  String get amalSalam => 'Menebar Salam';

  @override
  String get amalForgive => 'Memaafkan Orang Lain';

  @override
  String get amalGratitude => 'Bersyukur';

  @override
  String get amalVisitSick => 'Menjenguk Orang Sakit';

  @override
  String get amalNeighbours => 'Berbuat Baik kepada Tetangga';

  @override
  String get amalRemoveHarm => 'Menyingkirkan Gangguan dari Jalan';

  @override
  String get amalParents => 'Berbakti kepada Orang Tua';

  @override
  String get amalFamilyTies => 'Silaturahmi';

  @override
  String get amalHelpHome => 'Membantu Pekerjaan Rumah';

  @override
  String get amalTeachChildren => 'Mengajarkan Agama kepada Anak';

  @override
  String get amalSpouse => 'Berbuat Baik kepada Pasangan';

  @override
  String get categoryDua => 'Doa';

  @override
  String get categoryFasting => 'Puasa';

  @override
  String get categoryKnowledge => 'Ilmu';

  @override
  String get categoryCharacter => 'Akhlak';

  @override
  String get categoryFamily => 'Keluarga';

  @override
  String get libraryTitle => 'Pustaka Amal';

  @override
  String get librarySearchHint => 'Cari amal';

  @override
  String get libraryAll => 'Semua';

  @override
  String get libraryAdded => 'Ditambahkan ke Hari Ini';

  @override
  String libraryAddedShowsOn(String days) {
    return 'Ditambahkan · tampil pada hari $days';
  }

  @override
  String libraryNoMatch(String query) {
    return 'Tidak ada amal yang cocok dengan “$query”';
  }

  @override
  String libraryCreateNamed(String query) {
    return 'Buat “$query”';
  }

  @override
  String get libraryPickBanner => 'Pilih dari Pustaka Amal';

  @override
  String libraryPickBannerSubtitle(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countText amal siap pakai',
    );
    return '$_temp0';
  }

  @override
  String get libraryFilledIn => 'Diisi dari Pustaka Amal';

  @override
  String get libraryChange => 'Ganti';

  @override
  String get libraryEditAction => 'Ubah';

  @override
  String libraryWeeklyAny(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countText hari seminggu',
      one: 'Sekali seminggu',
    );
    return '$_temp0';
  }

  @override
  String libraryMonthlyAny(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countText hari sebulan',
      one: 'Sekali sebulan',
    );
    return '$_temp0';
  }

  @override
  String libraryTimes(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '${countText}x',
    );
    return '$_temp0';
  }

  @override
  String get libraryAnyAmount => 'Berapa pun';

  @override
  String libraryAddTooltip(String title) {
    return 'Tambah $title';
  }

  @override
  String get libraryOnList => 'Sudah ada di daftar Anda';

  @override
  String get todayEmptyBrowse => 'Jelajahi Pustaka Amal';
}
