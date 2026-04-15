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
  String get categoryNewSheetTitle => 'Kategori baru';

  @override
  String get categoryEditSheetTitle => 'Ubah kategori';

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
  String get hadith2 =>
      '\"Apabila anak Adam meninggal dunia, terputuslah amalnya kecuali tiga perkara: sedekah jariyah, ilmu yang bermanfaat, atau anak saleh yang mendoakannya.\"\n— Muslim';

  @override
  String get hadith3 =>
      '\"Barangsiapa yang menjaga dua shalat dingin (Subuh dan Ashar), maka ia akan masuk surga.\"\n— Bukhari';

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
      '\"Barangsiapa membaca \'SubhanAllah wa bihamdihi\' seratus kali dalam sehari, dosanya akan diampuni meski seperti buih di lautan.\"\n— Bukhari & Muslim';

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
      '\"Orang yang menanggung janda dan orang miskin seperti pejuang di jalan Allah.\"\n— Bukhari & Muslim';

  @override
  String get hadith16 =>
      '\"Tersenyum kepada saudaramu adalah sedekah.\"\n— Tirmidzi';

  @override
  String get hadith17 =>
      '\"Sebaik-baik kalian adalah yang mempelajari Al-Quran dan mengajarkannya.\"\n— Bukhari';

  @override
  String get hadith18 =>
      '\"Tidak ada makanan yang lebih baik dari hasil kerja tangannya sendiri.\"\n— Bukhari';

  @override
  String get hadith19 =>
      '\"Allah itu lembut dan mencintai kelembutan dalam segala hal.\"\n— Bukhari & Muslim';

  @override
  String historyDayCompleted(int completed, int total) {
    return '$completed dari $total selesai';
  }

  @override
  String get settingsSchedule => 'Jadwal';

  @override
  String get settingsAppearance => 'Tampilan';

  @override
  String get settingsAboutTagline => 'Pendamping deen harian Anda';

  @override
  String get settingsRolloverSub => 'Kapan hari direset';

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
  String get settingsRequestFeature => 'Minta fitur';

  @override
  String settingsSupportFallback(String email) {
    return 'Tidak dapat membuka surat. Silakan kirim email ke $email.';
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
      '\"Doa antara adzan dan iqamah tidak ditolak.\"\n— Abu Dawud';

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
      '\"Orang yang mahir membaca Al-Quran bersama para malaikat yang mulia.\"\n— Bukhari & Muslim';

  @override
  String get hadith29 =>
      '\"Sebaik-baik sedekah adalah memberi minum air.\"\n— Ahmad';

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
      '\"Tidak sempurna iman seseorang di antara kalian hingga ia mencintai saudaranya seperti mencintai dirinya sendiri.\"\n— Bukhari & Muslim';

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
      '\"Dzikir terbaik adalah La ilaha illallah.\"\n— Tirmidzi';

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
      '\"Jangan meremehkan kebaikan sekecil apapun, meskipun hanya bertemu saudaramu dengan wajah berseri.\"\n— Muslim';

  @override
  String get hadith54 =>
      '\"Sebaik-baik kalian adalah yang terbaik terhadap keluarganya.\"\n— Tirmidzi';

  @override
  String get hadith55 =>
      '\"Barangsiapa membaca dua ayat terakhir Surah Al-Baqarah pada malam hari, maka itu cukup baginya.\"\n— Bukhari & Muslim';

  @override
  String get hadith56 =>
      '\"Dunia adalah perhiasan, dan sebaik-baik perhiasan adalah istri yang shalihah.\"\n— Muslim';

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
      '\"Tidaklah seorang Muslim tertimpa kelelahan, penyakit, kesedihan, kesusahan, gangguan, atau kegelisahan, bahkan tertusuk duri sekalipun, melainkan Allah menghapus sebagian dosanya karenanya.\"\n— Bukhari & Muslim';

  @override
  String get hadith69 =>
      '\"Doa seorang Muslim untuk saudaranya yang tidak hadir selalu dikabulkan.\"\n— Muslim';

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
      '\"Dua rakaat Fajar lebih baik dari dunia dan segala isinya.\"\n— Muslim';

  @override
  String get hadith77 =>
      '\"Seandainya kalian bertawakal kepada Allah dengan sebenar-benarnya, niscaya Dia akan memberi kalian rezeki sebagaimana Dia memberi rezeki kepada burung.\"\n— Tirmidzi';

  @override
  String get hadith78 =>
      '\"Barang siapa yang menjenguk orang sakit, ia berada di taman surga hingga ia kembali.\"\n— Muslim';

  @override
  String get hadith79 =>
      '\"Sebarkanlah salam, berilah makan, dan salatlah di malam hari saat orang-orang tidur — kalian akan masuk surga dengan damai.\"\n— Tirmidzi';

  @override
  String get hadith80 =>
      '\"Barangsiapa tidak berterima kasih kepada manusia, maka ia tidak bersyukur kepada Allah.\"\n— Tirmidzi';

  @override
  String get hadith81 =>
      '\"Tidak boleh iri kecuali dalam dua hal: seseorang yang diberi harta oleh Allah lalu ia menghabiskannya di jalan kebenaran, dan seseorang yang diberi hikmah lalu ia memutuskan dan mengajarkannya.\"\n— Bukhari & Muslim';

  @override
  String get hadith82 =>
      '\"Seseorang itu mengikuti agama temannya, maka hendaklah salah seorang dari kalian melihat siapa yang ia jadikan teman.\"\n— Abu Dawud & Tirmidzi';

  @override
  String get hadith85 =>
      '\"Barangsiapa meninggalkan sesuatu karena Allah, Allah akan menggantinya dengan yang lebih baik.\"\n— Ahmad';

  @override
  String get hadith86 =>
      '\"Barang siapa yang menutupi aib seorang muslim, Allah akan menutupi aibnya pada Hari Kiamat.\"\n— Bukhari & Muslim';

  @override
  String get hadith87 =>
      '\"Jadilah di dunia ini seakan-akan engkau orang asing atau musafir.\"\n— Bukhari';

  @override
  String get hadith88 =>
      '\"Barang siapa yang memudahkan orang yang dalam kesulitan, Allah akan memudahkannya di dunia dan akhirat.\"\n— Muslim';

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
}
