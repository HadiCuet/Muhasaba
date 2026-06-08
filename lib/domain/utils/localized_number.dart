import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

// Locales where we override CLDR's Latin default and force the traditional
// native digits (the deen-app convention). Every other locale follows CLDR via
// NumberFormat: bn/fa/ps already render native digits, en/tr/id/etc. Western.
const Map<String, String> _forcedDigits = {
  'ar': '٠١٢٣٤٥٦٧٨٩', // Arabic-Indic (U+0660)
  'ur': '۰۱۲۳۴۵۶۷۸۹', // Extended Arabic-Indic (U+06F0)
};

// Locales that use the Arabic percent sign ٪ instead of %.
const Set<String> _arabicPercent = {'ar', 'ur', 'fa', 'ps'};

/// A `NumberFormat` for [locale], falling back to English for locales intl has
/// no CLDR data for (tk, tg, so, ha, ku) so formatting never throws.
NumberFormat _decimal(String locale) {
  try {
    return NumberFormat.decimalPattern(locale);
  } catch (_) {
    return NumberFormat.decimalPattern('en');
  }
}

/// A `DateFormat` for [pattern]/[locale], falling back to English for locales
/// intl has no data for. Use this instead of the raw `DateFormat(...)`
/// constructor anywhere a runtime locale is involved.
DateFormat safeDateFormat(String pattern, String locale) {
  try {
    return DateFormat(pattern, locale);
  } catch (_) {
    return DateFormat(pattern, 'en');
  }
}

/// Substitutes ASCII digits 0-9 with the locale's forced native digits (ar/ur).
/// No-op for every other locale. Apply to already-formatted strings — e.g.
/// `DateFormat(...)` output — so their digits match the app's numbers.
String localizeDigits(BuildContext context, String s) {
  final native = _forcedDigits[Localizations.localeOf(context).toString()];
  if (native == null) return s;
  final buf = StringBuffer();
  for (final u in s.codeUnits) {
    buf.write((u >= 0x30 && u <= 0x39) ? native[u - 0x30] : String.fromCharCode(u));
  }
  return buf.toString();
}

/// Formats [n] in the active locale's numeral system. bn/fa/ps come out native
/// via CLDR; ar/ur are forced to traditional Arabic-Indic digits; unsupported
/// locales fall back to Western.
String lnum(BuildContext context, int n) {
  final locale = Localizations.localeOf(context).toString();
  return localizeDigits(context, _decimal(locale).format(n));
}

/// Localized integer percentage, e.g. 72 → "72%" / "٧٢٪" / "৭২%".
String lpct(BuildContext context, int pct) {
  final sign = _arabicPercent.contains(Localizations.localeOf(context).toString())
      ? '٪'
      : '%';
  return '${lnum(context, pct)}$sign';
}
