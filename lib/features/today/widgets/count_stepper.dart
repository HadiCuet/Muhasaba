import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Inline `- N / T +` control for count-based amal. Tapping the `N / T` label
/// switches to an inline text field so the user can type a specific value
/// (helpful for high targets like 33 tasbih where tapping + 33 times is
/// tedious).
class CountStepper extends StatefulWidget {
  const CountStepper({
    super.key,
    required this.progress,
    required this.target,
    required this.onChanged,
  });

  final int progress;
  final int target;
  final ValueChanged<int> onChanged;

  @override
  State<CountStepper> createState() => _CountStepperState();
}

class _CountStepperState extends State<CountStepper> {
  bool _editing = false;
  late final TextEditingController _controller;
  late final FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _focusNode = FocusNode();
    _focusNode.addListener(_onFocusChange);
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
    if (v > widget.target) return widget.target;
    return v;
  }

  void _startEditing() {
    setState(() {
      _editing = true;
      _controller.text = widget.progress.toString();
    });
  }

  void _commitEdit() {
    if (!_editing) return;
    final parsed = int.tryParse(_controller.text.trim()) ?? widget.progress;
    final clamped = _clamp(parsed);
    widget.onChanged(clamped);
    setState(() {
      _editing = false;
    });
  }

  void _onFocusChange() {
    if (!_focusNode.hasFocus) {
      _commitEdit();
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final labelStyle = theme.textTheme.titleMedium?.copyWith(
      fontFeatures: const [FontFeature.tabularFigures()],
    );
    final label = '${widget.progress} / ${widget.target}';

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          visualDensity: VisualDensity.compact,
          icon: const Icon(Icons.remove_circle_outline),
          onPressed: widget.progress > 0
              ? () {
                  HapticFeedback.selectionClick();
                  widget.onChanged(_clamp(widget.progress - 1));
                }
              : null,
        ),
        if (_editing)
          SizedBox(
            width: 56,
            child: TextField(
              controller: _controller,
              focusNode: _focusNode,
              keyboardType: TextInputType.number,
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
            ),
          )
        else
          SizedBox(
            width: 56,
            child: InkWell(
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
                child: Text(
                  label,
                  style: labelStyle,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        IconButton(
          visualDensity: VisualDensity.compact,
          icon: const Icon(Icons.add_circle_outline),
          onPressed: widget.progress < widget.target
              ? () {
                  HapticFeedback.selectionClick();
                  widget.onChanged(_clamp(widget.progress + 1));
                }
              : null,
        ),
      ],
    );
  }
}
