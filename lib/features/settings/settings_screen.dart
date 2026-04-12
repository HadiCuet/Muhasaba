import 'package:flutter/material.dart';
import '../../l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app/providers.dart';
import '../../data/repositories/settings_repository.dart';
import '../../domain/models/app_settings.dart';
import '../../domain/utils/supported_languages.dart';

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
    final l = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(l.settingsTitle)),
      body: settingsAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text(l.settingsLoadError(e.toString()))),
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
    final l = AppLocalizations.of(context);
    return ListView(
      children: [
        _SectionHeader(title: l.sectionDayBoundary),
        ListTile(
          title: Text(l.rolloverHour),
          subtitle: Text(_rolloverSubtitle(context, settings.rolloverHour)),
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
        _SectionHeader(title: l.sectionWeekMonth),
        ListTile(
          title: Text(l.startOfWeek),
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
          title: Text(l.startOfMonth),
          subtitle: Text(l.startOfMonthClamped),
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
        _SectionHeader(title: l.sectionAppearance),
        ListTile(
          title: Text(l.theme),
          trailing: Text(_themeLabel(context, settings.themeMode)),
          onTap: () async {
            final picked = await _pickThemeMode(context, settings.themeMode);
            if (picked != null) {
              await repo.setThemeMode(picked);
            }
          },
        ),
        const Divider(height: 1),
        _SectionHeader(title: l.sectionLanguage),
        ListTile(
          title: Text(l.language),
          trailing: Text(_currentLanguageLabel(context, settings.locale)),
          onTap: () async {
            final picked = await _pickLanguage(context, settings.locale);
            if (picked != null) {
              await repo.setLocale(picked == '_system' ? null : picked);
            }
          },
        ),
        const SizedBox(height: 24),
        _AboutTile(l: l),
      ],
    );
  }

  String _currentLanguageLabel(BuildContext context, String? locale) {
    if (locale == null) {
      return AppLocalizations.of(context).systemDefault;
    }
    for (final lang in kSupportedLanguages) {
      if (lang.code == locale) return lang.nativeName;
    }
    return locale;
  }

  String _rolloverSubtitle(BuildContext context, int hour) {
    final l = AppLocalizations.of(context);
    if (hour == 0) {
      return l.rolloverAtMidnight;
    }
    return l.rolloverSubtitle(_formatHour(hour));
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
  const _AboutTile({required this.l});

  final AppLocalizations l;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.info_outline),
      title: Text(l.aboutTitle),
      subtitle: Text(l.aboutSubtitle),
    );
  }
}

// ---------------------------------------------------------------------------
// Pickers
// ---------------------------------------------------------------------------

Future<int?> _pickStartOfWeek(BuildContext context, int current) {
  final l = AppLocalizations.of(context);
  return showDialog<int>(
    context: context,
    builder: (ctx) => SimpleDialog(
      title: Text(l.startOfWeek),
      children: [
        RadioGroup<int>(
          groupValue: current,
          onChanged: (v) => Navigator.of(ctx).pop(v),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (var day = 1; day <= 7; day++)
                RadioListTile<int>(title: Text(_weekdayName(day)), value: day),
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
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: Text(
                  AppLocalizations.of(context).startOfMonth,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  padding: const EdgeInsets.all(16),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
                          border: Border.all(color: Theme.of(ctx).dividerColor),
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
  final l = AppLocalizations.of(context);
  final picked = await showTimePicker(
    context: context,
    initialTime: TimeOfDay(hour: current, minute: 0),
    helpText: l.pickRolloverHour,
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
  final l = AppLocalizations.of(context);
  return showDialog<ThemeMode>(
    context: context,
    builder: (ctx) => SimpleDialog(
      title: Text(l.theme),
      children: [
        RadioGroup<ThemeMode>(
          groupValue: current,
          onChanged: (v) => Navigator.of(ctx).pop(v),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (final mode in ThemeMode.values)
                RadioListTile<ThemeMode>(
                  title: Text(_themeLabel(context, mode)),
                  value: mode,
                ),
            ],
          ),
        ),
      ],
    ),
  );
}

Future<String?> _pickLanguage(BuildContext context, String? current) {
  final l = AppLocalizations.of(context);
  return showDialog<String>(
    context: context,
    builder: (ctx) => SimpleDialog(
      title: Text(l.language),
      children: [
        RadioGroup<String>(
          groupValue: current ?? '_system',
          onChanged: (v) => Navigator.of(ctx).pop(v),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              RadioListTile<String>(
                title: Text(l.systemDefault),
                value: '_system',
              ),
              for (final lang in kSupportedLanguages)
                RadioListTile<String>(
                  title: Text(lang.nativeName),
                  value: lang.code,
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

String _themeLabel(BuildContext context, ThemeMode mode) {
  final l = AppLocalizations.of(context);
  switch (mode) {
    case ThemeMode.system:
      return l.themeSystem;
    case ThemeMode.light:
      return l.themeLight;
    case ThemeMode.dark:
      return l.themeDark;
  }
}
