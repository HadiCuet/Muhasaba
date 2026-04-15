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
  String get categoryNewSheetTitle => 'Yangi turkum';

  @override
  String get categoryEditSheetTitle => 'Turkumni tahrirlash';

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
  String get hadith2 =>
      '\"Odam farzandi vafot etganida, amallari to\'xtaydi, faqat uchta narsa bundan mustasno: doimiy sadaqa, foydali ilm yoki unga duo qiladigan solih farzand.\"\n— Muslim';

  @override
  String get hadith3 =>
      '\"Kim ikki salqin namoini (Bomdod va Asrni) o\'qisa, jannatga kiradi.\"\n— Buxoriy';

  @override
  String get hadith4 =>
      '\"Alloh sizning tashqi ko\'rinishingiz va boyligingizga qaramaydi, balki qalblaringiz va amallaringizga qaraydi.\"\n— Muslim';

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
      '\"Kim kuniga yuz marta \'SubhanAllohi va bihamdihi\' desa, uning gunohlari kechiriladi, hatto dengiz ko\'pigi kabi bo\'lsa ham.\"\n— Buxoriy va Muslim';

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
      '\"Beva va miskinlarga g\'amxo\'rlik qiluvchi Alloh yo\'lida kurashuvchi kabidur.\"\n— Buxoriy va Muslim';

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

  @override
  String get settingsAbout => 'Haqida';

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
  String get settingsRequestFeature => 'Funksiya so\'rash';

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
  String get hadith25 => '\"Ro\'za do\'zaxdan qalqondur.\"\n— Nasoiy';

  @override
  String get hadith26 =>
      '\"Kim o\'n ikki rak\'at sunnat namazni o\'qisa, unga jannatda uy quriladi.\"\n— Muslim';

  @override
  String get hadith27 =>
      '\"Qur\'onni yaxshi biladigan kishi oliy farishtalar bilan birga bo\'ladi.\"\n— Buxoriy va Muslim';

  @override
  String get hadith29 => '\"Sadaqaning eng yaxshisi suv berishdur.\"\n— Ahmad';

  @override
  String get hadith30 =>
      '\"Kim mo\'mindan bir qiyinchilikni bartaraf qilsa, Alloh Qiyomat kunida undan bir qiyinchilikni bartaraf qiladi.\"\n— Muslim';

  @override
  String get hadith32 =>
      '\"Hayo — imonning bir qismidur.\"\n— Buxoriy va Muslim';

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
      '\"Har namazdan keyin o\'ttiz uch marta \'SubhanAlloh\', \'Alhamdulillah\' va \'Allohu Akbar\' deng.\"\n— Muslim';

  @override
  String get hadith41 => '\"Eng yaxshi zikr — La ilaha illalloh.\"\n— Termiziy';

  @override
  String get hadith42 =>
      '\"Ikki ne\'mat bor, ko\'p odamlar ularni boy beradi: sog\'lik va bo\'sh vaqt.\"\n— Buxoriy';

  @override
  String get hadith43 =>
      '\"Beshtani beshta kelmasdan oldin g\'animat bilinglar: yoshlikni qarilikning, sog\'likni kasallikning, boylikni qashshoqlikning, bo\'sh vaqtni bandlikning va hayotni o\'limning oldida.\"\n— Hokim';

  @override
  String get hadith44 =>
      '\"Kim Ixlos surasini o\'n marta o\'qisa, Alloh unga jannatda uy quradi.\"\n— Ahmad';

  @override
  String get hadith45 =>
      '\"Farz namazlaridan keyin eng yaxshi namoz — tungi namozdur.\"\n— Muslim';

  @override
  String get hadith46 =>
      '\"Sadaqa gunohlarni suv o\'tni o\'chirganday o\'chiradi.\"\n— Termiziy';

  @override
  String get hadith47 =>
      '\"Silai rahm qiluvchi javob qaytaruvchi emas, balki qarishilmasa ham aloqani saqlovchidir.\"\n— Buxoriy';

  @override
  String get hadith49 =>
      '\"Kim taom yeb: \'Menga buni yedirgan va mening hech qanday kuchim va quvvatim bo\'lmagan holda buni menga nasib etgan Allohga hamd bo\'lsin\' desa, uning o\'tgan gunohlari kechiriladi.\"\n— Termiziy';

  @override
  String get hadith53 =>
      '\"Hech qanday yaxshilikni kichik ko\'rmang, hatto birodaringizni ochiq chehra bilan kutish bo\'lsa ham.\"\n— Muslim';

  @override
  String get hadith54 =>
      '\"Sizlarning eng yaxshingiz oilasiga eng yaxshi bo\'lganingizdir.\"\n— Termiziy';

  @override
  String get hadith55 =>
      '\"Kim kechasi Baqara surasining oxirgi ikki oyatini o\'qisa, bu unga kifoya qiladi.\"\n— Buxoriy va Muslim';

  @override
  String get hadith56 =>
      '\"Dunyo bir matoh, eng yaxshi matohi esa solih ayoldir.\"\n— Muslim';

  @override
  String get hadith57 =>
      '\"Uchta duo rad etilmaydi: ro\'za tutuvchining duosi, odil hukmdorning duosi va mazlumning duosi.\"\n— Termiziy';

  @override
  String get hadith58 =>
      '\"Kim menga bir marta salavot aytsa, Alloh unga o\'n marta rahmat yuboradi.\"\n— Muslim';

  @override
  String get hadith65 => '\"Mo\'min mo\'minning oynasi.\"\n— Abu Dovud';

  @override
  String get hadith66 =>
      '\"Rostgo\'ylik yaxshilikka olib boradi, yaxshilik esa jannatga olib boradi.\"\n— Buxoriy va Muslim';

  @override
  String get hadith67 =>
      '\"Omonatni senga ishongan kishiga qaytar, senga xiyonat qilganga xiyonat qilma.\"\n— Abu Dovud va Termiziy';

  @override
  String get hadith68 =>
      '\"Musulmonga yetadigan charchoq, kasallik, qayg\'u, g\'am, ozor yoki tashvish, hatto tikan kirib ketishi ham bo\'lsa, Alloh buning evaziga uning gunohlaridan bir qismini kechiradi.\"\n— Buxoriy va Muslim';

  @override
  String get hadith69 =>
      '\"Musulmonning g\'oyibona birodariga qilgan duosi doimo ijobat bo\'ladi.\"\n— Muslim';

  @override
  String get hadith70 =>
      '\"Kim Allohdan uch marta jannat so\'rasa, jannat aytadi: Ey Alloh, uni jannatga kirgazgil.\"\n— Termiziy';

  @override
  String get hadith71 =>
      '\"Ramazondan keyingi eng fazilatli ro\'za Allohning oyi Muharram oyining ro\'zasidir.\"\n— Muslim';

  @override
  String get hadith72 =>
      '\"Kim haj qilib, fahsh so\'z aytmasa va gunoh qilmasa, onasi tug\'gan kundagidek qaytadi.\"\n— Buxoriy va Muslim';

  @override
  String get hadith73 =>
      '\"Bir umra ikkinchi umragacha orasidagi gunohlarning kafforatidir.\"\n— Buxoriy va Muslim';

  @override
  String get hadith74 =>
      '\"Qorong\'i tunning bo\'laklari kabi fitnalar kelishidan oldin yaxshi ishlarga shoshiling.\"\n— Muslim';

  @override
  String get hadith75 =>
      '\"Bomdod namozining ikki rakati dunyo va undagi barcha narsadan yaxshiroqdir.\"\n— Muslim';

  @override
  String get hadith77 =>
      '\"Agar sizlar Allohga to\'g\'ri tawaqqul qilganingizda, U sizlarni qushlarni rizqlantirganidek rizqlantirgan bo\'lar edi.\"\n— Termiziy';

  @override
  String get hadith78 =>
      '\"Kim bemorni ziyorat qilsa, qaytib kelguniga qadar jannat bog\'ida bo\'ladi.\"\n— Muslim';

  @override
  String get hadith79 =>
      '\"Salomni yoying, taom bering va odamlar uxlaganda tungi namoz o\'qing — jannatga tinchlik bilan kirarsiz.\"\n— Termiziy';

  @override
  String get hadith80 =>
      '\"Odamlarga shukr qilmagan kishi Allohga ham shukr qilmaydi.\"\n— Termiziy';

  @override
  String get hadith81 =>
      '\"Hasad faqat ikki holatda joiz: Alloh mol bergan va uni haq yo\'lida sarflaydigan kishi, va Alloh hikmat bergan va u bilan hukm qiladigan hamda o\'rgatadigan kishi.\"\n— Buxoriy va Muslim';

  @override
  String get hadith82 =>
      '\"Inson do\'stining dini ustidadir, shuning uchun har biringiz kim bilan do\'stlashayotganiga qarasin.\"\n— Abu Dovud va Termiziy';

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
      '\"Amallar niyatlarga bog\'liqdir.\"\n— Buxoriy va Muslim';

  @override
  String get hadith90 =>
      '\"Gumondan saqlaning, chunki gumon eng yolg\'on so\'zdir.\"\n— Buxoriy va Muslim';

  @override
  String get hadith93 =>
      '\"Birga ovqatlaning va Allohning nomini zikr qiling, sizlar uchun baraka bo\'ladi.\"\n— Abu Dovud';

  @override
  String get hadith94 =>
      '\"Qaysi bir qavm Allohni zikr qilib o\'tirsa, albatta farishtalar ularni o\'rab oladi, rahmat ularni qoplaydi va sakinat ularga nozil bo\'ladi.\"\n— Muslim';

  @override
  String get hadith95 =>
      '\"Alloh kechiruvchi bandaning faqat izzatini ziyoda qiladi.\"\n— Muslim';

  @override
  String get hadith96 =>
      '\"Tuyangni bog\'la, keyin Allohga tavakqul qil.\"\n— Termiziy';

  @override
  String get hadith97 =>
      '\"Mo\'minning ishi ajoyib — hamma narsa unga yaxshi.\"\n— Muslim';

  @override
  String get hadith98 =>
      '\"Musulmon musulmonning birodaradir: unga zulm qilmaydi, uni tashlab ketmaydi va uni kamsitmaydi.\"\n— Muslim';
}
