import 'package:flutter/material.dart';

const _seed = Color(0xFF2E7D5B); // muted green — gentle, not flashy

ThemeData _base(Brightness b) {
  final scheme = ColorScheme.fromSeed(seedColor: _seed, brightness: b);
  return ThemeData(
    useMaterial3: true,
    colorScheme: scheme,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    cardTheme: CardThemeData(
      elevation: 0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: scheme.outlineVariant),
      ),
    ),
    listTileTheme: ListTileThemeData(iconColor: scheme.onSurfaceVariant),
    appBarTheme: const AppBarTheme(centerTitle: false),
  );
}

ThemeData buildLightTheme() => _base(Brightness.light);
ThemeData buildDarkTheme() => _base(Brightness.dark);

/// Amber accent for the "behind pace" state. Material 3 derives `tertiary`
/// from the green seed as a blue, which reads informational rather than as
/// something wanting attention.
extension PaceColors on ColorScheme {
  bool get _dark => brightness == Brightness.dark;

  Color get behind => _dark ? const Color(0xFFFFB870) : const Color(0xFF8A5300);
  Color get behindContainer =>
      _dark ? const Color(0xFF683E00) : const Color(0xFFFFDDB3);
  Color get onBehindContainer =>
      _dark ? const Color(0xFFFFDDB3) : const Color(0xFF2C1700);
}
