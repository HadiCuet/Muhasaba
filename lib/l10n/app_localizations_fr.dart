// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

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
  String get timesPerPeriod => 'Fois par période';

  @override
  String get custom => 'Personnalisé';

  @override
  String get customTargetHint => 'ex. 50';

  @override
  String get dayOfWeek => 'Jour de la semaine';

  @override
  String get anyDay => 'Tous';

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
  String get anyDate => 'Toutes';

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
    return 'Rappel : $time';
  }

  @override
  String get reminderPermissionWarning =>
      'Rappel enregistré, mais les notifications ne sont pas autorisées. Activez-les dans les réglages du système pour recevoir des alertes.';

  @override
  String get groupByCategory => 'Grouper par catégorie';

  @override
  String get flatList => 'Liste simple';

  @override
  String errorGeneric(String error) {
    return 'Erreur : $error';
  }

  @override
  String get todayEmptyHint => 'Appuyez sur + pour ajouter votre premier amal.';

  @override
  String get noteLabel => 'Note';

  @override
  String get noteHint => 'ex. Prière à la mosquée';

  @override
  String get completed => 'accompli';

  @override
  String get notCompleted => 'non accompli';

  @override
  String progressOf(int progress, int target) {
    return '$progress sur $target accomplis';
  }

  @override
  String get removeFromToday => 'Retirer d\'aujourd\'hui';

  @override
  String get removeFromTodaySubtitle =>
      'Masquer uniquement pour aujourd\'hui. Il réapparaît demain.';

  @override
  String get removeFromTracking => 'Supprimer du suivi';

  @override
  String get removeFromTrackingSubtitle =>
      'Supprimer définitivement de votre liste. L\'historique est conservé.';

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
  String get addAmal => 'Ajouter un amal';

  @override
  String get customAmal => 'Amal personnalisé';

  @override
  String get templateTasbih => 'Tasbih 33x';

  @override
  String get templateIstighfar => 'Istighfar 100x';

  @override
  String get templateSurahKahf => 'Sourate Al-Kahf';

  @override
  String get templateSadaqah => 'Sadaqa';

  @override
  String get templateTahajjud => 'Tahajjud';

  @override
  String get templateDuhaPrayer => 'Prière du Doha';

  @override
  String get settingsTitle => 'Paramètres';

  @override
  String settingsLoadError(String error) {
    return 'Impossible de charger les paramètres :\n$error';
  }

  @override
  String get sectionDayBoundary => 'Limite de journée';

  @override
  String get rolloverHour => 'Heure de basculement';

  @override
  String get rolloverAtMidnight => 'La journée se termine à minuit.';

  @override
  String rolloverSubtitle(String time) {
    return 'Les amal d\'hier restent modifiables jusqu\'à $time.';
  }

  @override
  String get pickRolloverHour =>
      'Choisir l\'heure de basculement de la journée';

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
      'Un journal personnel de responsabilité spirituelle (deen). Toutes les données restent sur cet appareil.';

  @override
  String get statsTitle => 'Statistiques';

  @override
  String statsLoadError(String error) {
    return 'Impossible de charger les statistiques :\n$error';
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
      'Aucun amal pour le moment. Ajoutez-en un dans Aujourd\'hui pour commencer le suivi.';

  @override
  String get statsToday => 'Aujourd\'hui';

  @override
  String get statsThisWeek => 'Cette semaine';

  @override
  String get statsThisMonth => 'Ce mois-ci';

  @override
  String get statsAllTime => 'Depuis toujours';

  @override
  String get statsCustomRange => 'Plage personnalisee';

  @override
  String get statsAllCategories => 'Toutes';

  @override
  String get statsAllAmals => 'Tous';

  @override
  String get statsCompleted => 'Accomplis';

  @override
  String get statsExpected => 'Attendus';

  @override
  String get statsVsPrevious => 'vs Precedent';

  @override
  String get statsByCategory => 'Par categorie';

  @override
  String get statsPerAmal => 'Par amal';

  @override
  String get statsCurrentStreak => 'Serie actuelle';

  @override
  String get statsBestStreak => 'Meilleure serie';

  @override
  String get statsTotalDays => 'Total de jours';

  @override
  String get statsConsistency => 'Regularite';

  @override
  String get statsLast5Weeks => '5 dernieres semaines';

  @override
  String get statsDailyBreakdown => 'Detail quotidien';

  @override
  String get statsCompletionRate => 'Taux d\'accomplissement';

  @override
  String get statsFilterTime => 'Temps';

  @override
  String get statsFilterCategory => 'Categorie';

  @override
  String get statsFilterAmal => 'Amal';

  @override
  String get statsStreaks => 'Series';

  @override
  String get statsSelectDateRange => 'Selectionner une plage de dates';

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
      '\"Les actes les plus aimés d\'Allah sont ceux accomplis avec constance, même s\'ils sont modestes.\"\n— Bukhari et Muslim';

  @override
  String get hadith1 =>
      '\"N\'entreprenez des bonnes actions que dans la mesure de vos capacités, car les meilleures actions sont celles accomplies avec régularité, même si elles sont peu nombreuses.\"\n— Ibn Majah';

  @override
  String get hadith2 =>
      '\"Lorsque le fils d\'Adam meurt, ses actes cessent sauf trois : une aumône continue, un savoir bénéfique, ou un enfant pieux qui invoque pour lui.\"\n— Muslim';

  @override
  String get hadith3 =>
      '\"Celui qui prie les deux prières fraîches (Fajr et Asr) entrera au Paradis.\"\n— Bukhari';

  @override
  String get hadith4 =>
      '\"Allah ne regarde ni votre apparence ni vos richesses, mais Il regarde vos cœurs et vos actes.\"\n— Muslim';

  @override
  String get hadith5 =>
      '\"Les meilleurs des gens sont ceux qui sont les plus utiles aux gens.\"\n— Daraqutni';

  @override
  String get hadith6 =>
      '\"Facilitez les choses et ne les rendez pas difficiles ; annoncez la bonne nouvelle et ne repoussez pas les gens.\"\n— Bukhari';

  @override
  String get hadith7 =>
      '\"Celui qui emprunte un chemin à la recherche du savoir, Allah lui facilite un chemin vers le Paradis.\"\n— Muslim';

  @override
  String get hadith8 => '\"L\'aumône ne diminue pas la richesse.\"\n— Muslim';

  @override
  String get hadith9 =>
      '\"Le croyant fort est meilleur et plus aimé d\'Allah que le croyant faible, bien qu\'il y ait du bien en chacun d\'eux.\"\n— Muslim';

  @override
  String historyDayCompleted(int completed, int total) {
    return '$completed sur $total terminé(s)';
  }

  @override
  String get settingsSchedule => 'Horaire';

  @override
  String get settingsAppearance => 'Apparence';

  @override
  String get settingsAboutTagline => 'Votre compagnon quotidien de deen';

  @override
  String get settingsRolloverSub => 'Quand la journée se réinitialise';
}
