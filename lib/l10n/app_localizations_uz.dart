// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Uzbek (`uz`).
class AppLocalizationsUz extends AppLocalizations {
  AppLocalizationsUz([String locale = 'uz']) : super(locale);

  @override
  String get appTitle => 'Muhasaba';

  @override
  String get tabToday => 'Bugun';

  @override
  String get tabStats => 'Statistika';

  @override
  String get tabHistory => 'Tarix';

  @override
  String get tabSettings => 'Sozlamalar';

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
  String get clear => 'Tozalash';

  @override
  String get titleLabel => 'Sarlavha';

  @override
  String get titleRequired => 'Sarlavha kiritilishi shart';

  @override
  String get titleTooLong => 'Sarlavha juda uzun';

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
  String get timesPerPeriod => 'Davr ichida marta';

  @override
  String get custom => 'Boshqa';

  @override
  String get customTargetHint => 'masalan, 50';

  @override
  String get dayOfWeek => 'Hafta kuni';

  @override
  String get anyDay => 'Har qanday';

  @override
  String get anyDayHint =>
      'Har qanday kun (bugun ko\'rinadi, ertaga yashirinadi)';

  @override
  String onlyDayHint(String day) {
    return 'Faqat $day';
  }

  @override
  String get dateOfMonth => 'Oy sanasi';

  @override
  String get anyDate => 'Har qanday';

  @override
  String get anyDateHint =>
      'Har qanday sana (bugun ko\'rinadi, ertaga yashirinadi)';

  @override
  String onlyDateHint(String date) {
    return 'Faqat $date-sanada';
  }

  @override
  String get startPreChecked => 'Oldindan belgilangan holda boshlash';

  @override
  String get startPreCheckedSubtitle =>
      'Yangi davr boshlanganida bu amal sukut bo\'yicha bajarilgan deb belgilanadi, siz belgini olib tashlashingiz mumkin.';

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
      'Eslatma saqlandi, lekin bildirishnomalarga ruxsat berilmagan. Ogohlantirishlar olish uchun tizim sozlamalarida yoqing.';

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
  String progressOf(int progress, int target) {
    return '$target tadan $progress tasi bajarildi';
  }

  @override
  String get removeFromToday => 'Bugundan olib tashlash';

  @override
  String get removeFromTodaySubtitle =>
      'Faqat bugun uchun yashirish. Ertaga qaytadi.';

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
  String get addAmal => 'Amal qo\'shish';

  @override
  String get customAmal => 'Maxsus amal';

  @override
  String get templateTasbih => 'Tasbih 33x';

  @override
  String get templateIstighfar => 'Istighfor 100x';

  @override
  String get templateSurahKahf => 'Kahf surasi';

  @override
  String get templateSadaqah => 'Sadaqa';

  @override
  String get templateTahajjud => 'Tahajjud';

  @override
  String get templateDuhaPrayer => 'Duho namozi';

  @override
  String get settingsTitle => 'Sozlamalar';

  @override
  String settingsLoadError(String error) {
    return 'Sozlamalarni yuklashda xato:\n$error';
  }

  @override
  String get sectionDayBoundary => 'Kun chegarasi';

  @override
  String get rolloverHour => 'O\'tish soati';

  @override
  String get rolloverAtMidnight => 'Bugun yarim tunda tugaydi.';

  @override
  String rolloverSubtitle(String time) {
    return 'Kechagi amallar $time gacha tahrirlanishi mumkin.';
  }

  @override
  String get pickRolloverHour => 'Kun o\'tadigan soatni tanlang';

  @override
  String get sectionWeekMonth => 'Hafta va oy';

  @override
  String get startOfWeek => 'Hafta boshlanishi';

  @override
  String get startOfMonth => 'Oy boshlanishi';

  @override
  String get startOfMonthClamped =>
      '28-kundan keyingi kunlar qisqaroq oylarda oxirgi kunga moslashtiriladi.';

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
  String get aboutTitle => 'Muhasaba';

  @override
  String get aboutSubtitle =>
      'Shaxsiy diniy hisobdorlik jurnali. Barcha ma\'lumotlar ushbu qurilmada saqlanadi.';

  @override
  String get statsTitle => 'Statistika';

  @override
  String statsLoadError(String error) {
    return 'Statistikani yuklashda xato:\n$error';
  }

  @override
  String get perAmal => 'Har bir amal';

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
  String get statsAllTime => 'Barcha vaqt';

  @override
  String get statsCustomRange => 'Maxsus oraliq';

  @override
  String get statsAllCategories => 'Barchasi';

  @override
  String get statsAllAmals => 'Barchasi';

  @override
  String get statsCompleted => 'Bajarilgan';

  @override
  String get statsExpected => 'Kutilgan';

  @override
  String get statsVsPrevious => 'Avvalgiga nisbatan';

  @override
  String get statsByCategory => 'Turkum bo\'yicha';

  @override
  String get statsPerAmal => 'Har bir amal';

  @override
  String get statsCurrentStreak => 'Joriy ketma-ketlik';

  @override
  String get statsBestStreak => 'Eng yaxshi ketma-ketlik';

  @override
  String get statsTotalDays => 'Jami kunlar';

  @override
  String get statsConsistency => 'Barqarorlik';

  @override
  String get statsLast5Weeks => 'Oxirgi 5 hafta';

  @override
  String get statsDailyBreakdown => 'Kunlik tafsilot';

  @override
  String get statsCompletionRate => 'Bajarish darajasi';

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
    return '$date sanasida hech qanday amal kuzatilmagan';
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
      '\"Alloh uchun eng sevimli amallar doimiy qilinadigan amallardir, garchi oz bo\'lsa ham.\"\n— Buxoriy va Muslim';

  @override
  String get hadith1 =>
      '\"Yaxshi amallarni qo\'lingizdan kelgancha qiling, chunki eng yaxshi amallar doimiy qilinganlardir, garchi oz bo\'lsa ham.\"\n— Ibn Moja';

  @override
  String get hadith2 =>
      '\"Odam farzandi vafot etganida, amallari to\'xtaydi, faqat uchta narsa bundan mustasno: doimiy sadaqa, foydali ilm yoki unga duo qiladigan solih farzand.\"\n— Muslim';

  @override
  String get hadith3 =>
      '\"Kim ikki salqin namoini (Bomdod va Asrni) o\'qisa, jannatga kiradi.\"\n— Buxoriy';

  @override
  String get hadith4 =>
      '\"Alloh sizning tashqi ko\'rinishingiz va boyligingizga qaramaydi, balki qalblaringiz va amallaringizga qaraydi.\"\n— Muslim';

  @override
  String get hadith5 =>
      '\"Insonlarning eng yaxshisi odamlarga eng ko\'p foyda keltiradigan kishidir.\"\n— Doroqutniy';

  @override
  String get hadith6 =>
      '\"Ishlarni osonlashtiring, qiyinlashtirmang; xushxabar bering, odamlarni qo\'rqitmang.\"\n— Buxoriy';

  @override
  String get hadith7 =>
      '\"Kim ilm izlab yo\'lga chiqsa, Alloh unga jannatga yo\'lni osonlashtiradi.\"\n— Muslim';

  @override
  String get hadith8 => '\"Sadaqa molni kamaytirmaydi.\"\n— Muslim';

  @override
  String get hadith9 =>
      '\"Kuchli mo\'min Alloh uchun zaif mo\'mindan yaxshiroq va sevimli, garchi ikkalasida ham yaxshilik bor.\"\n— Muslim';

  @override
  String get hadith10 =>
      '\"Kim kuniga yuz marta \'SubhanAllohi va bihamdihi\' desa, uning gunohlari kechiriladi, hatto dengiz ko\'pigi kabi bo\'lsa ham.\"\n— Buxoriy';

  @override
  String get hadith11 =>
      '\"Eng yaxshi duo — Arafa kunidagi duo, men va mendan oldingi payg\'ambarlar aytgan eng yaxshi so\'z: La ilaha illalloh.\"\n— Termiziy';

  @override
  String get hadith12 =>
      '\"Kim har farz namazdan keyin Oyat al-Kursiy o\'qisa, uni jannatga kirishdan faqat o\'lim to\'sqinlik qiladi.\"\n— Nasoiy';

  @override
  String get hadith13 => '\"Yaxshi so\'z sadaqadir.\"\n— Buxoriy va Muslim';

  @override
  String get hadith14 =>
      '\"Allohga va oxirat kuniga ishongan kishi yaxshi so\'z aytsin yoki sukut saqlasin.\"\n— Buxoriy va Muslim';

  @override
  String get hadith15 =>
      '\"Beva va miskinlarga g\'amxo\'rlik qiluvchi Alloh yo\'lida kurashuvchi kabidur.\"\n— Buxoriy';

  @override
  String get hadith16 =>
      '\"Birodaringga tabassum qilishing sadaqadir.\"\n— Termiziy';

  @override
  String get hadith17 =>
      '\"Sizlarning eng yaxshingiz Qur\'onni o\'rganuvchi va o\'rgatuvchidur.\"\n— Buxoriy';

  @override
  String get hadith18 =>
      '\"Hech kim o\'z qo\'li mehnati bilan topganidan yaxshiroq taom yemagan.\"\n— Buxoriy';

  @override
  String get hadith19 =>
      '\"Alloh yumshoq va har ishda yumshoqlikni sevadi.\"\n— Buxoriy va Muslim';

  @override
  String historyDayCompleted(int completed, int total) {
    return '$total dan $completed bajarildi';
  }

  @override
  String get settingsSchedule => 'Jadval';

  @override
  String get settingsAppearance => 'Tashqi ko\'rinish';

  @override
  String get settingsAboutTagline => 'Kundalik din hamrohingiz';

  @override
  String get settingsRolloverSub => 'Kun qachon yangilanadi';
}
