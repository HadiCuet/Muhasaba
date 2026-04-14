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
  String get categoryNewSheetTitle => 'Kategori baharu';

  @override
  String get categoryEditSheetTitle => 'Edit kategori';

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
  String get hadith2 =>
      '\"Apabila anak Adam meninggal dunia, terputuslah segala amalannya kecuali tiga perkara: sedekah jariah, ilmu yang bermanfaat, atau anak soleh yang mendoakannya.\"\n— Muslim';

  @override
  String get hadith3 =>
      '\"Sesiapa yang menunaikan dua solat yang sejuk (Subuh dan Asar) akan masuk syurga.\"\n— Bukhari';

  @override
  String get hadith4 =>
      '\"Allah tidak melihat rupa paras kamu atau harta kamu, tetapi Dia melihat hati dan amalan kamu.\"\n— Muslim';

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
  String get hadith10 =>
      '\"Sesiapa yang membaca \'SubhanAllah wa bihamdihi\' seratus kali sehari, dosanya akan diampunkan walaupun sebanyak buih di lautan.\"\n— Bukhari';

  @override
  String get hadith12 =>
      '\"Sesiapa yang membaca Ayat Kursi selepas setiap solat fardhu, tiada yang menghalangnya daripada masuk syurga kecuali kematian.\"\n— Nasa\'i';

  @override
  String get hadith13 =>
      '\"Perkataan yang baik adalah sedekah.\"\n— Bukhari & Muslim';

  @override
  String get hadith14 =>
      '\"Sesiapa yang beriman kepada Allah dan hari akhirat, hendaklah berkata baik atau berdiam diri.\"\n— Bukhari & Muslim';

  @override
  String get hadith15 =>
      '\"Orang yang menjaga janda dan orang miskin adalah seperti pejuang di jalan Allah.\"\n— Bukhari';

  @override
  String get hadith16 =>
      '\"Senyumanmu kepada saudaramu adalah sedekah.\"\n— Tirmizi';

  @override
  String get hadith17 =>
      '\"Sebaik-baik kamu adalah yang mempelajari al-Quran dan mengajarkannya.\"\n— Bukhari';

  @override
  String get hadith18 =>
      '\"Tiada makanan yang lebih baik daripada hasil usaha tangannya sendiri.\"\n— Bukhari';

  @override
  String get hadith19 =>
      '\"Allah itu lembut dan menyukai kelembutan dalam segala perkara.\"\n— Bukhari & Muslim';

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

  @override
  String get settingsAbout => 'Perihal';

  @override
  String get settingsVersion => 'Versi';

  @override
  String get settingsDeveloper => 'Pembangun';

  @override
  String get settingsSupport => 'Sokongan';

  @override
  String get settingsRate => 'Nilaikan aplikasi';

  @override
  String get settingsContact => 'Hubungi kami';

  @override
  String get settingsReportBug => 'Laporkan pepijat';

  @override
  String get settingsRequestFeature => 'Minta ciri';

  @override
  String settingsSupportFallback(String email) {
    return 'Tidak dapat membuka mel. Sila hantar e-mel ke $email.';
  }

  @override
  String get hadith20 =>
      '\"Sesiapa yang berpuasa pada bulan Ramadan kerana iman dan mengharapkan pahala, dosa-dosanya yang lalu akan diampunkan.\"\n— Bukhari & Muslim';

  @override
  String get hadith22 =>
      '\"Doa antara azan dan iqamah tidak ditolak.\"\n— Abu Dawud';

  @override
  String get hadith23 =>
      '\"Sesiapa yang membina masjid kerana Allah, Allah akan membina untuknya sebuah rumah di syurga.\"\n— Bukhari & Muslim';

  @override
  String get hadith24 =>
      '\"Saf yang terbaik bagi lelaki ialah saf yang pertama, dan saf yang terbaik bagi wanita ialah saf yang terakhir.\"\n— Muslim';

  @override
  String get hadith25 =>
      '\"Puasa adalah perisai daripada api neraka.\"\n— Nasa\'i';

  @override
  String get hadith26 =>
      '\"Sesiapa yang menunaikan dua belas rakaat solat sunat, sebuah rumah akan dibina untuknya di syurga.\"\n— Muslim';

  @override
  String get hadith27 =>
      '\"Orang yang mahir membaca al-Quran akan bersama para malaikat yang mulia.\"\n— Bukhari & Muslim';

  @override
  String get hadith29 =>
      '\"Sedekah yang paling utama ialah memberi air minum.\"\n— Ahmad';

  @override
  String get hadith30 =>
      '\"Sesiapa yang melepaskan kesusahan seorang mukmin, Allah akan melepaskan kesusahannya pada Hari Kiamat.\"\n— Muslim';

  @override
  String get hadith32 =>
      '\"Malu adalah sebahagian daripada iman.\"\n— Bukhari & Muslim';

  @override
  String get hadith34 =>
      '\"Sesiapa yang bersabar, Allah akan memberikan kesabaran kepadanya.\"\n— Bukhari & Muslim';

  @override
  String get hadith36 =>
      '\"Tidak sempurna iman seseorang sehingga dia mencintai untuk saudaranya apa yang dia cintai untuk dirinya sendiri.\"\n— Bukhari & Muslim';

  @override
  String get hadith37 =>
      '\"Berilah makan orang yang lapar, ziarahilah orang yang sakit, dan bebaskanlah tawanan.\"\n— Bukhari';

  @override
  String get hadith38 =>
      '\"Orang yang kuat bukanlah yang menang dalam gusti, tetapi yang dapat mengawal dirinya ketika marah.\"\n— Bukhari & Muslim';

  @override
  String get hadith40 =>
      '\"Ucapkanlah \'SubhanAllah\', \'Alhamdulillah\', dan \'Allahu Akbar\' masing-masing tiga puluh tiga kali selepas setiap solat.\"\n— Muslim';

  @override
  String get hadith41 =>
      '\"Zikir yang paling utama ialah La ilaha illallah.\"\n— Tirmizi';

  @override
  String get hadith42 =>
      '\"Ada dua nikmat yang ramai manusia tertipu dengannya: kesihatan dan masa lapang.\"\n— Bukhari';

  @override
  String get hadith43 =>
      '\"Manfaatkanlah lima perkara sebelum lima perkara: muda sebelum tua, sihat sebelum sakit, kaya sebelum miskin, lapang sebelum sibuk, dan hidup sebelum mati.\"\n— Hakim';

  @override
  String get hadith44 =>
      '\"Sesiapa yang membaca Surah al-Ikhlas sepuluh kali, Allah akan membina untuknya sebuah rumah di syurga.\"\n— Ahmad';

  @override
  String get hadith45 =>
      '\"Solat yang paling utama selepas solat fardhu ialah solat malam.\"\n— Muslim';

  @override
  String get hadith46 =>
      '\"Sedekah memadamkan dosa sebagaimana air memadamkan api.\"\n— Tirmizi';

  @override
  String get hadith47 =>
      '\"Orang yang menghubungkan silaturrahim bukanlah yang membalas. Tetapi dia adalah yang menghubungkannya walaupun dipinggirkan.\"\n— Bukhari';

  @override
  String get hadith49 =>
      '\"Sesiapa yang makan lalu berkata: \'Segala puji bagi Allah yang telah memberi makan ini kepadaku dan mengurniainya tanpa sebarang daya dan kekuatan daripadaku,\' dosa-dosa lamanya akan diampunkan.\"\n— Tirmizi';

  @override
  String get hadith53 =>
      '\"Jangan meremehkan sebarang kebaikan, walaupun bertemu saudaramu dengan wajah yang ceria.\"\n— Muslim';

  @override
  String get hadith54 =>
      '\"Sebaik-baik kamu ialah yang terbaik terhadap keluarganya.\"\n— Tirmizi';

  @override
  String get hadith55 =>
      '\"Sesiapa yang membaca dua ayat terakhir Surah al-Baqarah pada waktu malam, ia memadai baginya.\"\n— Bukhari & Muslim';

  @override
  String get hadith56 =>
      '\"Dunia adalah kesenangan, dan sebaik-baik kesenangan dunia ialah isteri yang solehah.\"\n— Muslim';

  @override
  String get hadith57 =>
      '\"Tiga doa yang tidak ditolak: doa orang yang berpuasa, doa pemimpin yang adil, dan doa orang yang dizalimi.\"\n— Tirmizi';

  @override
  String get hadith58 =>
      '\"Sesiapa yang berselawat ke atasku sekali, Allah akan berselawat ke atasnya sepuluh kali.\"\n— Muslim';

  @override
  String get hadith65 =>
      '\"Orang beriman adalah cermin bagi orang beriman yang lain.\"\n— Abu Dawud';

  @override
  String get hadith66 =>
      '\"Kejujuran membawa kepada kebaikan, dan kebaikan membawa kepada syurga.\"\n— Bukhari & Muslim';

  @override
  String get hadith67 =>
      '\"Kembalikan amanah kepada yang mempercayaimu, dan jangan mengkhianati orang yang mengkhianatimu.\"\n— Abu Dawud & Tirmizi';

  @override
  String get hadith68 =>
      '\"Tiada keletihan, penyakit, kesedihan, kedukaan, kesakitan atau kesusahan yang menimpa seorang Muslim — walaupun tertusuk duri — melainkan Allah menghapuskan sebahagian dosanya.\"\n— Bukhari & Muslim';

  @override
  String get hadith69 =>
      '\"Doa seorang Muslim untuk saudaranya tanpa pengetahuannya sentiasa dimakbulkan.\"\n— Muslim';

  @override
  String get hadith70 =>
      '\"Sesiapa yang memohon syurga kepada Allah tiga kali, syurga berkata: Ya Allah, masukkanlah dia ke syurga.\"\n— Tirmizi';

  @override
  String get hadith71 =>
      '\"Puasa yang paling utama selepas Ramadan ialah puasa pada bulan Allah iaitu Muharram.\"\n— Muslim';

  @override
  String get hadith72 =>
      '\"Sesiapa yang menunaikan haji dan tidak melakukan perbuatan keji mahupun dosa, dia kembali seperti hari ibunya melahirkannya.\"\n— Bukhari & Muslim';

  @override
  String get hadith73 =>
      '\"Umrah ke umrah adalah penghapus dosa di antara keduanya.\"\n— Bukhari & Muslim';

  @override
  String get hadith74 =>
      '\"Bersegeralah melakukan amal kebaikan sebelum datangnya fitnah seperti kepingan malam yang gelap.\"\n— Muslim';

  @override
  String get hadith75 =>
      '\"Dua rakaat Subuh lebih baik daripada dunia dan segala isinya.\"\n— Muslim';

  @override
  String get hadith77 =>
      '\"Jika kamu bertawakal kepada Allah dengan sebenar-benar tawakal, nescaya Allah akan memberi rezeki kepadamu sebagaimana Dia memberi rezeki kepada burung.\"\n— Tirmizi';

  @override
  String get hadith78 =>
      '\"Sesiapa yang menziarahi orang sakit, dia berada dalam taman syurga sehingga dia pulang.\"\n— Muslim';

  @override
  String get hadith79 =>
      '\"Sebarkanlah salam, berilah makan, dan solatlah pada waktu malam ketika orang lain tidur — nescaya kamu masuk syurga dengan selamat.\"\n— Tirmizi';

  @override
  String get hadith80 =>
      '\"Sesiapa yang tidak berterima kasih kepada manusia, tidak berterima kasih kepada Allah.\"\n— Tirmizi';

  @override
  String get hadith81 =>
      '\"Tidak boleh hasad dengki kecuali dalam dua perkara: orang yang dikurniakan Allah harta lalu dia membelanjakannya di jalan yang benar, dan orang yang dikurniakan Allah hikmah lalu dia menghukum dan mengajar dengannya.\"\n— Bukhari & Muslim';

  @override
  String get hadith82 =>
      '\"Seseorang itu mengikut agama sahabat karibnya, maka hendaklah setiap kamu melihat siapa yang dijadikan temannya.\"\n— Abu Dawud & Tirmizi';

  @override
  String get hadith85 =>
      '\"Sesiapa yang meninggalkan sesuatu kerana Allah, Allah akan menggantikannya dengan yang lebih baik.\"\n— Ahmad';

  @override
  String get hadith86 =>
      '\"Sesiapa yang menutup aib seorang Muslim, Allah akan menutup aibnya pada Hari Kiamat.\"\n— Bukhari & Muslim';

  @override
  String get hadith87 =>
      '\"Jadilah di dunia ini seolah-olah kamu seorang asing atau musafir.\"\n— Bukhari';

  @override
  String get hadith88 =>
      '\"Sesiapa yang memudahkan orang yang dalam kesulitan, Allah akan memudahkannya di dunia dan akhirat.\"\n— Muslim';

  @override
  String get hadith89 =>
      '\"Pahala amalan bergantung kepada niat.\"\n— Bukhari & Muslim';

  @override
  String get hadith90 =>
      '\"Jauhilah sangka buruk, kerana sangka buruk adalah seburuk-buruk perkataan.\"\n— Bukhari & Muslim';

  @override
  String get hadith93 =>
      '\"Makanlah bersama-sama dan sebutlah nama Allah, nescaya makanan itu diberkati untuk kamu.\"\n— Abu Dawud';

  @override
  String get hadith94 =>
      '\"Sebaik-baik majlis ialah yang paling luas.\"\n— Abu Dawud';

  @override
  String get hadith95 =>
      '\"Maafkanlah, nescaya kamu akan dimaafkan.\"\n— Ahmad';

  @override
  String get hadith96 =>
      '\"Ikatlah untamu kemudian bertawakallah kepada Allah.\"\n— Tirmizi';

  @override
  String get hadith97 =>
      '\"Sungguh menakjubkan urusan orang beriman — semuanya baik baginya.\"\n— Muslim';

  @override
  String get hadith98 =>
      '\"Seorang Muslim adalah saudara bagi Muslim yang lain: dia tidak menzaliminya, tidak membiarkannya, dan tidak menghinanya.\"\n— Muslim';
}
