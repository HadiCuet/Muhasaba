import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../l10n/app_localizations.dart';
import '../features/challenge/challenge_detail_screen.dart';
import '../features/challenge/challenge_form_screen.dart';
import '../features/challenge/challenge_screen.dart';
import '../features/create_edit/amal_form_screen.dart';
import '../features/create_edit/amal_templates.dart';
import '../features/insights/insights_screen.dart';
import '../features/settings/settings_screen.dart';
import '../features/splash/splash_screen.dart';
import '../features/today/today_screen.dart';
import 'shell.dart';

final routerProvider = Provider<GoRouter>((ref) {
  final analyticsObserver = FirebaseAnalyticsObserver(
    analytics: FirebaseAnalytics.instance,
  );
  return GoRouter(
    initialLocation: '/splash',
    observers: [analyticsObserver],
    routes: [
      // ── Splash (cold-launch only) ───────────────────────────────────
      GoRoute(
        path: '/splash',
        name: 'splash',
        builder: (context, state) => const SplashScreen(),
      ),

      // ── Tabbed shell ────────────────────────────────────────────────
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return AppShell(navigationShell: navigationShell);
        },
        branches: [
          // Tab 0 — Today
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/',
                name: 'today',
                builder: (context, state) => const TodayScreen(),
              ),
            ],
          ),
          // Tab 1 — Challenge
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/challenge',
                name: 'challenge',
                builder: (context, state) => const ChallengeScreen(),
              ),
            ],
          ),
          // Tab 2 — Insights (Overview + Daily)
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/insights',
                name: 'insights',
                builder: (context, state) => const InsightsScreen(),
              ),
            ],
          ),
          // Tab 3 — Settings
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/settings',
                name: 'settings',
                builder: (context, state) => const SettingsScreen(),
              ),
            ],
          ),
        ],
      ),

      // ── Full-screen routes (push on top of shell, no tab bar) ──────
      GoRoute(
        path: '/amal/new',
        name: 'amal-new',
        builder: (context, state) {
          final template = state.extra;
          return AmalFormScreen(
            prefill: template is AmalTemplate ? template : null,
          );
        },
      ),
      GoRoute(
        path: '/amal/:id',
        name: 'amal-edit',
        builder: (context, state) {
          final id = int.tryParse(state.pathParameters['id'] ?? '');
          if (id == null) {
            return Scaffold(
              body: Center(
                child: Text(AppLocalizations.of(context).invalidAmalId),
              ),
            );
          }
          return AmalFormScreen(amalId: id);
        },
      ),
      GoRoute(
        path: '/challenge/new',
        name: 'challenge-new',
        builder: (context, state) => const ChallengeFormScreen(),
      ),
      GoRoute(
        path: '/challenge/:id/edit',
        name: 'challenge-edit',
        builder: (context, state) {
          final id = int.tryParse(state.pathParameters['id'] ?? '');
          if (id == null) {
            return Scaffold(
              body: Center(
                child: Text(AppLocalizations.of(context).invalidAmalId),
              ),
            );
          }
          return ChallengeFormScreen(challengeId: id);
        },
      ),
      GoRoute(
        path: '/challenge/:id',
        name: 'challenge-detail',
        builder: (context, state) {
          final id = int.tryParse(state.pathParameters['id'] ?? '');
          if (id == null) {
            return Scaffold(
              body: Center(
                child: Text(AppLocalizations.of(context).invalidAmalId),
              ),
            );
          }
          return ChallengeDetailScreen(challengeId: id);
        },
      ),
      GoRoute(path: '/stats', redirect: (_, _) => '/insights'),
      GoRoute(path: '/history', redirect: (_, _) => '/insights'),
    ],
  );
});
