# Amal Row UX Overhaul

**Date:** 2026-04-12
**Status:** Approved

## Context

The current amal row uses tap-to-edit and checkbox/stepper-to-complete. The most frequent action (completing an amal) requires precision tapping on a small checkbox. This redesign makes completion the easiest gesture (single tap anywhere) and reorganizes all interactions for a more natural daily-checklist flow.

## Changes

### 1. Gesture Redesign

| Gesture | Action |
|---|---|
| Single tap (anywhere on card) | Toggle completion: target=1 toggles 0/1; target>1 toggles 0/target |
| Long press | Navigate to edit form |
| Swipe left | Show remove sheet (today / tracking) |

- Remove standalone Checkbox widget for target=1 rows
- Keep CountStepper (+/-) for target>1 as secondary fine-tune control
- Haptics: `mediumImpact` on completion, `selectionClick` on uncomplete

### 2. Card Layout

- Wrap each `AmalRowTile` in `Card` (uses existing `cardTheme`: outlined, 12px radius, 0 elevation)
- Replace `ListView.separated` + `Divider` with `ListView.builder` + 8px vertical spacing
- Applies to both Today and History screens

### 3. Streak Badge on Today Rows

- Show streak count as a small chip next to the title when streak >= 2
- Format: `3d` (daily), `3w` (weekly), `3m` (monthly)
- Muted style: `labelSmall`, `onSurfaceVariant` color
- New provider: `currentStreaksProvider` returns `Map<int, int>` (amalId -> streak)
- Data source: reuse `StatsService._dailyStreaks` / `_weeklyStreaks` / `_monthlyStreaks`

### 4. Inspirational Empty State

- Replace static "Nothing to track today" text with a rotating hadith
- ~10 curated short hadiths about istiqama (consistency) from Bukhari/Muslim
- Selection: `dayOfYear % list.length` for daily rotation
- Keep icon + "Add an amal" CTA below the quote

### 5. Files to Modify

- `lib/features/today/widgets/amal_row.dart` — gesture mapping, card wrap, streak badge, remove checkbox
- `lib/features/today/widgets/count_stepper.dart` — no change (stays as secondary control)
- `lib/features/today/today_screen.dart` — card spacing, empty state quotes, streak provider
- `lib/features/history/history_screen.dart` — card spacing (AmalRowTile changes propagate)
- `lib/app/providers.dart` — new `currentStreaksProvider`
- `lib/domain/services/stats_service.dart` — expose per-amal streak lookup

### 6. Verification

- `flutter analyze` — 0 issues
- `flutter test` — all existing tests pass
- Manual: tap row completes, long press opens edit, swipe left shows remove sheet
- Manual: streak badges visible on Today for amal with streak >= 2
- Manual: empty state shows hadith text
