import 'dart:io' show Platform;

import 'package:device_info_plus/device_info_plus.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../l10n/app_localizations.dart';

/// Developer contact email for all support rows.
const String kSupportEmail = 'hadi.fiftytwo@gmail.com';

/// Hosted privacy policy (GitHub Pages).
const String kPrivacyPolicyUrl = 'https://hadicuet.github.io/Muhasaba/privacy/';

// Email subjects are hardcoded English — they're sent to the developer,
// not shown translated to users.
const String _subjectContact = 'Muhasaba — Contact';
const String _subjectBug = 'Muhasaba — Bug Report';
const String _subjectFeature = 'Muhasaba — Feature Request';

/// Asks for an in-app review using the native iOS dialog. Falls back to the
/// App Store listing, and finally a SnackBar with the support email if
/// neither is available (e.g. simulator, or app not yet published).
Future<void> requestAppReview(BuildContext context) async {
  FirebaseAnalytics.instance.logEvent(name: 'rate_app_tapped');
  final review = InAppReview.instance;
  try {
    if (await review.isAvailable()) {
      await review.requestReview();
      return;
    }
    await review.openStoreListing();
  } catch (_) {
    if (context.mounted) {
      _showFallbackSnackBar(context);
    }
  }
}

/// Opens the native mail compose sheet (iOS `MFMailComposeViewController`)
/// with a blank contact email. The sheet sits as a modal over the current
/// screen — the user stays in the app.
Future<void> sendContactEmail(BuildContext context) async {
  FirebaseAnalytics.instance.logEvent(
    name: 'support_email_opened',
    parameters: {'topic': 'contact'},
  );
  final ok = await _sendEmail(subject: _subjectContact);
  if (!ok && context.mounted) _showFallbackSnackBar(context);
}

/// Opens the native mail compose sheet pre-filled with app version and
/// device info for a bug report.
Future<void> sendBugReportEmail(BuildContext context) async {
  FirebaseAnalytics.instance.logEvent(
    name: 'support_email_opened',
    parameters: {'topic': 'bug'},
  );
  final body = await _buildDeviceInfoBody();
  final ok = await _sendEmail(subject: _subjectBug, body: body);
  if (!ok && context.mounted) _showFallbackSnackBar(context);
}

/// Opens the native mail compose sheet with a blank feature request email.
Future<void> sendFeatureRequestEmail(BuildContext context) async {
  FirebaseAnalytics.instance.logEvent(
    name: 'support_email_opened',
    parameters: {'topic': 'feature'},
  );
  final ok = await _sendEmail(subject: _subjectFeature);
  if (!ok && context.mounted) _showFallbackSnackBar(context);
}

/// Opens the hosted privacy policy in an in-app browser sheet
/// (SFSafariViewController on iOS, Chrome Custom Tabs on Android). The user
/// stays inside the app — this never launches the external system browser.
Future<void> openPrivacyPolicy(BuildContext context) async {
  final uri = Uri.parse(kPrivacyPolicyUrl);
  try {
    final ok = await launchUrl(uri, mode: LaunchMode.inAppBrowserView);
    if (!ok && context.mounted) _showPrivacyFallback(context);
  } catch (_) {
    if (context.mounted) _showPrivacyFallback(context);
  }
}

// ---------------------------------------------------------------------------
// Internals
// ---------------------------------------------------------------------------

Future<bool> _sendEmail({required String subject, String body = ''}) async {
  final email = Email(
    subject: subject,
    body: body,
    recipients: [kSupportEmail],
  );
  try {
    await FlutterEmailSender.send(email);
    return true;
  } catch (_) {
    return false;
  }
}

Future<String> _buildDeviceInfoBody() async {
  String appVersion = 'unknown';
  String platform = 'unknown';
  String device = 'unknown';

  try {
    final info = await PackageInfo.fromPlatform();
    appVersion = '${info.version} (${info.buildNumber})';
  } catch (_) {}

  try {
    final plugin = DeviceInfoPlugin();
    if (Platform.isIOS) {
      final ios = await plugin.iosInfo;
      platform = 'iOS ${ios.systemVersion}';
      device = ios.utsname.machine;
    } else if (Platform.isAndroid) {
      final android = await plugin.androidInfo;
      platform = 'Android ${android.version.release} (SDK ${android.version.sdkInt})';
      device = '${android.manufacturer} ${android.model}';
    } else if (Platform.isMacOS) {
      final mac = await plugin.macOsInfo;
      platform = 'macOS ${mac.osRelease}';
      device = mac.model;
    }
  } catch (_) {}

  return '''
---
App version: $appVersion
Platform: $platform
Device: $device
---

(Please describe the bug above this line.)
''';
}

void _showFallbackSnackBar(BuildContext context) {
  final messenger = ScaffoldMessenger.maybeOf(context);
  if (messenger == null) return;
  final l = AppLocalizations.of(context);
  messenger.showSnackBar(
    SnackBar(
      content: Text(l.settingsSupportFallback(kSupportEmail)),
      behavior: SnackBarBehavior.floating,
    ),
  );
}

void _showPrivacyFallback(BuildContext context) {
  final messenger = ScaffoldMessenger.maybeOf(context);
  if (messenger == null) return;
  final l = AppLocalizations.of(context);
  messenger.showSnackBar(
    SnackBar(
      content: Text(l.settingsPrivacyOpenFailed),
      behavior: SnackBarBehavior.floating,
    ),
  );
}
