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
  String get hadith2 =>
      '\"Lorsque le fils d\'Adam meurt, ses actes cessent sauf trois : une aumône continue, un savoir bénéfique, ou un enfant pieux qui invoque pour lui.\"\n— Muslim';

  @override
  String get hadith3 =>
      '\"Celui qui prie les deux prières fraîches (Fajr et Asr) entrera au Paradis.\"\n— Bukhari';

  @override
  String get hadith4 =>
      '\"Allah ne regarde ni votre apparence ni vos richesses, mais Il regarde vos cœurs et vos actes.\"\n— Muslim';

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
  String get hadith10 =>
      '\"Celui qui dit \'SubhanAllah wa bihamdihi\' cent fois par jour verra ses péchés pardonnés, même s\'ils étaient comme l\'écume de la mer.\"\n— Bukhari';

  @override
  String get hadith12 =>
      '\"Celui qui récite Ayat al-Kursi après chaque prière obligatoire, rien ne l\'empêche d\'entrer au Paradis sauf la mort.\"\n— Nasa\'i';

  @override
  String get hadith13 =>
      '\"Une bonne parole est une aumône.\"\n— Bukhari & Muslim';

  @override
  String get hadith14 =>
      '\"Que celui qui croit en Allah et au Jour Dernier dise du bien ou qu\'il se taise.\"\n— Bukhari & Muslim';

  @override
  String get hadith15 =>
      '\"Celui qui prend soin d\'une veuve ou d\'un pauvre est comme un combattant dans le sentier d\'Allah.\"\n— Bukhari';

  @override
  String get hadith16 =>
      '\"Ton sourire à ton frère est une aumône.\"\n— Tirmidhi';

  @override
  String get hadith17 =>
      '\"Le meilleur d\'entre vous est celui qui apprend le Coran et l\'enseigne.\"\n— Bukhari';

  @override
  String get hadith18 =>
      '\"Personne n\'a mangé meilleure nourriture que celle gagnée par le travail de ses mains.\"\n— Bukhari';

  @override
  String get hadith19 =>
      '\"Allah est doux et Il aime la douceur en toute chose.\"\n— Bukhari & Muslim';

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
  String get hadith20 =>
      '\"Celui qui jeûne le Ramadan avec foi et en espérant la récompense verra ses péchés passés pardonnés.\"\n— Bukhari & Muslim';

  @override
  String get hadith22 =>
      '\"L\'invocation entre l\'adhan et l\'iqama n\'est pas rejetée.\"\n— Abu Dawud';

  @override
  String get hadith23 =>
      '\"Celui qui construit une mosquée pour Allah, Allah lui construira une maison au Paradis.\"\n— Bukhari & Muslim';

  @override
  String get hadith24 =>
      '\"Les meilleurs rangs pour les hommes sont les premiers, et les meilleurs rangs pour les femmes sont les derniers.\"\n— Muslim';

  @override
  String get hadith25 =>
      '\"Le jeûne est un bouclier contre le feu de l\'Enfer.\"\n— Nasa\'i';

  @override
  String get hadith26 =>
      '\"Celui qui prie douze rak\'ahs de prière surérogatoire, une maison lui sera construite au Paradis.\"\n— Muslim';

  @override
  String get hadith27 =>
      '\"Celui qui maîtrise le Coran sera en compagnie des anges nobles et vertueux.\"\n— Bukhari & Muslim';

  @override
  String get hadith29 =>
      '\"La meilleure des aumônes est de donner de l\'eau à boire.\"\n— Ahmad';

  @override
  String get hadith30 =>
      '\"Celui qui soulage un croyant d\'une difficulté, Allah le soulagera d\'une difficulté au Jour du Jugement.\"\n— Muslim';

  @override
  String get hadith32 =>
      '\"La pudeur fait partie de la foi.\"\n— Bukhari & Muslim';

  @override
  String get hadith34 =>
      '\"Celui qui fait preuve de patience, Allah lui accordera la patience.\"\n— Bukhari & Muslim';

  @override
  String get hadith36 =>
      '\"Aucun de vous ne croit véritablement tant qu\'il n\'aime pas pour son frère ce qu\'il aime pour lui-même.\"\n— Bukhari & Muslim';

  @override
  String get hadith37 =>
      '\"Nourrissez les affamés, visitez les malades et libérez les captifs.\"\n— Bukhari';

  @override
  String get hadith38 =>
      '\"L\'homme fort n\'est pas celui qui l\'emporte à la lutte, mais celui qui se maîtrise dans la colère.\"\n— Bukhari & Muslim';

  @override
  String get hadith40 =>
      '\"Dites \'SubhanAllah\', \'Alhamdulillah\' et \'Allahu Akbar\' trente-trois fois chacun après chaque prière.\"\n— Muslim';

  @override
  String get hadith41 =>
      '\"Le meilleur dhikr est La ilaha illallah.\"\n— Tirmidhi';

  @override
  String get hadith42 =>
      '\"Il y a deux bienfaits dont beaucoup de gens sont dupés : la santé et le temps libre.\"\n— Bukhari';

  @override
  String get hadith43 =>
      '\"Profite de cinq choses avant cinq autres : ta jeunesse avant ta vieillesse, ta santé avant ta maladie, ta richesse avant ta pauvreté, ton temps libre avant ton occupation, et ta vie avant ta mort.\"\n— Hakim';

  @override
  String get hadith44 =>
      '\"Celui qui récite la sourate al-Ikhlas dix fois, Allah lui construira une maison au Paradis.\"\n— Ahmad';

  @override
  String get hadith45 =>
      '\"La meilleure prière après les prières obligatoires est la prière de la nuit.\"\n— Muslim';

  @override
  String get hadith46 =>
      '\"L\'aumône éteint les péchés comme l\'eau éteint le feu.\"\n— Tirmidhi';

  @override
  String get hadith47 =>
      '\"Celui qui maintient les liens de parenté n\'est pas celui qui rend la pareille. C\'est celui qui les maintient même quand on les rompt avec lui.\"\n— Bukhari';

  @override
  String get hadith49 =>
      '\"Celui qui mange et dit : \'Louange à Allah qui m\'a nourri de cela et me l\'a accordé sans aucune force ni puissance de ma part,\' ses péchés passés lui seront pardonnés.\"\n— Tirmidhi';

  @override
  String get hadith53 =>
      '\"Ne méprise aucun acte de bien, ne serait-ce que de rencontrer ton frère avec un visage souriant.\"\n— Muslim';

  @override
  String get hadith54 =>
      '\"Les meilleurs d\'entre vous sont ceux qui sont les meilleurs envers leur famille.\"\n— Tirmidhi';

  @override
  String get hadith55 =>
      '\"Celui qui récite les deux derniers versets de la sourate al-Baqarah la nuit, ils lui suffiront.\"\n— Bukhari & Muslim';

  @override
  String get hadith56 =>
      '\"Le monde est un bien dont on profite, et le meilleur de ses biens est une épouse vertueuse.\"\n— Muslim';

  @override
  String get hadith57 =>
      '\"Trois invocations ne sont jamais rejetées : l\'invocation du jeûneur, celle du dirigeant juste et celle de l\'opprimé.\"\n— Tirmidhi';

  @override
  String get hadith58 =>
      '\"Celui qui prie sur moi une fois, Allah priera sur lui dix fois.\"\n— Muslim';

  @override
  String get hadith65 =>
      '\"Le croyant est le miroir du croyant.\"\n— Abu Dawud';

  @override
  String get hadith66 =>
      '\"La véracité mène à la vertu, et la vertu mène au Paradis.\"\n— Bukhari & Muslim';

  @override
  String get hadith67 =>
      '\"Restitue le dépôt à celui qui te l\'a confié, et ne trahis pas celui qui t\'a trahi.\"\n— Abu Dawud & Tirmidhi';

  @override
  String get hadith68 =>
      '\"Aucune fatigue, maladie, chagrin, tristesse, douleur ou détresse n\'atteint un musulman — même la piqûre d\'une épine — sans qu\'Allah n\'efface par cela une partie de ses péchés.\"\n— Bukhari & Muslim';

  @override
  String get hadith69 =>
      '\"L\'invocation d\'un musulman pour son frère en son absence est toujours exaucée.\"\n— Muslim';

  @override
  String get hadith70 =>
      '\"Celui qui demande le Paradis à Allah trois fois, le Paradis dit : Ô Allah, fais-le entrer au Paradis.\"\n— Tirmidhi';

  @override
  String get hadith71 =>
      '\"Le jeûne le plus méritoire après le Ramadan est celui du mois d\'Allah, Muharram.\"\n— Muslim';

  @override
  String get hadith72 =>
      '\"Celui qui accomplit le Hajj sans commettre d\'obscénité ni de péché revient comme au jour où sa mère l\'a mis au monde.\"\n— Bukhari & Muslim';

  @override
  String get hadith73 =>
      '\"D\'une Omra à l\'autre, c\'est une expiation pour ce qui se trouve entre les deux.\"\n— Bukhari & Muslim';

  @override
  String get hadith74 =>
      '\"Hâtez-vous de faire les bonnes actions avant que les épreuves ne surviennent comme des portions d\'une nuit sombre.\"\n— Muslim';

  @override
  String get hadith75 =>
      '\"Les deux rak\'ahs du Fajr sont meilleures que le monde et tout ce qu\'il contient.\"\n— Muslim';

  @override
  String get hadith77 =>
      '\"Si vous placiez votre confiance en Allah comme il se doit, Il vous accorderait votre subsistance comme Il l\'accorde aux oiseaux.\"\n— Tirmidhi';

  @override
  String get hadith78 =>
      '\"Celui qui rend visite à un malade se trouve dans un jardin du Paradis jusqu\'à ce qu\'il revienne.\"\n— Muslim';

  @override
  String get hadith79 =>
      '\"Répandez la paix, nourrissez les affamés et priez la nuit pendant que les gens dorment — vous entrerez au Paradis en paix.\"\n— Tirmidhi';

  @override
  String get hadith80 =>
      '\"Celui qui n\'est pas reconnaissant envers les gens n\'est pas reconnaissant envers Allah.\"\n— Tirmidhi';

  @override
  String get hadith81 =>
      '\"L\'envie n\'est permise que dans deux cas : un homme à qui Allah a donné des richesses qu\'il dépense dans le bien, et un homme à qui Allah a donné la sagesse et qui juge et enseigne avec elle.\"\n— Bukhari & Muslim';

  @override
  String get hadith82 =>
      '\"L\'homme adopte la religion de son ami intime ; que chacun de vous prenne garde à qui il prend pour ami.\"\n— Abu Dawud & Tirmidhi';

  @override
  String get hadith85 =>
      '\"Celui qui abandonne quelque chose pour l\'amour d\'Allah, Allah le remplacera par quelque chose de meilleur.\"\n— Ahmad';

  @override
  String get hadith86 =>
      '\"Celui qui couvre les défauts d\'un musulman, Allah couvrira ses défauts au Jour du Jugement.\"\n— Bukhari & Muslim';

  @override
  String get hadith87 =>
      '\"Sois en ce monde comme un étranger ou un voyageur.\"\n— Bukhari';

  @override
  String get hadith88 =>
      '\"Celui qui facilite les choses à une personne en difficulté, Allah lui facilitera les choses en ce monde et dans l\'au-delà.\"\n— Muslim';

  @override
  String get hadith89 =>
      '\"La récompense des actes dépend des intentions.\"\n— Bukhari & Muslim';

  @override
  String get hadith90 =>
      '\"Évitez la suspicion, car la suspicion est la plus mensongère des paroles.\"\n— Bukhari & Muslim';

  @override
  String get hadith93 =>
      '\"Mangez ensemble et mentionnez le nom d\'Allah, et cela sera béni pour vous.\"\n— Abu Dawud';

  @override
  String get hadith94 =>
      '\"La meilleure des assemblées est la plus spacieuse.\"\n— Abu Dawud';

  @override
  String get hadith95 => '\"Pardonnez et vous serez pardonnés.\"\n— Ahmad';

  @override
  String get hadith96 =>
      '\"Attache ton chameau, puis place ta confiance en Allah.\"\n— Tirmidhi';

  @override
  String get hadith97 =>
      '\"Comme l\'affaire du croyant est merveilleuse — tout est un bien pour lui.\"\n— Muslim';

  @override
  String get hadith98 =>
      '\"Un musulman est le frère d\'un musulman : il ne lui fait pas de tort, ne l\'abandonne pas et ne le méprise pas.\"\n— Muslim';
}
