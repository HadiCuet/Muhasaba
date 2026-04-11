import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Inline `- N / T +` control for count-based amal. Tapping the `N / T` label
/// opens a dialog so the user can set a specific value (helpful for high
/// targets like 33 tasbih where tapping + 33 times is tedious).
class CountStepper extends StatelessWidget {
  const CountStepper({
    super.key,
    required this.progress,
    required this.target,
    required this.onChanged,
  });

  final int progress;
  final int target;
  final ValueChanged<int> onChanged;

  int _clamp(int v) {
    if (v < 0) return 0;
    if (v > target) return target;
    return v;
  }

  Future<void> _openDirectInput(BuildContext context) async {
    final controller = TextEditingController(text: progress.toString());
    final result = await showDialog<int>(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          title: Text('Set count (0 – $target)'),
          content: TextField(
            controller: controller,
            keyboardType: TextInputType.number,
            autofocus: true,
            decoration: const InputDecoration(border: OutlineInputBorder()),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(ctx).pop(),
              child: const Text('Cancel'),
            ),
            FilledButton(
              onPressed: () {
                final parsed = int.tryParse(controller.text.trim());
                Navigator.of(ctx).pop(parsed);
              },
              child: const Text('Set'),
            ),
          ],
        );
      },
    );
    if (result != null) {
      onChanged(_clamp(result));
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final label = '$progress / $target';
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          visualDensity: VisualDensity.compact,
          icon: const Icon(Icons.remove_circle_outline),
          onPressed: progress > 0
              ? () {
                  HapticFeedback.selectionClick();
                  onChanged(_clamp(progress - 1));
                }
              : null,
        ),
        InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: () => _openDirectInput(context),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Text(
              label,
              style: theme.textTheme.titleMedium?.copyWith(
                fontFeatures: const [FontFeature.tabularFigures()],
              ),
            ),
          ),
        ),
        IconButton(
          visualDensity: VisualDensity.compact,
          icon: const Icon(Icons.add_circle_outline),
          onPressed: progress < target
              ? () {
                  HapticFeedback.selectionClick();
                  onChanged(_clamp(progress + 1));
                }
              : null,
        ),
      ],
    );
  }
}
