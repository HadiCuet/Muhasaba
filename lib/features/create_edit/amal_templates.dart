import '../../domain/models/frequency.dart';

class AmalTemplate {
  const AmalTemplate({
    required this.icon,
    required this.title,
    required this.category,
    required this.frequency,
    required this.target,
  });
  final String icon;
  final String title;
  final String category;
  final Frequency frequency;
  final int target;
}

const kAmalTemplates = [
  AmalTemplate(icon: '\u{1F4FF}', title: 'Tasbih 33x', category: 'Dhikr', frequency: Frequency.daily, target: 33),
  AmalTemplate(icon: '\u{1F932}', title: 'Istighfar 100x', category: 'Dhikr', frequency: Frequency.daily, target: 100),
  AmalTemplate(icon: '\u{1F4D6}', title: 'Surah Kahf', category: 'Quran', frequency: Frequency.weekly, target: 1),
  AmalTemplate(icon: '\u{1F4B0}', title: 'Sadaqah', category: 'Charity', frequency: Frequency.monthly, target: 1),
  AmalTemplate(icon: '\u{1F319}', title: 'Tahajjud', category: 'Salah', frequency: Frequency.daily, target: 1),
  AmalTemplate(icon: '\u{2600}\u{FE0F}', title: 'Duha Prayer', category: 'Salah', frequency: Frequency.daily, target: 1),
];
