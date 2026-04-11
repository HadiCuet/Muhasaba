import 'package:flutter/material.dart';

/// Strongly-typed snapshot of user settings. Persisted as key/value rows in
/// the `settings_kv` table and hydrated into this object by
/// `SettingsRepository`.
@immutable
class AppSettings {
  const AppSettings({
    required this.startOfWeek,
    required this.startOfMonth,
    required this.rolloverHour,
    required this.themeMode,
  });

  /// 1..7, `DateTime.monday == 1`, `DateTime.saturday == 6`. Default: Saturday.
  final int startOfWeek;

  /// 1..31. Default: 1st.
  final int startOfMonth;

  /// 0..23. The hour at which "today" ends and daily amal reset. Default: 0.
  final int rolloverHour;

  final ThemeMode themeMode;

  static const defaults = AppSettings(
    startOfWeek: DateTime.saturday,
    startOfMonth: 1,
    rolloverHour: 0,
    themeMode: ThemeMode.system,
  );

  AppSettings copyWith({
    int? startOfWeek,
    int? startOfMonth,
    int? rolloverHour,
    ThemeMode? themeMode,
  }) {
    return AppSettings(
      startOfWeek: startOfWeek ?? this.startOfWeek,
      startOfMonth: startOfMonth ?? this.startOfMonth,
      rolloverHour: rolloverHour ?? this.rolloverHour,
      themeMode: themeMode ?? this.themeMode,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppSettings &&
          other.startOfWeek == startOfWeek &&
          other.startOfMonth == startOfMonth &&
          other.rolloverHour == rolloverHour &&
          other.themeMode == themeMode;

  @override
  int get hashCode =>
      Object.hash(startOfWeek, startOfMonth, rolloverHour, themeMode);
}
