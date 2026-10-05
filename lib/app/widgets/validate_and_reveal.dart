import 'package:flutter/widgets.dart';

extension ValidateAndReveal on FormState {
  /// [validate], then scrolls the first invalid field into view so its error
  /// is not left off-screen.
  bool validateAndReveal() {
    final invalid = validateGranularly();
    if (invalid.isEmpty) return true;
    Scrollable.ensureVisible(
      invalid.first.context,
      alignment: 0.5,
      duration: const Duration(milliseconds: 250),
    );
    return false;
  }
}
