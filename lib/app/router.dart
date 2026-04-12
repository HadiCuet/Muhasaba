import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../features/create_edit/amal_form_screen.dart';
import '../features/create_edit/amal_templates.dart';
import '../features/history/history_screen.dart';
import '../features/settings/settings_screen.dart';
import '../features/stats/stats_screen.dart';
import '../features/today/today_screen.dart';
import 'shell.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/',
    routes: [
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
          // Tab 1 — Stats
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/stats',
                name: 'stats',
                builder: (context, state) => const StatsScreen(),
              ),
            ],
          ),
          // Tab 2 — History
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/history',
                name: 'history',
                builder: (context, state) => const HistoryScreen(),
              ),
            ],
          ),
          // Tab 3 ��� Settings
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
            return const Scaffold(
              body: Center(child: Text('Invalid amal id')),
            );
          }
          return AmalFormScreen(amalId: id);
        },
      ),
    ],
  );
});
