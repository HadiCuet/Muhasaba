# Default Seed Amals + Categories — Design

## Context

The first-run seed in [lib/data/db/seed.dart](../../../lib/data/db/seed.dart) is intentionally minimal: 4 categories (Salah, Dhikr, Quran, Charity) and 6 amals (the 5 fard prayers + Tilawah). Empty Dhikr and Charity categories on first launch make the app look unfinished and don't show new users the kinds of practices it's designed to track.

This spec broadens the first-run seed to a **universal foundation**: every seeded category has at least one populated amal, and the amal mix demonstrates the full breadth of the schema (daily, weekly, and monthly frequencies; pinned weekly day). It stays light enough that a new user isn't overwhelmed and can archive anything they don't observe.

Existing users (anyone whose database is already past `onCreate`) are **not** retroactively given the new amals. The change applies to fresh installs only — same policy as the current seed.

## Categories (5)

A new **Sunnah** category is added to separate non-fard prayers and sunnah practices from the 5 fard prayers under Salah.

| sortOrder | name | icon |
|---|---|---|
| 0 | Salah | 🕌 |
| 1 | Sunnah | 🌟 |
| 2 | Dhikr | 📿 |
| 3 | Quran | 📖 |
| 4 | Charity | 💰 |

The Salah → Sunnah → Dhikr → Quran → Charity ordering mirrors the daily flow (start with the obligatory, then voluntary prayers, then remembrance, then recitation, then giving).

## Amals (12)

All seeded amals have:
- `isSeed: true`
- `icon` set (no defaulting to ⭐)
- `target: 1` unless noted
- `reminderTime: null` (users opt in)
- `defaultChecked: false`
- `archivedAt: null`
- `createdAt: DateTime.now().toUtc()` (matches current seed)

Sort order is the order listed below (0..11).

| # | title | icon | category | frequency | weeklyDay | monthlyDate | target |
|---|---|---|---|---|---|---|---|
| 0 | Fajr | 🕌 | Salah | daily | — | — | 1 |
| 1 | Dhuhr | 🕌 | Salah | daily | — | — | 1 |
| 2 | Asr | 🕌 | Salah | daily | — | — | 1 |
| 3 | Maghrib | 🕌 | Salah | daily | — | — | 1 |
| 4 | Isha | 🕌 | Salah | daily | — | — | 1 |
| 5 | Tahajjud | 🌙 | Sunnah | daily | — | — | 1 |
| 6 | Duha | ☀️ | Sunnah | daily | — | — | 1 |
| 7 | Morning Adhkar | 🌅 | Dhikr | daily | — | — | 1 |
| 8 | Evening Adhkar | 🌇 | Dhikr | daily | — | — | 1 |
| 9 | Tilawah | 📖 | Quran | daily | — | — | 1 |
| 10 | Surah Kahf | 📜 | Quran | weekly | 5 (Friday) | — | 1 |
| 11 | Sadaqah | 💰 | Charity | monthly | — | null | 1 |

Notes:
- `weeklyDay: 5` for Surah Kahf maps to Friday (`DateTime.friday == 5`).
- Sadaqah's `monthlyDate` is **null** — it's a monthly recurrence with no specific day pin, matching the existing `kAmalTemplates` Sadaqah entry. The user can edit later.
- Witr is intentionally NOT seeded. It varies by madhhab (wajib in Hanafi, sunnah muakkadah elsewhere). Pre-picking a frequency would be wrong for some users; including it as a template (out of scope here) is a separate change.

## Files Affected

- **Modify** [lib/data/db/seed.dart](../../../lib/data/db/seed.dart):
  - `seedInitialAmals` — replace the 6-entry list with the 12-entry list above. Keep the `_seed` helper but extend it to accept `frequency`, `weeklyDay`, `monthlyDate`, and `target` (currently it hardcodes `Frequency.daily` and `target` defaults). The helper should still default sensibly so the daily Salah entries stay terse.
  - `seedCategories` — add a fifth `CategoriesCompanion.insert` for `Sunnah` (icon `🌟`, sortOrder 1). The full list becomes Salah=0, Sunnah=1, Dhikr=2, Quran=3, Charity=4 — Sunnah slots between Salah and Dhikr. Fresh installs get this clean numbering.
  - `assignSeedCategoryIcons` — add `'Sunnah': '🌟'` to the icon mapping. (No-op for fresh installs since `seedCategories` already sets the icon. Intent: if anyone ever upgrades from a state where Sunnah was added without an icon, this fills it in.)

That's the full file scope. No other Dart code, no schema changes, no migration changes.

## Behavior on Existing vs. Fresh Installs

- **Fresh install** (`onCreate` runs): all 5 categories (sortOrder 0,1,2,3,4) and all 12 amals are inserted. The user lands on Today with the 5 prayers grouped under Salah, the 2 Sunnah prayers, etc.
- **Existing install on v3 or v4** (the current schema versions): nothing changes. `seedCategories` is not re-invoked from any upgrade path beyond `from < 2`, and `seedInitialAmals` only runs in `onCreate`. The user keeps their current data and can manually add the new amals from templates or the create form.
- **Edge case — v1 user upgrades** (calls `seedCategories` from the `from < 2` branch in [database.dart](../../../lib/data/db/database.dart)): `insertOrIgnore` preserves the existing Salah/Dhikr/Quran/Charity rows at their pre-existing sortOrder values 0/1/2/3 and inserts Sunnah at sortOrder=1. This produces a sortOrder collision between Sunnah(1) and Dhikr(1). The visible effect is only ordering ambiguity in the category list — both render, no crash, no data loss. The realistic user count for this path in 2026 is essentially zero (v1 was an early-development schema), so the spec accepts this rather than complicating `seedCategories` with conditional sortOrder logic. If it ever becomes a real issue, the fix is a single UPDATE in the `from < 2` branch to reset Dhikr/Quran/Charity to 2/3/4.
- **schemaVersion**: stays unchanged. This is a content change, not a schema change.

## Localization

None. Per the project's existing convention ([CLAUDE.md](../../../CLAUDE.md)): "Category names are NOT localized — Salah, Dhikr, Quran, Charity stay as raw DB names everywhere." Sunnah, Tahajjud, Duha, Morning Adhkar, Evening Adhkar, Tilawah, Surah Kahf, Sadaqah stay in their canonical Arabic-transliterated English forms across all 23 locales.

## Verification

End-to-end on a fresh install:

1. Delete the local app database (or use a fresh simulator/emulator).
2. Cold launch the app.
3. Confirm the Today screen shows 9 daily amals (5 prayers, 2 sunnah prayers, 2 adhkar, Tilawah). Surah Kahf and Sadaqah only appear on their respective recurrence days.
4. Confirm the 5 categories all render with their icons in the create/edit screen's category dropdown.
5. On a Friday muhasaba date (manually adjust device date if needed), confirm Surah Kahf appears under Quran.
6. On a date matching `monthlyDate == 1` (… any date if `monthlyDate` is null — Sadaqah should appear every day of the month per the current TodayBuilder rules; verify the existing logic at [lib/domain/services/today_builder.dart](../../../lib/domain/services/today_builder.dart) treats null `monthlyDate` correctly).
7. `flutter analyze` clean.
8. App icon bundle and splash unchanged.

## Out of Scope

- Adding Witr, Sunnah ratibah, Mondays/Thursdays fasting, Surah Mulk, or other practices to the seed. Could become templates in a separate change.
- Migrations that backfill the new amals onto existing user databases (intentional — too intrusive).
- Changing the [amal_templates.dart](../../../lib/features/create_edit/amal_templates.dart) list. The existing 6 templates remain available in the create-amal flow.
- Localizing any of the new amal/category names.
- Adding default reminderTime values to any of the seeded amals.
- Reordering or renaming the existing 4 categories.

## Critical Reference Files

- [lib/data/db/seed.dart](../../../lib/data/db/seed.dart) — the file being modified.
- [lib/data/db/tables.dart](../../../lib/data/db/tables.dart) — Amals + Categories schemas. No changes needed but useful to confirm field defaults.
- [lib/domain/models/frequency.dart](../../../lib/domain/models/frequency.dart) — `Frequency.daily | weekly | monthly` enum. Sunnah amals use daily; Surah Kahf uses weekly; Sadaqah uses monthly.
- [lib/features/create_edit/amal_templates.dart](../../../lib/features/create_edit/amal_templates.dart) — existing templates. Not modified, but several seed entries (Tahajjud, Duha, Sadaqah, Surah Kahf) overlap with templates. That overlap is intentional: a fresh user gets the seed; an existing user can re-add via templates with the same icon/title.
- [lib/data/db/database.dart](../../../lib/data/db/database.dart) — migration / `onCreate` flow. Confirm `seedCategories` still runs before `seedInitialAmals` so the foreign-key-style category lookup (string match) finds the new Sunnah row.
