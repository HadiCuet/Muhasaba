import 'package:drift/drift.dart';

import '../database.dart';
import '../tables.dart';

part 'settings_dao.g.dart';

/// Canonical setting keys. Kept as string constants so migrations can rename
/// them without runtime string searches across the codebase.
class SettingKeys {
  SettingKeys._();
  static const startOfWeek = 'start_of_week'; // 1..7, DateTime.monday = 1
  static const startOfMonth = 'start_of_month'; // 1..31
  static const rolloverHour = 'rollover_hour'; // 0..23
  static const themeMode = 'theme_mode'; // system | light | dark
  static const todayViewMode = 'today_view_mode'; // flat | grouped
  static const locale = 'locale'; // BCP-47 tag e.g. "ar", "bn", null=system
}

@DriftAccessor(tables: [SettingsKv])
class SettingsDao extends DatabaseAccessor<AppDatabase>
    with _$SettingsDaoMixin {
  SettingsDao(super.db);

  Stream<Map<String, String>> watchAll() {
    return select(
      settingsKv,
    ).watch().map((rows) => {for (final r in rows) r.key: r.value});
  }

  Future<Map<String, String>> getAll() async {
    final rows = await select(settingsKv).get();
    return {for (final r in rows) r.key: r.value};
  }

  Future<String?> get(String key) async {
    final row = await (select(
      settingsKv,
    )..where((s) => s.key.equals(key))).getSingleOrNull();
    return row?.value;
  }

  Future<void> set(String key, String value) {
    return into(settingsKv).insertOnConflictUpdate(
      SettingsKvCompanion.insert(key: key, value: value),
    );
  }

  Future<void> setInt(String key, int value) => set(key, value.toString());

  Future<int?> getInt(String key) async {
    final v = await get(key);
    if (v == null) return null;
    return int.tryParse(v);
  }
}
