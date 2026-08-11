import 'package:drift/drift.dart' show Value;
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import '../../l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/providers.dart';
import '../../app/widgets/max_width_body.dart';
import '../../data/db/database.dart';
import '../../domain/models/frequency.dart';
import '../../domain/services/reminder_scheduler.dart';
import '../../domain/utils/localized_amal_title.dart';
import '../../domain/utils/localized_number.dart';
import '../../domain/utils/monthly_dates.dart';
import '../../domain/utils/weekly_days.dart';
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
  Set<int> _weeklyDays = {DateTime.friday};
  Set<int> _monthlyDates = {1};
  int _periodTarget = 1;
  // Pinned = "on set days/dates". Kept as explicit flags rather than derived
  // from the sets, so toggling to "any day" and back restores the selection.
  bool _weeklyPinned = true;
  bool _monthlyPinned = true;
  bool _defaultChecked = true;
  TimeOfDay? _reminderTime;

  bool _loading = false;
  bool _titlePrefilled = false;
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
      _category = t.category;
      _frequency = t.frequency;
      _target = t.target;
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Localizations aren't available in initState, so the template title is
    // prefilled here instead. Once only: a re-run must not overwrite what the
    // user has since typed. Edit mode is _hydrate's job, not this.
    if (!_titlePrefilled && widget.amalId == null && widget.prefill != null) {
      _titlePrefilled = true;
      _titleController.text = localizedAmalTitle(
        widget.prefill!.title,
        AppLocalizations.of(context),
      );
    }
  }

  /// Reverses the localized display title back to the canonical English key
  /// we store. The field is prefilled with the localized rendering, so text
  /// the user never touched must round-trip to the original — otherwise
  /// merely opening the form and saving would "rename" a seeded amal into a
  /// hardcoded translation.
  String _canonicalTitle(String typed, AppLocalizations l) {
    final original =
        _existing?.title ??
        (widget.amalId == null ? widget.prefill?.title : null);
    if (original != null && typed == localizedAmalTitle(original, l)) {
      return original;
    }
    return typed;
  }

  bool get _pinnedForCurrentFrequency => switch (_frequency) {
    Frequency.daily => true,
    Frequency.weekly => _weeklyPinned,
    Frequency.monthly => _monthlyPinned,
  };

  int _periodTargetMaxFor(Frequency f) => f == Frequency.weekly ? 7 : 28;

  int get _periodTargetMax => _periodTargetMaxFor(_frequency);

  int get _periodTargetForSave =>
      _pinnedForCurrentFrequency ? 1 : _periodTarget.clamp(1, _periodTargetMax);

  Future<void> _hydrate() async {
    final row = await ref
        .read(appDatabaseProvider)
        .amalDao
        .getById(widget.amalId!);
    if (!mounted) return;
    setState(() {
      _existing = row;
      if (row != null) {
        _titleController.text = localizedAmalTitle(
          row.title,
          AppLocalizations.of(context),
        );
        _icon = row.icon;
        _iconIsManual = true;
        _category = row.category;
        _frequency = row.frequency;
        _target = row.target;
        final hydratedWeekly = parseWeeklyDays(row.weeklyDays);
        _weeklyPinned = row.frequency == Frequency.weekly
            ? hydratedWeekly.isNotEmpty
            : true;
        if (hydratedWeekly.isNotEmpty) _weeklyDays = hydratedWeekly;
        final hydratedMonthly = parseMonthlyDates(row.monthlyDates);
        _monthlyPinned = row.frequency == Frequency.monthly
            ? hydratedMonthly.isNotEmpty
            : true;
        if (hydratedMonthly.isNotEmpty) _monthlyDates = hydratedMonthly;
        _periodTarget = row.periodTarget.clamp(
          1,
          _periodTargetMaxFor(row.frequency),
        );
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
      await ref.read(amalRepositoryProvider).removeFromTracking(_existing!.id);
    } catch (e) {
      deleteError = e;
    }
    if (!mounted) return;
    if (deleteError != null) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(l.genericError)));
      return;
    }
    context.pop();
  }

  Future<void> _save() async {
    if (!_formKey.currentState!.validate()) return;
    final l = AppLocalizations.of(context);
    final title = _canonicalTitle(_titleController.text.trim(), l);
    final permWarning = l.reminderPermissionWarning;
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
            notificationTitle: localizedAmalTitle(title, l),
            frequency: _frequency,
            target: _target,
            weeklyDays: _frequency == Frequency.weekly && _weeklyPinned
                ? formatWeeklyDays(_weeklyDays)
                : null,
            monthlyDates: _frequency == Frequency.monthly && _monthlyPinned
                ? formatMonthlyDates(_monthlyDates)
                : null,
            periodTarget: _periodTargetForSave,
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
              weeklyDays: Value(
                _frequency == Frequency.weekly && _weeklyPinned
                    ? formatWeeklyDays(_weeklyDays)
                    : null,
              ),
              monthlyDates: Value(
                _frequency == Frequency.monthly && _monthlyPinned
                    ? formatMonthlyDates(_monthlyDates)
                    : null,
              ),
              periodTarget: _periodTargetForSave,
              defaultChecked: _defaultChecked,
              reminderTime: Value(reminder),
              icon: _icon,
              category: Value(_category),
            ),
            notificationTitle: localizedAmalTitle(title, l),
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
          title: localizedAmalTitle(title, l),
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
      // Centered + width-capped like the body, but height-safe for the
      // bottom-bar slot: SafeArea fixes the height, Align(heightFactor: 1)
      // centers the button horizontally without expanding vertically.
      bottomNavigationBar: SafeArea(
        child: Align(
          alignment: Alignment.center,
          heightFactor: 1,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 640),
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
        ),
      ),
      body: MaxWidthBody(
        child: GestureDetector(
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
                        child: Text(
                          _icon,
                          style: const TextStyle(fontSize: 28),
                        ),
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
                        final cats =
                            ref.read(categoriesProvider).value ?? const [];
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
                const SizedBox(height: 20),

                // ── Frequency ──────────────────────────────────────────────
                // Kept adjacent to the repeat mode, day/date picker and
                // preview below — they all reconfigure when this changes.
                _FrequencySelector(
                  value: _frequency,
                  onChanged: (f) => setState(() {
                    _frequency = f;
                    if (_periodTarget > _periodTargetMax) {
                      _periodTarget = _periodTargetMax;
                    }
                  }),
                ),

                if (_frequency != Frequency.daily) ...[
                  const SizedBox(height: 16),
                  _RepeatModeToggle(
                    pinned: _pinnedForCurrentFrequency,
                    pinnedLabel: _frequency == Frequency.weekly
                        ? l.onSetDays
                        : l.onSetDates,
                    onChanged: (v) => setState(() {
                      if (_frequency == Frequency.weekly) {
                        _weeklyPinned = v;
                      } else {
                        _monthlyPinned = v;
                      }
                    }),
                  ),
                ],
                if (_frequency == Frequency.weekly && _weeklyPinned) ...[
                  const SizedBox(height: 16),
                  _WeeklyDayPicker(
                    value: _weeklyDays,
                    onChanged: (v) => setState(() => _weeklyDays = v),
                  ),
                ],
                if (_frequency == Frequency.monthly && _monthlyPinned) ...[
                  const SizedBox(height: 16),
                  _MonthlyDatePicker(
                    value: _monthlyDates,
                    onChanged: (v) => setState(() => _monthlyDates = v),
                  ),
                ],
                if (!_pinnedForCurrentFrequency) ...[
                  const SizedBox(height: 16),
                  _PeriodTargetStepper(
                    value: _periodTarget,
                    max: _periodTargetMax,
                    label: _frequency == Frequency.weekly
                        ? l.daysPerWeekQuestion
                        : l.daysPerMonthQuestion,
                    onChanged: (v) => setState(() => _periodTarget = v),
                  ),
                ],
                const SizedBox(height: 16),
                _FrequencyPreview(
                  frequency: _frequency,
                  pinned: _pinnedForCurrentFrequency,
                  weeklyDays: _weeklyDays,
                  monthlyDates: _monthlyDates,
                  periodTarget: _periodTarget,
                ),
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
                        : localizeDigits(
                            context,
                            _reminderTime!.format(context),
                          ),
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
      builder: (_) =>
          _CustomTargetDialog(initial: _isCustom ? widget.value : null),
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
                label: Text(lnum(context, p)),
                selected: widget.value == p,
                showCheckmark: false,
                onSelected: (_) => widget.onChanged(p),
              ),
            // Trailing custom chip — shows the custom value when one is set
            // (selected, tap to edit), else "+ Custom" action chip to enter
            // one. Mirrors the "+ New" pattern in CategoryPicker.
            if (_isCustom)
              ChoiceChip(
                label: Text(lnum(context, widget.value)),
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

String _weekdayFullName(int d, AppLocalizations l) => switch (d) {
  DateTime.saturday => l.saturdayFull,
  DateTime.sunday => l.sundayFull,
  DateTime.monday => l.mondayFull,
  DateTime.tuesday => l.tuesdayFull,
  DateTime.wednesday => l.wednesdayFull,
  DateTime.thursday => l.thursdayFull,
  DateTime.friday => l.fridayFull,
  _ => '',
};

class _WeeklyDayPicker extends StatelessWidget {
  const _WeeklyDayPicker({required this.value, required this.onChanged});

  final Set<int> value;
  final ValueChanged<Set<int>> onChanged;

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
    return FormField<Set<int>>(
      initialValue: value,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (_) => value.isEmpty ? l.pickAtLeastOneDay : null,
      builder: (state) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(l.dayOfWeek, style: Theme.of(context).textTheme.labelLarge),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            children: [
              for (final entry in names.entries)
                FilterChip(
                  label: Text(entry.value),
                  selected: value.contains(entry.key),
                  onSelected: (sel) {
                    final next = {...value};
                    if (sel) {
                      next.add(entry.key);
                    } else {
                      next.remove(entry.key);
                    }
                    onChanged(next);
                    state.didChange(next);
                  },
                ),
            ],
          ),
          if (state.hasError) ...[
            const SizedBox(height: 6),
            Text(
              state.errorText!,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Theme.of(context).colorScheme.error,
              ),
            ),
          ],
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Monthly date picker
// ---------------------------------------------------------------------------

class _MonthlyDatePicker extends StatelessWidget {
  const _MonthlyDatePicker({required this.value, required this.onChanged});

  final Set<int> value;
  final ValueChanged<Set<int>> onChanged;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final theme = Theme.of(context);
    return FormField<Set<int>>(
      initialValue: value,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (_) => value.isEmpty ? l.pickAtLeastOneDate : null,
      builder: (state) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(l.datesOfMonth, style: theme.textTheme.labelLarge),
          const SizedBox(height: 8),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 7,
              mainAxisSpacing: 6,
              crossAxisSpacing: 6,
            ),
            itemCount: 31,
            itemBuilder: (context, i) {
              final d = i + 1;
              final selected = value.contains(d);
              return InkWell(
                customBorder: const CircleBorder(),
                onTap: () {
                  final next = {...value};
                  if (selected) {
                    next.remove(d);
                  } else {
                    next.add(d);
                  }
                  onChanged(next);
                  state.didChange(next);
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: selected
                        ? theme.colorScheme.primary
                        : theme.colorScheme.surfaceContainerHighest,
                  ),
                  child: Text(
                    lnum(context, d),
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: selected
                          ? theme.colorScheme.onPrimary
                          : theme.colorScheme.onSurfaceVariant,
                      fontWeight: selected ? FontWeight.bold : null,
                    ),
                  ),
                ),
              );
            },
          ),
          if (state.hasError) ...[
            const SizedBox(height: 6),
            Text(
              state.errorText!,
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.error,
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _RepeatModeToggle extends StatelessWidget {
  const _RepeatModeToggle({
    required this.pinned,
    required this.pinnedLabel,
    required this.onChanged,
  });

  final bool pinned;
  final String pinnedLabel;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(l.repeatMode, style: Theme.of(context).textTheme.labelLarge),
        const SizedBox(height: 8),
        SegmentedButton<bool>(
          segments: [
            ButtonSegment(value: true, label: Text(pinnedLabel)),
            ButtonSegment(value: false, label: Text(l.anyDayMode)),
          ],
          selected: {pinned},
          showSelectedIcon: false,
          onSelectionChanged: (s) => onChanged(s.first),
        ),
      ],
    );
  }
}

class _PeriodTargetStepper extends StatelessWidget {
  const _PeriodTargetStepper({
    required this.value,
    required this.max,
    required this.label,
    required this.onChanged,
  });

  final int value;
  final int max;
  final String label;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: theme.textTheme.labelLarge),
        const SizedBox(height: 8),
        Row(
          children: [
            IconButton.outlined(
              onPressed: value > 1 ? () => onChanged(value - 1) : null,
              icon: const Icon(Icons.remove),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 16, end: 16),
              child: Text(
                lnum(context, value),
                style: theme.textTheme.titleLarge,
              ),
            ),
            IconButton.outlined(
              onPressed: value < max ? () => onChanged(value + 1) : null,
              icon: const Icon(Icons.add),
            ),
          ],
        ),
      ],
    );
  }
}

class _FrequencyPreview extends StatelessWidget {
  const _FrequencyPreview({
    required this.frequency,
    required this.pinned,
    required this.weeklyDays,
    required this.monthlyDates,
    required this.periodTarget,
  });

  final Frequency frequency;
  final bool pinned;
  final Set<int> weeklyDays;
  final Set<int> monthlyDates;
  final int periodTarget;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final text = switch (frequency) {
      Frequency.daily => l.previewDaily,
      Frequency.weekly =>
        !pinned
            ? l.previewWeeklyAny(periodTarget)
            : weeklyDays.isEmpty
            ? l.pickAtLeastOneDay
            : l.previewWeeklyDays(
                (weeklyDays.toList()..sort())
                    .map((d) => _weekdayFullName(d, l))
                    .join(', '),
              ),
      Frequency.monthly =>
        !pinned
            ? l.previewMonthlyAny(periodTarget)
            : monthlyDates.isEmpty
            ? l.pickAtLeastOneDate
            : l.previewMonthlyDates(
                monthlyDates.length,
                (monthlyDates.toList()..sort())
                    .map((d) => lnum(context, d))
                    .join(', '),
              ),
    };
    return Container(
      width: double.infinity,
      padding: const EdgeInsetsDirectional.only(
        start: 14,
        end: 14,
        top: 12,
        bottom: 12,
      ),
      decoration: BoxDecoration(
        color: theme.colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.repeat,
            size: 18,
            color: theme.colorScheme.onPrimaryContainer,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onPrimaryContainer,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
