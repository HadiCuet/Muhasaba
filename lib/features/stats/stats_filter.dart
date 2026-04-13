import 'package:flutter/foundation.dart';

enum StatsPeriod { today, thisWeek, thisMonth, allTime, custom }

@immutable
class StatsFilter {
  const StatsFilter({
    this.period = StatsPeriod.thisWeek,
    this.category,
    this.amalId,
    this.customStart,
    this.customEnd,
  });

  final StatsPeriod period;

  /// `null` = all categories.
  final String? category;

  /// `null` = all amals.
  final int? amalId;

  final DateTime? customStart;
  final DateTime? customEnd;

  StatsFilter copyWith({
    StatsPeriod? period,
    String? Function()? category,
    int? Function()? amalId,
    DateTime? Function()? customStart,
    DateTime? Function()? customEnd,
  }) {
    return StatsFilter(
      period: period ?? this.period,
      category: category != null ? category() : this.category,
      amalId: amalId != null ? amalId() : this.amalId,
      customStart: customStart != null ? customStart() : this.customStart,
      customEnd: customEnd != null ? customEnd() : this.customEnd,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StatsFilter &&
          other.period == period &&
          other.category == category &&
          other.amalId == amalId &&
          other.customStart == customStart &&
          other.customEnd == customEnd;

  @override
  int get hashCode =>
      Object.hash(period, category, amalId, customStart, customEnd);
}
