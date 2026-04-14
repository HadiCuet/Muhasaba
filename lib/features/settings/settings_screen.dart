import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import '../../l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app/providers.dart';
import '../../data/repositories/settings_repository.dart';
import '../../domain/models/app_settings.dart';
import '../../domain/utils/supported_languages.dart';
import 'support_actions.dart';

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
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
      children: [
        // App branding card.
        _AppBrandCard(l: l),
        const SizedBox(height: 8),

        // Schedule group.
        _SectionHeader(title: l.settingsSchedule),
        _CardGroup(
          children: [
            _SettingsItem(
              icon: '🕐',
              iconColor: Colors.blue,
              title: l.rolloverHour,
              subtitle: l.settingsRolloverSub,
              trailing: _formatHour(settings.rolloverHour),
              onTap: () async {
                final picked = await _pickRolloverHour(
                  context,
                  settings.rolloverHour,
                );
                if (picked != null) await repo.setRolloverHour(picked);
              },
            ),
            _SettingsItem(
              icon: '📅',
              iconColor: Colors.blue,
              title: l.startOfWeek,
              trailing: _weekdayName(settings.startOfWeek),
              onTap: () async {
                final picked = await _pickStartOfWeek(
                  context,
                  settings.startOfWeek,
                );
                if (picked != null) await repo.setStartOfWeek(picked);
              },
            ),
          ],
        ),
        const SizedBox(height: 8),

        // Appearance group.
        _SectionHeader(title: l.settingsAppearance),
        _CardGroup(
          children: [
            _SettingsItem(
              icon: '🎨',
              iconColor: Colors.purple,
              title: l.theme,
              trailing: _themeLabel(context, settings.themeMode),
              onTap: () async {
                final picked = await _pickThemeMode(
                  context,
                  settings.themeMode,
                );
                if (picked != null) await repo.setThemeMode(picked);
              },
            ),
            _SettingsItem(
              icon: '🌍',
              iconColor: Colors.purple,
              title: l.language,
              trailing: _currentLanguageLabel(context, settings.locale),
              onTap: () async {
                final picked = await _pickLanguage(context, settings.locale);
                if (picked != null) {
                  await repo.setLocale(picked == '_system' ? null : picked);
                }
              },
            ),
          ],
        ),
        const SizedBox(height: 8),

        // Support group.
        _SectionHeader(title: l.settingsSupport),
        _CardGroup(
          children: [
            _SettingsItem(
              icon: '⭐',
              iconColor: Colors.orange,
              title: l.settingsRate,
              trailing: '',
              onTap: () => requestAppReview(context),
            ),
            _SettingsItem(
              icon: '✉️',
              iconColor: Colors.orange,
              title: l.settingsContact,
              trailing: '',
              onTap: () => sendContactEmail(context),
            ),
            _SettingsItem(
              icon: '🐛',
              iconColor: Colors.orange,
              title: l.settingsReportBug,
              trailing: '',
              onTap: () => sendBugReportEmail(context),
            ),
            _SettingsItem(
              icon: '💡',
              iconColor: Colors.orange,
              title: l.settingsRequestFeature,
              trailing: '',
              onTap: () => sendFeatureRequestEmail(context),
            ),
          ],
        ),
        const SizedBox(height: 8),

        // About group.
        _SectionHeader(title: l.settingsAbout),
        _CardGroup(
          children: [
            _SettingsItem(
              icon: 'ℹ️',
              iconColor: Colors.teal,
              title: l.settingsVersion,
              trailing: '1.0.0',
              showChevron: false,
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }

  String _currentLanguageLabel(BuildContext context, String? locale) {
    if (locale == null) return AppLocalizations.of(context).systemDefault;
    for (final lang in kSupportedLanguages) {
      if (lang.code == locale) return lang.nativeName;
    }
    return locale;
  }
}

// ---------------------------------------------------------------------------
// Reusable UI components
// ---------------------------------------------------------------------------

List<String> _hadiths(AppLocalizations l) => [
  l.hadith0, l.hadith1, l.hadith2, l.hadith3, l.hadith4,
  l.hadith5, l.hadith6, l.hadith7, l.hadith8, l.hadith9,
  l.hadith10, l.hadith11, l.hadith12, l.hadith13, l.hadith14,
  l.hadith15, l.hadith16, l.hadith17, l.hadith18, l.hadith19,
  l.hadith20, l.hadith21, l.hadith22, l.hadith23, l.hadith24,
  l.hadith25, l.hadith26, l.hadith27, l.hadith28, l.hadith29,
  l.hadith30, l.hadith31, l.hadith32, l.hadith33, l.hadith34,
  l.hadith35, l.hadith36, l.hadith37, l.hadith38, l.hadith39,
  l.hadith40, l.hadith41, l.hadith42, l.hadith43, l.hadith44,
  l.hadith45, l.hadith46, l.hadith47, l.hadith48, l.hadith49,
  l.hadith50, l.hadith51, l.hadith52, l.hadith53, l.hadith54,
  l.hadith55, l.hadith56, l.hadith57, l.hadith58, l.hadith59,
  l.hadith60, l.hadith61, l.hadith62, l.hadith63, l.hadith64,
  l.hadith65, l.hadith66, l.hadith67, l.hadith68, l.hadith69,
  l.hadith70, l.hadith71, l.hadith72, l.hadith73, l.hadith74,
  l.hadith75, l.hadith76, l.hadith77, l.hadith78, l.hadith79,
  l.hadith80, l.hadith81, l.hadith82, l.hadith83, l.hadith84,
  l.hadith85, l.hadith86, l.hadith87, l.hadith88, l.hadith89,
  l.hadith90, l.hadith91, l.hadith92, l.hadith93, l.hadith94,
  l.hadith95, l.hadith96, l.hadith97, l.hadith98, l.hadith99,
];

class _AppBrandCard extends StatefulWidget {
  const _AppBrandCard({required this.l});

  final AppLocalizations l;

  @override
  State<_AppBrandCard> createState() => _AppBrandCardState();
}

class _AppBrandCardState extends State<_AppBrandCard> {
  late final List<String> _selected;
  late final PageController _pageController;
  int _currentPage = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    final all = _hadiths(widget.l);
    final indices = List.generate(all.length, (i) => i)..shuffle(Random());
    _selected = indices.take(10).map((i) => all[i]).toList();
    _pageController = PageController();
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 8), (_) {
      final next = (_currentPage + 1) % _selected.length;
      _pageController.animateToPage(
        next,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final seed = theme.colorScheme.primary;

    return Container(
      margin: const EdgeInsets.only(top: 8),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        gradient: LinearGradient(
          colors: [
            seed.withValues(alpha: 0.12),
            seed.withValues(alpha: 0.04),
          ],
          begin: AlignmentDirectional.topStart,
          end: AlignmentDirectional.bottomEnd,
        ),
        border: Border.all(color: seed.withValues(alpha: 0.10)),
      ),
      child: Column(
        children: [
          // App info row.
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/icon/app_icon.png',
                  width: 44,
                  height: 44,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.l.aboutTitle,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      widget.l.settingsAboutTagline,
                      style: theme.textTheme.labelSmall?.copyWith(
                        color: theme.colorScheme.outline,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          // Hadith inset card.
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            decoration: BoxDecoration(
              color: theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.5),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 80,
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: _selected.length,
                    onPageChanged: (page) {
                      setState(() => _currentPage = page);
                      _startTimer(); // Reset timer on manual swipe.
                    },
                    itemBuilder: (_, i) => Center(
                      child: Text(
                        _selected[i],
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodySmall?.copyWith(
                          fontStyle: FontStyle.italic,
                          color: theme.colorScheme.onSurfaceVariant,
                          height: 1.5,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                // Dot indicators.
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (var i = 0; i < _selected.length; i++)
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        margin: const EdgeInsets.symmetric(horizontal: 2),
                        width: i == _currentPage ? 10 : 4,
                        height: 4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: i == _currentPage
                              ? seed
                              : theme.colorScheme.outlineVariant,
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(4, 16, 4, 6),
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

class _CardGroup extends StatelessWidget {
  const _CardGroup({required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: theme.colorScheme.outlineVariant.withValues(alpha: 0.5)),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (var i = 0; i < children.length; i++) ...[
            children[i],
            if (i < children.length - 1)
              Divider(
                height: 1,
                thickness: 0.5,
                color: theme.colorScheme.outlineVariant.withValues(alpha: 0.5),
              ),
          ],
        ],
      ),
    );
  }
}

class _SettingsItem extends StatelessWidget {
  const _SettingsItem({
    required this.icon,
    required this.iconColor,
    required this.title,
    this.subtitle,
    required this.trailing,
    this.showChevron = true,
    required this.onTap,
  });

  final String icon;
  final Color iconColor;
  final String title;
  final String? subtitle;
  final String trailing;
  final bool showChevron;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: Row(
          children: [
            // Leading icon circle.
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: iconColor.withValues(alpha: 0.12),
                borderRadius: BorderRadius.circular(8),
              ),
              alignment: Alignment.center,
              child: Text(icon, style: const TextStyle(fontSize: 15)),
            ),
            const SizedBox(width: 10),
            // Title + optional subtitle.
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  if (subtitle != null) ...[
                    const SizedBox(height: 1),
                    Text(
                      subtitle!,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ],
              ),
            ),
            // Trailing value.
            Text(
              trailing,
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            if (showChevron) ...[
              const SizedBox(width: 4),
              Icon(
                Icons.chevron_right,
                size: 18,
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ],
          ],
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Pickers (unchanged)
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

Future<int?> _pickRolloverHour(BuildContext context, int current) async {
  final l = AppLocalizations.of(context);
  final picked = await showTimePicker(
    context: context,
    initialTime: TimeOfDay(hour: current, minute: 0),
    helpText: l.pickRolloverHour,
    builder: (ctx, child) => child!,
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
