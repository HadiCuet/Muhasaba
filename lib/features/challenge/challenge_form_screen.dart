import 'package:drift/drift.dart' show Value;
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/providers.dart';
import '../../app/widgets/max_width_body.dart';
import '../../data/db/database.dart';
import '../../domain/models/challenge.dart';
import '../../domain/services/reminder_scheduler.dart';
import '../../domain/utils/localized_challenge_title.dart';
import '../../domain/utils/localized_number.dart';
import '../../l10n/app_localizations.dart';
import '../create_edit/widgets/category_picker.dart';
import '../create_edit/widgets/emoji_picker.dart';
import 'challenge_providers.dart';
import 'challenge_templates.dart';
import 'widgets/challenge_form_group.dart';
import 'widgets/challenge_preview_card.dart';
import 'widgets/custom_number_dialog.dart';

enum _WindowKind { duration, dates, none }

class ChallengeFormScreen extends ConsumerStatefulWidget {
  const ChallengeFormScreen({super.key, this.challengeId});

  final int? challengeId;

  @override
  ConsumerState<ChallengeFormScreen> createState() =>
      _ChallengeFormScreenState();
}

class _ChallengeFormScreenState extends ConsumerState<ChallengeFormScreen> {
  final _formKey = GlobalKey<FormState>();
  final _title = TextEditingController();
  final _target = TextEditingController();
  final _unit = TextEditingController();

  String _icon = '🚩';
  ChallengeMode _mode = ChallengeMode.count;
  _WindowKind _window = _WindowKind.duration;
  int _durationDays = 7;
  int _stepSize = 1;
  DateTime? _start;
  DateTime? _end; // inclusive last day, as shown to the user
  String? _category;
  TimeOfDay? _reminderTime;
  bool _iconIsManual = false;
  String? _templateTitle;
  ChallengeRow? _existing;
  bool _loaded = false;

  static const _durations = [7, 10, 30, 40, 90];
  static const _steps = [1, 2, 5, 10, 33, 100];

  @override
  void initState() {
    super.initState();
    if (widget.challengeId != null) {
      _load(widget.challengeId!);
    } else {
      _loaded = true;
    }
  }

  @override
  void dispose() {
    _title.dispose();
    _target.dispose();
    _unit.dispose();
    super.dispose();
  }

  Future<void> _load(int id) async {
    final row = await ref.read(challengeRepositoryProvider).getById(id);
    if (!mounted || row == null) return;
    final l = AppLocalizations.of(context);
    setState(() {
      _existing = row;
      _templateTitle = row.title;
      _title.text = localizedChallengeTitle(row.title, l);
      _target.text = row.target.toString();
      _unit.text = row.unit ?? '';
      _icon = row.icon;
      _mode = row.mode;
      _stepSize = row.stepSize;
      _start = row.startDate;
      _category = row.category;
      _iconIsManual = true;
      final t = parseReminderTime(row.reminderTime);
      _reminderTime = t == null
          ? null
          : TimeOfDay(hour: t.hour, minute: t.minute);
      if (row.endExclusive == null) {
        _window = _WindowKind.none;
      } else {
        _durationDays = row.endExclusive!.difference(row.startDate).inDays;
        _end = row.endExclusive!.subtract(const Duration(days: 1));
        _window = _WindowKind.duration;
      }
      _loaded = true;
    });
  }

  DateTime get _startOrToday => _start ?? ref.read(currentMuhasabaDateProvider);

  DateTime? _resolveEndExclusive() {
    return switch (_window) {
      _WindowKind.none => null,
      _WindowKind.duration => _startOrToday.add(Duration(days: _durationDays)),
      _WindowKind.dates => (_end ?? _startOrToday).add(const Duration(days: 1)),
    };
  }

  String? get _reminderString => _reminderTime == null
      ? null
      : '${_reminderTime!.hour.toString().padLeft(2, '0')}:'
            '${_reminderTime!.minute.toString().padLeft(2, '0')}';

  /// Canonical English for a template title the user has left alone, so it
  /// keeps translating; whatever they typed once they have edited it.
  String get _titleToStore {
    final typed = _title.text.trim();
    if (_templateTitle == null) return typed;
    final localized = localizedChallengeTitle(
      _templateTitle!,
      AppLocalizations.of(context),
    );
    return typed == localized ? _templateTitle! : typed;
  }

  void _applyTemplate(ChallengeTemplate t) {
    FirebaseAnalytics.instance.logEvent(
      name: 'challenge_template_used',
      parameters: {'template': t.title},
    );
    setState(() {
      _icon = t.icon;
      _iconIsManual = true;
      _title.text = localizedChallengeTitle(
        t.title,
        AppLocalizations.of(context),
      );
      _templateTitle = t.title;
      _mode = t.mode;
      _target.text = t.target.toString();
      _unit.text = t.unit ?? '';
      _stepSize = t.stepSize;
      _category = t.category;
      _window = t.durationDays == null
          ? _WindowKind.none
          : _WindowKind.duration;
      if (t.durationDays != null) _durationDays = t.durationDays!;
    });
  }

  void _clearForm() {
    setState(() {
      _icon = '🚩';
      _iconIsManual = false;
      _templateTitle = null;
      _title.clear();
      _target.clear();
      _unit.clear();
      _mode = ChallengeMode.count;
      _stepSize = 1;
      _category = null;
      _reminderTime = null;
      _window = _WindowKind.duration;
      _durationDays = 7;
      _end = null;
    });
  }

  Future<void> _pickIcon() async {
    final picked = await showEmojiPicker(
      context,
      ref,
      current: _icon,
      allowNone: false,
    );
    if (picked != null) {
      setState(() {
        _icon = picked;
        _iconIsManual = true;
      });
    }
  }

  Future<void> _pickDate({required bool isStart}) async {
    final base = isStart ? _startOrToday : (_end ?? _startOrToday);
    final picked = await showDatePicker(
      context: context,
      initialDate: base,
      firstDate: isStart ? DateTime.utc(2020) : _startOrToday,
      lastDate: DateTime.utc(2100),
    );
    if (picked == null) return;
    final date = DateTime.utc(picked.year, picked.month, picked.day);
    setState(() {
      if (isStart) {
        _start = date;
      } else {
        _end = date;
      }
    });
  }

  Future<void> _save() async {
    if (!_formKey.currentState!.validate()) return;
    final repo = ref.read(challengeRepositoryProvider);
    final l = AppLocalizations.of(context);
    final title = _titleToStore;
    final target = int.parse(_target.text.trim());
    final unit = _unit.text.trim().isEmpty ? null : _unit.text.trim();
    final endExclusive = _resolveEndExclusive();
    final reminder = _reminderString;

    // Ahead of the write: the repository schedules the reminder itself, so an
    // ungranted permission here would drop it silently.
    String? permissionMessage;
    if (reminder != null) {
      final granted = await ref
          .read(reminderSchedulerProvider)
          .requestPermissions();
      if (!granted) permissionMessage = l.reminderPermissionWarning;
    }

    if (_existing != null) {
      await repo.update(
        _existing!.copyWith(
          title: title,
          icon: _icon,
          mode: _mode,
          target: target,
          stepSize: _mode == ChallengeMode.days ? 1 : _stepSize,
          unit: Value(unit),
          category: Value(_category),
          reminderTime: Value(reminder),
          startDate: _startOrToday,
          endExclusive: Value(endExclusive),
        ),
        notificationTitle: localizedChallengeTitle(title, l),
      );
    } else {
      await repo.create(
        title: title,
        notificationTitle: localizedChallengeTitle(title, l),
        icon: _icon,
        mode: _mode,
        target: target,
        stepSize: _mode == ChallengeMode.days ? 1 : _stepSize,
        unit: unit,
        category: _category,
        reminderTime: reminder,
        startDate: _startOrToday,
        endExclusive: endExclusive,
      );
      FirebaseAnalytics.instance.logEvent(
        name: 'challenge_created',
        parameters: {
          'mode': _mode == ChallengeMode.days ? 'days' : 'count',
          'window': _window.name,
          'has_category': _category == null ? 0 : 1,
          'has_reminder': _reminderTime == null ? 0 : 1,
          'from_template': _templateTitle == null ? 0 : 1,
        },
      );
    }
    await refreshChallengeNudges(ref);
    if (!mounted) return;
    if (permissionMessage != null) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(permissionMessage)));
    }
    context.pop();
  }

  String _formatDate(DateTime date) {
    final locale = Localizations.localeOf(context).toString();
    return localizeDigits(
      context,
      safeDateFormat('MMM d, y', locale).format(date),
    );
  }

  Widget _titleRow(AppLocalizations l) {
    return Row(
      children: [
        InkWell(
          onTap: _pickIcon,
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: const EdgeInsetsDirectional.all(10),
            child: Text(_icon, style: const TextStyle(fontSize: 28)),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: TextFormField(
            controller: _title,
            decoration: InputDecoration(labelText: l.titleLabel),
            onChanged: (_) => setState(() {}),
            validator: (v) =>
                (v == null || v.trim().isEmpty) ? l.titleRequired : null,
          ),
        ),
      ],
    );
  }

  Widget _categoryPicker(AppLocalizations l) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(l.categoryLabel, style: Theme.of(context).textTheme.labelLarge),
        const SizedBox(height: 8),
        CategoryPicker(
          selected: _category,
          onChanged: (c) => setState(() {
            _category = c;
            if (_iconIsManual) return;
            final cats = ref.read(categoriesProvider).value ?? const [];
            final catIcon = cats
                .cast<CategoryRow?>()
                .firstWhere((x) => x?.name == c, orElse: () => null)
                ?.icon;
            _icon = (catIcon != null && catIcon.isNotEmpty) ? catIcon : '🚩';
          }),
        ),
      ],
    );
  }

  List<Widget> _countsChildren(AppLocalizations l) {
    final theme = Theme.of(context);
    return [
      Text(l.challengeModeLabel, style: theme.textTheme.labelLarge),
      const SizedBox(height: 8),
      SegmentedButton<ChallengeMode>(
        segments: [
          ButtonSegment(
            value: ChallengeMode.count,
            label: Text(l.challengeModeCount),
          ),
          ButtonSegment(
            value: ChallengeMode.days,
            label: Text(l.challengeModeDays),
          ),
        ],
        selected: {_mode},
        onSelectionChanged: (s) => setState(() => _mode = s.first),
      ),
      const SizedBox(height: 20),
      TextFormField(
        controller: _target,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(labelText: l.challengeTargetLabel),
        onChanged: (_) => setState(() {}),
        validator: (v) {
          final n = int.tryParse((v ?? '').trim());
          return (n == null || n <= 0) ? l.challengeTargetRequired : null;
        },
      ),
      if (_mode == ChallengeMode.count) ...[
        const SizedBox(height: 16),
        TextFormField(
          controller: _unit,
          decoration: InputDecoration(
            labelText: l.challengeUnitLabel,
            hintText: l.challengeUnitHint,
          ),
          onChanged: (_) => setState(() {}),
        ),
        const SizedBox(height: 20),
        Text(l.challengeStepLabel, style: theme.textTheme.labelLarge),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            for (final s in _steps)
              ChoiceChip(
                label: Text(lnum(context, s)),
                selected: _stepSize == s,
                onSelected: (_) => setState(() => _stepSize = s),
              ),
            ChoiceChip(
              label: Text(
                _steps.contains(_stepSize)
                    ? l.custom
                    : lnum(context, _stepSize),
              ),
              selected: !_steps.contains(_stepSize),
              onSelected: (_) async {
                final v = await showCustomNumberDialog(
                  context,
                  initial: _steps.contains(_stepSize) ? null : _stepSize,
                );
                if (v != null && mounted) setState(() => _stepSize = v);
              },
            ),
          ],
        ),
      ],
    ];
  }

  List<Widget> _timeChildren(AppLocalizations l) {
    final theme = Theme.of(context);
    return [
      Text(l.challengeWindowLabel, style: theme.textTheme.labelLarge),
      const SizedBox(height: 8),
      SegmentedButton<_WindowKind>(
        segments: [
          ButtonSegment(
            value: _WindowKind.duration,
            label: Text(l.challengeWindowDuration),
          ),
          ButtonSegment(
            value: _WindowKind.dates,
            label: Text(l.challengeWindowDates),
          ),
          ButtonSegment(
            value: _WindowKind.none,
            label: Text(l.challengeWindowNone),
          ),
        ],
        selected: {_window},
        onSelectionChanged: (s) => setState(() => _window = s.first),
      ),
      if (_window == _WindowKind.duration) ...[
        const SizedBox(height: 12),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            for (final d in _durations)
              ChoiceChip(
                label: Text(
                  localizeDigits(context, l.challengeDurationLabel(d)),
                ),
                selected: _durationDays == d,
                onSelected: (_) => setState(() => _durationDays = d),
              ),
            ChoiceChip(
              label: Text(
                _durations.contains(_durationDays)
                    ? l.custom
                    : localizeDigits(
                        context,
                        l.challengeDurationLabel(_durationDays),
                      ),
              ),
              selected: !_durations.contains(_durationDays),
              onSelected: (_) async {
                final v = await showCustomNumberDialog(
                  context,
                  initial: _durations.contains(_durationDays)
                      ? null
                      : _durationDays,
                );
                if (v != null && mounted) setState(() => _durationDays = v);
              },
            ),
          ],
        ),
      ],
      if (_window == _WindowKind.dates) ...[
        const SizedBox(height: 8),
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(l.challengeStartDate),
          trailing: Text(_formatDate(_startOrToday)),
          onTap: () => _pickDate(isStart: true),
        ),
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(l.challengeEndDate),
          trailing: Text(_formatDate(_end ?? _startOrToday)),
          onTap: () => _pickDate(isStart: false),
        ),
      ],
    ];
  }

  Widget _reminderRow(AppLocalizations l) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: const Icon(Icons.notifications_outlined),
      title: Text(l.reminder),
      subtitle: Text(
        _reminderTime == null
            ? l.reminderNone
            : localizeDigits(context, _reminderTime!.format(context)),
      ),
      trailing: _reminderTime == null
          ? null
          : IconButton(
              icon: const Icon(Icons.close),
              onPressed: () => setState(() => _reminderTime = null),
            ),
      onTap: () async {
        final picked = await showTimePicker(
          context: context,
          initialTime: _reminderTime ?? TimeOfDay.now(),
        );
        if (picked != null && mounted) {
          setState(() => _reminderTime = picked);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final theme = Theme.of(context);
    if (!_loaded) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(_existing == null ? l.newChallenge : l.editChallenge),
        actions: [TextButton(onPressed: _save, child: Text(l.save))],
      ),
      body: MaxWidthBody(
        child: Form(
          key: _formKey,
          child: ListView(
            padding: const EdgeInsetsDirectional.all(16),
            children: [
              _TemplateRow(onPicked: _applyTemplate, onBlank: _clearForm),
              ChallengeFormGroup(
                title: l.challengeGroupGoal,
                children: [
                  _titleRow(l),
                  const SizedBox(height: 16),
                  _categoryPicker(l),
                ],
              ),
              ChallengeFormGroup(
                title: l.challengeGroupCounts,
                children: _countsChildren(l),
              ),
              ChallengeFormGroup(
                title: l.challengeGroupTime,
                children: _timeChildren(l),
              ),
              ChallengeFormGroup(
                title: l.challengeGroupReminders,
                children: [_reminderRow(l)],
              ),
              Text(
                l.challengePreview.toUpperCase(),
                style: theme.textTheme.labelSmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                  letterSpacing: 1.0,
                ),
              ),
              const SizedBox(height: 8),
              ChallengePreviewCard(
                icon: _icon,
                title: _title.text.trim(),
                mode: _mode,
                target: int.tryParse(_target.text.trim()) ?? 0,
                unit: _unit.text.trim(),
                startDate: _startOrToday,
                endExclusive: _resolveEndExclusive(),
                today: ref.watch(currentMuhasabaDateProvider),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}

class _TemplateRow extends StatelessWidget {
  const _TemplateRow({required this.onPicked, required this.onBlank});

  final ValueChanged<ChallengeTemplate> onPicked;
  final VoidCallback onBlank;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l.challengeStartFromTemplate,
          style: Theme.of(context).textTheme.labelLarge,
        ),
        const SizedBox(height: 8),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ActionChip(
                avatar: const Icon(Icons.refresh, size: 18),
                label: Text(l.challengeTemplateBlank),
                onPressed: onBlank,
              ),
              for (final t in kChallengeTemplates) ...[
                const SizedBox(width: 8),
                ActionChip(
                  avatar: Text(t.icon, style: const TextStyle(fontSize: 15)),
                  label: Text(localizedChallengeTitle(t.title, l)),
                  onPressed: () => onPicked(t),
                ),
              ],
            ],
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
