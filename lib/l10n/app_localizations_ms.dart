// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malay (`ms`).
class AppLocalizationsMs extends AppLocalizations {
  AppLocalizationsMs([String locale = 'ms']) : super(locale);

  @override
  String get repeatsOnDaysHint => 'Berulang pada hari yang dipilih';

  @override
  String get newDayStarted => 'Hari baharu telah bermula';

  @override
  String get appTitle => 'Muhasabah';

  @override
  String get tabToday => 'Hari Ini';

  @override
  String get tabStats => 'Statistik';

  @override
  String get tabHistory => 'Sejarah';

  @override
  String get tabSettings => 'Tetapan';

  @override
  String get tabChallenge => 'Cabaran';

  @override
  String get tabInsights => 'Statistik';

  @override
  String get insightsTitle => 'Statistik';

  @override
  String get insightsOverview => 'Ringkasan';

  @override
  String get insightsDaily => 'Harian';

  @override
  String get insightsArchive => 'Arkib';

  @override
  String get archivedEmpty =>
      'Belum ada apa-apa di sini. Amal yang tidak lagi anda jejak akan muncul di sini supaya anda boleh memulihkannya.';

  @override
  String archivedStoppedOn(String date) {
    return 'Dihentikan pada $date';
  }

  @override
  String get archivedRestore => 'Pulihkan';

  @override
  String archivedRestored(String title) {
    return '\"$title\" kembali ke senarai anda.';
  }

  @override
  String get newChallenge => 'Cabaran baharu';

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
  String get ok => 'OK';

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
  String get categorySunnah => 'Sunnah';

  @override
  String get timesPerPeriod => 'Kali setiap tempoh';

  @override
  String get custom => 'Tersuai';

  @override
  String get customTargetHint => 'cth. 50';

  @override
  String get targetAny => 'Sebarang';

  @override
  String get targetAnyHelp => 'Tiada sasaran — sebarang jumlah dikira selesai';

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
  String get repeatMode => 'Ulangan';

  @override
  String get onSetDays => 'Pada hari tertentu';

  @override
  String get onSetDates => 'Pada tarikh tertentu';

  @override
  String get anyDayMode => 'Mana-mana hari';

  @override
  String get datesOfMonth => 'Tarikh';

  @override
  String get daysPerWeekQuestion => 'Berapa hari dalam seminggu?';

  @override
  String get daysPerMonthQuestion => 'Berapa hari dalam sebulan?';

  @override
  String get pickAtLeastOneDay => 'Pilih sekurang-kurangnya satu hari';

  @override
  String get pickAtLeastOneDate => 'Pilih sekurang-kurangnya satu tarikh';

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
    return 'Berulang mana-mana $_temp0 seminggu';
  }

  @override
  String previewMonthlyDates(int count, String dates) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Berulang setiap bulan pada tarikh $dates',
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
    return 'Berulang mana-mana $_temp0 sebulan';
  }

  @override
  String get anyDate => 'Mana-mana';

  @override
  String get anyDateHint => 'Mana-mana tarikh (kekal hari ini, hilang esok)';

  @override
  String onlyDateHint(String date) {
    return 'Hanya pada $date';
  }

  @override
  String get startPreChecked => 'Mula bertanda selesai';

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
  String get settingsReminders => 'Peringatan';

  @override
  String get dailyReminder => 'Peringatan harian';

  @override
  String get dailyReminderSubtitle =>
      'Peringatan lembut untuk menjejaki amal anda';

  @override
  String get dailyReminderTimeLabel => 'Masa peringatan';

  @override
  String get dailyReminderBody =>
      'Luangkan sedikit masa untuk menjejaki amal hari ini.';

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
  String progressOf(String progress, String target) {
    return '$progress daripada $target selesai';
  }

  @override
  String progressOpen(String count) {
    return '$count selesai';
  }

  @override
  String get removeFromToday => 'Buang daripada hari ini';

  @override
  String get removeFromTodaySubtitle =>
      'Sembunyikan untuk hari ini sahaja. Ia akan kembali esok.';

  @override
  String get removeFromTracking => 'Berhenti menjejak';

  @override
  String get removeFromTrackingSubtitle =>
      'Buang secara kekal daripada senarai anda. Sejarah dikekalkan.';

  @override
  String get chooseIcon => 'Pilih ikon';

  @override
  String get iconNone => 'Tiada';

  @override
  String get recentlyUsed => 'Digunakan Baru-baru Ini';

  @override
  String get emojiSectionGeneral => 'Umum';

  @override
  String get categoryNameHint => 'Nama';

  @override
  String get categoryNew => '+ Baharu';

  @override
  String get categoryNewSheetTitle => 'Kategori baharu';

  @override
  String get categoryEditSheetTitle => 'Sunting kategori';

  @override
  String get addAmal => 'Tambah Amal';

  @override
  String get customAmal => 'Amal Tersuai';

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
  String get amalDuha => 'Solat Dhuha';

  @override
  String get amalFajr => 'Subuh';

  @override
  String get amalDhuhr => 'Zohor';

  @override
  String get amalAsr => 'Asar';

  @override
  String get amalMaghrib => 'Maghrib';

  @override
  String get amalIsha => 'Isyak';

  @override
  String get amalMorningAdhkar => 'Zikir Pagi';

  @override
  String get amalEveningAdhkar => 'Zikir Petang';

  @override
  String get amalTilawah => 'Tilawah';

  @override
  String get settingsTitle => 'Tetapan';

  @override
  String settingsLoadError(String error) {
    return 'Gagal memuatkan tetapan:\n$error';
  }

  @override
  String get sectionDayBoundary => 'Pertukaran hari';

  @override
  String get rolloverHour => 'Jam pertukaran hari';

  @override
  String get rolloverAtMidnight => 'Hari berakhir pada tengah malam.';

  @override
  String rolloverSubtitle(String time) {
    return 'Amal semalam masih boleh disunting sehingga $time.';
  }

  @override
  String get pickRolloverHour => 'Pilih jam pertukaran hari';

  @override
  String get sectionWeekMonth => 'Minggu & bulan';

  @override
  String get startOfWeek => 'Permulaan minggu';

  @override
  String get startOfMonth => 'Permulaan bulan';

  @override
  String get startOfMonthClamped =>
      'Bagi bulan yang lebih pendek, tarikh selepas 28hb dianjakkan ke hari terakhir bulan itu.';

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
  String get aboutTitle => 'Muhasabah';

  @override
  String get aboutSubtitle =>
      'Jurnal peribadi untuk muhasabah diri. Semua data kekal dalam peranti ini.';

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
  String get totalCompletions => 'jumlah kali selesai';

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
  String get statsTotalCaption => 'jumlah';

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
  String get statsCurrentStreak => 'Rentetan Semasa';

  @override
  String get statsBestStreak => 'Rentetan Terbaik';

  @override
  String get statsTotalDays => 'Jumlah Hari';

  @override
  String get statsConsistency => 'Konsistensi';

  @override
  String get statsLast5Weeks => '5 minggu terakhir';

  @override
  String get statsDailyBreakdown => 'Pecahan Harian';

  @override
  String get statsCompletionRate => 'Kadar penyelesaian';

  @override
  String get statsAmountPerDay => 'Jumlah setiap hari';

  @override
  String statsCountTotal(String count) {
    return 'Jumlah $count';
  }

  @override
  String statsCountAvg(String amount) {
    return 'Purata $amount/hari';
  }

  @override
  String statsCountBest(String count, String day) {
    return 'Tertinggi $count · $day';
  }

  @override
  String get statsFilterTime => 'Masa';

  @override
  String get statsFilterCategory => 'Kategori';

  @override
  String get statsFilterAmal => 'Amal';

  @override
  String get statsStreaks => 'Rentetan';

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
  String get hadith8 => '\"Sedekah tidak akan mengurangkan harta.\"\n— Muslim';

  @override
  String get hadith9 =>
      '\"Mukmin yang kuat lebih baik dan lebih dicintai Allah daripada mukmin yang lemah, dan pada kedua-duanya ada kebaikan.\"\n— Muslim';

  @override
  String get hadith10 =>
      '\"Sesiapa yang membaca \'SubhanAllah wa bihamdihi\' seratus kali sehari, dosanya akan diampunkan walaupun sebanyak buih di lautan.\"\n— Bukhari & Muslim';

  @override
  String get hadith12 =>
      '\"Sesiapa yang membaca Ayatul Kursi selepas setiap solat fardhu, tiada yang menghalangnya daripada masuk syurga kecuali kematian.\"\n— Nasa\'i';

  @override
  String get hadith13 =>
      '\"Perkataan yang baik adalah sedekah.\"\n— Bukhari & Muslim';

  @override
  String get hadith14 =>
      '\"Sesiapa yang beriman kepada Allah dan hari akhirat, hendaklah berkata baik atau berdiam diri.\"\n— Bukhari & Muslim';

  @override
  String get hadith15 =>
      '\"Orang yang menjaga janda atau orang miskin adalah seperti pejuang di jalan Allah.\"\n— Bukhari & Muslim';

  @override
  String get hadith16 =>
      '\"Senyumanmu kepada saudaramu adalah sedekah.\"\n— Tirmizi';

  @override
  String get hadith17 =>
      '\"Sebaik-baik kamu adalah yang mempelajari al-Quran dan mengajarkannya.\"\n— Bukhari';

  @override
  String get hadith18 =>
      '\"Tidak ada seorang pun yang memakan makanan yang lebih baik daripada hasil usaha tangannya sendiri.\"\n— Bukhari';

  @override
  String get hadith19 =>
      '\"Allah itu lembut dan menyukai kelembutan dalam segala perkara.\"\n— Bukhari & Muslim';

  @override
  String historyDayCompleted(String completed, String total) {
    return '$completed daripada $total selesai';
  }

  @override
  String get settingsSchedule => 'Jadual';

  @override
  String get settingsAppearance => 'Penampilan';

  @override
  String get settingsAboutTagline => 'Teman ibadah harian anda';

  @override
  String get settingsRolloverSub => 'Bila hari baharu bermula';

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
  String get settingsRequestFeature => 'Cadangkan ciri';

  @override
  String settingsSupportFallback(String email) {
    return 'Tidak dapat membuka mel. Sila hantar e-mel ke $email.';
  }

  @override
  String get settingsPrivacyPolicy => 'Dasar Privasi';

  @override
  String get settingsPrivacyOpenFailed => 'Tidak dapat membuka dasar privasi.';

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
      '\"Orang yang menyambung silaturahim bukanlah orang yang membalas, tetapi orang yang tetap menyambungnya walaupun hubungannya diputuskan.\"\n— Bukhari';

  @override
  String get hadith49 =>
      '\"Sesiapa yang makan lalu berkata: \'Segala puji bagi Allah yang telah memberiku makanan ini dan mengurniakannya kepadaku tanpa sebarang daya dan kekuatan daripadaku,\' dosa-dosanya yang lalu akan diampunkan.\"\n— Tirmizi';

  @override
  String get hadith53 =>
      '\"Janganlah kamu meremehkan sedikit pun kebaikan, walaupun hanya bertemu saudaramu dengan wajah yang manis.\"\n— Muslim';

  @override
  String get hadith54 =>
      '\"Sebaik-baik kamu ialah yang terbaik terhadap keluarganya.\"\n— Tirmizi';

  @override
  String get hadith55 =>
      '\"Sesiapa yang membaca dua ayat terakhir Surah al-Baqarah pada waktu malam, kedua-duanya memadai baginya.\"\n— Bukhari & Muslim';

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
      '\"Kejujuran membawa kepada kebajikan, dan kebajikan membawa kepada syurga.\"\n— Bukhari & Muslim';

  @override
  String get hadith67 =>
      '\"Tunaikanlah amanah kepada orang yang mengamanahkannya kepadamu, dan janganlah kamu mengkhianati orang yang mengkhianatimu.\"\n— Abu Dawud & Tirmizi';

  @override
  String get hadith68 =>
      '\"Tiada keletihan, penyakit, kesedihan, kedukaan, kesakitan atau kesusahan yang menimpa seorang Muslim — walaupun tertusuk duri — melainkan Allah menghapuskan sebahagian dosanya dengannya.\"\n— Bukhari & Muslim';

  @override
  String get hadith69 =>
      '\"Doa seorang Muslim untuk saudaranya tanpa pengetahuan saudaranya itu sentiasa dimakbulkan.\"\n— Muslim';

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
      '\"Bersegeralah melakukan amal kebaikan sebelum datangnya fitnah seperti potongan malam yang gelap.\"\n— Muslim';

  @override
  String get hadith75 =>
      '\"Dua rakaat Subuh lebih baik daripada dunia dan segala isinya.\"\n— Muslim';

  @override
  String get hadith77 =>
      '\"Jika kamu bertawakal kepada Allah dengan sebenar-benar tawakal, nescaya Allah akan memberi rezeki kepadamu sebagaimana Dia memberi rezeki kepada burung.\"\n— Tirmizi';

  @override
  String get hadith78 =>
      '\"Sesiapa yang menziarahi orang sakit, dia sentiasa memetik buah-buahan syurga sehingga dia pulang.\"\n— Muslim';

  @override
  String get hadith79 =>
      '\"Sebarkanlah salam, berilah makan, dan solatlah pada waktu malam ketika orang lain tidur — nescaya kamu masuk syurga dengan selamat.\"\n— Tirmizi';

  @override
  String get hadith80 =>
      '\"Sesiapa yang tidak berterima kasih kepada manusia, dia tidak bersyukur kepada Allah.\"\n— Tirmizi';

  @override
  String get hadith81 =>
      '\"Tidak dibenarkan hasad kecuali dalam dua perkara: seseorang yang dikurniakan Allah harta lalu dia membelanjakannya pada jalan yang benar, dan seseorang yang dikurniakan Allah hikmah lalu dia memutuskan hukum dan mengajar dengannya.\"\n— Bukhari & Muslim';

  @override
  String get hadith82 =>
      '\"Seseorang itu mengikut agama sahabat karibnya, maka hendaklah setiap kamu memerhatikan siapa yang dijadikan sahabatnya.\"\n— Abu Dawud & Tirmizi';

  @override
  String get hadith85 =>
      '\"Sesiapa yang meninggalkan sesuatu kerana Allah, Allah akan menggantikannya dengan yang lebih baik.\"\n— Ahmad';

  @override
  String get hadith86 =>
      '\"Sesiapa yang menutup aib seorang Muslim, Allah akan menutup aibnya pada Hari Kiamat.\"\n— Bukhari & Muslim';

  @override
  String get hadith87 =>
      '\"Jadilah di dunia ini seolah-olah kamu orang asing atau pengembara.\"\n— Bukhari';

  @override
  String get hadith88 =>
      '\"Sesiapa yang memudahkan orang yang dalam kesulitan, Allah akan memudahkannya di dunia dan akhirat.\"\n— Muslim';

  @override
  String get hadith89 =>
      '\"Pahala amalan bergantung kepada niat.\"\n— Bukhari & Muslim';

  @override
  String get hadith90 =>
      '\"Jauhilah sangkaan buruk, kerana sangkaan buruk ialah sedusta-dusta percakapan.\"\n— Bukhari & Muslim';

  @override
  String get hadith93 =>
      '\"Makanlah bersama-sama dan sebutlah nama Allah, nescaya makanan itu diberkati untuk kamu.\"\n— Abu Dawud';

  @override
  String get hadith94 =>
      '\"Tidak ada kaum yang duduk berzikir kepada Allah melainkan para malaikat mengelilingi mereka, rahmat menyelubungi mereka, dan ketenangan turun kepada mereka.\"\n— Muslim';

  @override
  String get hadith95 =>
      '\"Tidaklah Allah menambah bagi seorang hamba kerana sifat pemaafnya melainkan kemuliaan.\"\n— Muslim';

  @override
  String get hadith96 =>
      '\"Ikatlah untamu kemudian bertawakallah kepada Allah.\"\n— Tirmizi';

  @override
  String get hadith97 =>
      '\"Sungguh menakjubkan urusan orang beriman — semuanya baik baginya.\"\n— Muslim';

  @override
  String get hadith98 =>
      '\"Seorang Muslim adalah saudara bagi Muslim yang lain: dia tidak menzaliminya, tidak membiarkannya, dan tidak menghinanya.\"\n— Muslim';

  @override
  String get delete => 'Padam';

  @override
  String get remove => 'Buang';

  @override
  String get deleteAmalConfirmTitle => 'Berhenti menjejak amal ini?';

  @override
  String deleteAmalConfirmBody(String title) {
    return '\"$title\" akan disembunyikan daripada senarai anda. Sejarah anda disimpan.';
  }

  @override
  String get genericError => 'Ada sesuatu yang tidak kena. Sila cuba lagi.';

  @override
  String get notificationChannelName => 'Peringatan amal';

  @override
  String get notificationChannelDescription =>
      'Peringatan harian untuk amal yang anda jejaki.';

  @override
  String get invalidAmalId => 'ID amal tidak sah';

  @override
  String get tutorialSettingsRow => 'Cara menggunakan Muhasabah';

  @override
  String get tutorialSkip => 'Langkau';

  @override
  String get tutorialNext => 'Seterusnya';

  @override
  String get tutorialDone => 'Selesai';

  @override
  String get tutorialTapTitle => 'Ketik untuk tanda selesai';

  @override
  String get tutorialTapBody =>
      'Satu ketikan menandakan amal sebagai selesai untuk hari ini. Ketik sekali lagi untuk membatalkannya.';

  @override
  String get tutorialEditTitle => 'Ketik dua kali untuk menyunting';

  @override
  String get tutorialEditBody =>
      'Membuka borang suntingan — tukar namanya, atau ubah kekerapan ulangannya.';

  @override
  String get tutorialReorderTitle => 'Tekan dan tahan untuk menyusun semula';

  @override
  String get tutorialReorderBody =>
      'Tahan satu baris, kemudian seret. Susunan anda disimpan.';

  @override
  String get tutorialRemoveTitle => 'Leret untuk membuang';

  @override
  String get tutorialRemoveBody =>
      'Leret baris ke tepi untuk menyembunyikannya hari ini, atau berhenti menjejakinya.';

  @override
  String get tutorialCountTitle => 'Mengira ulangan';

  @override
  String get tutorialCountBody =>
      'Bagi amal yang sasarannya lebih daripada satu, gunakan − dan + untuk setiap ulangan.';

  @override
  String get tutorialViewTitle => 'Kumpulkan atau ratakan';

  @override
  String get tutorialViewBody =>
      'Tukar antara paparan mengikut kategori dan satu senarai rata.';

  @override
  String get tutorialChallengeLogTitle => 'Ketik untuk merekod hari ini';

  @override
  String get tutorialChallengeLogBody =>
      'Satu ketikan merekod hari ini. Bagi cabaran jenis kiraan, setiap ketikan menambah satu langkah.';

  @override
  String get tutorialChallengeOpenTitle => 'Ketik dua kali untuk membuka';

  @override
  String get tutorialChallengeOpenBody =>
      'Membuka cabaran — lihat setiap hari, betulkan hari yang terlepas, atau padamkannya.';

  @override
  String get tutorialChallengeDeleteBody =>
      'Leret kad ke tepi untuk memadam cabaran.';

  @override
  String get tutorialChallengeAmountTitle => 'Merekod jumlah tepat';

  @override
  String get tutorialChallengeAmountBody =>
      'Gunakan − dan + untuk mengubah, atau ketik nombornya untuk menaip jumlah tepat.';

  @override
  String get challengeOpenDetailsAction => 'Buka butiran cabaran';

  @override
  String get challengesActive => 'Aktif';

  @override
  String get challengesPast => 'Lepas';

  @override
  String challengeJustFinished(int count, String title) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cabaran telah berakhir — terbaru: $title',
      one: '$title telah berakhir',
    );
    return '$_temp0';
  }

  @override
  String get challengeSectionEnded => 'Berakhir';

  @override
  String get challengesPastEmpty => 'Belum ada yang berakhir.';

  @override
  String get challengesEmptyTitle => 'Belum ada cabaran';

  @override
  String get challengesEmptyBody =>
      'Tetapkan satu sasaran untuk diri anda — seperti 20 rakaat dalam 7 hari — dan jejaki di sini.';

  @override
  String get editChallenge => 'Sunting cabaran';

  @override
  String get deleteChallenge => 'Padam cabaran';

  @override
  String get deleteChallengeConfirm =>
      'Padam cabaran ini dan semua kemajuan yang direkodkan?';

  @override
  String get challengeShapeQuestion => 'Apakah jenis cabaran ini?';

  @override
  String get challengeShapeTotal => 'Jumlah yang hendak dicapai';

  @override
  String get challengeShapeTotalBody =>
      '1000 selawat, 30 juzuk. Anda catat kuantiti dan jumlahnya bertambah.';

  @override
  String get challengeShapeStreak => 'Rentetan harian';

  @override
  String get challengeShapeStreakBody =>
      'Tahajud, Subuh berjemaah. Satu tanda sehari, kuantiti tidak penting.';

  @override
  String get challengeTargetLabel => 'Sasaran';

  @override
  String get challengeTargetRequired => 'Masukkan sasaran melebihi sifar';

  @override
  String get challengeUnitLabel => 'Unit (pilihan)';

  @override
  String get challengeUnitHint => 'rakaat, muka surat, kali';

  @override
  String get challengeOneTapAdds => 'Satu ketikan menambah';

  @override
  String get challengeHowManyDays => 'Berapa hari?';

  @override
  String get challengeReachHowMuch => 'Capai berapa?';

  @override
  String get challengeSpreadOver => 'Tempoh masa';

  @override
  String get challengeSpreadEveryDay => 'Setiap hari';

  @override
  String get challengeSpreadLonger => 'Tempoh lebih panjang';

  @override
  String get challengeByWhen => 'Hingga bila?';

  @override
  String get challengeWindowDuration => 'Selesai dalam';

  @override
  String get challengeByDate => 'Sehingga tarikh';

  @override
  String challengePlanRange(String start, String end) {
    return '$start hingga $end';
  }

  @override
  String challengePlanExact(String start, String end) {
    return '$start hingga $end · satu sehari, setiap hari';
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
    return '$start hingga $end · $target daripada $window hari — $slack boleh terlepas';
  }

  @override
  String challengePlanRate(String start, String end, String rate) {
    return '$start hingga $end · kira-kira $rate sehari';
  }

  @override
  String challengePlanOpen(String start) {
    return 'Mula $start · tanpa had masa';
  }

  @override
  String challengeTooTight(
    String target,
    String window,
    num targetCount,
    num windowCount,
  ) {
    return '$target hari tidak muat dalam $window hari — rentetan dikira satu sehari.';
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
  String get challengeStartDate => 'Mula';

  @override
  String get challengeEndDate => 'Tamat';

  @override
  String challengeProgressCount(String done, String target, String unit) {
    return '$done daripada $target $unit';
  }

  @override
  String challengeProgressPlain(String done, String target) {
    return '$done daripada $target';
  }

  @override
  String challengeProgressDays(String done, String target) {
    return '$done daripada $target hari';
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
  String get challengeNoDeadline => 'Tiada had masa';

  @override
  String challengeOnTrack(String rate) {
    return 'Ikut jadual · $rate/hari';
  }

  @override
  String challengeBehind(String rate) {
    return 'Ketinggalan · perlu $rate/hari';
  }

  @override
  String challengeLastDay(String remaining) {
    return 'Hari terakhir · $remaining lagi';
  }

  @override
  String get challengeReached => 'Sasaran dicapai';

  @override
  String get challengeCompleted => 'Selesai';

  @override
  String challengeEnded(String done, String target) {
    return 'Berakhir · $done/$target';
  }

  @override
  String get challengeExpiredTitle => 'Cabaran berakhir';

  @override
  String challengeExpiredBody(String title, String done, String target) {
    return '$title berakhir pada $done daripada $target.';
  }

  @override
  String get challengeExtend => 'Lanjutkan';

  @override
  String get challengeRestart => 'Mula semula';

  @override
  String get challengeArchive => 'Arkibkan';

  @override
  String get challengeDailyBreakdown => 'Log harian';

  @override
  String challengeNudgeBody(String title, String rate) {
    return '$title: $rate sehari untuk selesai tepat pada masanya.';
  }

  @override
  String challengeLastDayBody(String title, String remaining) {
    return '$title: hari terakhir — $remaining lagi.';
  }

  @override
  String get challengeGroupGoal => 'Matlamat';

  @override
  String get challengeGroupShape => 'Jenis';

  @override
  String get challengeGroupPlan => 'Rancangan';

  @override
  String get challengeGroupReminders => 'Peringatan';

  @override
  String get challengeStartFromTemplate => 'Mula daripada templat';

  @override
  String get challengeTemplateBlank => 'Kosong';

  @override
  String get challengePreview => 'Pratonton';

  @override
  String get challengeTmplTahajjud => '40 malam Tahajud';

  @override
  String get challengeTmplSalawat => '1000 Selawat';

  @override
  String get challengeTmplKhatm => 'Khatam Al-Quran dalam 30 hari';

  @override
  String get challengeTmplFajrJamaah => '30 hari Subuh berjemaah';

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
  String get tierRafiqMeaning => 'teman';

  @override
  String get tierNasirMeaning => 'penyokong';

  @override
  String get tierMuhsinMeaning => 'dermawan';

  @override
  String get tierAnsarMeaning => 'penolong';

  @override
  String get supportCardBody =>
      'Percuma, tanpa iklan dan tanpa akaun. Anda boleh menyokong pembangunannya dengan memberi tip — apa-apa jumlah, bila-bila masa.';

  @override
  String get supportCta => 'Sokong Muhasabah';

  @override
  String get supportAgain => 'Sokong lagi';

  @override
  String get supporterThanks =>
      'JazakumAllahu khairan — insya-Allah Muhasabah kekal percuma dan bebas iklan.';

  @override
  String supporterSince(String tier, String month) {
    return '$tier sejak $month';
  }

  @override
  String get supportPromptTitle => 'Sokong Muhasabah';

  @override
  String get supportPromptBody =>
      'Muhasabah percuma, tanpa iklan dan tanpa akaun. Anda boleh menyokong pembangunannya dengan memberi tip — apa-apa jumlah, bila-bila masa. Tiada ciri yang dikunci.';

  @override
  String get supportPromptNow => 'Sokong sekarang';

  @override
  String get supportPromptLater => 'Ingatkan saya nanti';

  @override
  String get supportPromptNever => 'Jangan tanya lagi';

  @override
  String get tipSheetTitle => 'Sokong Muhasabah';

  @override
  String get tipSheetBody =>
      'Pilih apa-apa jumlah, sekerap yang anda mahu. Tip digunakan untuk penyelenggaraan aplikasi — insya-Allah ia kekal percuma dan bebas iklan. Sebagai tanda terima kasih, anda akan ditandakan sebagai penyokong di Tetapan.';

  @override
  String tipSheetSupporterLine(String tier) {
    return '$tier — JazakumAllahu khairan.';
  }

  @override
  String get tipSheetSupporterAgain => 'Sokong lagi bila-bila masa anda mahu.';

  @override
  String tipSheetStoreNote(String store) {
    return 'Dikendalikan oleh $store — kami tidak pernah melihat butiran pembayaran anda.';
  }

  @override
  String get tipSheetOtherWays => 'Tiada pilihan yang sesuai untuk anda?';

  @override
  String get tipSheetWriteToUs => 'Tulis kepada kami';

  @override
  String get supportEmailBody =>
      'Assalamualaikum,\n\nSaya ingin menyokong pembangunan Muhasabah secara terus.\n\nNegara:\nCara saya ingin menghantarnya:\nJumlah (pilihan):';

  @override
  String tipBusy(String store) {
    return 'Membuka $store…';
  }

  @override
  String get tipThanks =>
      'JazakumAllahu khairan — semoga Allah menerimanya daripada anda.';

  @override
  String get tipDone => 'Selesai';

  @override
  String get tipFailed => 'Pembelian tidak berjaya. Tiada bayaran dikenakan.';

  @override
  String tipPending(String store) {
    return 'Tip anda sedang diproses oleh $store — lencana anda akan ditambah sebaik sahaja ia disahkan.';
  }

  @override
  String get tipUnavailable =>
      'Pembelian tidak tersedia pada peranti ini buat masa ini.';

  @override
  String get optionSetJamaa => 'Jemaah';

  @override
  String get optionJamaaAlone => 'Bersendirian';

  @override
  String get optionJamaaHome => 'Berjemaah di rumah';

  @override
  String get optionJamaaMasjid => 'Berjemaah di masjid';

  @override
  String get optionSetOnTime => 'Ketepatan waktu';

  @override
  String get optionOnTimeOnTime => 'Tepat waktu';

  @override
  String get optionOnTimeLate => 'Lewat';

  @override
  String get optionOnTimeQada => 'Qada';

  @override
  String get optionSetQuranSession => 'Sesi Al-Quran';

  @override
  String get optionQuranRecited => 'Dibaca';

  @override
  String get optionQuranMemorised => 'Dihafaz';

  @override
  String get optionQuranMeaning => 'Dengan makna';

  @override
  String get optionQuranListened => 'Didengar';

  @override
  String get optionSetSadaqahType => 'Jenis sedekah';

  @override
  String get optionSadaqahMoney => 'Wang';

  @override
  String get optionSadaqahFood => 'Makanan';

  @override
  String get optionSadaqahTime => 'Masa';

  @override
  String get optionSadaqahOther => 'Lain-lain';

  @override
  String get optionSetIntensity => 'Intensiti';

  @override
  String get optionIntensityLight => 'Ringan';

  @override
  String get optionIntensityModerate => 'Sederhana';

  @override
  String get optionIntensityIntense => 'Berat';

  @override
  String get optionSetNewTitle => 'Set pilihan baharu';

  @override
  String get optionSetEditTitle => 'Sunting set pilihan';

  @override
  String get optionSetNameLabel => 'Nama set';

  @override
  String get optionSetNameHint => 'cth. Jemaah';

  @override
  String get optionsLabel => 'Pilihan';

  @override
  String get optionAdd => 'Tambah pilihan';

  @override
  String optionHint(int index) {
    return 'Pilihan $index';
  }

  @override
  String optionsMaxReached(int max) {
    return 'Maksimum $max pilihan.';
  }

  @override
  String get optionSetPreviewLabel => 'Pratonton — baris Hari Ini';

  @override
  String optionSetKeptForHistory(String labels) {
    return 'Disimpan untuk sejarah: $labels';
  }

  @override
  String get optionSetDelete => 'Padam set';

  @override
  String get optionSetDeleteConfirm =>
      'Amal yang menggunakan set ini tidak lagi memaparkan pilihan. Hari yang telah anda rekodkan mengekalkan pilihannya.';

  @override
  String get optionSetNameRequired => 'Namakan set ini';

  @override
  String get optionsMinRequired => 'Tambah sekurang-kurangnya dua pilihan';

  @override
  String get optionSetNameTooLong => 'Nama set terlalu panjang';

  @override
  String optionTooLong(int index) {
    return 'Pilihan $index terlalu panjang';
  }

  @override
  String get optionSetNone => 'Tiada';

  @override
  String get optionSetNew => 'Set baharu';

  @override
  String get requireChoiceLabel => 'Perlukan pilihan';

  @override
  String get requireChoiceHelp =>
      'Baris tidak akan ditanda selesai selagi tiada pilihan dipilih';

  @override
  String get requireChoicePickSetFirst => 'Pilih set dahulu';

  @override
  String get requireChoiceCountHelp =>
      'Amal yang dikira diselesaikan dengan pengira';

  @override
  String optionsUsedOf(int used, int max) {
    return '$used daripada $max pilihan digunakan.';
  }

  @override
  String get choiceNeeded => 'Pilihan diperlukan';

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
    return 'Pecahan pilihan — $set';
  }

  @override
  String optionBreakdownCaption(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kali selesai',
    );
    return 'Bahagian daripada $_temp0 yang mencatat pilihan';
  }

  @override
  String optionNoChoiceRecorded(int none, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other: '$total hari selesai',
    );
    return 'Tiada pilihan dicatat — $none daripada $_temp0';
  }

  @override
  String get optionRemovedSuffix => 'dibuang';

  @override
  String get optionAllAmals => 'Semua';

  @override
  String optionScopedCaption(String amal, int count) {
    return '$amal · $count dicatat';
  }

  @override
  String get optionBreakdownSectionTitle => 'Pecahan pilihan';

  @override
  String optionBreakdownSwipeHint(int count) {
    return '$count set · leret';
  }

  @override
  String get optionDetailEmpty => 'Belum ada pilihan dicatat untuk set ini.';

  @override
  String get optionDetailTrendHeading => 'Perubahan';

  @override
  String optionDetailTrendReadout(String option, String from, String to) {
    return '$option berubah daripada $from kepada $to antara minggu pertama dan minggu terakhir.';
  }

  @override
  String get optionDetailByAmalHeading => 'Mengikut amal';

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
  String get optionDetailRecordsHeading => 'Rekod';

  @override
  String get optionDetailLongestRun => 'Rentetan Terpanjang';

  @override
  String get optionDetailBestWeek => 'Minggu Terbaik';

  @override
  String get optionDetailCurrentRun => 'Rentetan Semasa';

  @override
  String get optionDetailRecordsCaption =>
      'Berdasarkan setahun yang lepas, tidak bergantung pada penapis tempoh di atas.';

  @override
  String get optionDetailRecentDaysHeading => 'Hari-hari terkini';

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
  String get amalFivePrayers => 'Solat Lima Waktu';

  @override
  String get amalJumuah => 'Solat Jumaat';

  @override
  String get amalWitr => 'Solat Witir';

  @override
  String get amalQada => 'Solat Qada';

  @override
  String get amalFajrSunnah => 'Qabliyah Subuh';

  @override
  String get amalDhuhrSunnah => 'Rawatib Zohor';

  @override
  String get amalAsrSunnah => 'Qabliyah Asar';

  @override
  String get amalMaghribSunnah => 'Ba\'diyah Maghrib';

  @override
  String get amalIshaSunnah => 'Ba\'diyah Isyak';

  @override
  String get amalRawatib => 'Solat Sunat Rawatib';

  @override
  String get amalSiwak => 'Bersiwak';

  @override
  String get amalWuduSleep => 'Berwuduk Sebelum Tidur';

  @override
  String get amalFridayGhusl => 'Mandi Sunat Jumaat';

  @override
  String get amalIshraq => 'Solat Isyraq';

  @override
  String get amalWuduPrayer => 'Solat Sunat Wuduk';

  @override
  String get amalTahiyyah => 'Tahiyatul Masjid';

  @override
  String get amalEarlyJumuah => 'Awal ke Solat Jumaat';

  @override
  String get amalAfterSalah => 'Zikir Selepas Solat';

  @override
  String get amalAfterFajr => 'Zikir Selepas Subuh';

  @override
  String get amalAfterDhuhr => 'Zikir Selepas Zohor';

  @override
  String get amalAfterAsr => 'Zikir Selepas Asar';

  @override
  String get amalAfterMaghrib => 'Zikir Selepas Maghrib';

  @override
  String get amalAfterIsha => 'Zikir Selepas Isyak';

  @override
  String get amalAyatKursi => 'Ayatul Kursi';

  @override
  String get amalKursiFajr => 'Ayatul Kursi Selepas Subuh';

  @override
  String get amalKursiDhuhr => 'Ayatul Kursi Selepas Zohor';

  @override
  String get amalKursiAsr => 'Ayatul Kursi Selepas Asar';

  @override
  String get amalKursiMaghrib => 'Ayatul Kursi Selepas Maghrib';

  @override
  String get amalKursiIsha => 'Ayatul Kursi Selepas Isyak';

  @override
  String get amalSayyidIstighfar => 'Sayyidul Istighfar';

  @override
  String get amalSalawat => 'Selawat';

  @override
  String get amalSubhanallah => 'Subhanallahi wa Bihamdihi';

  @override
  String get amalTahlil => 'La Ilaha Illallah';

  @override
  String get amalBedtimeAdhkar => 'Zikir Sebelum Tidur';

  @override
  String get amalFridaySalawat => 'Selawat Hari Jumaat';

  @override
  String get amalHawqala => 'La Haula wa La Quwwata';

  @override
  String get amalTasbihFatimah => 'Tasbih Fatimah';

  @override
  String get amalWakingAdhkar => 'Zikir Bangun Tidur';

  @override
  String get amalDuaAdhan => 'Doa Selepas Azan';

  @override
  String get amalDuaIqamah => 'Doa antara Azan dan Iqamah';

  @override
  String get amalDuaSujood => 'Doa dalam Sujud';

  @override
  String get amalDuaParents => 'Doa untuk Ibu Bapa';

  @override
  String get amalDuaOthers => 'Doa untuk Orang Lain';

  @override
  String get amalFridayHour => 'Doa pada Saat Akhir Hari Jumaat';

  @override
  String get amalLastThird => 'Doa Sepertiga Malam Terakhir';

  @override
  String get amalMulk => 'Surah Al-Mulk';

  @override
  String get amalBaqarahEnd => 'Dua Ayat Terakhir Al-Baqarah';

  @override
  String get amalSajdah => 'Surah As-Sajdah';

  @override
  String get amalQuls => 'Tiga Qul';

  @override
  String get amalYasin => 'Surah Yasin';

  @override
  String get amalWaqiah => 'Surah Al-Waqi\'ah';

  @override
  String get amalHifz => 'Hafazan Al-Quran';

  @override
  String get amalMurajaah => 'Murajaah Hafazan';

  @override
  String get amalTafsir => 'Tafsir';

  @override
  String get amalListenQuran => 'Mendengar Al-Quran';

  @override
  String get amalTeachQuran => 'Mengajar Al-Quran';

  @override
  String get amalMonThu => 'Puasa Isnin dan Khamis';

  @override
  String get amalThreeDays => 'Puasa Tiga Hari Sebulan';

  @override
  String get amalDailySadaqah => 'Sedekah Harian';

  @override
  String get amalFeed => 'Memberi Makan Orang';

  @override
  String get amalHelpNeed => 'Membantu Orang yang Memerlukan';

  @override
  String get amalOrphan => 'Menaja Anak Yatim';

  @override
  String get amalGiveWater => 'Memberi Minum';

  @override
  String get amalLearnHadith => 'Belajar Satu Hadis';

  @override
  String get amalReadBook => 'Membaca Buku Islam';

  @override
  String get amalSeerah => 'Mempelajari Sirah';

  @override
  String get amalClass => 'Menghadiri Kuliah Agama';

  @override
  String get amalArabic => 'Belajar Bahasa Arab';

  @override
  String get amalLearnDua => 'Belajar Doa Baharu';

  @override
  String get amalShare => 'Berkongsi Ilmu';

  @override
  String get amalFiqh => 'Belajar Fiqh';

  @override
  String get amalMuhasaba => 'Muhasabah Malam';

  @override
  String get amalSpeakGood => 'Berkata Baik atau Diam';

  @override
  String get amalNoBackbiting => 'Menjauhi Mengumpat';

  @override
  String get amalAnger => 'Menahan Marah';

  @override
  String get amalGaze => 'Menundukkan Pandangan';

  @override
  String get amalTruthful => 'Bercakap Benar';

  @override
  String get amalSmile => 'Senyum';

  @override
  String get amalSalam => 'Menyebarkan Salam';

  @override
  String get amalForgive => 'Memaafkan Orang Lain';

  @override
  String get amalGratitude => 'Bersyukur';

  @override
  String get amalVisitSick => 'Menziarahi Orang Sakit';

  @override
  String get amalNeighbours => 'Berbuat Baik kepada Jiran';

  @override
  String get amalRemoveHarm => 'Membuang Halangan di Jalan';

  @override
  String get amalParents => 'Berbakti kepada Ibu Bapa';

  @override
  String get amalFamilyTies => 'Menyambung Silaturahim';

  @override
  String get amalHelpHome => 'Membantu Kerja Rumah';

  @override
  String get amalTeachChildren => 'Mengajar Agama kepada Anak-anak';

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
  String get libraryAdded => 'Ditambah ke Hari Ini';

  @override
  String libraryAddedShowsOn(String days) {
    return 'Ditambah · dipaparkan pada hari $days';
  }

  @override
  String libraryNoMatch(String query) {
    return 'Tiada amal yang sepadan dengan “$query”';
  }

  @override
  String libraryCreateNamed(String query) {
    return 'Cipta “$query”';
  }

  @override
  String get libraryPickBanner => 'Pilih daripada Pustaka Amal';

  @override
  String libraryPickBannerSubtitle(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countText amal sedia guna',
    );
    return '$_temp0';
  }

  @override
  String get libraryFilledIn => 'Diisi daripada Pustaka Amal';

  @override
  String get libraryChange => 'Tukar';

  @override
  String get libraryEditAction => 'Sunting';

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
      other: '$countText×',
    );
    return '$_temp0';
  }

  @override
  String get libraryAnyAmount => 'Sebarang jumlah';

  @override
  String libraryAddTooltip(String title) {
    return 'Tambah $title';
  }

  @override
  String get libraryOnList => 'Sudah ada dalam senarai anda';

  @override
  String get todayEmptyBrowse => 'Teroka Pustaka Amal';
}
