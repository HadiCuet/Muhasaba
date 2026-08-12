import 'package:flutter/material.dart';

/// Inline `− N +` control. Tapping the number switches to a text field so an
/// exact value can be typed instead of pressing `+` dozens of times.
///
/// Fires no haptics: the owner decides what a change means, so feedback lives
/// at the callback site.
class StepperField extends StatefulWidget {
  const StepperField({
    super.key,
    required this.value,
    required this.step,
    required this.label,
    required this.onChanged,
    this.max,
  });

  final int value;
  final int step;

  /// Upper bound, or null for unbounded.
  final int? max;

  /// Rendered inside the box, e.g. `12/33` on Today or `5` on Challenge.
  final String label;

  final ValueChanged<int> onChanged;

  @override
  State<StepperField> createState() => _StepperFieldState();
}

class _StepperFieldState extends State<StepperField> {
  bool _editing = false;
  late final TextEditingController _controller;
  late final FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _focusNode = FocusNode()..addListener(_onFocusChange);
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocusChange);
    _focusNode.dispose();
    _controller.dispose();
    super.dispose();
  }

  int _clamp(int v) {
    if (v < 0) return 0;
    final max = widget.max;
    if (max != null && v > max) return max;
    return v;
  }

  void _startEditing() {
    setState(() {
      _editing = true;
      _controller.text = widget.value.toString();
    });
  }

  void _commitEdit() {
    if (!_editing) return;
    final parsed = int.tryParse(_controller.text.trim()) ?? widget.value;
    widget.onChanged(_clamp(parsed));
    setState(() => _editing = false);
  }

  void _onFocusChange() {
    if (!_focusNode.hasFocus) _commitEdit();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final labelStyle = theme.textTheme.titleMedium?.copyWith(
      fontFeatures: const [FontFeature.tabularFigures()],
    );
    final max = widget.max;
    final atMax = max != null && widget.value >= max;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          visualDensity: VisualDensity.compact,
          icon: const Icon(Icons.remove_circle_outline),
          onPressed: widget.value > 0
              ? () => widget.onChanged(_clamp(widget.value - widget.step))
              : null,
        ),
        // Wide enough for Today's three-digit worst case, "999/999".
        SizedBox(
          width: 64,
          child: _editing
              ? TextField(
                  controller: _controller,
                  focusNode: _focusNode,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.done,
                  autofocus: true,
                  textAlign: TextAlign.center,
                  style: labelStyle,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    isDense: true,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 4,
                      vertical: 4,
                    ),
                  ),
                  onSubmitted: (_) => _commitEdit(),
                )
              : InkWell(
                  borderRadius: BorderRadius.circular(4),
                  onTap: _startEditing,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: theme.colorScheme.outline),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 4,
                      vertical: 4,
                    ),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        widget.label,
                        style: labelStyle,
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        softWrap: false,
                      ),
                    ),
                  ),
                ),
        ),
        IconButton(
          visualDensity: VisualDensity.compact,
          icon: const Icon(Icons.add_circle_outline),
          onPressed: atMax
              ? null
              : () => widget.onChanged(_clamp(widget.value + widget.step)),
        ),
      ],
    );
  }
}
