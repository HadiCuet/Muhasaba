import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import '../l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/models/app_settings.dart';
import '../domain/services/daily_reminder.dart';
import '../domain/utils/app_locale.dart';
import '../features/challenge/challenge_providers.dart';
import '../features/tutorial/tutorial_anchors.dart';
import '../features/tutorial/tutorial_controller.dart';
import 'providers.dart';
import 'router.dart';
import 'theme.dart';

/// Lets the day-rollover toast post a SnackBar from above the per-screen
/// Scaffolds.
final _scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

class MuhasabaApp extends ConsumerStatefulWidget {
  const MuhasabaApp({super.key});

  @override
  ConsumerState<MuhasabaApp> createState() => _MuhasabaAppState();
}

class _MuhasabaAppState extends ConsumerState<MuhasabaApp> {
  late final AppLifecycleListener _lifecycle;

  @override
  void initState() {
    super.initState();
    // Recompute the muhasaba "today" when the app returns to the foreground, so
    // a day rollover crossed while backgrounded refreshes Today/History/Stats
    // instead of showing yesterday until the app is force-quit and relaunched.
    _lifecycle = AppLifecycleListener(
      onResume: () {
        ref.invalidate(currentMuhasabaDateProvider);
        refreshChallengeNudges(ref);
      },
    );
    WidgetsBinding.instance.addPostFrameCallback((_) => _bootstrapFirstRun());
  }

  @override
  void dispose() {
    _lifecycle.dispose();
    super.dispose();
  }

  /// On the first launch that reaches the Today frame, ask for notification
  /// permission once (the reminder is ON by default). Gated by a persisted flag
  /// so it never re-prompts. Re-applies the schedule afterwards so iOS has the
  /// request registered post-authorization.
  Future<void> _bootstrapDailyReminderPermission() async {
    final repo = ref.read(settingsRepositoryProvider);
    if (await repo.getDailyReminderPermissionAsked()) return;
    final scheduler = ref.read(reminderSchedulerProvider);
    await scheduler.requestPermissions();
    await repo.setDailyReminderPermissionAsked(true);
    await applyDailyReminder(scheduler, await repo.get());
  }

  /// Permission prompt first, then the tutorial — otherwise the OS dialog
  /// covers the spotlight on the first launch.
  ///
  /// The seen flag is checked here rather than left to `runTutorial` so a
  /// returning user never pays for the anchor poll below.
  Future<void> _bootstrapFirstRun() async {
    await _bootstrapDailyReminderPermission();
    if (!mounted) return;
    if (await ref.read(settingsRepositoryProvider).getTutorialSeen()) return;
    final tourContext = await _awaitTodayAnchored();
    if (tourContext == null) return;
    if (!tourContext.mounted) return;
    await runTutorial(tourContext, ref, source: 'first_run');
  }

  /// The tour needs the router's navigator to hang its overlay on — this State
  /// sits above [MaterialApp], so its own context has none. Waiting on the
  /// first-row anchor also holds the tour back past the splash, which paints
  /// the frame this post-frame callback fires on.
  Future<BuildContext?> _awaitTodayAnchored() async {
    final navigator = ref.read(routerProvider).routerDelegate.navigatorKey;
    for (var attempt = 0; attempt < 40; attempt++) {
      if (!mounted) return null;
      if (tutorialFirstRowKey.currentContext != null) {
        return navigator.currentContext;
      }
      await Future<void>.delayed(const Duration(milliseconds: 100));
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
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
      scaffoldMessengerKey: _scaffoldMessengerKey,
      onGenerateTitle: (context) => AppLocalizations.of(context).appTitle,
      debugShowCheckedModeBanner: false,
      theme: buildLightTheme(),
      darkTheme: buildDarkTheme(),
      themeMode: settings.themeMode,
      routerConfig: router,
      builder: (context, child) => _DayRolloverToast(
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: child,
        ),
      ),
      locale: locale,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        // flutter_localizations has no data for a few of our 23 languages
        // (tk, tg, so, ha, ku); these fall back to English Material/Cupertino/
        // Widgets strings so those locales render instead of throwing
        // "No MaterialLocalizations found". App text stays in the language.
        _FallbackMaterialDelegate(),
        _FallbackCupertinoDelegate(),
        _FallbackWidgetsDelegate(),
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      // Graceful fallback: if the device locale isn't in our supported list,
      // try matching just the language code, then fall back to English. Shared
      // with main()'s startup reminder sync via [resolveAppLocale].
      localeResolutionCallback: (deviceLocale, supportedLocales) =>
          resolveAppLocale(settings.locale, [?deviceLocale]),
    );
  }
}

/// Shows a transient toast when the muhasaba day rolls over while the app is
/// open, so the Today list resetting to a fresh day reads as intentional and
/// not as lost progress. Lives inside [MaterialApp] so [AppLocalizations] and
/// the scaffold messenger are in scope.
class _DayRolloverToast extends ConsumerStatefulWidget {
  const _DayRolloverToast({required this.child});

  final Widget child;

  @override
  ConsumerState<_DayRolloverToast> createState() => _DayRolloverToastState();
}

class _DayRolloverToastState extends ConsumerState<_DayRolloverToast> {
  DateTime? _seenDate;
  int? _seenRollover;

  @override
  Widget build(BuildContext context) {
    final date = ref.watch(currentMuhasabaDateProvider);
    final rollover = ref.watch(
      settingsProvider.select((s) => s.value?.rolloverHour),
    );

    // A real rollover = the date advanced while the rollover-hour setting held
    // steady. This excludes the initial settings load and Settings edits, which
    // also shift the computed date but aren't a new day. First resolution
    // (_seenDate == null) is the baseline, never a toast.
    final rolledOver =
        _seenDate != null &&
        date != _seenDate &&
        rollover != null &&
        rollover == _seenRollover;
    _seenDate = date;
    _seenRollover = rollover;

    if (rolledOver) {
      final l = AppLocalizations.of(context);
      // Defer past the current build — showSnackBar mutates the messenger.
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _scaffoldMessengerKey.currentState
          ?..hideCurrentSnackBar()
          ..showSnackBar(
            SnackBar(
              content: Text(l.newDayStarted),
              behavior: SnackBarBehavior.floating,
              duration: const Duration(seconds: 4),
            ),
          );
      });
    }
    return widget.child;
  }
}

// ---------------------------------------------------------------------------
// Fallback localization delegates. For app languages that flutter_localizations
// has no data for (tk, tg, so, ha, ku), serve the English Material/Cupertino/
// Widgets localizations so those locales render instead of throwing. Placed
// after the Global delegates so, being the last delegate of each type, they
// win for every locale — delegating to the real locale when supported and to
// English otherwise. The app's own text (AppLocalizations) stays localized.
// ---------------------------------------------------------------------------

class _FallbackMaterialDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const _FallbackMaterialDelegate();
  @override
  bool isSupported(Locale locale) => true;
  @override
  Future<MaterialLocalizations> load(Locale locale) {
    final l = GlobalMaterialLocalizations.delegate.isSupported(locale)
        ? locale
        : const Locale('en');
    return GlobalMaterialLocalizations.delegate.load(l);
  }

  @override
  bool shouldReload(
    covariant LocalizationsDelegate<MaterialLocalizations> old,
  ) => false;
}

class _FallbackCupertinoDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const _FallbackCupertinoDelegate();
  @override
  bool isSupported(Locale locale) => true;
  @override
  Future<CupertinoLocalizations> load(Locale locale) {
    final l = GlobalCupertinoLocalizations.delegate.isSupported(locale)
        ? locale
        : const Locale('en');
    return GlobalCupertinoLocalizations.delegate.load(l);
  }

  @override
  bool shouldReload(
    covariant LocalizationsDelegate<CupertinoLocalizations> old,
  ) => false;
}

class _FallbackWidgetsDelegate
    extends LocalizationsDelegate<WidgetsLocalizations> {
  const _FallbackWidgetsDelegate();
  @override
  bool isSupported(Locale locale) => true;
  @override
  Future<WidgetsLocalizations> load(Locale locale) {
    final l = GlobalWidgetsLocalizations.delegate.isSupported(locale)
        ? locale
        : const Locale('en');
    return GlobalWidgetsLocalizations.delegate.load(l);
  }

  @override
  bool shouldReload(
    covariant LocalizationsDelegate<WidgetsLocalizations> old,
  ) => false;
}
