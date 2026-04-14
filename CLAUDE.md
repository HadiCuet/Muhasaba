# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Commands

- Install/refresh dependencies: `flutter pub get`
- Run the app (choose a device with `-d`): `flutter run`
- Static analysis / lint: `flutter analyze`
- Format: `dart format .`
- Regenerate l10n: `flutter gen-l10n`
- Build release artifacts: `flutter build apk` / `flutter build ios` / `flutter build web` / `flutter build macos`

Dart SDK constraint: `^3.11.4` (see `pubspec.yaml`).

## Architecture

```
lib/
  main.dart                — entry point
  l10n/                    — ARB localization files + generated AppLocalizations
  app/                     — app.dart, router.dart, theme.dart, providers.dart
  core/time/               — day_boundary.dart, period.dart
  data/
    db/                    — database.dart, tables.dart, seed.dart, daos/
    repositories/          — amal, completion, settings, category repos
  domain/
    models/                — frequency.dart, app_settings.dart
    services/              — today_builder.dart, stats_service.dart, reminder_scheduler.dart
    utils/                 — supported_languages.dart, localized_category.dart
  features/
    today/                 — today_screen.dart, widgets/ (amal_row, count_stepper, remove_sheet)
    create_edit/           — amal_form_screen.dart, amal_templates.dart, widgets/
    history/               — history_screen.dart
    stats/                 — stats_screen.dart
    settings/              — settings_screen.dart
```

- **State management:** Riverpod 3.x (manual providers, no codegen)
- **Database:** Drift (SQLite) with explicit migrations, ISO-8601 text DateTime storage
- **Routing:** go_router with `StatefulShellRoute.indexedStack` for tabs
- **Theme:** Material 3, seed `Color(0xFF2E7D5B)`, light + dark mode
- **Notifications:** flutter_local_notifications + flutter_timezone

## Localization (i18n)

The app is fully localized in **23 languages**: en, ar, bn, ur, id, tr, fa, ms, fr, ps, uz, kk, ky, tk, tg, az, sq, bs, so, sw, ha, ku, hi.

**Every new user-facing string must be localized.** Never hardcode strings in widgets.

### How to add a new string

1. Add the key + English value to `lib/l10n/app_en.arb`
2. Add the translated value to all 22 other `app_*.arb` files
3. Run `flutter gen-l10n` (or rely on `flutter run` to regenerate)
4. Use it in code: `final l = AppLocalizations.of(context); l.yourKey`

### Import path

```dart
import '../../l10n/app_localizations.dart';  // relative from feature files
```

### Key rules

- **Category names are NOT localized** — Salah, Dhikr, Quran, Charity stay as raw DB names everywhere.
- **DateFormat must pass locale:** `DateFormat('EEEE, MMM d', Localizations.localeOf(context).toString())`
- **RTL support:** Use `EdgeInsetsDirectional` (not `EdgeInsets.only`) for start/end padding. RTL languages: ar, ur, fa, ps, ku.
- **Locale setting:** `AppSettings.locale` — `null` = system default, non-null = user-picked BCP-47 tag.
- **Plurals use ICU MessageFormat:** `{count, plural, =1{day} other{days}}`

### ARB file structure

- `lib/l10n/app_en.arb` — English source of truth (includes `@key` metadata)
- `lib/l10n/app_ar.arb` through `app_hi.arb` — translations (no `@` metadata, only `@@locale` + string keys)
- Generated output: `lib/l10n/app_localizations.dart` and per-locale `app_localizations_*.dart`

## Constraints

- Local-only data — no backend, no cloud sync, no auth. Anonymous telemetry (Firebase Analytics + Crashlytics) is sent in release builds only; Crashlytics is disabled in debug via `setCrashlyticsCollectionEnabled(!kDebugMode)` in `main.dart`.
- No test files — user does not want them
- Prefer libraries with good iOS parity and offline support
- Keep Islamic content respectful and accurate to mainstream practice
