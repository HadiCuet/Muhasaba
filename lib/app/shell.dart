import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

/// Persistent shell with bottom [NavigationBar] wrapping the four top-level
/// tabs. The FAB is only visible on the Today and Challenge tabs, where it
/// creates an amal and a challenge respectively.
class AppShell extends StatelessWidget {
  const AppShell({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    return Scaffold(
      body: navigationShell,
      floatingActionButton: switch (navigationShell.currentIndex) {
        0 => FloatingActionButton.extended(
          onPressed: () {
            FirebaseAnalytics.instance.logEvent(name: 'new_amal_started');
            context.push('/amal/new');
          },
          icon: const Icon(Icons.add),
          label: Text(l.newAmal),
        ),
        1 => FloatingActionButton.extended(
          onPressed: () {
            FirebaseAnalytics.instance.logEvent(name: 'new_challenge_started');
            context.push('/challenge/new');
          },
          icon: const Icon(Icons.add),
          label: Text(l.newChallenge),
        ),
        _ => null,
      },
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        onDestinationSelected: (i) => navigationShell.goBranch(
          i,
          initialLocation: i == navigationShell.currentIndex,
        ),
        destinations: [
          NavigationDestination(
            icon: const Icon(Icons.check_circle_outline),
            selectedIcon: const Icon(Icons.check_circle),
            label: l.tabToday,
          ),
          NavigationDestination(
            icon: const Icon(Icons.flag_outlined),
            selectedIcon: const Icon(Icons.flag),
            label: l.tabChallenge,
          ),
          NavigationDestination(
            icon: const Icon(Icons.insights_outlined),
            selectedIcon: const Icon(Icons.insights),
            label: l.tabInsights,
          ),
          NavigationDestination(
            icon: const Icon(Icons.settings_outlined),
            selectedIcon: const Icon(Icons.settings),
            label: l.tabSettings,
          ),
        ],
      ),
    );
  }
}
