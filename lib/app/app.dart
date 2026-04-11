import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/models/app_settings.dart';
import 'providers.dart';
import 'router.dart';
import 'theme.dart';

class MuhasabaApp extends ConsumerWidget {
  const MuhasabaApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    // Fall back to defaults until the first settings row lands — keeps the
    // very first frame from flashing the wrong theme.
    final settings = ref.watch(settingsProvider).value ?? AppSettings.defaults;
    return MaterialApp.router(
      title: 'Muhasaba',
      debugShowCheckedModeBanner: false,
      theme: buildLightTheme(),
      darkTheme: buildDarkTheme(),
      themeMode: settings.themeMode,
      routerConfig: router,
    );
  }
}
