import 'package:drift/drift.dart' show Value;
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/providers.dart';
import '../../app/widgets/max_width_body.dart';
import '../../data/db/database.dart';
import '../../domain/models/challenge.dart';
import '../../domain/utils/localized_number.dart';
import '../../l10n/app_localizations.dart';
import '../create_edit/widgets/emoji_picker.dart';
import 'challenge_providers.dart';

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
    if (row == null || !mounted) return;
    setState(() {
      _existing = row;
      _title.text = row.title;
      _target.text = row.target.toString();
      _unit.text = row.unit ?? '';
      _icon = row.icon;
      _mode = row.mode;
      _stepSize = row.stepSize;
      _start = row.startDate;
      if (row.endExclusive == null) {
        _window = _WindowKind.none;
      } else {
        _window = _WindowKind.dates;
        _end = row.endExclusive!.subtract(const Duration(days: 1));
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

  Future<void> _pickIcon() async {
    final picked = await showEmojiPicker(
      context,
      ref,
      current: _icon,
      allowNone: false,
    );
    if (picked != null) setState(() => _icon = picked);
  }

  Future<void> _pickDate({required bool isStart}) async {
    final base = isStart ? _startOrToday : (_end ?? _startOrToday);
    final picked = await showDatePicker(
      context: context,
      initialDate: base,
      firstDate: DateTime.utc(2020),
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
    final target = int.parse(_target.text.trim());
    final unit = _unit.text.trim().isEmpty ? null : _unit.text.trim();
    final endExclusive = _resolveEndExclusive();

    if (_existing != null) {
      await repo.update(
        _existing!.copyWith(
          title: _title.text.trim(),
          icon: _icon,
          mode: _mode,
          target: target,
          stepSize: _mode == ChallengeMode.days ? 1 : _stepSize,
          unit: Value(unit),
          startDate: _startOrToday,
          endExclusive: Value(endExclusive),
        ),
      );
    } else {
      await repo.create(
        title: _title.text.trim(),
        icon: _icon,
        mode: _mode,
        target: target,
        stepSize: _mode == ChallengeMode.days ? 1 : _stepSize,
        unit: unit,
        startDate: _startOrToday,
        endExclusive: endExclusive,
      );
      FirebaseAnalytics.instance.logEvent(
        name: 'challenge_created',
        parameters: {
          'mode': _mode == ChallengeMode.days ? 'days' : 'count',
          'window': _window.name,
        },
      );
    }
    await refreshChallengeNudges(ref);
    if (mounted) context.pop();
  }

  String _formatDate(DateTime date) {
    final locale = Localizations.localeOf(context).toString();
    return localizeDigits(
      context,
      safeDateFormat('MMM d, y', locale).format(date),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
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
              Row(
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
                      validator: (v) => (v == null || v.trim().isEmpty)
                          ? l.titleRequired
                          : null,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              Text(
                l.challengeModeLabel,
                style: Theme.of(context).textTheme.labelLarge,
              ),
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
                validator: (v) {
                  final n = int.tryParse((v ?? '').trim());
                  return (n == null || n <= 0)
                      ? l.challengeTargetRequired
                      : null;
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
                ),
                const SizedBox(height: 20),
                Text(
                  l.challengeStepLabel,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 8,
                  children: [
                    for (final s in _steps)
                      ChoiceChip(
                        label: Text(lnum(context, s)),
                        selected: _stepSize == s,
                        onSelected: (_) => setState(() => _stepSize = s),
                      ),
                  ],
                ),
              ],

              const SizedBox(height: 24),
              Text(
                l.challengeWindowLabel,
                style: Theme.of(context).textTheme.labelLarge,
              ),
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
                  children: [
                    for (final d in _durations)
                      ChoiceChip(
                        label: Text(
                          localizeDigits(context, l.challengeDurationLabel(d)),
                        ),
                        selected: _durationDays == d,
                        onSelected: (_) => setState(() => _durationDays = d),
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
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
