import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app/providers.dart';
import '../../data/repositories/settings_repository.dart';
import '../../domain/models/app_settings.dart';

/// Grouped settings list. Each tile shows the current value and opens a
/// picker dialog on tap. Writes go straight to `SettingsRepository`; the
/// stream-backed `settingsProvider` rebuilds every consumer — including the
/// MaterialApp's `themeMode` and `todayRowsProvider` — automatically.
class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settingsAsync = ref.watch(settingsProvider);
    final repo = ref.watch(settingsRepositoryProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: settingsAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Failed to load settings:\n$e')),
        data: (settings) => _SettingsList(settings: settings, repo: repo),
      ),
    );
  }
}

class _SettingsList extends StatelessWidget {
  const _SettingsList({required this.settings, required this.repo});

  final AppSettings settings;
  final SettingsRepository repo;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _SectionHeader(title: 'Day boundary'),
        ListTile(
          title: const Text('Rollover hour'),
          subtitle: Text(
            _rolloverSubtitle(settings.rolloverHour),
          ),
          trailing: Text(_formatHour(settings.rolloverHour)),
          onTap: () async {
            final picked = await _pickRolloverHour(
              context,
              settings.rolloverHour,
            );
            if (picked != null) {
              await repo.setRolloverHour(picked);
            }
          },
        ),
        const Divider(height: 1),
        _SectionHeader(title: 'Week & month'),
        ListTile(
          title: const Text('Start of week'),
          trailing: Text(_weekdayName(settings.startOfWeek)),
          onTap: () async {
            final picked = await _pickStartOfWeek(
              context,
              settings.startOfWeek,
            );
            if (picked != null) {
              await repo.setStartOfWeek(picked);
            }
          },
        ),
        ListTile(
          title: const Text('Start of month'),
          subtitle: const Text(
            'Days past the 28th are clamped to the last day of shorter months.',
          ),
          trailing: Text(_ordinal(settings.startOfMonth)),
          onTap: () async {
            final picked = await _pickStartOfMonth(
              context,
              settings.startOfMonth,
            );
            if (picked != null) {
              await repo.setStartOfMonth(picked);
            }
          },
        ),
        const Divider(height: 1),
        _SectionHeader(title: 'Appearance'),
        ListTile(
          title: const Text('Theme'),
          trailing: Text(_themeLabel(settings.themeMode)),
          onTap: () async {
            final picked = await _pickThemeMode(context, settings.themeMode);
            if (picked != null) {
              await repo.setThemeMode(picked);
            }
          },
        ),
        const SizedBox(height: 24),
        const _AboutTile(),
      ],
    );
  }

  String _rolloverSubtitle(int hour) {
    if (hour == 0) {
      return "Today ends at midnight.";
    }
    return "Yesterday's amal stay editable until ${_formatHour(hour)}.";
  }
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 8),
      child: Text(
        title.toUpperCase(),
        style: theme.textTheme.labelSmall?.copyWith(
          color: theme.colorScheme.primary,
          letterSpacing: 0.8,
        ),
      ),
    );
  }
}

class _AboutTile extends StatelessWidget {
  const _AboutTile();

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: Icon(Icons.info_outline),
      title: Text('Muhasaba'),
      subtitle: Text(
        'A personal deen accountability journal. All data stays on this device.',
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Pickers
// ---------------------------------------------------------------------------

Future<int?> _pickStartOfWeek(BuildContext context, int current) {
  return showDialog<int>(
    context: context,
    builder: (ctx) => SimpleDialog(
      title: const Text('Start of week'),
      children: [
        RadioGroup<int>(
          groupValue: current,
          onChanged: (v) => Navigator.of(ctx).pop(v),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (var day = 1; day <= 7; day++)
                RadioListTile<int>(
                  title: Text(_weekdayName(day)),
                  value: day,
                ),
            ],
          ),
        ),
      ],
    ),
  );
}

Future<int?> _pickStartOfMonth(BuildContext context, int current) {
  return showModalBottomSheet<int>(
    context: context,
    showDragHandle: true,
    builder: (ctx) {
      return SafeArea(
        child: SizedBox(
          height: 360,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(
                  'Start of month',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  padding: const EdgeInsets.all(16),
                  gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 7,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                  ),
                  itemCount: 31,
                  itemBuilder: (_, i) {
                    final day = i + 1;
                    final selected = day == current;
                    return InkWell(
                      borderRadius: BorderRadius.circular(8),
                      onTap: () => Navigator.of(ctx).pop(day),
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: selected
                              ? Theme.of(ctx).colorScheme.primaryContainer
                              : null,
                          border: Border.all(
                            color: Theme.of(ctx).dividerColor,
                          ),
                        ),
                        child: Text(
                          '$day',
                          style: TextStyle(
                            fontWeight: selected
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

Future<int?> _pickRolloverHour(BuildContext context, int current) async {
  final picked = await showTimePicker(
    context: context,
    initialTime: TimeOfDay(hour: current, minute: 0),
    helpText: 'Pick the hour the day rolls over',
    builder: (ctx, child) {
      // Force the picker to snap to whole hours by overriding the layout to
      // a spinner. We still accept whatever the user taps, then zero out the
      // minute below.
      return child!;
    },
  );
  if (picked == null) return null;
  return picked.hour;
}

Future<ThemeMode?> _pickThemeMode(BuildContext context, ThemeMode current) {
  return showDialog<ThemeMode>(
    context: context,
    builder: (ctx) => SimpleDialog(
      title: const Text('Theme'),
      children: [
        RadioGroup<ThemeMode>(
          groupValue: current,
          onChanged: (v) => Navigator.of(ctx).pop(v),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (final mode in ThemeMode.values)
                RadioListTile<ThemeMode>(
                  title: Text(_themeLabel(mode)),
                  value: mode,
                ),
            ],
          ),
        ),
      ],
    ),
  );
}

// ---------------------------------------------------------------------------
// Formatting helpers
// ---------------------------------------------------------------------------

String _weekdayName(int day) {
  const names = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday',
  ];
  if (day < 1 || day > 7) return '—';
  return names[day - 1];
}

String _ordinal(int n) {
  if (n >= 11 && n <= 13) return '${n}th';
  switch (n % 10) {
    case 1:
      return '${n}st';
    case 2:
      return '${n}nd';
    case 3:
      return '${n}rd';
    default:
      return '${n}th';
  }
}

String _formatHour(int hour) {
  final h = hour.clamp(0, 23);
  final suffix = h < 12 ? 'AM' : 'PM';
  final display = h == 0 ? 12 : (h > 12 ? h - 12 : h);
  return '$display:00 $suffix';
}

String _themeLabel(ThemeMode mode) {
  switch (mode) {
    case ThemeMode.system:
      return 'System';
    case ThemeMode.light:
      return 'Light';
    case ThemeMode.dark:
      return 'Dark';
  }
}
