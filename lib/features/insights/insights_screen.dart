import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app/providers.dart';
import '../../l10n/app_localizations.dart';
import '../history/history_screen.dart';
import '../stats/stats_screen.dart';
import 'archived_amal_screen.dart';

/// Hosts the app's looking-back surfaces: aggregate stats (Overview), the
/// editable single-day view (Daily) and the amal the user has stopped
/// tracking (Archive). Owns the only app bar; the sub-screens are plain
/// bodies.
class InsightsScreen extends ConsumerStatefulWidget {
  const InsightsScreen({super.key});

  @override
  ConsumerState<InsightsScreen> createState() => _InsightsScreenState();
}

class _InsightsScreenState extends ConsumerState<InsightsScreen>
    with SingleTickerProviderStateMixin {
  static const _tabNames = ['overview', 'daily', 'archive'];

  late final TabController _tabs;

  @override
  void initState() {
    super.initState();
    _tabs = TabController(length: _tabNames.length, vsync: this)
      ..addListener(_onTabChanged);
  }

  @override
  void dispose() {
    _tabs.removeListener(_onTabChanged);
    _tabs.dispose();
    super.dispose();
  }

  void _onTabChanged() {
    if (_tabs.indexIsChanging) return;
    setState(() {});
    FirebaseAnalytics.instance.logEvent(
      name: 'insights_tab_selected',
      parameters: {'tab': _tabNames[_tabs.index]},
    );
  }

  Future<void> _jumpToDate() async {
    final today = ref.read(currentMuhasabaDateProvider);
    final floor = ref.read(historyFloorDateProvider);
    final selected = ref.read(historySelectedDateProvider) ?? today;
    final picked = await showDatePicker(
      context: context,
      initialDate: selected,
      firstDate: floor,
      lastDate: today,
    );
    if (picked == null) return;
    ref
        .read(historySelectedDateProvider.notifier)
        .select(DateTime.utc(picked.year, picked.month, picked.day));
    final daysBack = DateTime.utc(
      today.year,
      today.month,
      today.day,
    ).difference(DateTime.utc(picked.year, picked.month, picked.day)).inDays;
    FirebaseAnalytics.instance.logEvent(
      name: 'history_date_picked',
      parameters: {'days_back': daysBack},
    );
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(l.insightsTitle),
        actions: [
          if (_tabs.index == 1)
            IconButton(
              tooltip: l.jumpToDate,
              icon: const Icon(Icons.event),
              onPressed: _jumpToDate,
            ),
        ],
        // Scrollable so labels size to their text: at three fixed tabs a
        // phone gives each ~88 dp, which several locales overflow.
        bottom: TabBar(
          controller: _tabs,
          isScrollable: true,
          tabAlignment: TabAlignment.center,
          tabs: [
            Tab(text: l.insightsOverview),
            Tab(text: l.insightsDaily),
            Tab(text: l.insightsArchive),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabs,
        children: const [StatsScreen(), HistoryScreen(), ArchivedAmalScreen()],
      ),
    );
  }
}
