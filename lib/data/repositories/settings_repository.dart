import 'package:flutter/material.dart';

import '../../domain/models/app_settings.dart';
import '../db/daos/settings_dao.dart';

/// Hydrates `AppSettings` from the `settings_kv` key/value table and writes
/// changes back through the DAO.
class SettingsRepository {
  SettingsRepository(this._dao);

  final SettingsDao _dao;

  Stream<AppSettings> watch() {
    return _dao.watchAll().map(_fromMap);
  }

  Future<AppSettings> get() async {
    return _fromMap(await _dao.getAll());
  }

  Future<void> setStartOfWeek(int day) =>
      _dao.setInt(SettingKeys.startOfWeek, day);

  Future<void> setStartOfMonth(int date) =>
      _dao.setInt(SettingKeys.startOfMonth, date);

  Future<void> setRolloverHour(int hour) =>
      _dao.setInt(SettingKeys.rolloverHour, hour);

  Future<void> setThemeMode(ThemeMode mode) =>
      _dao.set(SettingKeys.themeMode, mode.name);

  Future<void> setTodayViewMode(String mode) =>
      _dao.set(SettingKeys.todayViewMode, mode);

  Future<void> setLocale(String? tag) async {
    if (tag == null) {
      // Delete the key so system default is used.
      await _dao.set(SettingKeys.locale, '');
    } else {
      await _dao.set(SettingKeys.locale, tag);
    }
  }

  Future<void> setDailyReminderEnabled(bool enabled) =>
      _dao.set(SettingKeys.dailyReminderEnabled, enabled ? '1' : '0');

  Future<void> setDailyReminderTime(String time) =>
      _dao.set(SettingKeys.dailyReminderTime, time);

  Future<void> setDailyReminderPermissionAsked(bool asked) =>
      _dao.set(SettingKeys.dailyReminderPermissionAsked, asked ? '1' : '0');

  Future<bool> getDailyReminderPermissionAsked() async {
    final v = await _dao.get(SettingKeys.dailyReminderPermissionAsked);
    return v == '1';
  }

  Future<void> setTutorialSeen(bool seen) =>
      _dao.set(SettingKeys.tutorialSeen, seen ? '1' : '0');

  Future<bool> getTutorialSeen() async {
    final v = await _dao.get(SettingKeys.tutorialSeen);
    return v == '1';
  }

  AppSettings _fromMap(Map<String, String> m) {
    return AppSettings(
      startOfWeek:
          int.tryParse(m[SettingKeys.startOfWeek] ?? '') ??
          AppSettings.defaults.startOfWeek,
      startOfMonth:
          int.tryParse(m[SettingKeys.startOfMonth] ?? '') ??
          AppSettings.defaults.startOfMonth,
      rolloverHour:
          int.tryParse(m[SettingKeys.rolloverHour] ?? '') ??
          AppSettings.defaults.rolloverHour,
      themeMode: _parseTheme(m[SettingKeys.themeMode]),
      todayViewMode: m[SettingKeys.todayViewMode] ?? 'grouped',
      locale: _parseLocale(m[SettingKeys.locale]),
      dailyReminderEnabled: (m[SettingKeys.dailyReminderEnabled] ?? '1') != '0',
      dailyReminderTime:
          m[SettingKeys.dailyReminderTime] ??
          AppSettings.defaults.dailyReminderTime,
    );
  }

  String? _parseLocale(String? v) {
    if (v == null || v.isEmpty) return null;
    return v;
  }

  ThemeMode _parseTheme(String? v) {
    switch (v) {
      case 'light':
        return ThemeMode.light;
      case 'dark':
        return ThemeMode.dark;
      default:
        return ThemeMode.system;
    }
  }
}
