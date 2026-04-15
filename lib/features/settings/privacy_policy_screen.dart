import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../l10n/app_localizations.dart';
import 'support_actions.dart' show kPrivacyPolicyUrl;

/// Full-screen in-app WebView that renders the hosted privacy policy.
///
/// Unlike a system Custom-Tabs / SFSafariViewController sheet, this screen
/// lives entirely inside the Flutter widget tree with the app's own AppBar,
/// so the user is unambiguously still inside Muhasaba — no browser chrome.
class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
  late final WebViewController _controller;
  bool _loading = true;
  bool _error = false;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(Colors.transparent)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageFinished: (_) {
            if (mounted) setState(() => _loading = false);
          },
          onWebResourceError: (error) {
            // Only surface top-level failures — WebView fires this for
            // subresources too (e.g. a missing favicon), which we want to
            // ignore.
            if (error.isForMainFrame ?? true) {
              if (mounted) {
                setState(() {
                  _loading = false;
                  _error = true;
                });
              }
            }
          },
        ),
      )
      ..loadRequest(Uri.parse(kPrivacyPolicyUrl));
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(l.settingsPrivacyPolicy)),
      body: _error
          ? Center(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Text(
                  l.settingsPrivacyOpenFailed,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            )
          : Stack(
              children: [
                WebViewWidget(controller: _controller),
                if (_loading)
                  const Center(child: CircularProgressIndicator()),
              ],
            ),
    );
  }
}
