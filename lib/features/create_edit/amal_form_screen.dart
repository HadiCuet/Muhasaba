import 'package:drift/drift.dart' show Value;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/providers.dart';
import '../../data/db/database.dart';
import '../../domain/models/frequency.dart';
import '../../domain/services/reminder_scheduler.dart';

/// Create or edit an amal. Pass `amalId = null` to create a new one, or an
/// existing id to edit. When editing, the form hydrates from the row before
/// the first paint.
class AmalFormScreen extends ConsumerStatefulWidget {
  const AmalFormScreen({super.key, this.amalId});

  final int? amalId;

  @override
  ConsumerState<AmalFormScreen> createState() => _AmalFormScreenState();
}

class _AmalFormScreenState extends ConsumerState<AmalFormScreen> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();

  Frequency _frequency = Frequency.daily;
  int _target = 1;
  int? _weeklyDay;
  int? _monthlyDate;
  bool _defaultChecked = false;
  TimeOfDay? _reminderTime;

  bool _loading = false;
  AmalRow? _existing;

  @override
  void initState() {
    super.initState();
    if (widget.amalId != null) {
      _loading = true;
      _hydrate();
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

  Future<void> _save() async {
    if (!_formKey.currentState!.validate()) return;
    final title = _titleController.text.trim();
    final reminder = _reminderTime == null
        ? null
        : '${_reminderTime!.hour.toString().padLeft(2, '0')}:'
            '${_reminderTime!.minute.toString().padLeft(2, '0')}';

    final int amalId;
    if (_existing == null) {
      amalId = await ref.read(amalRepositoryProvider).create(
            title: title,
            frequency: _frequency,
            target: _target,
            weeklyDay: _frequency == Frequency.weekly ? _weeklyDay : null,
            monthlyDate:
                _frequency == Frequency.monthly ? _monthlyDate : null,
            defaultChecked: _defaultChecked,
            reminderTime: reminder,
          );
    } else {
      await ref.read(appDatabaseProvider).amalDao.updateAmal(
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
            ),
          );
      amalId = _existing!.id;
    }

    // Schedule or cancel the OS-level notification to match the saved
    // reminder. If the user enabled one, ask for permission first; on denial
    // the row still saves, but we skip scheduling and surface a banner.
    final scheduler = ref.read(reminderSchedulerProvider);
    final parsed = parseReminderTime(reminder);
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
      } else {
        permissionMessage =
            'Reminder saved, but notifications are not permitted. '
            'Enable them in system settings to get alerts.';
      }
    } else {
      await scheduler.cancel(amalId);
    }

    if (!mounted) return;
    if (permissionMessage != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(permissionMessage)),
      );
    }
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    if (_loading) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }
    final isEdit = _existing != null;
    return Scaffold(
      appBar: AppBar(
        title: Text(isEdit ? 'Edit amal' : 'New amal'),
        actions: [
          TextButton(
            onPressed: _save,
            child: const Text('Save'),
          ),
        ],
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            TextFormField(
              controller: _titleController,
              decoration: const InputDecoration(
                labelText: 'Title',
                border: OutlineInputBorder(),
              ),
              validator: (v) {
                final s = v?.trim() ?? '';
                if (s.isEmpty) return 'Title is required';
                if (s.length > 120) return 'Title is too long';
                return null;
              },
            ),
            const SizedBox(height: 16),
            _FrequencySelector(
              value: _frequency,
              onChanged: (f) => setState(() => _frequency = f),
            ),
            const SizedBox(height: 16),
            _TargetField(
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
              title: const Text('Start pre-checked'),
              subtitle: const Text(
                  'When a new period starts, this amal is marked complete by default until you uncheck it.'),
              value: _defaultChecked,
              onChanged: (v) => setState(() => _defaultChecked = v),
            ),
            const SizedBox(height: 8),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const Icon(Icons.notifications_outlined),
              title: const Text('Reminder'),
              subtitle: Text(
                _reminderTime == null
                    ? 'None'
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

class _FrequencySelector extends StatelessWidget {
  const _FrequencySelector({required this.value, required this.onChanged});

  final Frequency value;
  final ValueChanged<Frequency> onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Frequency', style: Theme.of(context).textTheme.labelLarge),
        const SizedBox(height: 8),
        SegmentedButton<Frequency>(
          segments: const [
            ButtonSegment(value: Frequency.daily, label: Text('Daily')),
            ButtonSegment(value: Frequency.weekly, label: Text('Weekly')),
            ButtonSegment(value: Frequency.monthly, label: Text('Monthly')),
          ],
          selected: {value},
          onSelectionChanged: (s) => onChanged(s.first),
        ),
      ],
    );
  }
}

class _TargetField extends StatelessWidget {
  const _TargetField({required this.value, required this.onChanged});

  final int value;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            'Times per period',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        IconButton(
          onPressed: value > 1 ? () => onChanged(value - 1) : null,
          icon: const Icon(Icons.remove_circle_outline),
        ),
        SizedBox(
          width: 40,
          child: Text(
            '$value',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        IconButton(
          onPressed: () => onChanged(value + 1),
          icon: const Icon(Icons.add_circle_outline),
        ),
      ],
    );
  }
}

class _WeeklyDayPicker extends StatelessWidget {
  const _WeeklyDayPicker({required this.value, required this.onChanged});

  final int? value;
  final ValueChanged<int?> onChanged;

  static const _names = {
    DateTime.saturday: 'Sat',
    DateTime.sunday: 'Sun',
    DateTime.monday: 'Mon',
    DateTime.tuesday: 'Tue',
    DateTime.wednesday: 'Wed',
    DateTime.thursday: 'Thu',
    DateTime.friday: 'Fri',
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Day of week', style: Theme.of(context).textTheme.labelLarge),
        const SizedBox(height: 4),
        Text(
          value == null
              ? 'Any day (hides after first check until next week)'
              : 'Only ${_fullName(value!)}',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          children: [
            ChoiceChip(
              label: const Text('Any'),
              selected: value == null,
              onSelected: (_) => onChanged(null),
            ),
            for (final entry in _names.entries)
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

  String _fullName(int d) {
    const full = {
      DateTime.saturday: 'Saturday',
      DateTime.sunday: 'Sunday',
      DateTime.monday: 'Monday',
      DateTime.tuesday: 'Tuesday',
      DateTime.wednesday: 'Wednesday',
      DateTime.thursday: 'Thursday',
      DateTime.friday: 'Friday',
    };
    return full[d] ?? '';
  }
}

class _MonthlyDatePicker extends StatelessWidget {
  const _MonthlyDatePicker({required this.value, required this.onChanged});

  final int? value;
  final ValueChanged<int?> onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Date of month', style: Theme.of(context).textTheme.labelLarge),
        const SizedBox(height: 4),
        Text(
          value == null
              ? 'Any date (hides after first check until next month)'
              : 'Only on the ${_ordinal(value!)}',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            FilterChip(
              label: const Text('Any'),
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
                  const DropdownMenuItem<int?>(
                    value: null,
                    child: Text('Any'),
                  ),
                  for (var d = 1; d <= 31; d++)
                    DropdownMenuItem<int?>(
                      value: d,
                      child: Text(_ordinal(d)),
                    ),
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
