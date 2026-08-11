import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../domain/utils/localized_number.dart';

/// `− N +` control for a challenge's *today* amount. Each press moves by
/// [stepSize]; tapping the number types an exact value, matching the
/// interaction users already meet on `CountStepper`.
class ChallengeStepper extends StatefulWidget {
  const ChallengeStepper({
    super.key,
    required this.todayAmount,
    required this.stepSize,
    required this.onChanged,
  });

  final int todayAmount;
  final int stepSize;
  final ValueChanged<int> onChanged;

  @override
  State<ChallengeStepper> createState() => _ChallengeStepperState();
}

class _ChallengeStepperState extends State<ChallengeStepper> {
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

  void _startEditing() {
    setState(() {
      _editing = true;
      _controller.text = widget.todayAmount.toString();
    });
  }

  void _commitEdit() {
    if (!_editing) return;
    final parsed = int.tryParse(_controller.text.trim()) ?? widget.todayAmount;
    widget.onChanged(parsed < 0 ? 0 : parsed);
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

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          visualDensity: VisualDensity.compact,
          icon: const Icon(Icons.remove_circle_outline),
          onPressed: widget.todayAmount > 0
              ? () {
                  HapticFeedback.selectionClick();
                  final next = widget.todayAmount - widget.stepSize;
                  widget.onChanged(next < 0 ? 0 : next);
                }
              : null,
        ),
        SizedBox(
          width: 56,
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
                        lnum(context, widget.todayAmount),
                        style: labelStyle,
                        maxLines: 1,
                      ),
                    ),
                  ),
                ),
        ),
        IconButton(
          visualDensity: VisualDensity.compact,
          icon: const Icon(Icons.add_circle_outline),
          onPressed: () {
            HapticFeedback.selectionClick();
            widget.onChanged(widget.todayAmount + widget.stepSize);
          },
        ),
      ],
    );
  }
}
