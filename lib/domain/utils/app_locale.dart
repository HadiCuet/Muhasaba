import 'package:flutter/widgets.dart';

import '../../l10n/app_localizations.dart';

/// Resolves the effective app locale from the stored setting and the device's
/// preferred locales.
///
/// Shared by [MuhasabaApp]'s `localeResolutionCallback` and by `main()`, which
/// needs the same answer before there's a widget tree to ask — keeping the two
/// on one implementation is what stops scheduled reminders from being written
/// in a different language than the UI.
///
/// An empty [storedTag] means "follow the system": `setLocale(null)` persists
/// `''` rather than deleting the row.
Locale resolveAppLocale(String? storedTag, List<Locale> deviceLocales) {
  if (storedTag != null && storedTag.isNotEmpty) return Locale(storedTag);

  for (final device in deviceLocales) {
    for (final supported in AppLocalizations.supportedLocales) {
      if (supported.languageCode == device.languageCode &&
          supported.countryCode == device.countryCode) {
        return supported;
      }
    }
    for (final supported in AppLocalizations.supportedLocales) {
      if (supported.languageCode == device.languageCode) return supported;
    }
  }
  return const Locale('en');
}
