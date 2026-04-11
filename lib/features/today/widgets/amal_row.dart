import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../domain/services/today_builder.dart';
import 'count_stepper.dart';

/// Single row in the Today / History list. Renders either a checkbox (for
/// target = 1) or a `CountStepper` (for target > 1).
class AmalRowTile extends StatelessWidget {
  const AmalRowTile({
    super.key,
    required this.row,
    required this.onProgressChanged,
    required this.onLongPress,
    required this.onEdit,
  });

  final TodayRow row;

  /// Called with the new progress value (already clamped to [0, target]).
  final ValueChanged<int> onProgressChanged;
  final VoidCallback onLongPress;
  final VoidCallback onEdit;

  void _handleProgress(int newProgress) {
    // Light haptic tick on every change — crossing the completion threshold
    // gets a firmer selection click for positive reinforcement.
    final wasDone = row.isCompleted;
    final willBeDone = newProgress >= row.amal.target;
    if (!wasDone && willBeDone) {
      HapticFeedback.mediumImpact();
    } else {
      HapticFeedback.selectionClick();
    }
    onProgressChanged(newProgress);
  }

  @override
  Widget build(BuildContext context) {
    final amal = row.amal;
    final theme = Theme.of(context);
    final isDone = row.isCompleted;

    final Widget trailing;
    if (amal.target == 1) {
      trailing = Checkbox(
        value: isDone,
        onChanged: (v) => _handleProgress(v == true ? 1 : 0),
      );
    } else {
      trailing = CountStepper(
        progress: row.progress,
        target: amal.target,
        onChanged: _handleProgress,
      );
    }

    final semanticsLabel = amal.target == 1
        ? '${amal.title}, ${isDone ? "completed" : "not completed"}'
        : '${amal.title}, ${row.progress} of ${amal.target} completed';

    return Semantics(
      label: semanticsLabel,
      button: true,
      child: ListTile(
        onTap: onEdit,
        onLongPress: onLongPress,
        leading: Icon(
          isDone ? Icons.check_circle : Icons.radio_button_unchecked,
          color: isDone
              ? theme.colorScheme.primary
              : theme.colorScheme.onSurfaceVariant,
        ),
        title: Text(
          amal.title,
          style: TextStyle(
            decoration: isDone && amal.target == 1
                ? TextDecoration.lineThrough
                : null,
            color: isDone
                ? theme.colorScheme.onSurfaceVariant
                : theme.colorScheme.onSurface,
          ),
        ),
        subtitle: amal.reminderTime != null
            ? Text('Reminder: ${amal.reminderTime}')
            : null,
        trailing: ExcludeSemantics(child: trailing),
      ),
    );
  }
}
