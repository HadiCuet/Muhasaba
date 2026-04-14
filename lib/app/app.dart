import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import '../l10n/app_localizations.dart';
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

    // Mirror user-facing settings to Firebase Analytics user properties so
    // events can be segmented by language and theme in GA4. Fires on first
    // resolution (prev is null) and on every subsequent change, but only
    // when the specific value actually changes.
    ref.listen(settingsProvider, (prev, next) {
      final s = next.value;
      if (s == null) return;
      final p = prev?.value;
      if (p?.locale != s.locale) {
        FirebaseAnalytics.instance.setUserProperty(
          name: 'app_language',
          value: s.locale ?? 'system',
        );
      }
      if (p?.themeMode != s.themeMode) {
        FirebaseAnalytics.instance.setUserProperty(
          name: 'theme_mode',
          value: s.themeMode.name,
        );
      }
    });

    // Resolve locale: null = follow system, non-null = user-picked language.
    final locale = settings.locale != null ? Locale(settings.locale!) : null;

    return MaterialApp.router(
      title: 'Muhasaba',
      debugShowCheckedModeBanner: false,
      theme: buildLightTheme(),
      darkTheme: buildDarkTheme(),
      themeMode: settings.themeMode,
      routerConfig: router,
      locale: locale,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      // Graceful fallback: if the device locale isn't in our supported list,
      // try matching just the language code, then fall back to English.
      localeResolutionCallback: (deviceLocale, supportedLocales) {
        if (locale != null) return locale; // User override.
        if (deviceLocale == null) return const Locale('en');
        // Exact match first.
        for (final supported in supportedLocales) {
          if (supported.languageCode == deviceLocale.languageCode &&
              supported.countryCode == deviceLocale.countryCode) {
            return supported;
          }
        }
        // Language-only match.
        for (final supported in supportedLocales) {
          if (supported.languageCode == deviceLocale.languageCode) {
            return supported;
          }
        }
        return const Locale('en');
      },
    );
  }
}
