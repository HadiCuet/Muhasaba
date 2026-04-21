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

  // Default ⭐ for new blank amals; overwritten by hydrate (edit) or prefill
  // (template). Since v4 of the schema, every amal has a non-null icon.
  String _icon = '⭐';
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
        _iconIsManual = true;
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
    final picked = await showEmojiPicker(
      context,
      ref,
      current: _icon,
      allowNone: false,
    );
    if (picked != null && picked.isNotEmpty) {
      setState(() {
        _icon = picked;
        _iconIsManual = true;
      });
    }
  }

  Future<bool> _confirmDelete(AppLocalizations l) async {
    final title = _titleController.text.trim().isEmpty
        ? '—'
        : _titleController.text.trim();
    return await showDialog<bool>(
          context: context,
          builder: (ctx) => AlertDialog(
            title: Text(l.deleteAmalConfirmTitle),
            content: Text(l.deleteAmalConfirmBody(title)),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(ctx).pop(false),
                child: Text(l.cancel),
              ),
              FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: Theme.of(ctx).colorScheme.error,
                ),
                onPressed: () => Navigator.of(ctx).pop(true),
                child: Text(l.remove),
              ),
            ],
          ),
        ) ??
        false;
  }

  Future<void> _deleteAmal() async {
    final l = AppLocalizations.of(context);
    final confirmed = await _confirmDelete(l);
    if (!confirmed || !mounted) return;
    Object? deleteError;
    try {
      await ref
          .read(amalRepositoryProvider)
          .removeFromTracking(_existing!.id);
    } catch (e) {
      deleteError = e;
    }
    if (!mounted) return;
    if (deleteError != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(l.genericError)),
      );
      return;
    }
    context.pop();
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
          .read(amalRepositoryProvider)
          .update(
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
              icon: _icon,
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
      appBar: AppBar(
        title: Text(isEdit ? l.editAmal : l.newAmalTitle),
        actions: [
          if (isEdit)
            IconButton(
              icon: const Icon(Icons.delete_outline),
              color: theme.colorScheme.error,
              onPressed: _deleteAmal,
            ),
        ],
      ),
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
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => FocusScope.of(context).unfocus(),
        child: Form(
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
                    child: Text(_icon, style: const TextStyle(fontSize: 28)),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: TextFormField(
                    controller: _titleController,
                    textInputAction: TextInputAction.done,
                    onFieldSubmitted: (_) =>
                        FocusScope.of(context).unfocus(),
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
                    _icon = '⭐';
                  } else {
                    final cats = ref.read(categoriesProvider).value ?? const [];
                    final categoryIcon = cats
                        .cast<CategoryRow?>()
                        .firstWhere((x) => x?.name == c, orElse: () => null)
                        ?.icon;
                    _icon =
                        (categoryIcon != null && categoryIcon.isNotEmpty)
                        ? categoryIcon
                        : '⭐';
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
  static const _presets = [1, 3, 5, 7, 11, 33, 100];

  bool get _isCustom => !_presets.contains(widget.value);

  Future<void> _editCustom() async {
    final result = await showDialog<int>(
      context: context,
      builder: (_) => _CustomTargetDialog(
        initial: _isCustom ? widget.value : null,
      ),
    );
    if (result != null && result > 0) {
      widget.onChanged(result);
    }
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
                showCheckmark: false,
                onSelected: (_) => widget.onChanged(p),
              ),
            // Trailing custom chip — shows the custom value when one is set
            // (selected, tap to edit), else "+ Custom" action chip to enter
            // one. Mirrors the "+ New" pattern in CategoryPicker.
            if (_isCustom)
              ChoiceChip(
                label: Text('${widget.value}'),
                selected: true,
                showCheckmark: false,
                onSelected: (_) => _editCustom(),
              )
            else
              ActionChip(
                avatar: const Icon(Icons.add, size: 18),
                label: Text(l.custom),
                onPressed: _editCustom,
              ),
          ],
        ),
      ],
    );
  }
}

/// Modal dialog for entering a custom target count. Returns the parsed
/// positive integer on Save, or `null` on Cancel / invalid input.
class _CustomTargetDialog extends StatefulWidget {
  const _CustomTargetDialog({this.initial});

  final int? initial;

  @override
  State<_CustomTargetDialog> createState() => _CustomTargetDialogState();
}

class _CustomTargetDialogState extends State<_CustomTargetDialog> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(
      text: widget.initial != null ? '${widget.initial}' : '',
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _submit() {
    final parsed = int.tryParse(_controller.text.trim());
    if (parsed != null && parsed > 0) {
      Navigator.of(context).pop(parsed);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    return AlertDialog(
      title: Text(l.custom),
      content: TextField(
        controller: _controller,
        keyboardType: TextInputType.number,
        autofocus: true,
        decoration: InputDecoration(
          hintText: l.customTargetHint,
          border: const OutlineInputBorder(),
        ),
        onSubmitted: (_) => _submit(),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(l.cancel),
        ),
        FilledButton(onPressed: _submit, child: Text(l.save)),
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
