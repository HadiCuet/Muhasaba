import 'package:drift/drift.dart' show Value;
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import '../../l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/providers.dart';
import '../../data/db/database.dart';
import '../../domain/models/frequency.dart';
import '../../domain/services/reminder_scheduler.dart';
import 'amal_templates.dart';
import 'widgets/category_picker.dart';
import 'widgets/emoji_picker.dart';

/// Create or edit an amal. Pass `amalId = null` to create a new one, or an
/// existing id to edit. When editing, the form hydrates from the row before
/// the first paint. [prefill] pre-populates the form from a template.
class AmalFormScreen extends ConsumerStatefulWidget {
  const AmalFormScreen({super.key, this.amalId, this.prefill});

  final int? amalId;
  final AmalTemplate? prefill;

  @override
  ConsumerState<AmalFormScreen> createState() => _AmalFormScreenState();
}

class _AmalFormScreenState extends ConsumerState<AmalFormScreen> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();

  String? _icon;
  String? _category;
  bool _iconIsManual = false;
  Frequency _frequency = Frequency.daily;
  int _target = 1;
  int? _weeklyDay = DateTime.friday;
  int? _monthlyDate;
  bool _defaultChecked = true;
  TimeOfDay? _reminderTime;

  bool _loading = false;
  AmalRow? _existing;

  @override
  void initState() {
    super.initState();
    if (widget.amalId != null) {
      _loading = true;
      _hydrate();
    } else if (widget.prefill != null) {
      final t = widget.prefill!;
      _icon = t.icon;
      _iconIsManual = true;
      _titleController.text = t.title;
      _category = t.category;
      _frequency = t.frequency;
      _target = t.target;
    }
  }

  Future<void> _hydrate() async {
    final row = await ref
        .read(appDatabaseProvider)
        .amalDao
        .getById(widget.amalId!);
    if (!mounted) return;
    setState(() {
      _existing = row;
      if (row != null) {
        _titleController.text = row.title;
        _icon = row.icon;
        _iconIsManual = row.icon != null;
        _category = row.category;
        _frequency = row.frequency;
        _target = row.target;
        _weeklyDay = row.weeklyDay;
        _monthlyDate = row.monthlyDate;
        _defaultChecked = row.defaultChecked;
        if (row.reminderTime != null) {
          final parts = row.reminderTime!.split(':');
          _reminderTime = TimeOfDay(
            hour: int.parse(parts[0]),
            minute: int.parse(parts[1]),
          );
        }
      }
      _loading = false;
    });
  }

  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }

  Future<void> _pickIcon() async {
    final picked = await showEmojiPicker(context, ref, current: _icon);
    if (picked != null) {
      setState(() {
        _icon = picked.isEmpty ? null : picked;
        _iconIsManual = picked.isNotEmpty; // "None" resumes flowing
      });
    }
  }

  Future<void> _save() async {
    if (!_formKey.currentState!.validate()) return;
    final title = _titleController.text.trim();
    final permWarning = AppLocalizations.of(context).reminderPermissionWarning;
    final reminder = _reminderTime == null
        ? null
        : '${_reminderTime!.hour.toString().padLeft(2, '0')}:'
              '${_reminderTime!.minute.toString().padLeft(2, '0')}';

    final int amalId;
    if (_existing == null) {
      amalId = await ref
          .read(amalRepositoryProvider)
          .create(
            title: title,
            frequency: _frequency,
            target: _target,
            weeklyDay: _frequency == Frequency.weekly ? _weeklyDay : null,
            monthlyDate: _frequency == Frequency.monthly ? _monthlyDate : null,
            defaultChecked: _defaultChecked,
            reminderTime: reminder,
            icon: _icon,
            category: _category,
          );
      FirebaseAnalytics.instance.logEvent(
        name: 'amal_created',
        parameters: {
          'frequency': _frequency.name,
          'has_reminder': reminder != null ? 1 : 0,
          'category': ?_category,
        },
      );
    } else {
      await ref
          .read(appDatabaseProvider)
          .amalDao
          .updateAmal(
            _existing!.copyWith(
              title: title,
              frequency: _frequency,
              target: _target,
              weeklyDay: Value(
                _frequency == Frequency.weekly ? _weeklyDay : null,
              ),
              monthlyDate: Value(
                _frequency == Frequency.monthly ? _monthlyDate : null,
              ),
              defaultChecked: _defaultChecked,
              reminderTime: Value(reminder),
              icon: Value(_icon),
              category: Value(_category),
            ),
          );
      amalId = _existing!.id;
      FirebaseAnalytics.instance.logEvent(
        name: 'amal_edited',
        parameters: {
          'frequency': _frequency.name,
          'has_reminder': reminder != null ? 1 : 0,
          'category': ?_category,
        },
      );
    }

    // Refresh recent icons after saving.
    ref.invalidate(recentIconsProvider);

    // Schedule or cancel the OS-level notification to match the saved
    // reminder.
    final scheduler = ref.read(reminderSchedulerProvider);
    final parsed = parseReminderTime(reminder);
    final hadPreviousReminder = _existing?.reminderTime != null;
    String? permissionMessage;
    if (parsed != null) {
      final granted = await scheduler.requestPermissions();
      if (granted) {
        await scheduler.scheduleDaily(
          amalId: amalId,
          title: title,
          hour: parsed.hour,
          minute: parsed.minute,
        );
        FirebaseAnalytics.instance.logEvent(
          name: 'reminder_scheduled',
          parameters: {
            'hour': parsed.hour,
            'had_previous_reminder': hadPreviousReminder ? 1 : 0,
          },
        );
      } else {
        permissionMessage = permWarning;
      }
    } else {
      await scheduler.cancel(amalId);
      if (hadPreviousReminder) {
        FirebaseAnalytics.instance.logEvent(
          name: 'reminder_canceled',
          parameters: {'source': 'form_edit'},
        );
      }
    }

    if (!mounted) return;
    if (permissionMessage != null) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(permissionMessage)));
    }
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    if (_loading) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }
    final isEdit = _existing != null;
    final theme = Theme.of(context);
    final l = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(isEdit ? l.editAmal : l.newAmalTitle)),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
          child: FilledButton(
            onPressed: _save,
            style: FilledButton.styleFrom(
              minimumSize: const Size.fromHeight(48),
            ),
            child: Text(l.save),
          ),
        ),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
          children: [
            // ── Icon + Title row ───────────────────────────────────────
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: _pickIcon,
                  child: Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.surfaceContainerHighest,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    alignment: Alignment.center,
                    child: _icon != null
                        ? Text(_icon!, style: const TextStyle(fontSize: 28))
                        : Icon(
                            Icons.add_reaction_outlined,
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: TextFormField(
                    controller: _titleController,
                    decoration: InputDecoration(
                      labelText: l.titleLabel,
                      border: const OutlineInputBorder(),
                    ),
                    validator: (v) {
                      final s = v?.trim() ?? '';
                      if (s.isEmpty) return l.titleRequired;
                      if (s.length > 120) return l.titleTooLong;
                      return null;
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // ── Frequency ──────────────────────────────────────────────
            _FrequencySelector(
              value: _frequency,
              onChanged: (f) => setState(() => _frequency = f),
            ),
            const SizedBox(height: 16),

            // ── Category ───────────────────────────────────────────────
            Text(l.categoryLabel, style: theme.textTheme.labelLarge),
            const SizedBox(height: 8),
            CategoryPicker(
              selected: _category,
              onChanged: (c) => setState(() {
                _category = c;
                if (!_iconIsManual) {
                  if (c == null) {
                    _icon = null;
                  } else {
                    final cats = ref.read(categoriesProvider).value ?? const [];
                    _icon = cats
                        .cast<CategoryRow?>()
                        .firstWhere((x) => x?.name == c, orElse: () => null)
                        ?.icon;
                  }
                }
              }),
            ),
            const SizedBox(height: 16),

            // ── Target ─────────────────────────────────────────────────
            _TargetChips(
              value: _target,
              onChanged: (v) => setState(() => _target = v),
            ),

            if (_frequency == Frequency.weekly) ...[
              const SizedBox(height: 16),
              _WeeklyDayPicker(
                value: _weeklyDay,
                onChanged: (v) => setState(() => _weeklyDay = v),
              ),
            ],
            if (_frequency == Frequency.monthly) ...[
              const SizedBox(height: 16),
              _MonthlyDatePicker(
                value: _monthlyDate,
                onChanged: (v) => setState(() => _monthlyDate = v),
              ),
            ],
            const SizedBox(height: 16),
            SwitchListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(l.startPreChecked),
              subtitle: Text(l.startPreCheckedSubtitle),
              value: _defaultChecked,
              onChanged: (v) => setState(() => _defaultChecked = v),
            ),
            const SizedBox(height: 8),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const Icon(Icons.notifications_outlined),
              title: Text(l.reminder),
              subtitle: Text(
                _reminderTime == null
                    ? l.reminderNone
                    : _reminderTime!.format(context),
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
                if (picked != null) {
                  setState(() => _reminderTime = picked);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Frequency selector (unchanged)
// ---------------------------------------------------------------------------

class _FrequencySelector extends StatelessWidget {
  const _FrequencySelector({required this.value, required this.onChanged});

  final Frequency value;
  final ValueChanged<Frequency> onChanged;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(l.frequencyLabel, style: Theme.of(context).textTheme.labelLarge),
        const SizedBox(height: 8),
        SegmentedButton<Frequency>(
          segments: [
            ButtonSegment(
              value: Frequency.daily,
              label: Text(l.frequencyDaily),
            ),
            ButtonSegment(
              value: Frequency.weekly,
              label: Text(l.frequencyWeekly),
            ),
            ButtonSegment(
              value: Frequency.monthly,
              label: Text(l.frequencyMonthly),
            ),
          ],
          selected: {value},
          onSelectionChanged: (s) => onChanged(s.first),
        ),
      ],
    );
  }
}

// ---------------------------------------------------------------------------
// Target chips: preset values + custom text field
// ---------------------------------------------------------------------------

class _TargetChips extends StatefulWidget {
  const _TargetChips({required this.value, required this.onChanged});

  final int value;
  final ValueChanged<int> onChanged;

  @override
  State<_TargetChips> createState() => _TargetChipsState();
}

class _TargetChipsState extends State<_TargetChips> {
  final _controller = TextEditingController();
  static const _presets = [1, 3, 5, 7, 11, 33, 100];

  bool get _isCustom => !_presets.contains(widget.value);

  @override
  void initState() {
    super.initState();
    if (_isCustom && widget.value > 0) {
      _controller.text = '${widget.value}';
    }
  }

  @override
  void didUpdateWidget(_TargetChips old) {
    super.didUpdateWidget(old);
    if (widget.value != old.value) {
      if (!_isCustom) {
        _controller.clear();
      } else if (_controller.text != '${widget.value}') {
        _controller.text = '${widget.value}';
      }
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l = AppLocalizations.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(l.timesPerPeriod, style: theme.textTheme.labelLarge),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            for (final p in _presets)
              ChoiceChip(
                label: Text('$p'),
                selected: widget.value == p,
                onSelected: (_) {
                  _controller.clear();
                  widget.onChanged(p);
                },
              ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Text(l.custom, style: theme.textTheme.bodyMedium),
            const SizedBox(width: 12),
            SizedBox(
              width: 80,
              child: TextField(
                controller: _controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  isDense: true,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 8,
                  ),
                  hintText: _isCustom ? null : l.customTargetHint,
                ),
                onChanged: (v) {
                  final parsed = int.tryParse(v.trim());
                  if (parsed != null && parsed > 0) {
                    widget.onChanged(parsed);
                  }
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}

// ---------------------------------------------------------------------------
// Weekly day picker (unchanged)
// ---------------------------------------------------------------------------

class _WeeklyDayPicker extends StatelessWidget {
  const _WeeklyDayPicker({required this.value, required this.onChanged});

  final int? value;
  final ValueChanged<int?> onChanged;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final names = {
      DateTime.saturday: l.saturdayShort,
      DateTime.sunday: l.sundayShort,
      DateTime.monday: l.mondayShort,
      DateTime.tuesday: l.tuesdayShort,
      DateTime.wednesday: l.wednesdayShort,
      DateTime.thursday: l.thursdayShort,
      DateTime.friday: l.fridayShort,
    };
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(l.dayOfWeek, style: Theme.of(context).textTheme.labelLarge),
        const SizedBox(height: 4),
        Text(
          value == null ? l.anyDayHint : l.onlyDayHint(_fullName(value!, l)),
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          children: [
            ChoiceChip(
              label: Text(l.anyDay),
              selected: value == null,
              onSelected: (_) => onChanged(null),
            ),
            for (final entry in names.entries)
              ChoiceChip(
                label: Text(entry.value),
                selected: value == entry.key,
                onSelected: (_) => onChanged(entry.key),
              ),
          ],
        ),
      ],
    );
  }

  String _fullName(int d, AppLocalizations l) {
    final full = {
      DateTime.saturday: l.saturdayFull,
      DateTime.sunday: l.sundayFull,
      DateTime.monday: l.mondayFull,
      DateTime.tuesday: l.tuesdayFull,
      DateTime.wednesday: l.wednesdayFull,
      DateTime.thursday: l.thursdayFull,
      DateTime.friday: l.fridayFull,
    };
    return full[d] ?? '';
  }
}

// ---------------------------------------------------------------------------
// Monthly date picker (unchanged)
// ---------------------------------------------------------------------------

class _MonthlyDatePicker extends StatelessWidget {
  const _MonthlyDatePicker({required this.value, required this.onChanged});

  final int? value;
  final ValueChanged<int?> onChanged;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(l.dateOfMonth, style: Theme.of(context).textTheme.labelLarge),
        const SizedBox(height: 4),
        Text(
          value == null ? l.anyDateHint : l.onlyDateHint(_ordinal(value!)),
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            FilterChip(
              label: Text(l.anyDate),
              selected: value == null,
              onSelected: (_) => onChanged(null),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: DropdownButtonFormField<int?>(
                initialValue: value,
                isExpanded: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  isDense: true,
                ),
                items: [
                  DropdownMenuItem<int?>(value: null, child: Text(l.anyDate)),
                  for (var d = 1; d <= 31; d++)
                    DropdownMenuItem<int?>(value: d, child: Text(_ordinal(d))),
                ],
                onChanged: onChanged,
              ),
            ),
          ],
        ),
      ],
    );
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
}
