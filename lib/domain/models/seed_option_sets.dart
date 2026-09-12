/// A set shipped with the app. Seeded sets are created on first run and on the
/// v11 migration, and are attached to no amal — they exist so the user has
/// something ready-made to pick, in their own language.
class SeedOptionSet {
  const SeedOptionSet({
    required this.seedKey,
    required this.name,
    required this.affinity,
    required this.items,
  });

  final String seedKey;

  /// Canonical English, stored verbatim. Display goes through
  /// `localizedOptionSetName`.
  final String name;

  /// Category this set is offered for first in the picker. `null` = no
  /// affinity, sorts after the matches.
  final String? affinity;

  final List<({String key, String label})> items;
}

const kSeedOptionSets = <SeedOptionSet>[
  SeedOptionSet(
    seedKey: 'jamaa',
    name: 'Jamaa',
    affinity: 'Salah',
    items: [
      (key: 'jamaa.alone', label: 'Alone'),
      (key: 'jamaa.home', label: 'Jamaa at home'),
      (key: 'jamaa.masjid', label: 'Jamaa at masjid'),
    ],
  ),
  SeedOptionSet(
    seedKey: 'ontime',
    name: 'On time',
    affinity: 'Salah',
    items: [
      (key: 'ontime.onTime', label: 'On time'),
      (key: 'ontime.late', label: 'Late'),
      (key: 'ontime.qada', label: 'Qada'),
    ],
  ),
  SeedOptionSet(
    seedKey: 'quranSession',
    name: 'Quran session',
    affinity: 'Quran',
    items: [
      (key: 'quranSession.recited', label: 'Recited'),
      (key: 'quranSession.memorised', label: 'Memorised'),
      (key: 'quranSession.meaning', label: 'With meaning'),
      (key: 'quranSession.listened', label: 'Listened'),
    ],
  ),
  SeedOptionSet(
    seedKey: 'sadaqahType',
    name: 'Sadaqah type',
    affinity: 'Charity',
    items: [
      (key: 'sadaqahType.money', label: 'Money'),
      (key: 'sadaqahType.food', label: 'Food'),
      (key: 'sadaqahType.time', label: 'Time'),
      (key: 'sadaqahType.other', label: 'Other'),
    ],
  ),
  SeedOptionSet(
    seedKey: 'intensity',
    name: 'Intensity',
    affinity: null,
    items: [
      (key: 'intensity.light', label: 'Light'),
      (key: 'intensity.moderate', label: 'Moderate'),
      (key: 'intensity.intense', label: 'Intense'),
    ],
  ),
];
