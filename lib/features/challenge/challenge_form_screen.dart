import 'package:drift/drift.dart' show Value;
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/providers.dart';
import '../../app/theme.dart';
import '../../app/widgets/keyboard_dismiss_bar.dart';
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

/// How the window is expressed. [exact] mirrors the day target, so a streak
/// kept every day carries one number rather than two that must agree; it is
/// offered for [ChallengeMode.days] only.
enum _Deadline { exact, within, byDate, none }

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
  final _amount = TextEditingController();
  final _unit = TextEditingController();
  final _amountFocus = FocusNode();

  String _icon = '🚩';
  ChallengeMode _mode = ChallengeMode.count;
  _Deadline _deadline = _Deadline.within;

  /// The streak target. Kept apart from [_amount] so switching shape does not
  /// reinterpret "1000 salawat" as 1000 days.
  int _dayTarget = 30;
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

  static const _dayCounts = [7, 10, 30, 40, 90];
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
    _amount.dispose();
    _amountFocus.dispose();
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
      _unit.text = row.unit ?? '';
      _icon = row.icon;
      _mode = row.mode;
      _stepSize = row.stepSize;
      _start = row.startDate;
      _category = row.category;
      _iconIsManual = true;
      if (row.mode == ChallengeMode.days) {
        _dayTarget = row.target;
      } else {
        _amount.text = row.target.toString();
      }
      final t = parseReminderTime(row.reminderTime);
      _reminderTime = t == null
          ? null
          : TimeOfDay(hour: t.hour, minute: t.minute);
      final end = row.endExclusive;
      if (end == null) {
        _deadline = _Deadline.none;
      } else {
        _durationDays = end.difference(row.startDate).inDays;
        _end = end.subtract(const Duration(days: 1));
        _deadline =
            row.mode == ChallengeMode.days && _durationDays == row.target
            ? _Deadline.exact
            : _Deadline.within;
      }
      _loaded = true;
    });
  }

  DateTime get _startOrToday => _start ?? ref.read(currentMuhasabaDateProvider);

  int get _target => _mode == ChallengeMode.days
      ? _dayTarget
      : (int.tryParse(_amount.text.trim()) ?? 0);

  DateTime? _resolveEndExclusive() {
    return switch (_deadline) {
      _Deadline.none => null,
      _Deadline.exact => _startOrToday.add(Duration(days: _dayTarget)),
      _Deadline.within => _startOrToday.add(Duration(days: _durationDays)),
      _Deadline.byDate => (_end ?? _startOrToday).add(const Duration(days: 1)),
    };
  }

  int? get _windowDays =>
      _resolveEndExclusive()?.difference(_startOrToday).inDays;

  /// A streak can only ever log one a day, so a target past the window's length
  /// is unreachable however hard the user tries.
  bool get _tooTight {
    final window = _windowDays;
    return _mode == ChallengeMode.days && window != null && _dayTarget > window;
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

  /// The shortest offered window that is genuinely longer than the streak
  /// target, so "a longer window" never lands on one that cannot hold it.
  int get _seededLongerWindow {
    for (final d in _dayCounts) {
      if (d > _dayTarget) return d;
    }
    return _dayTarget + 7;
  }

  void _setMode(ChallengeMode mode) {
    setState(() {
      _mode = mode;
      if (mode == ChallengeMode.count) {
        if (_deadline == _Deadline.exact) {
          _durationDays = _dayTarget;
          _deadline = _Deadline.within;
        }
        return;
      }
      if (_deadline == _Deadline.byDate) {
        _durationDays = _windowDays ?? _durationDays;
        _deadline = _Deadline.within;
      }
      // A count challenge's window says nothing about how many days a streak
      // needs; matching the target is the only default that always holds.
      if (_deadline == _Deadline.within && _durationDays <= _dayTarget) {
        _deadline = _Deadline.exact;
      }
    });
  }

  void _setDeadline(_Deadline deadline) {
    setState(() {
      if (deadline == _Deadline.byDate) {
        final span = _windowDays ?? _durationDays;
        _end ??= _startOrToday.add(Duration(days: span - 1));
      }
      if (deadline == _Deadline.within &&
          _mode == ChallengeMode.days &&
          _durationDays <= _dayTarget) {
        _durationDays = _seededLongerWindow;
      }
      _deadline = deadline;
    });
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
      _unit.text = t.unit ?? '';
      _stepSize = t.stepSize;
      _category = t.category;
      if (t.mode == ChallengeMode.days) {
        _dayTarget = t.target;
        _amount.clear();
      } else {
        _amount.text = t.target.toString();
      }
      final days = t.durationDays;
      if (days == null) {
        _deadline = _Deadline.none;
      } else if (t.mode == ChallengeMode.days && days == t.target) {
        _deadline = _Deadline.exact;
      } else {
        _durationDays = days;
        _deadline = _Deadline.within;
      }
    });
  }

  void _clearForm() {
    setState(() {
      _icon = '🚩';
      _iconIsManual = false;
      _templateTitle = null;
      _title.clear();
      _amount.clear();
      _unit.clear();
      _mode = ChallengeMode.count;
      _stepSize = 1;
      _category = null;
      _reminderTime = null;
      _deadline = _Deadline.within;
      _dayTarget = 30;
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
    final l = AppLocalizations.of(context);
    if (_tooTight) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            l.challengeTooTight(
              lnum(context, _dayTarget),
              lnum(context, _windowDays!),
            ),
          ),
        ),
      );
      return;
    }
    final repo = ref.read(challengeRepositoryProvider);
    final title = _titleToStore;
    final target = _target;
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
          'window': _deadline.name,
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

  List<Widget> _shapeChildren(AppLocalizations l) {
    return [
      Text(
        l.challengeShapeQuestion,
        style: Theme.of(context).textTheme.labelLarge,
      ),
      const SizedBox(height: 10),
      _ShapeCard(
        icon: '📿',
        title: l.challengeShapeTotal,
        body: l.challengeShapeTotalBody,
        selected: _mode == ChallengeMode.count,
        onTap: () => _setMode(ChallengeMode.count),
      ),
      const SizedBox(height: 8),
      _ShapeCard(
        icon: '🌙',
        title: l.challengeShapeStreak,
        body: l.challengeShapeStreakBody,
        selected: _mode == ChallengeMode.days,
        onTap: () => _setMode(ChallengeMode.days),
      ),
    ];
  }

  Widget _segmentLabel(String text) => Text(
    text,
    textAlign: TextAlign.center,
    maxLines: 2,
    overflow: TextOverflow.ellipsis,
  );

  Widget _numberChips({
    required List<int> values,
    required int selected,
    required String Function(int) label,
    required ValueChanged<int> onPick,
  }) {
    final l = AppLocalizations.of(context);
    final isPreset = values.contains(selected);
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        for (final v in values)
          ChoiceChip(
            label: Text(label(v)),
            selected: selected == v,
            onSelected: (_) => onPick(v),
          ),
        ChoiceChip(
          label: Text(isPreset ? l.custom : label(selected)),
          selected: !isPreset,
          onSelected: (_) async {
            final picked = await showCustomNumberDialog(
              context,
              initial: isPreset ? null : selected,
            );
            if (picked != null && mounted) onPick(picked);
          },
        ),
      ],
    );
  }

  List<Widget> _streakPlan(AppLocalizations l, ThemeData theme) {
    return [
      Text(l.challengeHowManyDays, style: theme.textTheme.labelLarge),
      const SizedBox(height: 8),
      _numberChips(
        values: _dayCounts,
        selected: _dayTarget,
        label: (n) => lnum(context, n),
        onPick: (n) => setState(() {
          _dayTarget = n;
          if (_deadline == _Deadline.within && _durationDays <= _dayTarget) {
            _durationDays = _seededLongerWindow;
          }
        }),
      ),
      const SizedBox(height: 20),
      Text(l.challengeSpreadOver, style: theme.textTheme.labelLarge),
      const SizedBox(height: 8),
      SegmentedButton<_Deadline>(
        showSelectedIcon: false,
        segments: [
          ButtonSegment(
            value: _Deadline.exact,
            label: _segmentLabel(l.challengeSpreadEveryDay),
          ),
          ButtonSegment(
            value: _Deadline.within,
            label: _segmentLabel(l.challengeSpreadLonger),
          ),
          ButtonSegment(
            value: _Deadline.none,
            label: _segmentLabel(l.challengeNoDeadline),
          ),
        ],
        selected: {
          _deadline == _Deadline.byDate ? _Deadline.within : _deadline,
        },
        onSelectionChanged: (s) => _setDeadline(s.first),
      ),
      if (_deadline == _Deadline.within) ...[
        const SizedBox(height: 12),
        _numberChips(
          values: _dayCounts.where((d) => d > _dayTarget).toList(),
          selected: _durationDays,
          label: (n) => localizeDigits(context, l.challengeDurationLabel(n)),
          onPick: (n) => setState(() => _durationDays = n),
        ),
      ],
    ];
  }

  List<Widget> _totalPlan(AppLocalizations l, ThemeData theme) {
    return [
      Text(l.challengeReachHowMuch, style: theme.textTheme.labelLarge),
      const SizedBox(height: 12),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: KeyboardDismissBar(
              focusNode: _amountFocus,
              child: TextFormField(
                controller: _amount,
                focusNode: _amountFocus,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: l.challengeTargetLabel,
                  errorMaxLines: 2,
                ),
                onChanged: (_) => setState(() {}),
                validator: (v) {
                  final n = int.tryParse((v ?? '').trim());
                  return (n == null || n <= 0)
                      ? l.challengeTargetRequired
                      : null;
                },
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            flex: 3,
            child: TextFormField(
              controller: _unit,
              decoration: InputDecoration(
                labelText: l.challengeUnitLabel,
                hintText: l.challengeUnitHint,
              ),
              onChanged: (_) => setState(() {}),
            ),
          ),
        ],
      ),
      const SizedBox(height: 20),
      Text(l.challengeByWhen, style: theme.textTheme.labelLarge),
      const SizedBox(height: 8),
      SegmentedButton<_Deadline>(
        showSelectedIcon: false,
        segments: [
          ButtonSegment(
            value: _Deadline.within,
            label: _segmentLabel(l.challengeWindowDuration),
          ),
          ButtonSegment(
            value: _Deadline.byDate,
            label: _segmentLabel(l.challengeByDate),
          ),
          ButtonSegment(
            value: _Deadline.none,
            label: _segmentLabel(l.challengeNoDeadline),
          ),
        ],
        selected: {_deadline == _Deadline.exact ? _Deadline.within : _deadline},
        onSelectionChanged: (s) => _setDeadline(s.first),
      ),
      if (_deadline == _Deadline.within) ...[
        const SizedBox(height: 12),
        _numberChips(
          values: _dayCounts,
          selected: _durationDays,
          label: (n) => localizeDigits(context, l.challengeDurationLabel(n)),
          onPick: (n) => setState(() => _durationDays = n),
        ),
      ],
      if (_deadline == _Deadline.byDate)
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(l.challengeEndDate),
          trailing: Text(_formatDate(_end ?? _startOrToday)),
          onTap: () => _pickDate(isStart: false),
        ),
      const SizedBox(height: 20),
      Text(l.challengeOneTapAdds, style: theme.textTheme.labelLarge),
      const SizedBox(height: 8),
      _numberChips(
        values: _steps,
        selected: _stepSize,
        label: (n) => '+${lnum(context, n)}',
        onPick: (n) => setState(() => _stepSize = n),
      ),
    ];
  }

  /// The window the form currently describes, spelled out in dates and pace so
  /// neither has to be inferred from the controls above.
  String _planSummary(AppLocalizations l) {
    final start = _formatDate(_startOrToday);
    final end = _resolveEndExclusive();
    if (end == null) return l.challengePlanOpen(start);
    final last = _formatDate(end.subtract(const Duration(days: 1)));
    final window = end.difference(_startOrToday).inDays;
    if (_mode == ChallengeMode.days) {
      if (_tooTight) return l.challengePlanRange(start, last);
      if (_dayTarget >= window) return l.challengePlanExact(start, last);
      return l.challengePlanSlack(
        start,
        last,
        lnum(context, _dayTarget),
        lnum(context, window),
        lnum(context, window - _dayTarget),
      );
    }
    if (_target <= 0) return l.challengePlanRange(start, last);
    return l.challengePlanRate(
      start,
      last,
      lnum(context, (_target / window).ceil()),
    );
  }

  Widget _noticeRow(
    ThemeData theme, {
    required IconData icon,
    required String text,
    required Color background,
    required Color foreground,
  }) {
    return Container(
      margin: const EdgeInsetsDirectional.only(top: 8),
      padding: const EdgeInsetsDirectional.symmetric(
        horizontal: 10,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 16, color: foreground),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: theme.textTheme.bodySmall?.copyWith(color: foreground),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _planChildren(AppLocalizations l) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    return [
      if (_mode == ChallengeMode.days)
        ..._streakPlan(l, theme)
      else
        ..._totalPlan(l, theme),
      const SizedBox(height: 4),
      ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(l.challengeStartDate),
        trailing: Text(_formatDate(_startOrToday)),
        onTap: () => _pickDate(isStart: true),
      ),
      _noticeRow(
        theme,
        icon: Icons.event_outlined,
        text: _planSummary(l),
        background: scheme.surfaceContainerHighest,
        foreground: scheme.onSurfaceVariant,
      ),
      if (_tooTight)
        _noticeRow(
          theme,
          icon: Icons.warning_amber_rounded,
          text: l.challengeTooTight(
            lnum(context, _dayTarget),
            lnum(context, _windowDays!),
          ),
          background: scheme.behindContainer,
          foreground: scheme.onBehindContainer,
        ),
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
                title: l.challengeGroupShape,
                children: _shapeChildren(l),
              ),
              ChallengeFormGroup(
                title: l.challengeGroupPlan,
                children: _planChildren(l),
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
                target: _target,
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

/// One of the two challenge shapes, with an example line — the distinction
/// between a running total and a daily streak is what the rest of the form
/// hangs off, and a segmented button has no room to explain it.
class _ShapeCard extends StatelessWidget {
  const _ShapeCard({
    required this.icon,
    required this.title,
    required this.body,
    required this.selected,
    required this.onTap,
  });

  final String icon;
  final String title;
  final String body;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: EdgeInsetsDirectional.all(selected ? 10 : 11),
        decoration: BoxDecoration(
          color: selected ? scheme.primary.withValues(alpha: 0.06) : null,
          border: Border.all(
            color: selected ? scheme.primary : scheme.outlineVariant,
            width: selected ? 2 : 1,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(icon, style: const TextStyle(fontSize: 17)),
            const SizedBox(width: 9),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: theme.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    body,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: scheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
          ],
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
