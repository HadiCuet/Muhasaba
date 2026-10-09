import '../../domain/models/challenge.dart';

/// A ready-made challenge. [title] and [unit] are canonical English: stored
/// verbatim in the DB and translated at display time by
/// `localized_challenge_title.dart`.
class LibraryChallenge {
  const LibraryChallenge({
    required this.key,
    required this.icon,
    required this.title,
    required this.category,
    required this.mode,
    required this.target,
    this.unit,
    this.stepSize = 1,
    this.durationDays,
  });

  /// Stable id for analytics; never shown.
  final String key;
  final String icon;
  final String title;
  final String category;
  final ChallengeMode mode;
  final int target;
  final String? unit;
  final int stepSize;

  /// Days from the start to the deadline; `null` means no time limit. A
  /// [ChallengeMode.days] challenge whose window equals its [target] has to
  /// be kept every single day.
  final int? durationDays;
}

/// Grouped by `kLibraryCategories`, in the order each section lists them.
const kChallengeLibrary = <LibraryChallenge>[
  LibraryChallenge(
    key: 'jamaah40',
    icon: '🕌',
    title: '40 days, all prayers in jamaah',
    category: 'Salah',
    mode: ChallengeMode.days,
    target: 40,
    durationDays: 40,
  ),
  LibraryChallenge(
    key: 'fajrJamaah',
    icon: '🌅',
    title: '30 days Fajr in jamaah',
    category: 'Salah',
    mode: ChallengeMode.days,
    target: 30,
    durationDays: 30,
  ),
  LibraryChallenge(
    key: 'onTime30',
    icon: '⏰',
    title: '30 days, all five on time',
    category: 'Salah',
    mode: ChallengeMode.days,
    target: 30,
    durationDays: 30,
  ),
  LibraryChallenge(
    key: 'tahajjud40',
    icon: '🌙',
    title: '40 nights Tahajjud',
    category: 'Sunnah',
    mode: ChallengeMode.days,
    target: 40,
    durationDays: 40,
  ),
  LibraryChallenge(
    key: 'rawatib30',
    icon: '🏠',
    title: "30 days of the 12 Sunnah rak'ahs",
    category: 'Sunnah',
    mode: ChallengeMode.days,
    target: 30,
    durationDays: 30,
  ),
  // Ramadan challenges ask one day less than the month or its last ten nights
  // can have (29 of 30, 9 of 10), so a 29-day month still completes them.
  LibraryChallenge(
    key: 'taraweeh',
    icon: '🌃',
    title: 'Taraweeh every night of Ramadan',
    category: 'Sunnah',
    mode: ChallengeMode.days,
    target: 29,
    durationDays: 30,
  ),
  LibraryChallenge(
    key: 'lastTenQiyam',
    icon: '✨',
    title: 'Qiyam in the last ten nights',
    category: 'Sunnah',
    mode: ChallengeMode.days,
    target: 9,
    durationDays: 10,
  ),
  LibraryChallenge(
    key: 'salawat1000',
    icon: '📿',
    title: '1000 Salawat',
    category: 'Dhikr',
    mode: ChallengeMode.count,
    target: 1000,
    unit: 'salawat',
    stepSize: 100,
  ),
  LibraryChallenge(
    key: 'istighfar30',
    icon: '💧',
    title: '30 days of istighfar',
    category: 'Dhikr',
    mode: ChallengeMode.days,
    target: 30,
    durationDays: 30,
  ),
  LibraryChallenge(
    key: 'adhkar40',
    icon: '🌅',
    title: '40 days of morning & evening adhkar',
    category: 'Dhikr',
    mode: ChallengeMode.days,
    target: 40,
    durationDays: 40,
  ),
  LibraryChallenge(
    key: 'learnDuas',
    icon: '🤲',
    title: 'Learn 30 duas',
    category: 'Dua',
    mode: ChallengeMode.count,
    target: 30,
    unit: 'duas',
    durationDays: 30,
  ),
  LibraryChallenge(
    key: 'khatm30',
    icon: '📖',
    title: 'Khatm in 30 days',
    category: 'Quran',
    mode: ChallengeMode.count,
    target: 30,
    unit: 'juz',
    durationDays: 30,
  ),
  LibraryChallenge(
    key: 'khatmYear',
    icon: '📗',
    title: 'Khatm in a year',
    category: 'Quran',
    mode: ChallengeMode.count,
    target: 604,
    unit: 'pages',
    durationDays: 365,
  ),
  LibraryChallenge(
    key: 'mulkHifz',
    icon: '🧠',
    title: 'Memorise Surah al-Mulk',
    category: 'Quran',
    mode: ChallengeMode.count,
    target: 30,
    unit: 'ayat',
    durationDays: 30,
  ),
  LibraryChallenge(
    key: 'juzAmma',
    icon: '📜',
    title: "Memorise Juz 'Amma",
    category: 'Quran',
    mode: ChallengeMode.count,
    target: 37,
    unit: 'surahs',
  ),
  LibraryChallenge(
    key: 'quran40',
    icon: '🔁',
    title: '40 days with the Quran',
    category: 'Quran',
    mode: ChallengeMode.days,
    target: 40,
    durationDays: 40,
  ),
  LibraryChallenge(
    key: 'ramadanFasts',
    icon: '🌙',
    title: 'Fast all of Ramadan',
    category: 'Fasting',
    mode: ChallengeMode.days,
    target: 29,
    durationDays: 30,
  ),
  LibraryChallenge(
    key: 'shawwal6',
    icon: '🗓️',
    title: 'Six days of Shawwal',
    category: 'Fasting',
    mode: ChallengeMode.days,
    target: 6,
    durationDays: 29,
  ),
  LibraryChallenge(
    key: 'dhulHijjah9',
    icon: '🕋',
    title: 'First nine days of Dhul Hijjah',
    category: 'Fasting',
    mode: ChallengeMode.days,
    target: 9,
    durationDays: 9,
  ),
  LibraryChallenge(
    key: 'makeUpFasts',
    icon: '🔄',
    title: 'Make up missed fasts',
    category: 'Fasting',
    mode: ChallengeMode.days,
    target: 10,
  ),
  LibraryChallenge(
    key: 'sadaqah30',
    icon: '💰',
    title: 'Sadaqah 30 days',
    category: 'Charity',
    mode: ChallengeMode.days,
    target: 30,
    durationDays: 30,
  ),
  LibraryChallenge(
    key: 'lastTenSadaqah',
    icon: '🌟',
    title: 'Sadaqah on the last ten nights',
    category: 'Charity',
    mode: ChallengeMode.days,
    target: 9,
    durationDays: 10,
  ),
  LibraryChallenge(
    key: 'nawawi40',
    icon: '📜',
    title: "Memorise an-Nawawi's 40 Hadith",
    category: 'Knowledge',
    mode: ChallengeMode.count,
    target: 42,
    unit: 'hadith',
  ),
  LibraryChallenge(
    key: 'names99',
    icon: '✨',
    title: 'Learn the 99 Names of Allah',
    category: 'Knowledge',
    mode: ChallengeMode.count,
    target: 99,
    unit: 'names',
    durationDays: 99,
  ),
  LibraryChallenge(
    key: 'noBackbiting',
    icon: '🤐',
    title: '30 days without backbiting',
    category: 'Character',
    mode: ChallengeMode.days,
    target: 30,
    durationDays: 30,
  ),
  LibraryChallenge(
    key: 'muhasaba30',
    icon: '📝',
    title: '30 nights of Muhasaba',
    category: 'Character',
    mode: ChallengeMode.days,
    target: 30,
    durationDays: 30,
  ),
  LibraryChallenge(
    key: 'callParents',
    icon: '📞',
    title: 'Call your parents for 30 days',
    category: 'Family',
    mode: ChallengeMode.days,
    target: 30,
    durationDays: 30,
  ),
];
