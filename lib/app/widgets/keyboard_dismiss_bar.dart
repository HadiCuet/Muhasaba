import 'package:flutter/material.dart';

import '../../l10n/app_localizations.dart';

/// Puts a dismiss button just above the keyboard while [focusNode] holds
/// focus.
///
/// iOS's number pad has no return key, so a numeric field is otherwise only
/// escapable by tapping away from it — which on a form reads as "nothing
/// happened".
class KeyboardDismissBar extends StatefulWidget {
  const KeyboardDismissBar({
    super.key,
    required this.focusNode,
    required this.child,
  });

  final FocusNode focusNode;
  final Widget child;

  @override
  State<KeyboardDismissBar> createState() => _KeyboardDismissBarState();
}

class _KeyboardDismissBarState extends State<KeyboardDismissBar> {
  /// The iOS input-accessory height, which is what this stands in for.
  static const _barHeight = 44.0;

  OverlayEntry? _entry;

  @override
  void initState() {
    super.initState();
    widget.focusNode.addListener(_onFocusChange);
    // `autofocus` can win the focus before this listener is attached.
    if (widget.focusNode.hasFocus) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted && widget.focusNode.hasFocus) _show();
      });
    }
  }

  @override
  void didUpdateWidget(KeyboardDismissBar old) {
    super.didUpdateWidget(old);
    if (old.focusNode != widget.focusNode) {
      old.focusNode.removeListener(_onFocusChange);
      widget.focusNode.addListener(_onFocusChange);
    }
  }

  @override
  void dispose() {
    widget.focusNode.removeListener(_onFocusChange);
    _remove();
    super.dispose();
  }

  void _onFocusChange() {
    if (!mounted) return;
    widget.focusNode.hasFocus ? _show() : _remove();
  }

  void _show() {
    if (_entry != null) return;
    final overlay = Overlay.maybeOf(context, rootOverlay: true);
    if (overlay == null) return;
    _entry = OverlayEntry(builder: _buildBar);
    overlay.insert(_entry!);
    _revealField();
  }

  /// The bar floats over the layout instead of shrinking it the way the
  /// keyboard does, so it would otherwise sit on top of the very field being
  /// typed into. Centring the field clears it — but only once the keyboard has
  /// finished sliding in, since every inset change retriggers the field's own
  /// scroll-into-view and would undo this.
  Future<void> _revealField() async {
    double? previous;
    for (var frame = 0; frame < 40; frame++) {
      if (!mounted) return;
      final inset = MediaQuery.viewInsetsOf(context).bottom;
      if (inset > 0 && inset == previous) break;
      previous = inset;
      await WidgetsBinding.instance.endOfFrame;
    }
    if (!mounted || !widget.focusNode.hasFocus) return;
    if (Scrollable.maybeOf(context) == null) return;
    await Scrollable.ensureVisible(
      context,
      alignment: 0.5,
      duration: const Duration(milliseconds: 180),
    );
  }

  void _remove() {
    _entry?.remove();
    _entry = null;
  }

  Widget _buildBar(BuildContext context) {
    // Reading the inset here is what keeps the bar pinned to the keyboard as
    // it animates; a hidden keyboard leaves nothing to sit above.
    final inset = MediaQuery.viewInsetsOf(context).bottom;
    if (inset <= 0) return const SizedBox.shrink();

    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    return Positioned(
      left: 0,
      right: 0,
      bottom: inset,
      child: Material(
        color: scheme.surfaceContainerHigh,
        child: Container(
          height: _barHeight,
          decoration: BoxDecoration(
            border: BorderDirectional(
              top: BorderSide(color: scheme.outlineVariant),
            ),
          ),
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 6),
          child: Align(
            alignment: AlignmentDirectional.centerEnd,
            child: TextButton(
              onPressed: widget.focusNode.unfocus,
              style: TextButton.styleFrom(visualDensity: VisualDensity.compact),
              child: Text(AppLocalizations.of(context).ok),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) => widget.child;
}
