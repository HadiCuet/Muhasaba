// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Uzbek (`uz`).
class AppLocalizationsUz extends AppLocalizations {
  AppLocalizationsUz([String locale = 'uz']) : super(locale);

  @override
  String get repeatsOnDaysHint => 'Tanlangan kunlarda takrorlanadi';

  @override
  String get newDayStarted => 'Yangi kun boshlandi';

  @override
  String get appTitle => 'Muhosaba';

  @override
  String get tabToday => 'Bugun';

  @override
  String get tabStats => 'Statistika';

  @override
  String get tabHistory => 'Tarix';

  @override
  String get tabSettings => 'Sozlamalar';

  @override
  String get tabChallenge => 'Maqsad';

  @override
  String get tabInsights => 'Statistika';

  @override
  String get insightsTitle => 'Statistika';

  @override
  String get insightsOverview => 'Umumiy';

  @override
  String get insightsDaily => 'Kunlik';

  @override
  String get insightsArchive => 'Arxiv';

  @override
  String get archivedEmpty =>
      'Hozircha hech narsa yo\'q. Kuzatuvdan olib tashlagan amallaringiz shu yerda saqlanadi, ularni qaytarishingiz mumkin.';

  @override
  String archivedStoppedOn(String date) {
    return 'Olib tashlangan: $date';
  }

  @override
  String get archivedRestore => 'Qaytarish';

  @override
  String archivedRestored(String title) {
    return '\"$title\" ro\'yxatingizga qaytarildi.';
  }

  @override
  String get newChallenge => 'Yangi maqsad';

  @override
  String get newAmal => 'Yangi amal';

  @override
  String get editAmal => 'Amalni tahrirlash';

  @override
  String get newAmalTitle => 'Yangi amal';

  @override
  String get save => 'Saqlash';

  @override
  String get cancel => 'Bekor qilish';

  @override
  String get ok => 'OK';

  @override
  String get clear => 'Tozalash';

  @override
  String get titleLabel => 'Nomi';

  @override
  String get titleRequired => 'Nomini kiriting';

  @override
  String get titleTooLong => 'Nomi juda uzun';

  @override
  String get frequencyLabel => 'Takroriylik';

  @override
  String get frequencyDaily => 'Kunlik';

  @override
  String get frequencyWeekly => 'Haftalik';

  @override
  String get frequencyMonthly => 'Oylik';

  @override
  String get categoryLabel => 'Turkum';

  @override
  String get categoryOther => 'Boshqa';

  @override
  String get categorySalah => 'Namoz';

  @override
  String get categoryDhikr => 'Zikr';

  @override
  String get categoryQuran => 'Qur\'on';

  @override
  String get categoryCharity => 'Sadaqa';

  @override
  String get categorySunnah => 'Sunnat';

  @override
  String get timesPerPeriod => 'Davr ichida necha marta';

  @override
  String get custom => 'Boshqa';

  @override
  String get customTargetHint => 'masalan, 50';

  @override
  String get targetAny => 'Istalgancha';

  @override
  String get targetAnyHelp =>
      'Me\'yorsiz — istalgan miqdor bajarilgan hisoblanadi';

  @override
  String get dayOfWeek => 'Hafta kuni';

  @override
  String get anyDay => 'Istalgan';

  @override
  String get anyDayHint =>
      'Istalgan kun (bugun ko\'rinib turadi, ertasiga yashirinadi)';

  @override
  String onlyDayHint(String day) {
    return 'Faqat $day';
  }

  @override
  String get dateOfMonth => 'Oy sanasi';

  @override
  String get repeatMode => 'Takrorlanish';

  @override
  String get onSetDays => 'Belgilangan kunlarda';

  @override
  String get onSetDates => 'Belgilangan sanalarda';

  @override
  String get anyDayMode => 'Istalgan kun';

  @override
  String get datesOfMonth => 'Sanalar';

  @override
  String get daysPerWeekQuestion => 'Haftada necha kun?';

  @override
  String get daysPerMonthQuestion => 'Oyda necha kun?';

  @override
  String get pickAtLeastOneDay => 'Kamida bitta kun tanlang';

  @override
  String get pickAtLeastOneDate => 'Kamida bitta sana tanlang';

  @override
  String get previewDaily => 'Har kuni takrorlanadi';

  @override
  String previewWeeklyDays(String days) {
    return 'Har $days takrorlanadi';
  }

  @override
  String previewWeeklyAny(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kun',
    );
    return 'Haftada istalgan $_temp0 takrorlanadi';
  }

  @override
  String previewMonthlyDates(int count, String dates) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Har oyning $dates kunlarida takrorlanadi',
      one: 'Har oyning $dates kunida takrorlanadi',
    );
    return '$_temp0';
  }

  @override
  String previewMonthlyAny(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kun',
    );
    return 'Oyda istalgan $_temp0 takrorlanadi';
  }

  @override
  String get anyDate => 'Istalgan';

  @override
  String get anyDateHint =>
      'Istalgan sana (bugun ko\'rinib turadi, ertasiga yashirinadi)';

  @override
  String onlyDateHint(String date) {
    return 'Faqat $date-sanada';
  }

  @override
  String get startPreChecked => 'Oldindan belgilab qo\'yish';

  @override
  String get startPreCheckedSubtitle =>
      'Yangi davr boshlanganda bu amal avvaldan bajarilgan deb belgilanadi — belgini olib tashlamaguningizcha shunday qoladi.';

  @override
  String get reminder => 'Eslatma';

  @override
  String get reminderNone => 'Yo\'q';

  @override
  String reminderTime(String time) {
    return 'Eslatma: $time';
  }

  @override
  String get reminderPermissionWarning =>
      'Eslatma saqlandi, ammo bildirishnomalarga ruxsat yo\'q. Ularni olish uchun tizim sozlamalarida ruxsat bering.';

  @override
  String get settingsReminders => 'Eslatmalar';

  @override
  String get dailyReminder => 'Kunlik eslatma';

  @override
  String get dailyReminderSubtitle =>
      'Amallaringizni kuzatishni eslatib turadi';

  @override
  String get dailyReminderTimeLabel => 'Eslatma vaqti';

  @override
  String get dailyReminderBody =>
      'Bir daqiqa ajratib, bugungi amallaringizni belgilab qo\'ying.';

  @override
  String get groupByCategory => 'Turkum bo\'yicha guruhlash';

  @override
  String get flatList => 'Oddiy ro\'yxat';

  @override
  String errorGeneric(String error) {
    return 'Xato: $error';
  }

  @override
  String get todayEmptyHint =>
      'Birinchi amalingizni qo\'shish uchun + tugmasini bosing.';

  @override
  String get noteLabel => 'Izoh';

  @override
  String get noteHint => 'masalan, Masjidda namoz o\'qidim';

  @override
  String get completed => 'bajarildi';

  @override
  String get notCompleted => 'bajarilmadi';

  @override
  String progressOf(String progress, String target) {
    return '$target tadan $progress tasi bajarildi';
  }

  @override
  String progressOpen(String count) {
    return '$count ta bajarildi';
  }

  @override
  String get removeFromToday => 'Bugun uchun olib tashlash';

  @override
  String get removeFromTodaySubtitle =>
      'Faqat bugun yashiriladi. Ertaga yana paydo bo\'ladi.';

  @override
  String get removeFromTracking => 'Kuzatuvdan olib tashlash';

  @override
  String get removeFromTrackingSubtitle =>
      'Ro\'yxatdan butunlay olib tashlash. Tarix saqlanadi.';

  @override
  String get chooseIcon => 'Belgi tanlash';

  @override
  String get iconNone => 'Yo\'q';

  @override
  String get recentlyUsed => 'Yaqinda ishlatilgan';

  @override
  String get emojiSectionGeneral => 'Umumiy';

  @override
  String get categoryNameHint => 'Nomi';

  @override
  String get categoryNew => '+ Yangi';

  @override
  String get categoryNewSheetTitle => 'Yangi turkum';

  @override
  String get categoryEditSheetTitle => 'Turkumni tahrirlash';

  @override
  String get addAmal => 'Amal qo\'shish';

  @override
  String get customAmal => 'O\'z amalingiz';

  @override
  String get amalTasbih => 'Tasbih 33x';

  @override
  String get amalIstighfar => 'Istig\'for';

  @override
  String get amalSurahKahf => 'Kahf surasi';

  @override
  String get amalSadaqah => 'Sadaqa';

  @override
  String get amalTahajjud => 'Tahajjud';

  @override
  String get amalDuha => 'Zuho namozi';

  @override
  String get amalFajr => 'Bomdod';

  @override
  String get amalDhuhr => 'Peshin';

  @override
  String get amalAsr => 'Asr';

  @override
  String get amalMaghrib => 'Shom';

  @override
  String get amalIsha => 'Xufton';

  @override
  String get amalMorningAdhkar => 'Ertalabki zikrlar';

  @override
  String get amalEveningAdhkar => 'Kechki zikrlar';

  @override
  String get amalTilawah => 'Tilovat';

  @override
  String get settingsTitle => 'Sozlamalar';

  @override
  String settingsLoadError(String error) {
    return 'Sozlamalarni yuklashda xato:\n$error';
  }

  @override
  String get sectionDayBoundary => 'Kun chegarasi';

  @override
  String get rolloverHour => 'Kun almashish soati';

  @override
  String get rolloverAtMidnight => 'Bugun yarim tunda tugaydi.';

  @override
  String rolloverSubtitle(String time) {
    return 'Kechagi amallarni $time gacha tahrirlash mumkin.';
  }

  @override
  String get pickRolloverHour => 'Kun almashadigan soatni tanlang';

  @override
  String get sectionWeekMonth => 'Hafta va oy';

  @override
  String get startOfWeek => 'Hafta boshlanishi';

  @override
  String get startOfMonth => 'Oy boshlanishi';

  @override
  String get startOfMonthClamped =>
      'Qisqa oylarda 28-sanadan keyingi kunlar oyning oxirgi kuniga suriladi.';

  @override
  String get sectionAppearance => 'Tashqi ko\'rinish';

  @override
  String get theme => 'Mavzu';

  @override
  String get themeSystem => 'Tizim';

  @override
  String get themeLight => 'Yorug\'';

  @override
  String get themeDark => 'Qorong\'u';

  @override
  String get sectionLanguage => 'Til';

  @override
  String get language => 'Til';

  @override
  String get systemDefault => 'Tizim tili';

  @override
  String get aboutTitle => 'Muhosaba';

  @override
  String get aboutSubtitle =>
      'Diniy amallar uchun shaxsiy muhosaba daftari. Barcha ma\'lumotlar shu qurilmada qoladi.';

  @override
  String get statsTitle => 'Statistika';

  @override
  String statsLoadError(String error) {
    return 'Statistikani yuklashda xato:\n$error';
  }

  @override
  String get perAmal => 'Amallar bo\'yicha';

  @override
  String get thisWeek => 'Shu hafta';

  @override
  String get thisMonth => 'Shu oy';

  @override
  String get totalCompletions => 'jami bajarilganlar';

  @override
  String get streakCurrent => 'Joriy';

  @override
  String get streakLongest => 'Eng uzun';

  @override
  String get ratioWeek => 'Hafta';

  @override
  String get ratioMonth => 'Oy';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'kun',
      one: 'kun',
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
      other: 'oy',
      one: 'oy',
    );
    return '$_temp0';
  }

  @override
  String get frequencyBadgeDaily => 'kunlik';

  @override
  String get frequencyBadgeWeekly => 'haftalik';

  @override
  String get frequencyBadgeMonthly => 'oylik';

  @override
  String get statsEmpty =>
      'Hali amal yo\'q. Kuzatishni boshlash uchun Bugun sahifasida amal qo\'shing.';

  @override
  String get statsToday => 'Bugun';

  @override
  String get statsThisWeek => 'Shu hafta';

  @override
  String get statsThisMonth => 'Shu oy';

  @override
  String get statsAllTime => 'Butun davr';

  @override
  String get statsCustomRange => 'Sana oralig\'i';

  @override
  String get statsAllCategories => 'Barchasi';

  @override
  String get statsAllAmals => 'Barchasi';

  @override
  String get statsCompleted => 'Bajarilgan';

  @override
  String get statsExpected => 'Rejadagi';

  @override
  String get statsVsPrevious => 'Avvalgiga nisbatan';

  @override
  String get statsByCategory => 'Turkum bo\'yicha';

  @override
  String get statsPerAmal => 'Amallar bo\'yicha';

  @override
  String get statsTotalCaption => 'jami';

  @override
  String statsDaysFraction(String done, String expectedText, num expected) {
    String _temp0 = intl.Intl.pluralLogic(
      expected,
      locale: localeName,
      other: 'kun',
      one: 'kun',
    );
    return '$done/$expectedText $_temp0';
  }

  @override
  String get statsCurrentStreak => 'Joriy ketma-ketlik';

  @override
  String get statsBestStreak => 'Eng yaxshi ketma-ketlik';

  @override
  String get statsTotalDays => 'Jami kunlar';

  @override
  String get statsConsistency => 'Muntazamlik';

  @override
  String get statsLast5Weeks => 'Oxirgi 5 hafta';

  @override
  String get statsDailyBreakdown => 'Kunlar kesimida';

  @override
  String get statsCompletionRate => 'Bajarilish foizi';

  @override
  String get statsAmountPerDay => 'Kunlik miqdor';

  @override
  String statsCountTotal(String count) {
    return 'Jami $count';
  }

  @override
  String statsCountAvg(String amount) {
    return 'O\'rtacha $amount/kun';
  }

  @override
  String statsCountBest(String count, String day) {
    return 'Eng ko\'p $count · $day';
  }

  @override
  String get statsFilterTime => 'Vaqt';

  @override
  String get statsFilterCategory => 'Turkum';

  @override
  String get statsFilterAmal => 'Amal';

  @override
  String get statsStreaks => 'Ketma-ketliklar';

  @override
  String get statsSelectDateRange => 'Sana oralig\'ini tanlang';

  @override
  String get historyTitle => 'Tarix';

  @override
  String get jumpToDate => 'Sanaga o\'tish';

  @override
  String historyEmptyDay(String date) {
    return '$date kuni hech qanday amal qayd etilmagan';
  }

  @override
  String get streakUnitD => 'k';

  @override
  String get streakUnitW => 'h';

  @override
  String get streakUnitM => 'o';

  @override
  String get mondayShort => 'Dush';

  @override
  String get tuesdayShort => 'Sesh';

  @override
  String get wednesdayShort => 'Chor';

  @override
  String get thursdayShort => 'Pay';

  @override
  String get fridayShort => 'Jum';

  @override
  String get saturdayShort => 'Shan';

  @override
  String get sundayShort => 'Yak';

  @override
  String get mondayFull => 'Dushanba';

  @override
  String get tuesdayFull => 'Seshanba';

  @override
  String get wednesdayFull => 'Chorshanba';

  @override
  String get thursdayFull => 'Payshanba';

  @override
  String get fridayFull => 'Juma';

  @override
  String get saturdayFull => 'Shanba';

  @override
  String get sundayFull => 'Yakshanba';

  @override
  String get hadith0 =>
      '\"Allohga eng suyukli amal oz bo\'lsa ham, doimiy qilinadiganidir.\"\n— Buxoriy va Muslim';

  @override
  String get hadith2 =>
      '\"Odam farzandi vafot etsa, amali uziladi, faqat uch narsa bundan mustasno: sadaqai joriya, manfaatli ilm yoki uning haqqiga duo qiluvchi solih farzand.\"\n— Muslim';

  @override
  String get hadith3 =>
      '\"Kim ikki salqin namozni (bomdod va asrni) o\'qisa, jannatga kiradi.\"\n— Buxoriy';

  @override
  String get hadith4 =>
      '\"Alloh tashqi ko\'rinishingizga va mol-mulkingizga qaramaydi, balki qalblaringizga va amallaringizga qaraydi.\"\n— Muslim';

  @override
  String get hadith6 =>
      '\"Osonlashtiringlar, qiyinlashtirmanglar; xushxabar beringlar, bezdirmanglar.\"\n— Buxoriy';

  @override
  String get hadith7 =>
      '\"Kim ilm talabida yo\'lga chiqsa, Alloh unga jannat yo\'lini oson qilib qo\'yadi.\"\n— Muslim';

  @override
  String get hadith8 => '\"Sadaqa molni kamaytirmaydi.\"\n— Muslim';

  @override
  String get hadith9 =>
      '\"Kuchli mo\'min Allohga zaif mo\'mindan ko\'ra yaxshiroq va suyukliroqdir, holbuki ikkalasida ham yaxshilik bor.\"\n— Muslim';

  @override
  String get hadith10 =>
      '\"Kim kuniga yuz marta \'Subhanallohi va bihamdihi\' desa, gunohlari dengiz ko\'pigicha bo\'lsa ham, kechiriladi.\"\n— Buxoriy va Muslim';

  @override
  String get hadith12 =>
      '\"Kim har bir farz namozidan keyin Oyatal Kursiyni o\'qisa, uni jannatga kirishdan faqat o\'lim to\'sib turadi.\"\n— Nasoiy';

  @override
  String get hadith13 => '\"Yaxshi so\'z sadaqadir.\"\n— Buxoriy va Muslim';

  @override
  String get hadith14 =>
      '\"Kim Allohga va oxirat kuniga iymon keltirgan bo\'lsa, yaxshi gapirsin yoki jim tursin.\"\n— Buxoriy va Muslim';

  @override
  String get hadith15 =>
      '\"Beva va miskinga g\'amxo\'rlik qiluvchi kishi Alloh yo\'lidagi mujohid kabidir.\"\n— Buxoriy va Muslim';

  @override
  String get hadith16 =>
      '\"Birodaringga tabassum qilishing sadaqadir.\"\n— Termiziy';

  @override
  String get hadith17 =>
      '\"Sizlarning eng yaxshilaringiz Qur\'onni o\'rgangan va uni o\'rgatganlaringizdir.\"\n— Buxoriy';

  @override
  String get hadith18 =>
      '\"Hech kim o\'z qo\'li mehnati bilan topganidan yaxshiroq taom yemagan.\"\n— Buxoriy';

  @override
  String get hadith19 =>
      '\"Alloh muloyimdir va har bir ishda muloyimlikni yaxshi ko\'radi.\"\n— Buxoriy va Muslim';

  @override
  String historyDayCompleted(String completed, String total) {
    return '$total tadan $completed tasi bajarildi';
  }

  @override
  String get settingsSchedule => 'Jadval';

  @override
  String get settingsAppearance => 'Tashqi ko\'rinish';

  @override
  String get settingsAboutTagline => 'Kundalik diniy hamrohingiz';

  @override
  String get settingsRolloverSub => 'Kun qachon almashadi';

  @override
  String get settingsAbout => 'Ilova haqida';

  @override
  String get settingsVersion => 'Versiya';

  @override
  String get settingsDeveloper => 'Dasturchi';

  @override
  String get settingsSupport => 'Yordam';

  @override
  String get settingsRate => 'Ilovani baholash';

  @override
  String get settingsContact => 'Biz bilan bog\'lanish';

  @override
  String get settingsReportBug => 'Xato haqida xabar berish';

  @override
  String get settingsRequestFeature => 'Yangi imkoniyat taklif qilish';

  @override
  String settingsSupportFallback(String email) {
    return 'Pochtani ochib bo\'lmadi. Iltimos, $email manziliga xabar yuboring.';
  }

  @override
  String get settingsPrivacyPolicy => 'Maxfiylik siyosati';

  @override
  String get settingsPrivacyOpenFailed =>
      'Maxfiylik siyosatini ochib bo\'lmadi.';

  @override
  String get hadith20 =>
      '\"Kim Ramazonni iymon bilan va savob umidida ro\'za tutsa, uning o\'tgan gunohlari kechiriladi.\"\n— Buxoriy va Muslim';

  @override
  String get hadith22 =>
      '\"Azon va iqomat orasidagi duo rad etilmaydi.\"\n— Abu Dovud';

  @override
  String get hadith23 =>
      '\"Kim Alloh uchun masjid qursa, Alloh unga jannatda uy quradi.\"\n— Buxoriy va Muslim';

  @override
  String get hadith24 =>
      '\"Erkaklar uchun eng yaxshi saflar birinchi saflar, ayollar uchun eng yaxshi saflar oxirgi saflardir.\"\n— Muslim';

  @override
  String get hadith25 => '\"Ro\'za do\'zaxdan qalqondir.\"\n— Nasoiy';

  @override
  String get hadith26 =>
      '\"Kim o\'n ikki rakat sunnat namoz o\'qisa, unga jannatda uy quriladi.\"\n— Muslim';

  @override
  String get hadith27 =>
      '\"Qur\'onga mohir kishi ulug\' farishtalar bilan birga bo\'ladi.\"\n— Buxoriy va Muslim';

  @override
  String get hadith29 => '\"Sadaqaning eng afzali suv ichirishdir.\"\n— Ahmad';

  @override
  String get hadith30 =>
      '\"Kim mo\'mindan bir qiyinchilikni bartaraf qilsa, Alloh qiyomat kunida undan bir qiyinchilikni bartaraf qiladi.\"\n— Muslim';

  @override
  String get hadith32 => '\"Hayo iymondandir.\"\n— Buxoriy va Muslim';

  @override
  String get hadith34 =>
      '\"Kim sabr qilsa, Alloh unga sabr beradi.\"\n— Buxoriy va Muslim';

  @override
  String get hadith36 =>
      '\"Sizlardan hech biringiz o\'zi uchun yaxshi ko\'rgan narsani birodariga ham yaxshi ko\'rmaguncha, haqiqiy mo\'min bo\'lmaydi.\"\n— Buxoriy va Muslim';

  @override
  String get hadith37 =>
      '\"Ochlarni to\'ydiringlar, bemorlarni ziyorat qilinglar va asirlarni ozod qilinglar.\"\n— Buxoriy';

  @override
  String get hadith38 =>
      '\"Kuchli odam kurashda yengadigan emas, balki g\'azab paytida o\'zini tiya oladigan kishidir.\"\n— Buxoriy va Muslim';

  @override
  String get hadith40 =>
      '\"Har namozdan keyin o\'ttiz uch martadan \'Subhanalloh\', \'Alhamdulillah\' va \'Allohu akbar\' denglar.\"\n— Muslim';

  @override
  String get hadith41 => '\"Eng yaxshi zikr — La ilaha illalloh.\"\n— Termiziy';

  @override
  String get hadith42 =>
      '\"Ikki ne\'mat bor, ko\'p odamlar ularni boy beradi: sog\'lik va bo\'sh vaqt.\"\n— Buxoriy';

  @override
  String get hadith43 =>
      '\"Besh narsadan oldin besh narsani g\'animat bilinglar: qarilikdan oldin yoshlikni, kasallikdan oldin sog\'likni, faqirlikdan oldin boylikni, bandlikdan oldin bo\'sh vaqtni va o\'limdan oldin hayotni.\"\n— Hokim';

  @override
  String get hadith44 =>
      '\"Kim Ixlos surasini o\'n marta o\'qisa, Alloh unga jannatda uy quradi.\"\n— Ahmad';

  @override
  String get hadith45 =>
      '\"Farz namozlaridan keyingi eng afzal namoz tungi namozdir.\"\n— Muslim';

  @override
  String get hadith46 =>
      '\"Sadaqa gunohni suv olovni o\'chirganidek o\'chiradi.\"\n— Termiziy';

  @override
  String get hadith47 =>
      '\"Silai rahm qiluvchi yaxshilikka yaxshilik bilan javob qaytaruvchi emas, balki qarindoshlik uzilganda ham uni bog\'lovchi kishidir.\"\n— Buxoriy';

  @override
  String get hadith49 =>
      '\"Kim taom yeb: \'Menga buni yedirgan va hech qanday kuch-quvvatimsiz menga rizq qilib bergan Allohga hamd bo\'lsin\', desa, o\'tgan gunohlari kechiriladi.\"\n— Termiziy';

  @override
  String get hadith53 =>
      '\"Hech bir yaxshilikni arzimas sanamang, hatto birodaringizni ochiq yuz bilan kutib olish bo\'lsa ham.\"\n— Muslim';

  @override
  String get hadith54 =>
      '\"Sizlarning eng yaxshingiz oilasiga eng yaxshi bo\'lganingizdir.\"\n— Termiziy';

  @override
  String get hadith55 =>
      '\"Kim kechasi Baqara surasining oxirgi ikki oyatini o\'qisa, bu unga kifoya qiladi.\"\n— Buxoriy va Muslim';

  @override
  String get hadith56 =>
      '\"Dunyo matohdir, uning eng yaxshi matohi solih ayoldir.\"\n— Muslim';

  @override
  String get hadith57 =>
      '\"Uch duo rad etilmaydi: ro\'zadorning duosi, odil hukmdorning duosi va mazlumning duosi.\"\n— Termiziy';

  @override
  String get hadith58 =>
      '\"Kim menga bir marta salovot aytsa, Alloh unga o\'n marta rahmat yuboradi.\"\n— Muslim';

  @override
  String get hadith65 => '\"Mo\'min mo\'minning oynasidir.\"\n— Abu Dovud';

  @override
  String get hadith66 =>
      '\"Rostgo\'ylik yaxshilikka yetaklaydi, yaxshilik esa jannatga yetaklaydi.\"\n— Buxoriy va Muslim';

  @override
  String get hadith67 =>
      '\"Omonatni senga ishonib topshirgan kishiga qaytar, senga xiyonat qilganga xiyonat qilma.\"\n— Abu Dovud va Termiziy';

  @override
  String get hadith68 =>
      '\"Musulmonga yetadigan har qanday charchoq, kasallik, qayg\'u, g\'am, ozor va tashvish, hatto unga kirgan tikan sababli ham Alloh uning gunohlaridan bir qismini kechiradi.\"\n— Buxoriy va Muslim';

  @override
  String get hadith69 =>
      '\"Musulmonning birodari haqqiga uning yo\'qligida qilgan duosi albatta ijobat bo\'ladi.\"\n— Muslim';

  @override
  String get hadith70 =>
      '\"Kim Allohdan uch marta jannatni so\'rasa, jannat: \'Allohim, uni jannatga kiritgin\', deydi.\"\n— Termiziy';

  @override
  String get hadith71 =>
      '\"Ramazondan keyingi eng afzal ro\'za Allohning oyi — Muharram ro\'zasidir.\"\n— Muslim';

  @override
  String get hadith72 =>
      '\"Kim haj qilib, fahsh so\'z aytmasa va gunoh qilmasa, onasi tug\'gan kundagidek qaytadi.\"\n— Buxoriy va Muslim';

  @override
  String get hadith73 =>
      '\"Umra keyingi umragacha ular orasidagi gunohlarga kafforatdir.\"\n— Buxoriy va Muslim';

  @override
  String get hadith74 =>
      '\"Qop-qorong\'i tunning bo\'laklaridek fitnalar kelishidan oldin solih amallarga shoshilinglar.\"\n— Muslim';

  @override
  String get hadith75 =>
      '\"Bomdod namozining ikki rakati dunyo va undagi barcha narsadan yaxshiroqdir.\"\n— Muslim';

  @override
  String get hadith77 =>
      '\"Agar Allohga haqiqiy tavakkul qilganingizda edi, U sizlarni qushlarni rizqlantirganidek rizqlantirardi.\"\n— Termiziy';

  @override
  String get hadith78 =>
      '\"Kim bemorni ziyorat qilsa, qaytguniga qadar jannat mevalarini terishda bo\'ladi.\"\n— Muslim';

  @override
  String get hadith79 =>
      '\"Salomni yoyinglar, taom beringlar va odamlar uxlaganda tunda namoz o\'qinglar — jannatga salomat kirasizlar.\"\n— Termiziy';

  @override
  String get hadith80 =>
      '\"Odamlarga shukr qilmagan kishi Allohga ham shukr qilmaydi.\"\n— Termiziy';

  @override
  String get hadith81 =>
      '\"Hasad faqat ikki kishiga nisbatan joiz: Alloh mol bergan va uni haq yo\'lida sarflaydigan kishi hamda Alloh hikmat bergan va u bilan hukm qilib, uni o\'rgatadigan kishi.\"\n— Buxoriy va Muslim';

  @override
  String get hadith82 =>
      '\"Kishi do\'stining dinida bo\'ladi, bas, har biringiz kim bilan do\'stlashayotganiga qarasin.\"\n— Abu Dovud va Termiziy';

  @override
  String get hadith85 =>
      '\"Kim Alloh uchun biror narsani tark etsa, Alloh unga undan yaxshiroq narsani beradi.\"\n— Ahmad';

  @override
  String get hadith86 =>
      '\"Kim musulmonning aybini yashirsa, Alloh qiyomat kunida uning aybini yashiradi.\"\n— Buxoriy va Muslim';

  @override
  String get hadith87 =>
      '\"Dunyoda begona yoki yo\'lovchidek bo\'l.\"\n— Buxoriy';

  @override
  String get hadith88 =>
      '\"Kim qiyin ahvolda bo\'lganga osonlik qilsa, Alloh unga dunyoda va oxiratda osonlik qiladi.\"\n— Muslim';

  @override
  String get hadith89 =>
      '\"Amallar niyatlarga ko\'radir.\"\n— Buxoriy va Muslim';

  @override
  String get hadith90 =>
      '\"Gumondan saqlaninglar, zero gumon so\'zlarning eng yolg\'onidir.\"\n— Buxoriy va Muslim';

  @override
  String get hadith93 =>
      '\"Birga ovqatlaninglar va Allohning ismini zikr qilinglar, shunda taomingiz sizlarga barakali bo\'ladi.\"\n— Abu Dovud';

  @override
  String get hadith94 =>
      '\"Qaysi bir qavm Allohni zikr qilib o\'tirsa, albatta farishtalar ularni o\'rab oladi, rahmat ularni qoplaydi va sakinat ularga nozil bo\'ladi.\"\n— Muslim';

  @override
  String get hadith95 =>
      '\"Alloh kechiruvchi bandaning faqat izzatini ziyoda qiladi.\"\n— Muslim';

  @override
  String get hadith96 =>
      '\"Tuyangni bog\'la, keyin Allohga tavakkul qil.\"\n— Termiziy';

  @override
  String get hadith97 =>
      '\"Mo\'minning ishi ajablanarli — uning har bir ishi o\'zi uchun yaxshilikdir.\"\n— Muslim';

  @override
  String get hadith98 =>
      '\"Musulmon musulmonning birodaridir: unga zulm qilmaydi, uni yordamsiz tashlab qo\'ymaydi va uni xor qilmaydi.\"\n— Muslim';

  @override
  String get delete => 'O\'chirish';

  @override
  String get remove => 'Olib tashlash';

  @override
  String get deleteAmalConfirmTitle => 'Kuzatuvdan olib tashlansinmi?';

  @override
  String deleteAmalConfirmBody(String title) {
    return '\"$title\" ro\'yxatingizdan yashiriladi. Tarixingiz saqlanib qoladi.';
  }

  @override
  String get genericError =>
      'Nimadir xato ketdi. Iltimos, qayta urinib ko\'ring.';

  @override
  String get notificationChannelName => 'Amal eslatmalari';

  @override
  String get notificationChannelDescription =>
      'Siz kuzatayotgan amallar uchun kunlik eslatmalar.';

  @override
  String get invalidAmalId => 'Yaroqsiz amal identifikatori';

  @override
  String get tutorialSettingsRow => 'Muhosabadan qanday foydalaniladi';

  @override
  String get tutorialSkip => 'O\'tkazib yuborish';

  @override
  String get tutorialNext => 'Keyingi';

  @override
  String get tutorialDone => 'Tayyor';

  @override
  String get tutorialTapTitle => 'Bajarish uchun bosing';

  @override
  String get tutorialTapBody =>
      'Bir marta bossangiz, amal bugun uchun bajarilgan deb belgilanadi. Bekor qilish uchun yana bosing.';

  @override
  String get tutorialEditTitle => 'Tahrirlash uchun ikki marta bosing';

  @override
  String get tutorialEditBody =>
      'Tahrirlash oynasi ochiladi — nomini yoki takrorlanish tartibini o\'zgartirishingiz mumkin.';

  @override
  String get tutorialReorderTitle =>
      'Tartibni o\'zgartirish uchun bosib turing';

  @override
  String get tutorialReorderBody =>
      'Qatorni bosib turing va sudrang. Tartib saqlanadi.';

  @override
  String get tutorialRemoveTitle => 'Olib tashlash uchun suring';

  @override
  String get tutorialRemoveBody =>
      'Qatorni chetga surib, uni bugun uchun yashiring yoki kuzatuvni to\'xtating.';

  @override
  String get tutorialCountTitle => 'Takrorlarni sanash';

  @override
  String get tutorialCountBody =>
      'Bir martadan ko\'p bajariladigan amallarda har bir takror uchun − va + tugmalaridan foydalaning.';

  @override
  String get tutorialViewTitle => 'Guruhlash yoki oddiy ro\'yxat';

  @override
  String get tutorialViewBody =>
      'Turkum bo\'yicha guruhlash va bitta oddiy ro\'yxat o\'rtasida almashing.';

  @override
  String get tutorialChallengeLogTitle => 'Bugunni qayd etish uchun bosing';

  @override
  String get tutorialChallengeLogBody =>
      'Bir marta bossangiz, bugungi kun qayd etiladi. Sanaladigan maqsadda har bir bosish bir qadam qo\'shadi.';

  @override
  String get tutorialChallengeOpenTitle => 'Ochish uchun ikki marta bosing';

  @override
  String get tutorialChallengeOpenBody =>
      'Maqsadni ochadi — har kunni ko\'ring, o\'tkazib yuborilgan kunni to\'g\'rilang yoki uni o\'chiring.';

  @override
  String get tutorialChallengeDeleteBody =>
      'Maqsadni o\'chirish uchun kartani chetga suring.';

  @override
  String get tutorialChallengeAmountTitle => 'Aniq miqdorni qayd etish';

  @override
  String get tutorialChallengeAmountBody =>
      '− va + bilan o\'zgartiring yoki raqamni bosib, aniq miqdorni kiriting.';

  @override
  String get challengeOpenDetailsAction => 'Maqsad tafsilotlarini ochish';

  @override
  String get challengesActive => 'Faol';

  @override
  String get challengesPast => 'O\'tgan';

  @override
  String challengeJustFinished(int count, String title) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ta maqsad tugadi — eng oxirgisi: $title',
      one: '$title tugadi',
    );
    return '$_temp0';
  }

  @override
  String get challengeSectionEnded => 'Muddati tugagan';

  @override
  String get challengesPastEmpty => 'Hozircha tugagan maqsad yo\'q.';

  @override
  String get challengesEmptyTitle => 'Hali maqsad yo\'q';

  @override
  String get challengesEmptyBody =>
      'O\'zingizga bir maqsad qo\'ying — masalan, 7 kunda 20 rakat — va uni shu yerda kuzating.';

  @override
  String get editChallenge => 'Maqsadni tahrirlash';

  @override
  String get deleteChallenge => 'Maqsadni o\'chirish';

  @override
  String get deleteChallengeConfirm =>
      'Bu maqsad va uning barcha qayd etilgan natijalari o\'chirilsinmi?';

  @override
  String get challengeShapeQuestion => 'Bu qanday maqsad?';

  @override
  String get challengeShapeTotal => 'Umumiy songa yetish';

  @override
  String get challengeShapeTotalBody =>
      '1000 salovot, 30 juz. Miqdorni kiritasiz, u qo\'shilib boradi.';

  @override
  String get challengeShapeStreak => 'Kunlik ketma-ketlik';

  @override
  String get challengeShapeStreakBody =>
      'Tahajjud, jamoat bilan bomdod. Kuniga bitta belgi, miqdor muhim emas.';

  @override
  String get challengeTargetLabel => 'Maqsad soni';

  @override
  String get challengeTargetRequired => 'Noldan katta son kiriting';

  @override
  String get challengeUnitLabel => 'Birlik (ixtiyoriy)';

  @override
  String get challengeUnitHint => 'rakat, sahifa, marta';

  @override
  String get challengeOneTapAdds => 'Bir bosishda qo\'shiladi';

  @override
  String get challengeHowManyDays => 'Necha kun?';

  @override
  String get challengeReachHowMuch => 'Qanchaga yetish kerak?';

  @override
  String get challengeSpreadOver => 'Muddat';

  @override
  String get challengeSpreadEveryDay => 'Har kuni';

  @override
  String get challengeSpreadLonger => 'Uzoqroq muddat';

  @override
  String get challengeByWhen => 'Qachonga qadar?';

  @override
  String get challengeWindowDuration => 'Muddat ichida';

  @override
  String get challengeByDate => 'Belgilangan sanagacha';

  @override
  String challengePlanRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String challengePlanExact(String start, String end) {
    return '$start – $end · kuniga bitta, har kuni';
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
    return '$start – $end · $window kundan $target kun — $slack kunni o\'tkazib yuborishingiz mumkin';
  }

  @override
  String challengePlanRate(String start, String end, String rate) {
    return '$start – $end · kuniga taxminan $rate';
  }

  @override
  String challengePlanOpen(String start) {
    return 'Boshlanishi: $start · muddatsiz';
  }

  @override
  String challengeTooTight(
    String target,
    String window,
    num targetCount,
    num windowCount,
  ) {
    return '$target kun $window kunga sig\'maydi — ketma-ketlikda kuniga bittadan hisoblanadi.';
  }

  @override
  String challengeDurationLabel(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kun',
    );
    return '$_temp0';
  }

  @override
  String get challengeStartDate => 'Boshlanishi';

  @override
  String get challengeEndDate => 'Tugashi';

  @override
  String challengeProgressCount(String done, String target, String unit) {
    return '$done / $target $unit';
  }

  @override
  String challengeProgressPlain(String done, String target) {
    return '$target dan $done';
  }

  @override
  String challengeProgressDays(String done, String target) {
    return '$target kundan $done';
  }

  @override
  String challengeDaysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kun qoldi',
    );
    return '$_temp0';
  }

  @override
  String get challengeNoDeadline => 'Muddatsiz';

  @override
  String challengeOnTrack(String rate) {
    return 'Reja bo\'yicha · $rate/kun';
  }

  @override
  String challengeBehind(String rate) {
    return 'Ortda · kuniga $rate kerak';
  }

  @override
  String challengeLastDay(String remaining) {
    return 'Oxirgi kun · $remaining qoldi';
  }

  @override
  String get challengeReached => 'Maqsadga erishildi';

  @override
  String get challengeCompleted => 'Bajarildi';

  @override
  String challengeEnded(String done, String target) {
    return 'Tugadi · $target dan $done';
  }

  @override
  String get challengeExpiredTitle => 'Maqsad tugadi';

  @override
  String challengeExpiredBody(String title, String done, String target) {
    return '$title: $target dan $done bilan yakunlandi.';
  }

  @override
  String get challengeExtend => 'Muddatni uzaytirish';

  @override
  String get challengeRestart => 'Qaytadan boshlash';

  @override
  String get challengeArchive => 'Arxivlash';

  @override
  String get challengeDailyBreakdown => 'Kunlik qaydlar';

  @override
  String challengeNudgeBody(String title, String rate) {
    return '$title: o\'z vaqtida tugatish uchun kuniga $rate kerak.';
  }

  @override
  String challengeLastDayBody(String title, String remaining) {
    return '$title: oxirgi kun — $remaining qoldi.';
  }

  @override
  String get challengeGroupGoal => 'Maqsad';

  @override
  String get challengeGroupShape => 'Turi';

  @override
  String get challengeGroupPlan => 'Reja';

  @override
  String get challengeGroupReminders => 'Eslatmalar';

  @override
  String get challengeStartFromTemplate => 'Namunadan boshlash';

  @override
  String get challengeTemplateBlank => 'Bo\'sh';

  @override
  String get challengePreview => 'Oldindan ko\'rish';

  @override
  String get challengeTmplTahajjud => '40 kecha tahajjud';

  @override
  String get challengeTmplSalawat => '1000 salovot';

  @override
  String get challengeTmplKhatm => '30 kunda Qur\'on xatmi';

  @override
  String get challengeTmplFajrJamaah => '30 kun bomdodni jamoat bilan';

  @override
  String get challengeTmplSadaqah => '30 kun sadaqa';

  @override
  String get listSeparator => ' · ';

  @override
  String get tierRafiq => 'Rafiq';

  @override
  String get tierNasir => 'Nosir';

  @override
  String get tierMuhsin => 'Muhsin';

  @override
  String get tierAnsar => 'Ansor';

  @override
  String get tierRafiqMeaning => 'hamroh';

  @override
  String get tierNasirMeaning => 'madadkor';

  @override
  String get tierMuhsinMeaning => 'xayrixoh';

  @override
  String get tierAnsarMeaning => 'yordamchi';

  @override
  String get supportCardBody =>
      'Bepul, reklamasiz, ro\'yxatdan o\'tish talab qilinmaydi. Xohlasangiz, ilova rivojiga hissa qo\'shishingiz mumkin — istalgan miqdorda, istalgan vaqtda.';

  @override
  String get supportCta => 'Muhosabani qo\'llab-quvvatlash';

  @override
  String get supportAgain => 'Yana qo\'llab-quvvatlash';

  @override
  String get supporterThanks =>
      'Alloh rozi bo\'lsin! Inshaalloh, Muhosaba bepul va reklamasiz qoladi.';

  @override
  String supporterSince(String tier, String month) {
    return '$tier · $month dan beri';
  }

  @override
  String get supportPromptTitle => 'Muhosabani qo\'llab-quvvatlang';

  @override
  String get supportPromptBody =>
      'Muhosaba bepul, reklamasiz va ro\'yxatdan o\'tishni talab qilmaydi. Xohlasangiz, ilova rivojiga hissa qo\'shishingiz mumkin — istalgan miqdorda, istalgan vaqtda. Hech qanday imkoniyat bunga bog\'lab qo\'yilmagan.';

  @override
  String get supportPromptNow => 'Hozir qo\'llab-quvvatlash';

  @override
  String get supportPromptLater => 'Keyinroq eslatish';

  @override
  String get supportPromptNever => 'Boshqa so\'ralmasin';

  @override
  String get tipSheetTitle => 'Muhosabani qo\'llab-quvvatlash';

  @override
  String get tipSheetBody =>
      'Istalgan miqdorni, xohlagancha marta tanlashingiz mumkin. Hissalar ilovani yuritish xarajatlariga sarflanadi — inshaalloh, u bepul va reklamasiz qoladi. Minnatdorlik sifatida Sozlamalarda qo\'llab-quvvatlovchi deb belgilanasiz.';

  @override
  String tipSheetSupporterLine(String tier) {
    return '$tier — Alloh rozi bo\'lsin.';
  }

  @override
  String get tipSheetSupporterAgain =>
      'Istalgan vaqtda yana qo\'llab-quvvatlashingiz mumkin.';

  @override
  String tipSheetStoreNote(String store) {
    return 'To\'lov $store orqali amalga oshiriladi — to\'lov ma\'lumotlaringizni biz hech qachon ko\'rmaymiz.';
  }

  @override
  String get tipSheetOtherWays => 'O\'zingizga mos variantni topmadingizmi?';

  @override
  String get tipSheetWriteToUs => 'Bizga yozing';

  @override
  String get supportEmailBody =>
      'Assalomu alaykum,\n\nMuhosaba rivojiga bevosita hissa qo\'shmoqchiman.\n\nMamlakat:\nQanday usulda yubormoqchiman:\nMiqdor (ixtiyoriy):';

  @override
  String tipBusy(String store) {
    return '$store ochilmoqda…';
  }

  @override
  String get tipThanks => 'Alloh sizdan rozi bo\'lsin, qabul qilsin!';

  @override
  String get tipDone => 'Tayyor';

  @override
  String get tipFailed => 'Xarid amalga oshmadi. Hech qanday to\'lov olinmadi.';

  @override
  String tipPending(String store) {
    return 'Hissangiz $store tomonida kutilmoqda — tasdiqlangach nishoningiz qo\'shiladi.';
  }

  @override
  String get tipUnavailable => 'Hozircha bu qurilmada xarid qilib bo\'lmaydi.';

  @override
  String get optionSetJamaa => 'Jamoat';

  @override
  String get optionJamaaAlone => 'Yolg\'iz';

  @override
  String get optionJamaaHome => 'Uyda jamoat bilan';

  @override
  String get optionJamaaMasjid => 'Masjidda jamoat bilan';

  @override
  String get optionSetOnTime => 'Vaqtida';

  @override
  String get optionOnTimeOnTime => 'Vaqtida';

  @override
  String get optionOnTimeLate => 'Kechikkan';

  @override
  String get optionOnTimeQada => 'Qazo';

  @override
  String get optionSetQuranSession => 'Qur\'on mashg\'uloti';

  @override
  String get optionQuranRecited => 'O\'qildi';

  @override
  String get optionQuranMemorised => 'Yodlandi';

  @override
  String get optionQuranMeaning => 'Ma\'nosi bilan';

  @override
  String get optionQuranListened => 'Tinglandi';

  @override
  String get optionSetSadaqahType => 'Sadaqa turi';

  @override
  String get optionSadaqahMoney => 'Pul';

  @override
  String get optionSadaqahFood => 'Ovqat';

  @override
  String get optionSadaqahTime => 'Vaqt';

  @override
  String get optionSadaqahOther => 'Boshqa';

  @override
  String get optionSetIntensity => 'Daraja';

  @override
  String get optionIntensityLight => 'Yengil';

  @override
  String get optionIntensityModerate => 'O\'rtacha';

  @override
  String get optionIntensityIntense => 'Kuchli';

  @override
  String get optionSetNewTitle => 'Yangi variantlar to\'plami';

  @override
  String get optionSetEditTitle => 'Variantlar to\'plamini tahrirlash';

  @override
  String get optionSetNameLabel => 'To\'plam nomi';

  @override
  String get optionSetNameHint => 'masalan, Jamoat';

  @override
  String get optionsLabel => 'Variantlar';

  @override
  String get optionAdd => 'Variant qo\'shish';

  @override
  String optionHint(int index) {
    return '$index-variant';
  }

  @override
  String optionsMaxReached(int max) {
    return 'Ko\'pi bilan $max ta variant.';
  }

  @override
  String get optionSetPreviewLabel => 'Oldindan ko\'rish — Bugun qatori';

  @override
  String optionSetKeptForHistory(String labels) {
    return 'Tarix uchun saqlangan: $labels';
  }

  @override
  String get optionSetDelete => 'To\'plamni o\'chirish';

  @override
  String get optionSetDeleteConfirm =>
      'Bu to\'plamdan foydalanadigan amallar endi variantlarni ko\'rsatmaydi. Allaqachon qayd etilgan kunlar o\'z tanlovini saqlab qoladi.';

  @override
  String get optionSetNameRequired => 'To\'plamga nom bering';

  @override
  String get optionsMinRequired => 'Kamida ikkita variant qo\'shing';

  @override
  String get optionSetNameTooLong => 'To\'plam nomi juda uzun';

  @override
  String optionTooLong(int index) {
    return '$index-variant juda uzun';
  }

  @override
  String get optionSetNone => 'Yo\'q';

  @override
  String get optionSetNew => 'Yangi to\'plam';

  @override
  String get requireChoiceLabel => 'Tanlash majburiy';

  @override
  String get requireChoiceHelp => 'Variant tanlanmaguncha qator belgilanmaydi';

  @override
  String get requireChoicePickSetFirst => 'Avval to\'plamni tanlang';

  @override
  String get requireChoiceCountHelp =>
      'Sanaladigan amallar − va + orqali bajariladi';

  @override
  String optionsUsedOf(int used, int max) {
    return '$max ta variantdan $used tasi ishlatilgan.';
  }

  @override
  String get choiceNeeded => 'Tanlov kerak';

  @override
  String optionSelected(String label) {
    return '$label, tanlangan';
  }

  @override
  String optionNotSelected(String label) {
    return '$label, tanlanmagan';
  }

  @override
  String optionBreakdownTitle(String set) {
    return 'Variantlar taqsimoti — $set';
  }

  @override
  String optionBreakdownCaption(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ta bajarilish',
    );
    return 'Tanlov qayd etilgan $_temp0 ichidagi ulushlar';
  }

  @override
  String optionNoChoiceRecorded(int none, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other: 'bajarilgan $total kundan',
    );
    return 'Tanlov qayd etilmagan — $_temp0 $none tasida';
  }

  @override
  String get optionRemovedSuffix => 'olib tashlangan';

  @override
  String get optionAllAmals => 'Barchasi';

  @override
  String optionScopedCaption(String amal, int count) {
    return '$amal · $count ta qayd etilgan';
  }

  @override
  String get optionBreakdownSectionTitle => 'Variantlar taqsimoti';

  @override
  String optionBreakdownSwipeHint(int count) {
    return '$count ta to\'plam · suring';
  }

  @override
  String get optionDetailEmpty =>
      'Bu to\'plam uchun hali tanlov qayd etilmagan.';

  @override
  String get optionDetailTrendHeading => 'Vaqt davomida o\'zgarish';

  @override
  String optionDetailTrendReadout(String option, String from, String to) {
    return '$option ulushi birinchi haftada $from, oxirgi haftada $to bo\'ldi.';
  }

  @override
  String get optionDetailByAmalHeading => 'Amal bo\'yicha';

  @override
  String optionDetailByAmalReadout(
    String best,
    String bestShare,
    String worst,
    String worstShare,
  ) {
    return 'Eng yuqori: $best ($bestShare); eng past: $worst ($worstShare).';
  }

  @override
  String get optionDetailRecordsHeading => 'Rekordlar';

  @override
  String get optionDetailLongestRun => 'Eng uzun ketma-ketlik';

  @override
  String get optionDetailBestWeek => 'Eng yaxshi hafta';

  @override
  String get optionDetailCurrentRun => 'Joriy ketma-ketlik';

  @override
  String get optionDetailRecordsCaption =>
      'So\'nggi bir yil asosida hisoblanadi; yuqoridagi davr filtriga bog\'liq emas.';

  @override
  String get optionDetailRecentDaysHeading => 'So\'nggi kunlar';

  @override
  String optionDetailRecentDaysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Oxirgi $count kun',
      one: 'Oxirgi 1 kun',
    );
    return '$_temp0';
  }

  @override
  String get amalFivePrayers => 'Besh vaqt namoz';

  @override
  String get amalJumuah => 'Juma namozi';

  @override
  String get amalWitr => 'Vitr namozi';

  @override
  String get amalQada => 'Qazo namozlari';

  @override
  String get amalFajrSunnah => 'Bomdod sunnati';

  @override
  String get amalDhuhrSunnah => 'Peshin sunnati';

  @override
  String get amalAsrSunnah => 'Asr sunnati';

  @override
  String get amalMaghribSunnah => 'Shom sunnati';

  @override
  String get amalIshaSunnah => 'Xufton sunnati';

  @override
  String get amalRawatib => 'Muakkada sunnatlar';

  @override
  String get amalSiwak => 'Misvok';

  @override
  String get amalWuduSleep => 'Uxlashdan oldin tahorat';

  @override
  String get amalFridayGhusl => 'Juma g\'usli';

  @override
  String get amalIshraq => 'Ishroq namozi';

  @override
  String get amalWuduPrayer => 'Tahiyyatul vuzu';

  @override
  String get amalTahiyyah => 'Tahiyyatul masjid';

  @override
  String get amalEarlyJumuah => 'Jumaga erta borish';

  @override
  String get amalAfterSalah => 'Namozdan keyingi zikrlar';

  @override
  String get amalAfterFajr => 'Bomdoddan keyingi zikrlar';

  @override
  String get amalAfterDhuhr => 'Peshindan keyingi zikrlar';

  @override
  String get amalAfterAsr => 'Asrdan keyingi zikrlar';

  @override
  String get amalAfterMaghrib => 'Shomdan keyingi zikrlar';

  @override
  String get amalAfterIsha => 'Xuftondan keyingi zikrlar';

  @override
  String get amalAyatKursi => 'Oyatal Kursiy';

  @override
  String get amalKursiFajr => 'Bomdoddan keyin Oyatal Kursiy';

  @override
  String get amalKursiDhuhr => 'Peshindan keyin Oyatal Kursiy';

  @override
  String get amalKursiAsr => 'Asrdan keyin Oyatal Kursiy';

  @override
  String get amalKursiMaghrib => 'Shomdan keyin Oyatal Kursiy';

  @override
  String get amalKursiIsha => 'Xuftondan keyin Oyatal Kursiy';

  @override
  String get amalSayyidIstighfar => 'Sayyidul istig\'for';

  @override
  String get amalSalawat => 'Salovot';

  @override
  String get amalSubhanallah => 'Subhanallohi va bihamdihi';

  @override
  String get amalTahlil => 'La ilaha illalloh';

  @override
  String get amalBedtimeAdhkar => 'Uxlashdan oldingi zikrlar';

  @override
  String get amalFridaySalawat => 'Juma kuni salovot';

  @override
  String get amalHawqala => 'La havla va la quvvata';

  @override
  String get amalTasbihFatimah => 'Fotima tasbihi';

  @override
  String get amalWakingAdhkar => 'Uyg\'ongandagi zikrlar';

  @override
  String get amalDuaAdhan => 'Azondan keyingi duo';

  @override
  String get amalDuaIqamah => 'Azon va iqomat orasidagi duo';

  @override
  String get amalDuaSujood => 'Sajdadagi duo';

  @override
  String get amalDuaParents => 'Ota-ona uchun duo';

  @override
  String get amalDuaOthers => 'Boshqalar uchun duo';

  @override
  String get amalFridayHour => 'Jumaning so\'nggi soatidagi duo';

  @override
  String get amalLastThird => 'Tungi duo (so\'nggi uchdan bir)';

  @override
  String get amalMulk => 'Mulk surasi';

  @override
  String get amalBaqarahEnd => 'Baqaraning so\'nggi ikki oyati';

  @override
  String get amalSajdah => 'Sajda surasi';

  @override
  String get amalQuls => 'Ixlos, Falaq va Nos';

  @override
  String get amalYasin => 'Yosin surasi';

  @override
  String get amalWaqiah => 'Voqea surasi';

  @override
  String get amalHifz => 'Qur\'on yodlash';

  @override
  String get amalMurajaah => 'Yodlanganni takrorlash';

  @override
  String get amalTafsir => 'Tafsir';

  @override
  String get amalListenQuran => 'Qur\'on tinglash';

  @override
  String get amalTeachQuran => 'Qur\'on o\'rgatish';

  @override
  String get amalMonThu => 'Dushanba va payshanba ro\'zasi';

  @override
  String get amalThreeDays => 'Oyda uch kun ro\'za';

  @override
  String get amalDailySadaqah => 'Kundalik sadaqa';

  @override
  String get amalFeed => 'Birovga taom berish';

  @override
  String get amalHelpNeed => 'Muhtojga yordam';

  @override
  String get amalOrphan => 'Yetimga homiylik';

  @override
  String get amalGiveWater => 'Suv ichirish';

  @override
  String get amalLearnHadith => 'Bir hadis o\'rganish';

  @override
  String get amalReadBook => 'Islomiy kitob o\'qish';

  @override
  String get amalSeerah => 'Siyratni o\'rganish';

  @override
  String get amalClass => 'Darsga qatnashish';

  @override
  String get amalArabic => 'Arab tilini o\'rganish';

  @override
  String get amalLearnDua => 'Yangi duo o\'rganish';

  @override
  String get amalShare => 'O\'rganganingizni ulashish';

  @override
  String get amalFiqh => 'Fiqh o\'rganish';

  @override
  String get amalMuhasaba => 'Tungi muhosaba';

  @override
  String get amalSpeakGood => 'Yaxshi so\'z yoki sukut';

  @override
  String get amalNoBackbiting => 'G\'iybatdan saqlanish';

  @override
  String get amalAnger => 'G\'azabni jilovlash';

  @override
  String get amalGaze => 'Ko\'zni haromdan saqlash';

  @override
  String get amalTruthful => 'Rostgo\'ylik';

  @override
  String get amalSmile => 'Tabassum';

  @override
  String get amalSalam => 'Salomni yoyish';

  @override
  String get amalForgive => 'Boshqalarni kechirish';

  @override
  String get amalGratitude => 'Shukr';

  @override
  String get amalVisitSick => 'Bemor ziyorati';

  @override
  String get amalNeighbours => 'Qo\'shniga yaxshilik';

  @override
  String get amalRemoveHarm => 'Yo\'ldan ozorli narsani olib tashlash';

  @override
  String get amalParents => 'Ota-onaga yaxshilik';

  @override
  String get amalFamilyTies => 'Silai rahm';

  @override
  String get amalHelpHome => 'Uy ishlariga yordam';

  @override
  String get amalTeachChildren => 'Farzandlarga din o\'rgatish';

  @override
  String get amalSpouse => 'Turmush o\'rtoqqa yaxshilik';

  @override
  String get categoryDua => 'Duo';

  @override
  String get categoryFasting => 'Ro\'za';

  @override
  String get categoryKnowledge => 'Ilm';

  @override
  String get categoryCharacter => 'Axloq';

  @override
  String get categoryFamily => 'Oila';

  @override
  String get libraryTitle => 'Amallar kutubxonasi';

  @override
  String get librarySearchHint => 'Amallarni qidirish';

  @override
  String get libraryAll => 'Barchasi';

  @override
  String get libraryAdded => 'Bugunga qo\'shildi';

  @override
  String libraryAddedShowsOn(String days) {
    return 'Qo\'shildi · $days kunlari ko\'rinadi';
  }

  @override
  String libraryNoMatch(String query) {
    return '“$query” bo\'yicha amal topilmadi';
  }

  @override
  String libraryCreateNamed(String query) {
    return 'Yaratish: “$query”';
  }

  @override
  String get libraryPickBanner => 'Amallar kutubxonasidan tanlang';

  @override
  String libraryPickBannerSubtitle(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countText ta tayyor amal',
      one: '$countText ta tayyor amal',
    );
    return '$_temp0';
  }

  @override
  String get libraryFilledIn => 'Amallar kutubxonasidan to\'ldirildi';

  @override
  String get libraryChange => 'O\'zgartirish';

  @override
  String get libraryEditAction => 'Tahrirlash';

  @override
  String libraryWeeklyAny(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Haftada $countText kun',
      one: 'Haftada bir marta',
    );
    return '$_temp0';
  }

  @override
  String libraryMonthlyAny(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Oyda $countText kun',
      one: 'Oyda bir marta',
    );
    return '$_temp0';
  }

  @override
  String libraryTimes(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countText marta',
    );
    return '$_temp0';
  }

  @override
  String get libraryAnyAmount => 'Istalgan miqdor';

  @override
  String libraryAddTooltip(String title) {
    return 'Qo\'shish: $title';
  }

  @override
  String get libraryOnList => 'Ro\'yxatingizda bor';

  @override
  String get todayEmptyBrowse => 'Amallar kutubxonasini ko\'rish';
}
