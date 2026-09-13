import 'package:flutter/material.dart';

import 'support_prompt_state.dart';

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
    this.todayViewMode = 'grouped',
    this.locale,
    this.dailyReminderEnabled = true,
    this.dailyReminderTime = '20:00',
    this.supporterProductId,
    this.supportTipCount = 0,
    this.supporterSince,
    this.supportPromptState = SupportPromptState.pending,
    this.supportSnoozedAtActiveDays = 0,
    this.supportAskCount = 0,
    this.supportIntroSeen = false,
    this.optionByAmalExpanded = false,
  });

  /// 1..7, `DateTime.monday == 1`, `DateTime.saturday == 6`. Default: Saturday.
  final int startOfWeek;

  /// 1..31. Default: 1st.
  final int startOfMonth;

  /// 0..23. The hour at which "today" ends and daily amal reset. Default: 0.
  final int rolloverHour;

  final ThemeMode themeMode;

  /// "flat" or "grouped" — controls the Today screen layout.
  final String todayViewMode;

  /// BCP-47 language tag (e.g. "ar", "bn"). `null` = follow device locale.
  final String? locale;

  /// Whether the app-level daily reminder notification is enabled. Default: on.
  final bool dailyReminderEnabled;

  /// Local "HH:mm" time the daily reminder fires. Default: "20:00".
  final String dailyReminderTime;

  /// Product id of the highest tier ever tipped; null = not a supporter.
  /// Stored rather than the rank so reordering tiers cannot relabel anyone.
  final String? supporterProductId;

  final int supportTipCount;

  final DateTime? supporterSince;

  final SupportPromptState supportPromptState;

  /// Active-day count at the moment the prompt was last snoozed.
  final int supportSnoozedAtActiveDays;

  final int supportAskCount;

  /// Whether the one-time "tips exist now" intro has been shown.
  final bool supportIntroSeen;

  /// Whether the Insights "by amal" drill-down starts expanded. Default: off.
  final bool optionByAmalExpanded;

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
    String? todayViewMode,
    String? Function()? locale,
    bool? dailyReminderEnabled,
    String? dailyReminderTime,
    String? Function()? supporterProductId,
    int? supportTipCount,
    DateTime? Function()? supporterSince,
    SupportPromptState? supportPromptState,
    int? supportSnoozedAtActiveDays,
    int? supportAskCount,
    bool? supportIntroSeen,
    bool? optionByAmalExpanded,
  }) {
    return AppSettings(
      startOfWeek: startOfWeek ?? this.startOfWeek,
      startOfMonth: startOfMonth ?? this.startOfMonth,
      rolloverHour: rolloverHour ?? this.rolloverHour,
      themeMode: themeMode ?? this.themeMode,
      todayViewMode: todayViewMode ?? this.todayViewMode,
      locale: locale != null ? locale() : this.locale,
      dailyReminderEnabled: dailyReminderEnabled ?? this.dailyReminderEnabled,
      dailyReminderTime: dailyReminderTime ?? this.dailyReminderTime,
      supporterProductId: supporterProductId != null
          ? supporterProductId()
          : this.supporterProductId,
      supportTipCount: supportTipCount ?? this.supportTipCount,
      supporterSince: supporterSince != null
          ? supporterSince()
          : this.supporterSince,
      supportPromptState: supportPromptState ?? this.supportPromptState,
      supportSnoozedAtActiveDays:
          supportSnoozedAtActiveDays ?? this.supportSnoozedAtActiveDays,
      supportAskCount: supportAskCount ?? this.supportAskCount,
      supportIntroSeen: supportIntroSeen ?? this.supportIntroSeen,
      optionByAmalExpanded: optionByAmalExpanded ?? this.optionByAmalExpanded,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppSettings &&
          other.startOfWeek == startOfWeek &&
          other.startOfMonth == startOfMonth &&
          other.rolloverHour == rolloverHour &&
          other.themeMode == themeMode &&
          other.todayViewMode == todayViewMode &&
          other.locale == locale &&
          other.dailyReminderEnabled == dailyReminderEnabled &&
          other.dailyReminderTime == dailyReminderTime &&
          other.supporterProductId == supporterProductId &&
          other.supportTipCount == supportTipCount &&
          other.supporterSince == supporterSince &&
          other.supportPromptState == supportPromptState &&
          other.supportSnoozedAtActiveDays == supportSnoozedAtActiveDays &&
          other.supportAskCount == supportAskCount &&
          other.supportIntroSeen == supportIntroSeen &&
          other.optionByAmalExpanded == optionByAmalExpanded;

  @override
  int get hashCode => Object.hash(
    startOfWeek,
    startOfMonth,
    rolloverHour,
    themeMode,
    todayViewMode,
    locale,
    dailyReminderEnabled,
    dailyReminderTime,
    supporterProductId,
    supportTipCount,
    supporterSince,
    supportPromptState,
    supportSnoozedAtActiveDays,
    supportAskCount,
    supportIntroSeen,
    optionByAmalExpanded,
  );
}
