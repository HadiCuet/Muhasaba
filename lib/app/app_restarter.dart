import 'package:flutter/widgets.dart';

/// Rebuilds the app from nothing — a new `ProviderScope`, router and widget
/// tree — so no screen or provider keeps data from before a backup restore.
class AppRestarter extends StatefulWidget {
  const AppRestarter({super.key, required this.builder});

  /// Builds the app; [restarted] is false on launch and true after
  /// [AppRestarterState.restart].
  final Widget Function(bool restarted) builder;

  static AppRestarterState of(BuildContext context) =>
      context.findAncestorStateOfType<AppRestarterState>()!;

  @override
  State<AppRestarter> createState() => AppRestarterState();
}

class AppRestarterState extends State<AppRestarter> {
  var _restarted = false;
  var _blank = false;

  Future<void> restart() async {
    // The old tree has to be unmounted before the new one is built, or widgets
    // with global keys move into the new tree with their old state.
    setState(() => _blank = true);
    await WidgetsBinding.instance.endOfFrame;
    if (!mounted) return;
    setState(() {
      _blank = false;
      _restarted = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    // The splash's green, which is what shows next.
    if (_blank) return const ColoredBox(color: Color(0xFF1F5740));
    return widget.builder(_restarted);
  }
}
