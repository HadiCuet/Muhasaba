// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get repeatsOnDaysHint => 'Se répète les jours sélectionnés';

  @override
  String get newDayStarted => 'Un nouveau jour a commencé';

  @override
  String get appTitle => 'Muhasaba';

  @override
  String get tabToday => 'Aujourd\'hui';

  @override
  String get tabStats => 'Statistiques';

  @override
  String get tabHistory => 'Historique';

  @override
  String get tabSettings => 'Paramètres';

  @override
  String get tabChallenge => 'Défi';

  @override
  String get tabInsights => 'Statistiques';

  @override
  String get insightsTitle => 'Statistiques';

  @override
  String get insightsOverview => 'Vue d\'ensemble';

  @override
  String get insightsDaily => 'Par jour';

  @override
  String get insightsArchive => 'Archives';

  @override
  String get archivedEmpty =>
      'Rien ici pour l\'instant. Les amals que vous retirez du suivi apparaissent ici, pour que vous puissiez les restaurer.';

  @override
  String archivedStoppedOn(String date) {
    return 'Retiré le $date';
  }

  @override
  String get archivedRestore => 'Restaurer';

  @override
  String archivedRestored(String title) {
    return '« $title » est de retour dans votre liste.';
  }

  @override
  String get newChallenge => 'Nouveau défi';

  @override
  String get newAmal => 'Nouvel amal';

  @override
  String get editAmal => 'Modifier l\'amal';

  @override
  String get newAmalTitle => 'Nouvel amal';

  @override
  String get save => 'Enregistrer';

  @override
  String get cancel => 'Annuler';

  @override
  String get ok => 'OK';

  @override
  String get clear => 'Effacer';

  @override
  String get titleLabel => 'Titre';

  @override
  String get titleRequired => 'Le titre est requis';

  @override
  String get titleTooLong => 'Le titre est trop long';

  @override
  String get frequencyLabel => 'Fréquence';

  @override
  String get frequencyDaily => 'Quotidien';

  @override
  String get frequencyWeekly => 'Hebdomadaire';

  @override
  String get frequencyMonthly => 'Mensuel';

  @override
  String get categoryLabel => 'Catégorie';

  @override
  String get categoryOther => 'Autre';

  @override
  String get categorySalah => 'Salat';

  @override
  String get categoryDhikr => 'Dhikr';

  @override
  String get categoryQuran => 'Coran';

  @override
  String get categoryCharity => 'Charité';

  @override
  String get categorySunnah => 'Sunna';

  @override
  String get timesPerPeriod => 'Fois par période';

  @override
  String get custom => 'Personnalisé';

  @override
  String get customTargetHint => 'ex. : 50';

  @override
  String get targetAny => 'Libre';

  @override
  String get targetAnyHelp => 'Sans objectif — toute quantité le valide';

  @override
  String get dayOfWeek => 'Jour de la semaine';

  @override
  String get anyDay => 'Au choix';

  @override
  String get anyDayHint =>
      'N\'importe quel jour (reste visible aujourd\'hui, masqué le lendemain)';

  @override
  String onlyDayHint(String day) {
    return 'Seulement le $day';
  }

  @override
  String get dateOfMonth => 'Date du mois';

  @override
  String get repeatMode => 'Répétition';

  @override
  String get onSetDays => 'Jours fixes';

  @override
  String get onSetDates => 'Dates fixes';

  @override
  String get anyDayMode => 'N\'importe quel jour';

  @override
  String get datesOfMonth => 'Dates';

  @override
  String get daysPerWeekQuestion => 'Combien de jours par semaine ?';

  @override
  String get daysPerMonthQuestion => 'Combien de jours par mois ?';

  @override
  String get pickAtLeastOneDay => 'Choisissez au moins un jour';

  @override
  String get pickAtLeastOneDate => 'Choisissez au moins une date';

  @override
  String get previewDaily => 'Se répète tous les jours';

  @override
  String previewWeeklyDays(String days) {
    return 'Se répète les $days';
  }

  @override
  String previewWeeklyAny(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count jours',
      one: 'un jour',
    );
    return 'Se répète $_temp0 au choix par semaine';
  }

  @override
  String previewMonthlyDates(int count, String dates) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Se répète les $dates de chaque mois',
      one: 'Se répète le $dates de chaque mois',
    );
    return '$_temp0';
  }

  @override
  String previewMonthlyAny(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count jours',
      one: 'un jour',
    );
    return 'Se répète $_temp0 au choix par mois';
  }

  @override
  String get anyDate => 'Au choix';

  @override
  String get anyDateHint =>
      'N\'importe quelle date (reste visible aujourd\'hui, masquée le lendemain)';

  @override
  String onlyDateHint(String date) {
    return 'Seulement le $date';
  }

  @override
  String get startPreChecked => 'Coché par défaut';

  @override
  String get startPreCheckedSubtitle =>
      'Lorsqu\'une nouvelle période commence, cet amal est marqué comme accompli par défaut jusqu\'à ce que vous le décochiez.';

  @override
  String get reminder => 'Rappel';

  @override
  String get reminderNone => 'Aucun';

  @override
  String reminderTime(String time) {
    return 'Rappel : $time';
  }

  @override
  String get reminderPermissionWarning =>
      'Rappel enregistré, mais les notifications ne sont pas autorisées. Activez-les dans les réglages du système pour recevoir des alertes.';

  @override
  String get settingsReminders => 'Rappels';

  @override
  String get dailyReminder => 'Rappel quotidien';

  @override
  String get dailyReminderSubtitle => 'Un petit rappel pour suivre vos amals';

  @override
  String get dailyReminderTimeLabel => 'Heure du rappel';

  @override
  String get dailyReminderBody =>
      'Prenez un instant pour noter vos amals du jour.';

  @override
  String get groupByCategory => 'Regrouper par catégorie';

  @override
  String get flatList => 'Liste simple';

  @override
  String errorGeneric(String error) {
    return 'Erreur : $error';
  }

  @override
  String get todayEmptyHint => 'Appuyez sur + pour ajouter votre premier amal.';

  @override
  String get noteLabel => 'Note';

  @override
  String get noteHint => 'ex. : Prière à la mosquée';

  @override
  String get completed => 'accompli';

  @override
  String get notCompleted => 'non accompli';

  @override
  String progressOf(String progress, String target) {
    return '$progress sur $target accomplis';
  }

  @override
  String progressOpen(String count) {
    return 'Accompli : $count';
  }

  @override
  String get removeFromToday => 'Retirer pour aujourd\'hui';

  @override
  String get removeFromTodaySubtitle =>
      'Masquer uniquement pour aujourd\'hui. Il réapparaît demain.';

  @override
  String get removeFromTracking => 'Retirer du suivi';

  @override
  String get removeFromTrackingSubtitle =>
      'Retirer définitivement de votre liste. L\'historique est conservé.';

  @override
  String get chooseIcon => 'Choisir une icône';

  @override
  String get iconNone => 'Aucune';

  @override
  String get recentlyUsed => 'Récemment utilisés';

  @override
  String get emojiSectionGeneral => 'Général';

  @override
  String get categoryNameHint => 'Nom';

  @override
  String get categoryNew => '+ Nouveau';

  @override
  String get categoryNewSheetTitle => 'Nouvelle catégorie';

  @override
  String get categoryEditSheetTitle => 'Modifier la catégorie';

  @override
  String get addAmal => 'Ajouter un amal';

  @override
  String get customAmal => 'Amal personnalisé';

  @override
  String get amalTasbih => 'Tasbih 33x';

  @override
  String get amalIstighfar => 'Istighfar';

  @override
  String get amalSurahKahf => 'Sourate Al-Kahf';

  @override
  String get amalSadaqah => 'Sadaqa';

  @override
  String get amalTahajjud => 'Tahajjud';

  @override
  String get amalDuha => 'Prière du Doha';

  @override
  String get amalFajr => 'Fajr';

  @override
  String get amalDhuhr => 'Dhuhr';

  @override
  String get amalAsr => 'Asr';

  @override
  String get amalMaghrib => 'Maghrib';

  @override
  String get amalIsha => 'Isha';

  @override
  String get amalMorningAdhkar => 'Adhkar du matin';

  @override
  String get amalEveningAdhkar => 'Adhkar du soir';

  @override
  String get amalTilawah => 'Tilawa';

  @override
  String get settingsTitle => 'Paramètres';

  @override
  String settingsLoadError(String error) {
    return 'Impossible de charger les paramètres :\n$error';
  }

  @override
  String get sectionDayBoundary => 'Changement de jour';

  @override
  String get rolloverHour => 'Heure du changement de jour';

  @override
  String get rolloverAtMidnight => 'La journée se termine à minuit.';

  @override
  String rolloverSubtitle(String time) {
    return 'Les amals d\'hier restent modifiables jusqu\'à $time.';
  }

  @override
  String get pickRolloverHour =>
      'Choisissez l\'heure à laquelle la journée change';

  @override
  String get sectionWeekMonth => 'Semaine et mois';

  @override
  String get startOfWeek => 'Début de la semaine';

  @override
  String get startOfMonth => 'Début du mois';

  @override
  String get startOfMonthClamped =>
      'Les jours au-delà du 28 sont ramenés au dernier jour des mois plus courts.';

  @override
  String get sectionAppearance => 'Apparence';

  @override
  String get theme => 'Thème';

  @override
  String get themeSystem => 'Système';

  @override
  String get themeLight => 'Clair';

  @override
  String get themeDark => 'Sombre';

  @override
  String get sectionLanguage => 'Langue';

  @override
  String get language => 'Langue';

  @override
  String get systemDefault => 'Par défaut du système';

  @override
  String get aboutTitle => 'Muhasaba';

  @override
  String get aboutSubtitle =>
      'Un journal personnel pour faire le bilan de votre dîn. Toutes les données restent sur cet appareil.';

  @override
  String get statsTitle => 'Statistiques';

  @override
  String statsLoadError(String error) {
    return 'Impossible de charger les statistiques :\n$error';
  }

  @override
  String get perAmal => 'Par amal';

  @override
  String get thisWeek => 'Cette semaine';

  @override
  String get thisMonth => 'Ce mois-ci';

  @override
  String get totalCompletions => 'accomplissements au total';

  @override
  String get streakCurrent => 'Actuelle';

  @override
  String get streakLongest => 'La plus longue';

  @override
  String get ratioWeek => 'Semaine';

  @override
  String get ratioMonth => 'Mois';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'jours',
      one: 'jour',
    );
    return '$_temp0';
  }

  @override
  String streakWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'semaines',
      one: 'semaine',
    );
    return '$_temp0';
  }

  @override
  String streakMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'mois',
      one: 'mois',
    );
    return '$_temp0';
  }

  @override
  String get frequencyBadgeDaily => 'quotidien';

  @override
  String get frequencyBadgeWeekly => 'hebdomadaire';

  @override
  String get frequencyBadgeMonthly => 'mensuel';

  @override
  String get statsEmpty =>
      'Aucun amal pour l\'instant. Ajoutez-en un dans Aujourd\'hui pour commencer le suivi.';

  @override
  String get statsToday => 'Aujourd\'hui';

  @override
  String get statsThisWeek => 'Cette semaine';

  @override
  String get statsThisMonth => 'Ce mois-ci';

  @override
  String get statsAllTime => 'Depuis le début';

  @override
  String get statsCustomRange => 'Période personnalisée';

  @override
  String get statsAllCategories => 'Toutes';

  @override
  String get statsAllAmals => 'Tous';

  @override
  String get statsCompleted => 'Accomplis';

  @override
  String get statsExpected => 'Prévus';

  @override
  String get statsVsPrevious => 'vs précédent';

  @override
  String get statsByCategory => 'Par catégorie';

  @override
  String get statsPerAmal => 'Par amal';

  @override
  String get statsTotalCaption => 'total';

  @override
  String statsDaysFraction(String done, String expectedText, num expected) {
    String _temp0 = intl.Intl.pluralLogic(
      expected,
      locale: localeName,
      other: 'jours',
      one: 'jour',
    );
    return '$done/$expectedText $_temp0';
  }

  @override
  String get statsCurrentStreak => 'Série actuelle';

  @override
  String get statsBestStreak => 'Meilleure série';

  @override
  String get statsTotalDays => 'Jours au total';

  @override
  String get statsConsistency => 'Régularité';

  @override
  String get statsLast5Weeks => '5 dernières semaines';

  @override
  String get statsDailyBreakdown => 'Détail quotidien';

  @override
  String get statsCompletionRate => 'Taux d\'accomplissement';

  @override
  String get statsAmountPerDay => 'Quantité par jour';

  @override
  String statsCountTotal(String count) {
    return 'Total $count';
  }

  @override
  String statsCountAvg(String amount) {
    return 'Moy. $amount/jour';
  }

  @override
  String statsCountBest(String count, String day) {
    return 'Max. $count · $day';
  }

  @override
  String get statsFilterTime => 'Période';

  @override
  String get statsFilterCategory => 'Catégorie';

  @override
  String get statsFilterAmal => 'Amal';

  @override
  String get statsStreaks => 'Séries';

  @override
  String get statsSelectDateRange => 'Choisir une période';

  @override
  String get historyTitle => 'Historique';

  @override
  String get jumpToDate => 'Aller à une date';

  @override
  String historyEmptyDay(String date) {
    return 'Aucun amal suivi le $date';
  }

  @override
  String get streakUnitD => 'j';

  @override
  String get streakUnitW => 's';

  @override
  String get streakUnitM => 'm';

  @override
  String get mondayShort => 'Lun';

  @override
  String get tuesdayShort => 'Mar';

  @override
  String get wednesdayShort => 'Mer';

  @override
  String get thursdayShort => 'Jeu';

  @override
  String get fridayShort => 'Ven';

  @override
  String get saturdayShort => 'Sam';

  @override
  String get sundayShort => 'Dim';

  @override
  String get mondayFull => 'Lundi';

  @override
  String get tuesdayFull => 'Mardi';

  @override
  String get wednesdayFull => 'Mercredi';

  @override
  String get thursdayFull => 'Jeudi';

  @override
  String get fridayFull => 'Vendredi';

  @override
  String get saturdayFull => 'Samedi';

  @override
  String get sundayFull => 'Dimanche';

  @override
  String get hadith0 =>
      '« Les actes les plus aimés d\'Allah sont ceux accomplis avec constance, même s\'ils sont modestes. »\n— Bukhari et Muslim';

  @override
  String get hadith2 =>
      '« Lorsque le fils d\'Adam meurt, ses actes cessent sauf trois : une aumône continue, un savoir bénéfique ou un enfant pieux qui invoque pour lui. »\n— Muslim';

  @override
  String get hadith3 =>
      '« Celui qui accomplit les deux prières fraîches (Fajr et Asr) entrera au Paradis. »\n— Bukhari';

  @override
  String get hadith4 =>
      '« Allah ne regarde ni votre apparence ni vos richesses, mais Il regarde vos cœurs et vos actes. »\n— Muslim';

  @override
  String get hadith6 =>
      '« Facilitez les choses et ne les rendez pas difficiles ; annoncez la bonne nouvelle et ne faites pas fuir les gens. »\n— Bukhari';

  @override
  String get hadith7 =>
      '« Celui qui emprunte un chemin à la recherche du savoir, Allah lui facilitera un chemin vers le Paradis. »\n— Muslim';

  @override
  String get hadith8 => '« L\'aumône ne diminue pas la richesse. »\n— Muslim';

  @override
  String get hadith9 =>
      '« Le croyant fort est meilleur et plus aimé d\'Allah que le croyant faible, bien qu\'il y ait du bien en chacun d\'eux. »\n— Muslim';

  @override
  String get hadith10 =>
      '« Celui qui dit “SubhanAllah wa bihamdihi” cent fois par jour verra ses péchés pardonnés, même s\'ils étaient comme l\'écume de la mer. »\n— Bukhari et Muslim';

  @override
  String get hadith12 =>
      '« Celui qui récite Ayat al-Kursi après chaque prière obligatoire, rien ne l\'empêche d\'entrer au Paradis, si ce n\'est la mort. »\n— Nasa\'i';

  @override
  String get hadith13 =>
      '« Une bonne parole est une aumône. »\n— Bukhari et Muslim';

  @override
  String get hadith14 =>
      '« Que celui qui croit en Allah et au Jour Dernier dise du bien ou qu\'il se taise. »\n— Bukhari et Muslim';

  @override
  String get hadith15 =>
      '« Celui qui prend soin d\'une veuve ou d\'un pauvre est comme un combattant dans le sentier d\'Allah. »\n— Bukhari et Muslim';

  @override
  String get hadith16 =>
      '« Ton sourire à ton frère est une aumône. »\n— Tirmidhi';

  @override
  String get hadith17 =>
      '« Le meilleur d\'entre vous est celui qui apprend le Coran et l\'enseigne. »\n— Bukhari';

  @override
  String get hadith18 =>
      '« Nul n\'a jamais mangé de meilleure nourriture que celle qu\'il a gagnée du travail de ses propres mains. »\n— Bukhari';

  @override
  String get hadith19 =>
      '« Allah est doux et Il aime la douceur en toute chose. »\n— Bukhari et Muslim';

  @override
  String historyDayCompleted(String completed, String total) {
    return '$completed sur $total accomplis';
  }

  @override
  String get settingsSchedule => 'Calendrier';

  @override
  String get settingsAppearance => 'Apparence';

  @override
  String get settingsAboutTagline => 'Votre compagnon de dîn au quotidien';

  @override
  String get settingsRolloverSub => 'Quand commence une nouvelle journée';

  @override
  String get settingsAbout => 'À propos';

  @override
  String get settingsVersion => 'Version';

  @override
  String get settingsDeveloper => 'Développeur';

  @override
  String get settingsSupport => 'Assistance';

  @override
  String get settingsRate => 'Évaluer l\'application';

  @override
  String get settingsContact => 'Nous contacter';

  @override
  String get settingsReportBug => 'Signaler un bug';

  @override
  String get settingsRequestFeature => 'Demander une fonctionnalité';

  @override
  String settingsSupportFallback(String email) {
    return 'Impossible d\'ouvrir la messagerie. Veuillez envoyer un e-mail à $email.';
  }

  @override
  String get settingsPrivacyPolicy => 'Politique de confidentialité';

  @override
  String get settingsPrivacyOpenFailed =>
      'Impossible d\'ouvrir la politique de confidentialité.';

  @override
  String get hadith20 =>
      '« Celui qui jeûne le Ramadan avec foi et en espérant la récompense verra ses péchés passés pardonnés. »\n— Bukhari et Muslim';

  @override
  String get hadith22 =>
      '« L\'invocation entre l\'adhan et l\'iqama n\'est pas rejetée. »\n— Abu Dawud';

  @override
  String get hadith23 =>
      '« Celui qui construit une mosquée pour Allah, Allah lui construira une maison au Paradis. »\n— Bukhari et Muslim';

  @override
  String get hadith24 =>
      '« Les meilleurs rangs pour les hommes sont les premiers, et les meilleurs rangs pour les femmes sont les derniers. »\n— Muslim';

  @override
  String get hadith25 =>
      '« Le jeûne est un bouclier contre le feu de l\'Enfer. »\n— Nasa\'i';

  @override
  String get hadith26 =>
      '« Celui qui prie douze rakaat de sunna, une maison lui sera construite au Paradis. »\n— Muslim';

  @override
  String get hadith27 =>
      '« Celui qui maîtrise le Coran sera en compagnie des anges nobles et vertueux. »\n— Bukhari et Muslim';

  @override
  String get hadith29 =>
      '« La meilleure des aumônes est de donner de l\'eau à boire. »\n— Ahmad';

  @override
  String get hadith30 =>
      '« Celui qui soulage un croyant d\'une difficulté, Allah le soulagera d\'une difficulté au Jour du Jugement. »\n— Muslim';

  @override
  String get hadith32 =>
      '« La pudeur fait partie de la foi. »\n— Bukhari et Muslim';

  @override
  String get hadith34 =>
      '« Celui qui fait preuve de patience, Allah lui accordera la patience. »\n— Bukhari et Muslim';

  @override
  String get hadith36 =>
      '« Aucun de vous ne croit véritablement tant qu\'il n\'aime pas pour son frère ce qu\'il aime pour lui-même. »\n— Bukhari et Muslim';

  @override
  String get hadith37 =>
      '« Nourrissez les affamés, visitez les malades et libérez les captifs. »\n— Bukhari';

  @override
  String get hadith38 =>
      '« L\'homme fort n\'est pas celui qui l\'emporte à la lutte, mais celui qui se maîtrise dans la colère. »\n— Bukhari et Muslim';

  @override
  String get hadith40 =>
      '« Dites “SubhanAllah”, “Alhamdulillah” et “Allahu Akbar” trente-trois fois chacun après chaque prière. »\n— Muslim';

  @override
  String get hadith41 =>
      '« Le meilleur dhikr est “La ilaha illa Allah”. »\n— Tirmidhi';

  @override
  String get hadith42 =>
      '« Il y a deux bienfaits que beaucoup de gens gaspillent : la santé et le temps libre. »\n— Bukhari';

  @override
  String get hadith43 =>
      '« Profite de cinq choses avant cinq autres : ta jeunesse avant ta vieillesse, ta santé avant ta maladie, ta richesse avant ta pauvreté, ton temps libre avant tes occupations et ta vie avant ta mort. »\n— Hakim';

  @override
  String get hadith44 =>
      '« Celui qui récite la sourate Al-Ikhlas dix fois, Allah lui construira une maison au Paradis. »\n— Ahmad';

  @override
  String get hadith45 =>
      '« La meilleure prière après les prières obligatoires est la prière de la nuit. »\n— Muslim';

  @override
  String get hadith46 =>
      '« L\'aumône éteint les péchés comme l\'eau éteint le feu. »\n— Tirmidhi';

  @override
  String get hadith47 =>
      '« Celui qui maintient les liens de parenté n\'est pas celui qui rend la pareille. C\'est celui qui les maintient même quand on les rompt avec lui. »\n— Bukhari';

  @override
  String get hadith49 =>
      '« Celui qui mange et dit : “Louange à Allah qui m\'a nourri de cela et me l\'a accordé sans aucune force ni puissance de ma part”, ses péchés passés lui seront pardonnés. »\n— Tirmidhi';

  @override
  String get hadith53 =>
      '« Ne méprise aucun acte de bien, ne serait-ce que de rencontrer ton frère avec un visage souriant. »\n— Muslim';

  @override
  String get hadith54 =>
      '« Les meilleurs d\'entre vous sont ceux qui sont les meilleurs envers leur famille. »\n— Tirmidhi';

  @override
  String get hadith55 =>
      '« Celui qui récite les deux derniers versets de la sourate Al-Baqara la nuit, ils lui suffiront. »\n— Bukhari et Muslim';

  @override
  String get hadith56 =>
      '« Ce bas monde est jouissance, et sa meilleure jouissance est une épouse vertueuse. »\n— Muslim';

  @override
  String get hadith57 =>
      '« Trois invocations ne sont jamais rejetées : l\'invocation du jeûneur, celle du dirigeant juste et celle de l\'opprimé. »\n— Tirmidhi';

  @override
  String get hadith58 =>
      '« Celui qui prie sur moi une fois, Allah priera sur lui dix fois. »\n— Muslim';

  @override
  String get hadith65 =>
      '« Le croyant est le miroir du croyant. »\n— Abu Dawud';

  @override
  String get hadith66 =>
      '« La véracité mène à la vertu, et la vertu mène au Paradis. »\n— Bukhari et Muslim';

  @override
  String get hadith67 =>
      '« Restitue le dépôt à celui qui te l\'a confié, et ne trahis pas celui qui t\'a trahi. »\n— Abu Dawud et Tirmidhi';

  @override
  String get hadith68 =>
      '« Aucune fatigue, maladie, chagrin, tristesse, douleur ou détresse n\'atteint un musulman — même la piqûre d\'une épine — sans qu\'Allah n\'efface par cela une partie de ses péchés. »\n— Bukhari et Muslim';

  @override
  String get hadith69 =>
      '« L\'invocation d\'un musulman pour son frère en son absence est toujours exaucée. »\n— Muslim';

  @override
  String get hadith70 =>
      '« Celui qui demande le Paradis à Allah trois fois, le Paradis dit : “Ô Allah, fais-le entrer au Paradis.” »\n— Tirmidhi';

  @override
  String get hadith71 =>
      '« Le jeûne le plus méritoire après le Ramadan est celui du mois d\'Allah, Muharram. »\n— Muslim';

  @override
  String get hadith72 =>
      '« Celui qui accomplit le Hajj sans commettre d\'obscénité ni de péché revient comme au jour où sa mère l\'a mis au monde. »\n— Bukhari et Muslim';

  @override
  String get hadith73 =>
      '« D\'une Omra à l\'autre, c\'est une expiation pour ce qui se trouve entre les deux. »\n— Bukhari et Muslim';

  @override
  String get hadith74 =>
      '« Hâtez-vous d\'accomplir de bonnes actions avant que les épreuves ne surviennent comme des pans d\'une nuit obscure. »\n— Muslim';

  @override
  String get hadith75 =>
      '« Les deux rakaat du Fajr sont meilleures que ce bas monde et tout ce qu\'il contient. »\n— Muslim';

  @override
  String get hadith77 =>
      '« Si vous placiez votre confiance en Allah comme il se doit, Il vous accorderait votre subsistance comme Il l\'accorde aux oiseaux. »\n— Tirmidhi';

  @override
  String get hadith78 =>
      '« Celui qui rend visite à un malade se trouve dans la cueillette du Paradis jusqu\'à son retour. »\n— Muslim';

  @override
  String get hadith79 =>
      '« Répandez la paix, nourrissez les affamés et priez la nuit pendant que les gens dorment — vous entrerez au Paradis en paix. »\n— Tirmidhi';

  @override
  String get hadith80 =>
      '« Celui qui n\'est pas reconnaissant envers les gens n\'est pas reconnaissant envers Allah. »\n— Tirmidhi';

  @override
  String get hadith81 =>
      '« L\'envie n\'est permise que dans deux cas : un homme à qui Allah a donné des richesses qu\'il dépense dans le bien, et un homme à qui Allah a donné la sagesse et qui juge et enseigne avec elle. »\n— Bukhari et Muslim';

  @override
  String get hadith82 =>
      '« L\'homme suit la religion de son ami intime ; que chacun de vous regarde donc qui il prend pour ami. »\n— Abu Dawud et Tirmidhi';

  @override
  String get hadith85 =>
      '« Celui qui délaisse une chose pour Allah, Allah la lui remplacera par une chose meilleure. »\n— Ahmad';

  @override
  String get hadith86 =>
      '« Celui qui couvre les défauts d\'un musulman, Allah couvrira ses défauts au Jour du Jugement. »\n— Bukhari et Muslim';

  @override
  String get hadith87 =>
      '« Sois en ce monde comme un étranger ou un voyageur. »\n— Bukhari';

  @override
  String get hadith88 =>
      '« Celui qui facilite les choses à une personne en difficulté, Allah lui facilitera les choses en ce monde et dans l\'au-delà. »\n— Muslim';

  @override
  String get hadith89 =>
      '« La récompense des actes dépend des intentions. »\n— Bukhari et Muslim';

  @override
  String get hadith90 =>
      '« Évitez la suspicion, car la suspicion est la plus mensongère des paroles. »\n— Bukhari et Muslim';

  @override
  String get hadith93 =>
      '« Mangez ensemble et mentionnez le nom d\'Allah, et vous y trouverez la bénédiction. »\n— Abu Dawud';

  @override
  String get hadith94 =>
      '« Aucun groupe ne s\'assoit pour évoquer Allah sans que les anges ne l\'entourent, que la miséricorde ne le recouvre et que la sérénité ne descende sur lui. »\n— Muslim';

  @override
  String get hadith95 =>
      '« Allah ne fait qu\'accroître en honneur le serviteur qui pardonne. »\n— Muslim';

  @override
  String get hadith96 =>
      '« Attache ta chamelle, puis place ta confiance en Allah. »\n— Tirmidhi';

  @override
  String get hadith97 =>
      '« Comme l\'affaire du croyant est étonnante ! Tout est un bien pour lui. »\n— Muslim';

  @override
  String get hadith98 =>
      '« Le musulman est le frère du musulman : il ne lui fait pas de tort, ne l\'abandonne pas et ne le méprise pas. »\n— Muslim';

  @override
  String get delete => 'Supprimer';

  @override
  String get remove => 'Retirer';

  @override
  String get deleteAmalConfirmTitle => 'Retirer du suivi ?';

  @override
  String deleteAmalConfirmBody(String title) {
    return '« $title » n\'apparaîtra plus dans votre liste. Votre historique est conservé.';
  }

  @override
  String get genericError => 'Une erreur s\'est produite. Veuillez réessayer.';

  @override
  String get notificationChannelName => 'Rappels des amals';

  @override
  String get notificationChannelDescription =>
      'Rappels quotidiens pour les amals que vous suivez.';

  @override
  String get invalidAmalId => 'Identifiant d\'amal invalide';

  @override
  String get tutorialSettingsRow => 'Comment utiliser Muhasaba';

  @override
  String get tutorialSkip => 'Passer';

  @override
  String get tutorialNext => 'Suivant';

  @override
  String get tutorialDone => 'Terminé';

  @override
  String get tutorialTapTitle => 'Appuyez pour cocher';

  @override
  String get tutorialTapBody =>
      'Un appui coche l\'amal pour aujourd\'hui. Appuyez de nouveau pour annuler.';

  @override
  String get tutorialEditTitle => 'Appuyez deux fois pour modifier';

  @override
  String get tutorialEditBody =>
      'Ouvre le formulaire de modification — renommez-le ou changez sa fréquence.';

  @override
  String get tutorialReorderTitle => 'Maintenez pour réorganiser';

  @override
  String get tutorialReorderBody =>
      'Maintenez le doigt sur une ligne, puis faites-la glisser. L\'ordre est enregistré.';

  @override
  String get tutorialRemoveTitle => 'Balayez pour retirer';

  @override
  String get tutorialRemoveBody =>
      'Balayez la ligne sur le côté pour la masquer aujourd\'hui ou arrêter son suivi.';

  @override
  String get tutorialCountTitle => 'Compter les répétitions';

  @override
  String get tutorialCountBody =>
      'Pour un amal dont l\'objectif est supérieur à 1, utilisez − et + à chaque répétition.';

  @override
  String get tutorialViewTitle => 'Par catégorie ou en liste';

  @override
  String get tutorialViewBody =>
      'Basculez entre le regroupement par catégorie et une liste simple.';

  @override
  String get tutorialChallengeLogTitle => 'Appuyez pour valider la journée';

  @override
  String get tutorialChallengeLogBody =>
      'Un appui valide la journée. Pour un défi chiffré, chaque appui fait avancer le compteur d\'un cran.';

  @override
  String get tutorialChallengeOpenTitle => 'Appuyez deux fois pour ouvrir';

  @override
  String get tutorialChallengeOpenBody =>
      'Ouvre le défi — consultez chaque jour, corrigez un jour oublié ou supprimez-le.';

  @override
  String get tutorialChallengeDeleteBody =>
      'Balayez la carte sur le côté pour supprimer le défi.';

  @override
  String get tutorialChallengeAmountTitle => 'Enregistrer une quantité exacte';

  @override
  String get tutorialChallengeAmountBody =>
      'Utilisez − et + pour ajuster, ou appuyez sur le nombre pour saisir une quantité exacte.';

  @override
  String get challengeOpenDetailsAction => 'Ouvrir les détails du défi';

  @override
  String get challengesActive => 'En cours';

  @override
  String get challengesPast => 'Passés';

  @override
  String challengeJustFinished(int count, String title) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count défis terminés — le dernier : $title',
      one: 'Défi terminé : $title',
    );
    return '$_temp0';
  }

  @override
  String get challengeSectionEnded => 'Clôturé';

  @override
  String get challengesPastEmpty => 'Rien de terminé pour l\'instant.';

  @override
  String get challengesEmptyTitle => 'Aucun défi pour le moment';

  @override
  String get challengesEmptyBody =>
      'Fixez-vous un objectif — comme 20 rakaat en 7 jours — et suivez-le ici.';

  @override
  String get editChallenge => 'Modifier le défi';

  @override
  String get deleteChallenge => 'Supprimer le défi';

  @override
  String get deleteChallengeConfirm =>
      'Supprimer ce défi et toute la progression enregistrée ?';

  @override
  String get challengeShapeQuestion => 'Quel type de défi est-ce ?';

  @override
  String get challengeShapeTotal => 'Un total à atteindre';

  @override
  String get challengeShapeTotalBody =>
      '1000 salawat, 30 juz. Vous notez des quantités et le total augmente.';

  @override
  String get challengeShapeStreak => 'Une série quotidienne';

  @override
  String get challengeShapeStreakBody =>
      'Tahajjud, Fajr en groupe. Une coche par jour, peu importe la quantité.';

  @override
  String get challengeTargetLabel => 'Objectif';

  @override
  String get challengeTargetRequired => 'Entrez un objectif supérieur à zéro';

  @override
  String get challengeUnitLabel => 'Unité (facultatif)';

  @override
  String get challengeUnitHint => 'rakaat, pages, fois';

  @override
  String get challengeOneTapAdds => 'Un appui ajoute';

  @override
  String get challengeHowManyDays => 'Combien de jours ?';

  @override
  String get challengeReachHowMuch => 'Atteindre combien ?';

  @override
  String get challengeSpreadOver => 'Durée';

  @override
  String get challengeSpreadEveryDay => 'Chaque jour';

  @override
  String get challengeSpreadLonger => 'Une période plus longue';

  @override
  String get challengeByWhen => 'Pour quand ?';

  @override
  String get challengeWindowDuration => 'Terminer en';

  @override
  String get challengeByDate => 'Avant une date';

  @override
  String challengePlanRange(String start, String end) {
    return 'Du $start au $end';
  }

  @override
  String challengePlanExact(String start, String end) {
    return 'Du $start au $end · un par jour, tous les jours';
  }

  @override
  String challengePlanSlack(
    String start,
    String end,
    String target,
    String window,
    String slack,
  ) {
    return 'Du $start au $end · $target jours sur $window — vous pouvez en manquer $slack';
  }

  @override
  String challengePlanRate(String start, String end, String rate) {
    return 'Du $start au $end · environ $rate par jour';
  }

  @override
  String challengePlanOpen(String start) {
    return 'Début le $start · sans échéance';
  }

  @override
  String challengeTooTight(String target, String window) {
    return '$target jours ne tiennent pas en $window jours — une série compte un par jour.';
  }

  @override
  String challengeDurationLabel(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count jours',
      one: '$count jour',
    );
    return '$_temp0';
  }

  @override
  String get challengeStartDate => 'Début';

  @override
  String get challengeEndDate => 'Fin';

  @override
  String challengeProgressCount(String done, String target, String unit) {
    return '$done sur $target $unit';
  }

  @override
  String challengeProgressPlain(String done, String target) {
    return '$done sur $target';
  }

  @override
  String challengeProgressDays(String done, String target) {
    return '$done jours sur $target';
  }

  @override
  String challengeDaysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count jours restants',
      one: '1 jour restant',
    );
    return '$_temp0';
  }

  @override
  String get challengeNoDeadline => 'Sans échéance';

  @override
  String challengeOnTrack(String rate) {
    return 'Dans les temps · $rate/jour';
  }

  @override
  String challengeBehind(String rate) {
    return 'En retard · $rate/jour requis';
  }

  @override
  String challengeLastDay(String remaining) {
    return 'Dernier jour · encore $remaining';
  }

  @override
  String get challengeReached => 'Objectif atteint';

  @override
  String get challengeCompleted => 'Terminé';

  @override
  String challengeEnded(String done, String target) {
    return 'Clôturé · $done sur $target';
  }

  @override
  String get challengeExpiredTitle => 'Défi clôturé';

  @override
  String challengeExpiredBody(String title, String done, String target) {
    return '$title : terminé à $done sur $target.';
  }

  @override
  String get challengeExtend => 'Prolonger';

  @override
  String get challengeRestart => 'Recommencer';

  @override
  String get challengeArchive => 'Archiver';

  @override
  String get challengeDailyBreakdown => 'Journal quotidien';

  @override
  String challengeNudgeBody(String title, String rate) {
    return '$title : $rate par jour pour finir à temps.';
  }

  @override
  String challengeLastDayBody(String title, String remaining) {
    return '$title : dernier jour — encore $remaining.';
  }

  @override
  String get challengeGroupGoal => 'Le but';

  @override
  String get challengeGroupShape => 'Type';

  @override
  String get challengeGroupPlan => 'Le plan';

  @override
  String get challengeGroupReminders => 'Rappels';

  @override
  String get challengeStartFromTemplate => 'Partir d\'un modèle';

  @override
  String get challengeTemplateBlank => 'Vierge';

  @override
  String get challengePreview => 'Aperçu';

  @override
  String get challengeTmplTahajjud => '40 nuits de Tahajjud';

  @override
  String get challengeTmplSalawat => '1000 Salawat';

  @override
  String get challengeTmplKhatm => 'Khatm en 30 jours';

  @override
  String get challengeTmplFajrJamaah => '30 jours de Fajr en groupe';

  @override
  String get challengeTmplSadaqah => '30 jours de sadaqa';

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
  String get tierRafiqMeaning => 'compagnon';

  @override
  String get tierNasirMeaning => 'soutien';

  @override
  String get tierMuhsinMeaning => 'bienfaiteur';

  @override
  String get tierAnsarMeaning => 'auxiliaire';

  @override
  String get supportCardBody =>
      'Gratuite, sans publicité ni compte. Vous pouvez soutenir son développement avec un pourboire — le montant de votre choix, quand vous le souhaitez.';

  @override
  String get supportCta => 'Soutenir Muhasaba';

  @override
  String get supportAgain => 'Soutenir à nouveau';

  @override
  String get supporterThanks =>
      'Qu\'Allah vous récompense — Muhasaba restera gratuite et sans publicité, inch\'Allah.';

  @override
  String supporterSince(String tier, String month) {
    return '$tier depuis $month';
  }

  @override
  String get supportPromptTitle => 'Soutenir Muhasaba';

  @override
  String get supportPromptBody =>
      'Muhasaba est gratuite, sans publicité ni compte. Vous pouvez soutenir son développement avec un pourboire — le montant de votre choix, quand vous le souhaitez. Aucune fonctionnalité n\'est verrouillée.';

  @override
  String get supportPromptNow => 'Soutenir maintenant';

  @override
  String get supportPromptLater => 'Me le rappeler plus tard';

  @override
  String get supportPromptNever => 'Ne plus demander';

  @override
  String get tipSheetTitle => 'Soutenir Muhasaba';

  @override
  String get tipSheetBody =>
      'Choisissez le montant que vous voulez, aussi souvent que vous le souhaitez. Les pourboires servent à l\'entretien de l\'application, qui restera gratuite et sans publicité, inch\'Allah. En remerciement, vous serez indiqué comme soutien dans les Paramètres.';

  @override
  String tipSheetSupporterLine(String tier) {
    return '$tier — qu\'Allah vous récompense.';
  }

  @override
  String get tipSheetSupporterAgain =>
      'Soutenez à nouveau quand vous le souhaitez.';

  @override
  String tipSheetStoreNote(String store) {
    return 'Paiement géré par $store — nous ne voyons jamais vos informations de paiement.';
  }

  @override
  String get tipSheetOtherWays =>
      'Vous ne trouvez pas d\'option qui vous convienne ?';

  @override
  String get tipSheetWriteToUs => 'Écrivez-nous';

  @override
  String get supportEmailBody =>
      'As-salamu alaykum,\n\nJe souhaite soutenir directement le développement de Muhasaba.\n\nPays :\nMoyen d\'envoi souhaité :\nMontant (facultatif) :';

  @override
  String tipBusy(String store) {
    return 'Ouverture de $store…';
  }

  @override
  String get tipThanks =>
      'Qu\'Allah vous récompense — et qu\'Il l\'accepte de vous.';

  @override
  String get tipDone => 'Terminé';

  @override
  String get tipFailed =>
      'L\'achat n\'a pas abouti. Rien ne vous a été facturé.';

  @override
  String tipPending(String store) {
    return 'Votre pourboire est en attente auprès de $store — votre badge sera ajouté dès qu\'il sera confirmé.';
  }

  @override
  String get tipUnavailable =>
      'Les achats ne sont pas disponibles sur cet appareil pour le moment.';

  @override
  String get optionSetJamaa => 'Jamaa';

  @override
  String get optionJamaaAlone => 'Seul';

  @override
  String get optionJamaaHome => 'En groupe chez soi';

  @override
  String get optionJamaaMasjid => 'À la mosquée';

  @override
  String get optionSetOnTime => 'Ponctualité';

  @override
  String get optionOnTimeOnTime => 'À l\'heure';

  @override
  String get optionOnTimeLate => 'En retard';

  @override
  String get optionOnTimeQada => 'Qada';

  @override
  String get optionSetQuranSession => 'Séance de Coran';

  @override
  String get optionQuranRecited => 'Récité';

  @override
  String get optionQuranMemorised => 'Mémorisé';

  @override
  String get optionQuranMeaning => 'Avec le sens';

  @override
  String get optionQuranListened => 'Écouté';

  @override
  String get optionSetSadaqahType => 'Type de sadaqa';

  @override
  String get optionSadaqahMoney => 'Argent';

  @override
  String get optionSadaqahFood => 'Nourriture';

  @override
  String get optionSadaqahTime => 'Temps';

  @override
  String get optionSadaqahOther => 'Autre';

  @override
  String get optionSetIntensity => 'Intensité';

  @override
  String get optionIntensityLight => 'Léger';

  @override
  String get optionIntensityModerate => 'Modéré';

  @override
  String get optionIntensityIntense => 'Intense';

  @override
  String get optionSetNewTitle => 'Nouvel ensemble d\'options';

  @override
  String get optionSetEditTitle => 'Modifier l\'ensemble d\'options';

  @override
  String get optionSetNameLabel => 'Nom de l\'ensemble';

  @override
  String get optionSetNameHint => 'ex. : Jamaa';

  @override
  String get optionsLabel => 'Options';

  @override
  String get optionAdd => 'Ajouter une option';

  @override
  String optionHint(int index) {
    return 'Option $index';
  }

  @override
  String optionsMaxReached(int max) {
    return '$max options maximum.';
  }

  @override
  String get optionSetPreviewLabel => 'Aperçu — la ligne d\'Aujourd\'hui';

  @override
  String optionSetKeptForHistory(String labels) {
    return 'Conservé pour l\'historique : $labels';
  }

  @override
  String get optionSetDelete => 'Supprimer l\'ensemble';

  @override
  String get optionSetDeleteConfirm =>
      'Les amals qui utilisent cet ensemble n\'affichent plus d\'options. Les jours déjà enregistrés conservent leur choix.';

  @override
  String get optionSetNameRequired => 'Donnez un nom à l\'ensemble';

  @override
  String get optionsMinRequired => 'Ajoutez au moins deux options';

  @override
  String get optionSetNameTooLong => 'Le nom de l\'ensemble est trop long';

  @override
  String optionTooLong(int index) {
    return 'L\'option $index est trop longue';
  }

  @override
  String get optionSetNone => 'Aucun';

  @override
  String get optionSetNew => 'Nouvel ensemble';

  @override
  String get requireChoiceLabel => 'Exiger un choix';

  @override
  String get requireChoiceHelp =>
      'La ligne ne se coche pas tant qu\'aucune option n\'est choisie';

  @override
  String get requireChoicePickSetFirst => 'Choisissez d\'abord un ensemble';

  @override
  String get requireChoiceCountHelp =>
      'Les amals à compter se valident avec le compteur';

  @override
  String optionsUsedOf(int used, int max) {
    return '$used sur $max options utilisées.';
  }

  @override
  String get choiceNeeded => 'Choix requis';

  @override
  String optionSelected(String label) {
    return '$label, sélectionné';
  }

  @override
  String optionNotSelected(String label) {
    return '$label, non sélectionné';
  }

  @override
  String optionBreakdownTitle(String set) {
    return 'Répartition des options — $set';
  }

  @override
  String optionBreakdownCaption(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count accomplissements',
      one: '1 accomplissement',
    );
    return 'Sur $_temp0 avec un choix enregistré';
  }

  @override
  String optionNoChoiceRecorded(int none, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other: '$total jours accomplis',
      one: '1 jour accompli',
    );
    return 'Aucun choix enregistré — $none sur $_temp0';
  }

  @override
  String get optionRemovedSuffix => 'retirée';

  @override
  String get optionAllAmals => 'Tous';

  @override
  String optionScopedCaption(String amal, int count) {
    return '$amal · $count choix';
  }

  @override
  String get optionBreakdownSectionTitle => 'Répartition des options';

  @override
  String optionBreakdownSwipeHint(int count) {
    return '$count ensembles · faites défiler';
  }

  @override
  String get optionDetailEmpty =>
      'Aucun choix enregistré pour cet ensemble pour le moment.';

  @override
  String get optionDetailTrendHeading => 'Évolution';

  @override
  String optionDetailTrendReadout(String option, String from, String to) {
    return 'La part de $option est passée de $from à $to entre la première et la dernière semaine.';
  }

  @override
  String get optionDetailByAmalHeading => 'Par amal';

  @override
  String optionDetailByAmalReadout(
    String best,
    String bestShare,
    String worst,
    String worstShare,
  ) {
    return 'Part la plus élevée : $best ($bestShare) ; la plus basse : $worst ($worstShare).';
  }

  @override
  String get optionDetailRecordsHeading => 'Records';

  @override
  String get optionDetailLongestRun => 'Plus longue série';

  @override
  String get optionDetailBestWeek => 'Meilleure semaine';

  @override
  String get optionDetailCurrentRun => 'Série actuelle';

  @override
  String get optionDetailRecordsCaption =>
      'Calculé sur l\'année écoulée, indépendamment du filtre de période ci-dessus.';

  @override
  String get optionDetailRecentDaysHeading => 'Jours récents';

  @override
  String optionDetailRecentDaysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count derniers jours',
      one: 'Dernier jour',
    );
    return '$_temp0';
  }

  @override
  String get amalFivePrayers => 'Les cinq prières';

  @override
  String get amalJumuah => 'Prière du vendredi';

  @override
  String get amalWitr => 'Witr';

  @override
  String get amalQada => 'Prières à rattraper';

  @override
  String get amalFajrSunnah => 'Sunna du Fajr';

  @override
  String get amalDhuhrSunnah => 'Sunna du Dhuhr';

  @override
  String get amalAsrSunnah => 'Sunna de l\'Asr';

  @override
  String get amalMaghribSunnah => 'Sunna du Maghrib';

  @override
  String get amalIshaSunnah => 'Sunna de l\'Isha';

  @override
  String get amalRawatib => 'Sunnas rawatib';

  @override
  String get amalSiwak => 'Siwak';

  @override
  String get amalWuduSleep => 'Ablutions avant de dormir';

  @override
  String get amalFridayGhusl => 'Ghousl du vendredi';

  @override
  String get amalIshraq => 'Prière d\'Ishraq';

  @override
  String get amalWuduPrayer => 'Deux rakaat après les ablutions';

  @override
  String get amalTahiyyah => 'Tahiyyat al-masjid';

  @override
  String get amalEarlyJumuah => 'Aller tôt à la prière du vendredi';

  @override
  String get amalAfterSalah => 'Adhkar après la prière';

  @override
  String get amalAfterFajr => 'Adhkar après le Fajr';

  @override
  String get amalAfterDhuhr => 'Adhkar après le Dhuhr';

  @override
  String get amalAfterAsr => 'Adhkar après l\'Asr';

  @override
  String get amalAfterMaghrib => 'Adhkar après le Maghrib';

  @override
  String get amalAfterIsha => 'Adhkar après l\'Isha';

  @override
  String get amalAyatKursi => 'Ayat al-Kursi';

  @override
  String get amalKursiFajr => 'Ayat al-Kursi après le Fajr';

  @override
  String get amalKursiDhuhr => 'Ayat al-Kursi après le Dhuhr';

  @override
  String get amalKursiAsr => 'Ayat al-Kursi après l\'Asr';

  @override
  String get amalKursiMaghrib => 'Ayat al-Kursi après le Maghrib';

  @override
  String get amalKursiIsha => 'Ayat al-Kursi après l\'Isha';

  @override
  String get amalSayyidIstighfar => 'Sayyid al-Istighfar';

  @override
  String get amalSalawat => 'Salawat sur le Prophète ﷺ';

  @override
  String get amalSubhanallah => 'SubhanAllahi wa bihamdihi';

  @override
  String get amalTahlil => 'La ilaha illa Allah';

  @override
  String get amalBedtimeAdhkar => 'Adhkar du coucher';

  @override
  String get amalFridaySalawat => 'Salawat du vendredi';

  @override
  String get amalHawqala => 'La hawla wa la quwwata';

  @override
  String get amalTasbihFatimah => 'Tasbih de Fatima';

  @override
  String get amalWakingAdhkar => 'Adhkar du réveil';

  @override
  String get amalDuaAdhan => 'Doua après l\'adhan';

  @override
  String get amalDuaIqamah => 'Doua entre l\'adhan et l\'iqama';

  @override
  String get amalDuaSujood => 'Doua pendant la prosternation';

  @override
  String get amalDuaParents => 'Doua pour les parents';

  @override
  String get amalDuaOthers => 'Doua pour les autres';

  @override
  String get amalFridayHour => 'Doua de la dernière heure du vendredi';

  @override
  String get amalLastThird => 'Doua du dernier tiers de la nuit';

  @override
  String get amalMulk => 'Sourate Al-Mulk';

  @override
  String get amalBaqarahEnd => 'Les deux derniers versets d\'Al-Baqara';

  @override
  String get amalSajdah => 'Sourate As-Sajda';

  @override
  String get amalQuls => 'Les trois Qul';

  @override
  String get amalYasin => 'Sourate Yasin';

  @override
  String get amalWaqiah => 'Sourate Al-Waqi\'a';

  @override
  String get amalHifz => 'Mémorisation du Coran';

  @override
  String get amalMurajaah => 'Révision du Coran mémorisé';

  @override
  String get amalTafsir => 'Tafsir';

  @override
  String get amalListenQuran => 'Écouter le Coran';

  @override
  String get amalTeachQuran => 'Enseigner le Coran';

  @override
  String get amalMonThu => 'Jeûne du lundi et du jeudi';

  @override
  String get amalThreeDays => 'Trois jours de jeûne par mois';

  @override
  String get amalDailySadaqah => 'Sadaqa quotidienne';

  @override
  String get amalFeed => 'Nourrir quelqu\'un';

  @override
  String get amalHelpNeed => 'Aider une personne dans le besoin';

  @override
  String get amalOrphan => 'Parrainer un orphelin';

  @override
  String get amalGiveWater => 'Offrir de l\'eau';

  @override
  String get amalLearnHadith => 'Apprendre un hadith';

  @override
  String get amalReadBook => 'Lire un livre islamique';

  @override
  String get amalSeerah => 'Étudier la Sira';

  @override
  String get amalClass => 'Assister à un cours';

  @override
  String get amalArabic => 'Apprendre l\'arabe';

  @override
  String get amalLearnDua => 'Apprendre une nouvelle doua';

  @override
  String get amalShare => 'Transmettre ce qu\'on apprend';

  @override
  String get amalFiqh => 'Étudier le fiqh';

  @override
  String get amalMuhasaba => 'Muhasaba du soir';

  @override
  String get amalSpeakGood => 'Dire du bien ou se taire';

  @override
  String get amalNoBackbiting => 'Éviter la médisance';

  @override
  String get amalAnger => 'Maîtriser sa colère';

  @override
  String get amalGaze => 'Baisser le regard';

  @override
  String get amalTruthful => 'Dire la vérité';

  @override
  String get amalSmile => 'Sourire';

  @override
  String get amalSalam => 'Répandre le salam';

  @override
  String get amalForgive => 'Pardonner aux autres';

  @override
  String get amalGratitude => 'Gratitude';

  @override
  String get amalVisitSick => 'Rendre visite aux malades';

  @override
  String get amalNeighbours => 'Bonté envers les voisins';

  @override
  String get amalRemoveHarm => 'Ôter un obstacle du chemin';

  @override
  String get amalParents => 'Bonté envers les parents';

  @override
  String get amalFamilyTies => 'Maintenir les liens familiaux';

  @override
  String get amalHelpHome => 'Aider à la maison';

  @override
  String get amalTeachChildren => 'Enseigner la religion aux enfants';

  @override
  String get amalSpouse => 'Bonté envers son conjoint';

  @override
  String get categoryDua => 'Doua';

  @override
  String get categoryFasting => 'Jeûne';

  @override
  String get categoryKnowledge => 'Savoir';

  @override
  String get categoryCharacter => 'Comportement';

  @override
  String get categoryFamily => 'Famille';

  @override
  String get libraryTitle => 'Bibliothèque d\'amals';

  @override
  String get librarySearchHint => 'Rechercher un amal';

  @override
  String get libraryAll => 'Tout';

  @override
  String get libraryAdded => 'Ajouté à Aujourd\'hui';

  @override
  String libraryAddedShowsOn(String days) {
    return 'Ajouté · apparaît : $days';
  }

  @override
  String libraryNoMatch(String query) {
    return 'Aucun amal ne correspond à « $query »';
  }

  @override
  String libraryCreateNamed(String query) {
    return 'Créer « $query »';
  }

  @override
  String get libraryPickBanner => 'Choisir dans la bibliothèque d\'amals';

  @override
  String libraryPickBannerSubtitle(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countText amals prêts à l\'emploi',
      one: '$countText amal prêt à l\'emploi',
    );
    return '$_temp0';
  }

  @override
  String get libraryFilledIn => 'Rempli depuis la bibliothèque d\'amals';

  @override
  String get libraryChange => 'Changer';

  @override
  String get libraryEditAction => 'Modifier';

  @override
  String libraryWeeklyAny(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countText jours par semaine',
      one: 'Une fois par semaine',
    );
    return '$_temp0';
  }

  @override
  String libraryMonthlyAny(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countText jours par mois',
      one: 'Une fois par mois',
    );
    return '$_temp0';
  }

  @override
  String libraryTimes(num count, String countText) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countText fois',
    );
    return '$_temp0';
  }

  @override
  String get libraryAnyAmount => 'Quantité libre';

  @override
  String libraryAddTooltip(String title) {
    return 'Ajouter $title';
  }

  @override
  String get libraryOnList => 'Déjà dans votre liste';

  @override
  String get todayEmptyBrowse => 'Parcourir la bibliothèque d\'amals';
}
