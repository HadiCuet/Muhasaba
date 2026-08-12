import '../../domain/models/challenge.dart';

/// Canonical English titles — stored verbatim in the DB and translated at
/// display time by `localized_challenge_title.dart`.
class ChallengeTemplate {
  const ChallengeTemplate({
    required this.icon,
    required this.title,
    required this.category,
    required this.mode,
    required this.target,
    this.unit,
    this.stepSize = 1,
    this.durationDays,
  });

  final String icon;
  final String title;
  final String category;
  final ChallengeMode mode;
  final int target;
  final String? unit;
  final int stepSize;

  /// `null` means no time limit.
  final int? durationDays;
}

const kChallengeTemplates = [
  ChallengeTemplate(
    icon: '\u{1F319}',
    title: '40 nights Tahajjud',
    category: 'Salah',
    mode: ChallengeMode.days,
    target: 40,
    durationDays: 40,
  ),
  ChallengeTemplate(
    icon: '\u{1F4FF}',
    title: '1000 Salawat',
    category: 'Dhikr',
    mode: ChallengeMode.count,
    target: 1000,
    unit: 'salawat',
    stepSize: 100,
  ),
  ChallengeTemplate(
    icon: '\u{1F4D6}',
    title: 'Khatm in 30 days',
    category: 'Quran',
    mode: ChallengeMode.count,
    target: 30,
    unit: 'juz',
    durationDays: 30,
  ),
  ChallengeTemplate(
    icon: '\u{1F305}',
    title: '30 days Fajr in jamaah',
    category: 'Salah',
    mode: ChallengeMode.days,
    target: 30,
    durationDays: 30,
  ),
  ChallengeTemplate(
    icon: '\u{1F4B0}',
    title: 'Sadaqah 30 days',
    category: 'Charity',
    mode: ChallengeMode.days,
    target: 30,
    durationDays: 30,
  ),
];
