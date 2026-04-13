# Settings Screen Redesign — Grouped Cards

**Date:** 2026-04-13
**Status:** Draft

## Problem

The current settings screen is a flat list with thin section headers and no visual hierarchy. As new features are added (bug report, feature request, data export, etc.), the screen will become harder to scan. The layout needs to accommodate growth while keeping existing options organized.

## Design

Restructure the settings screen using **iOS-style grouped cards** with colored leading icons. No new settings are added — this is purely a visual/structural reorganization.

### Layout Structure (top to bottom)

1. **App Branding Card** — gradient-tinted card at the top
   - App icon (custom icon or the crescent from the launcher)
   - App name: "Muhasaba"
   - Version string (from package_info_plus or hardcoded)
   - Tagline: "Your daily deen companion"

2. **Schedule** section header + rounded card containing:
   - Rollover Hour (icon: 🕐, trailing: formatted hour)
   - Start of Week (icon: 📅, trailing: weekday name)

3. **Appearance** section header + rounded card containing:
   - Theme (icon: 🎨, trailing: System/Light/Dark)
   - Language (icon: 🌍, trailing: language name)

### Removed

- **Start of Month** setting — removed entirely from the UI and the picker. The `startOfMonth` field remains in `AppSettings` at its default value (1) for backward compatibility but is no longer user-configurable.

### Visual Details

- **Card group**: `Card` or `Container` with `surfaceContainerHighest` background, rounded corners (14px), items separated by internal `Divider`
- **Section headers**: primary color, uppercase, small letter-spacing (reuse existing `_SectionHeader` pattern)
- **Item rows**: leading colored icon circle (30x30, rounded 8px, tinted background matching icon category), title, optional subtitle, trailing value text, chevron
- **Icon tint colors**: Schedule items use blue tint (`Colors.blue.withOpacity(0.12)`), Appearance items use purple tint (`Colors.purple.withOpacity(0.12)`)
- **App brand card**: subtle gradient background using seed color, 1px border with low-opacity primary

### Interaction

All picker dialogs remain unchanged — same `showTimePicker`, `showDialog` with radio lists, `showDialog` for language. Only the list layout and item presentation changes.

## Files to Modify

- **`lib/features/settings/settings_screen.dart`** — rewrite `_SettingsList` to use grouped card layout with icons. Remove `startOfMonth` ListTile and its `_pickStartOfMonth` dialog. Keep `_SectionHeader`, all other picker functions.

## Files NOT Modified

- `lib/domain/models/app_settings.dart` — `startOfMonth` field stays (default=1)
- `lib/data/repositories/settings_repository.dart` — `setStartOfMonth` stays (unused but harmless)
- `lib/data/db/daos/settings_dao.dart` — no changes
- `lib/l10n/app_*.arb` — existing strings are reused; no new strings needed (section headers "Schedule" and "Appearance" already exist as `settingsSchedule`/`settingsAppearance`, or we add minimal new keys)

## New Localization Keys

- `settingsSchedule` — "Schedule" (section header, replaces "Day Boundary" + "Week & Month")
- `settingsAppearance` — "Appearance" (already exists or replaces old section header)
- `settingsAboutTagline` — "Your daily deen companion"
- `settingsRolloverSub` — "When the day resets"

## Verification

1. `flutter analyze` — no issues
2. `flutter run` — settings screen shows grouped cards with icons
3. All pickers still work (rollover hour, start of week, theme, language)
4. Start of month option is gone from UI
5. Light and dark themes both render cards correctly
6. RTL languages (ar, ur, fa, ps, ku) — icons on correct side, chevrons flip
