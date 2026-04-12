import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../domain/models/frequency.dart';
import '../../../domain/services/today_builder.dart';
import 'count_stepper.dart';

/// Single amal row rendered as a tappable card.
///
/// Gesture mapping:
///   - **Tap** anywhere → toggle completion (target=1: 0↔1, target>1: 0↔target)
///   - **Double-tap** → navigate to edit form
///   - **Long press** → navigate to edit form (alternative for accessibility)
///   - **Swipe left** → handled by the parent via `Dismissible`
///
/// Visual feedback:
///   - Card background tints progressively from surface → primaryContainer
///     based on `progress / target`. For target=1 it's all-or-nothing; for
///     count-based amal the tint deepens with each increment.
///   - Notes expand inline (no popup dialog).
class AmalRowTile extends StatefulWidget {
  const AmalRowTile({
    super.key,
    required this.row,
    required this.onProgressChanged,
    required this.onRemove,
    required this.onEdit,
    required this.onNoteChanged,
    this.streak,
  });

  final TodayRow row;

  /// Called with the new progress value (already clamped to [0, target]).
  final ValueChanged<int> onProgressChanged;

  /// Triggered by swipe-to-delete. Parent should show the remove sheet.
  final VoidCallback onRemove;

  /// Triggered by double-tap or long-press. Parent should navigate to edit.
  final VoidCallback onEdit;

  /// Called when the user saves or clears a note for this completion.
  final ValueChanged<String?> onNoteChanged;

  /// Current streak for this amal. Shown as a badge when >= 2.
  final int? streak;

  @override
  State<AmalRowTile> createState() => _AmalRowTileState();
}

class _AmalRowTileState extends State<AmalRowTile> {
  bool _noteExpanded = false;
  late TextEditingController _noteController;

  @override
  void initState() {
    super.initState();
    _noteController = TextEditingController(text: widget.row.note ?? '');
  }

  @override
  void didUpdateWidget(AmalRowTile oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Sync controller when note changes externally and we're not editing.
    if (!_noteExpanded && widget.row.note != oldWidget.row.note) {
      _noteController.text = widget.row.note ?? '';
    }
  }

  @override
  void dispose() {
    _noteController.dispose();
    super.dispose();
  }

  // ---------------------------------------------------------------------------
  // Actions
  // ---------------------------------------------------------------------------

  void _toggleCompletion() {
    final row = widget.row;
    final wasDone = row.isCompleted;
    final newProgress = wasDone ? 0 : row.amal.target;
    if (!wasDone) {
      HapticFeedback.mediumImpact();
    } else {
      HapticFeedback.selectionClick();
    }
    widget.onProgressChanged(newProgress);
  }

  void _handleStepperProgress(int newProgress) {
    final row = widget.row;
    final wasDone = row.isCompleted;
    final willBeDone = newProgress >= row.amal.target;
    if (!wasDone && willBeDone) {
      HapticFeedback.mediumImpact();
    } else {
      HapticFeedback.selectionClick();
    }
    widget.onProgressChanged(newProgress);
  }

  void _expandNote() {
    if (!mounted) return;
    _noteController.text = widget.row.note ?? '';
    setState(() => _noteExpanded = true);
  }

  void _collapseNote() {
    setState(() => _noteExpanded = false);
  }

  void _saveNote() {
    final text = _noteController.text.trim();
    widget.onNoteChanged(text.isEmpty ? null : text);
    _collapseNote();
  }

  void _clearNote() {
    widget.onNoteChanged(null);
    _collapseNote();
  }

  // ---------------------------------------------------------------------------
  // Build
  // ---------------------------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    final row = widget.row;
    final amal = row.amal;
    final theme = Theme.of(context);
    final isDone = row.isCompleted;

    // Progressive tint: lerp surface → primaryContainer by progress ratio.
    final progress01 = amal.target > 0
        ? (row.progress / amal.target).clamp(0.0, 1.0)
        : 0.0;
    final cardColor = Color.lerp(
      theme.colorScheme.surface,
      theme.colorScheme.primaryContainer,
      progress01,
    )!;
    final borderColor = Color.lerp(
      theme.colorScheme.outlineVariant,
      theme.colorScheme.primary.withValues(alpha: 0.4),
      progress01,
    )!;

    final semanticsLabel = amal.target == 1
        ? '${amal.title}, ${isDone ? "completed" : "not completed"}'
        : '${amal.title}, ${row.progress} of ${amal.target} completed';

    return Dismissible(
      key: ValueKey('amal-${amal.id}'),
      direction: DismissDirection.endToStart,
      confirmDismiss: (_) async {
        widget.onRemove();
        return false; // The remove sheet handles the actual removal.
      },
      background: const SizedBox.shrink(),
      secondaryBackground: Container(
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          color: theme.colorScheme.errorContainer,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(
          Icons.delete_outline,
          color: theme.colorScheme.onErrorContainer,
        ),
      ),
      child: Semantics(
        label: semanticsLabel,
        button: true,
        child: Card(
          color: cardColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(color: borderColor),
          ),
          clipBehavior: Clip.antiAlias,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Main tappable row.
              InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: _toggleCompletion,
                onDoubleTap: widget.onEdit,
                onLongPress: widget.onEdit,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  child: Row(
                    children: [
                      // Leading check icon.
                      Icon(
                        isDone
                            ? Icons.check_circle
                            : Icons.radio_button_unchecked,
                        color: isDone
                            ? theme.colorScheme.primary
                            : theme.colorScheme.onSurfaceVariant,
                        size: 28,
                      ),
                      const SizedBox(width: 12),

                      // Title + optional note preview + streak badge.
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Flexible(
                                  child: Text(
                                    amal.title,
                                    style: theme.textTheme.bodyLarge?.copyWith(
                                      fontWeight: FontWeight.w600,
                                      // No strikethrough — just dim when done.
                                      color: isDone
                                          ? theme.colorScheme.onSurfaceVariant
                                          : theme.colorScheme.onSurface,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                if (widget.streak != null &&
                                    widget.streak! >= 2) ...[
                                  const SizedBox(width: 8),
                                  _StreakBadge(
                                      streak: widget.streak!, row: row),
                                ],
                              ],
                            ),
                            // Note preview (collapsed).
                            if (!_noteExpanded &&
                                row.note != null &&
                                row.note!.isNotEmpty)
                              Padding(
                                padding: const EdgeInsets.only(top: 2),
                                child: GestureDetector(
                                  onTap: _expandNote,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.sticky_note_2_outlined,
                                        size: 14,
                                        color: theme.colorScheme.primary,
                                      ),
                                      const SizedBox(width: 4),
                                      Flexible(
                                        child: Text(
                                          row.note!,
                                          style: theme.textTheme.bodySmall
                                              ?.copyWith(
                                            color: theme
                                                .colorScheme.onSurfaceVariant,
                                            fontStyle: FontStyle.italic,
                                          ),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            // Reminder (shown only when no note preview).
                            if (!_noteExpanded &&
                                (row.note == null || row.note!.isEmpty) &&
                                amal.reminderTime != null)
                              Padding(
                                padding: const EdgeInsets.only(top: 2),
                                child: Text(
                                  'Reminder: ${amal.reminderTime}',
                                  style: theme.textTheme.bodySmall?.copyWith(
                                    color: theme.colorScheme.onSurfaceVariant,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),

                      // Trailing controls.
                      if (amal.target > 1) ...[
                        // Note toggle for count-based amal.
                        GestureDetector(
                          onTap: _noteExpanded ? _collapseNote : _expandNote,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 4),
                            child: Icon(
                              _noteExpanded
                                  ? Icons.expand_less
                                  : (row.note != null && row.note!.isNotEmpty
                                      ? Icons.sticky_note_2
                                      : Icons.sticky_note_2_outlined),
                              size: 18,
                              color: _noteExpanded ||
                                      (row.note != null &&
                                          row.note!.isNotEmpty)
                                  ? theme.colorScheme.primary
                                  : theme.colorScheme.outlineVariant,
                            ),
                          ),
                        ),
                        ExcludeSemantics(
                          child: CountStepper(
                            progress: row.progress,
                            target: amal.target,
                            onChanged: _handleStepperProgress,
                          ),
                        ),
                      ] else
                        IconButton(
                          icon: Icon(
                            _noteExpanded
                                ? Icons.expand_less
                                : (row.note != null && row.note!.isNotEmpty
                                    ? Icons.sticky_note_2
                                    : Icons.sticky_note_2_outlined),
                            size: 20,
                            color: _noteExpanded ||
                                    (row.note != null && row.note!.isNotEmpty)
                                ? theme.colorScheme.primary
                                : theme.colorScheme.outlineVariant,
                          ),
                          tooltip: _noteExpanded ? 'Collapse note' : 'Add note',
                          onPressed:
                              _noteExpanded ? _collapseNote : _expandNote,
                        ),
                    ],
                  ),
                ),
              ),

              // Inline note section (expandable).
              AnimatedSize(
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeInOut,
                child: _noteExpanded
                    ? _buildNoteSection(theme)
                    : const SizedBox.shrink(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNoteSection(ThemeData theme) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: theme.colorScheme.outlineVariant),
        ),
      ),
      padding: const EdgeInsets.fromLTRB(14, 10, 14, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Note',
            style: theme.textTheme.labelSmall?.copyWith(
              color: theme.colorScheme.primary,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 6),
          TextField(
            controller: _noteController,
            autofocus: true,
            maxLines: 2,
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
              hintText: 'e.g. Prayed at the masjid',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              isDense: true,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 8,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if (widget.row.note != null && widget.row.note!.isNotEmpty)
                TextButton(
                  onPressed: _clearNote,
                  child: const Text('Clear'),
                ),
              TextButton(
                onPressed: _collapseNote,
                child: const Text('Cancel'),
              ),
              FilledButton(
                onPressed: _saveNote,
                child: const Text('Save'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Streak badge
// ---------------------------------------------------------------------------

class _StreakBadge extends StatelessWidget {
  const _StreakBadge({required this.streak, required this.row});

  final int streak;
  final TodayRow row;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final unit = switch (row.amal.frequency) {
      Frequency.daily => 'd',
      Frequency.weekly => 'w',
      Frequency.monthly => 'm',
    };
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 1),
      decoration: BoxDecoration(
        color: theme.colorScheme.tertiaryContainer,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        '$streak$unit',
        style: theme.textTheme.labelSmall?.copyWith(
          color: theme.colorScheme.onTertiaryContainer,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
