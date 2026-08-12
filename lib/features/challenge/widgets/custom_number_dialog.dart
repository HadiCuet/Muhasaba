import 'package:flutter/material.dart';

import '../../../l10n/app_localizations.dart';

/// Numeric entry for values the preset chips do not offer. Returns `null` if
/// dismissed, otherwise a positive int.
Future<int?> showCustomNumberDialog(BuildContext context, {int? initial}) {
  return showDialog<int>(
    context: context,
    builder: (_) => _CustomNumberDialog(initial: initial),
  );
}

class _CustomNumberDialog extends StatefulWidget {
  const _CustomNumberDialog({this.initial});

  final int? initial;

  @override
  State<_CustomNumberDialog> createState() => _CustomNumberDialogState();
}

class _CustomNumberDialogState extends State<_CustomNumberDialog> {
  late final TextEditingController _controller = TextEditingController(
    text: widget.initial?.toString() ?? '',
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _submit() {
    final parsed = int.tryParse(_controller.text.trim());
    if (parsed == null || parsed <= 0) return;
    Navigator.of(context).pop(parsed);
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
