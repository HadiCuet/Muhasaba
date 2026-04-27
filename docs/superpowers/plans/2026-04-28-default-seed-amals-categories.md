# Default Seed Amals + Categories Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Broaden the first-run seed in [lib/data/db/seed.dart](../../../lib/data/db/seed.dart) to 12 amals across 5 categories (Salah, Sunnah, Dhikr, Quran, Charity), so every default category is populated and the new user immediately sees the app's full breadth.

**Architecture:** All changes are confined to `lib/data/db/seed.dart`. The `_seed` private helper gets four new optional parameters (`frequency`, `weeklyDay`, `monthlyDate`, `target`) so we can express weekly and monthly amals with the same builder. `seedCategories` and `assignSeedCategoryIcons` gain a Sunnah row. `seedInitialAmals` swaps its 6-entry list for a 12-entry list. No schema changes, no migration changes, fresh-install only.

**Tech Stack:** Flutter / Dart 3.11.4. Drift (SQLite). The existing `Frequency` enum and `AmalsCompanion` / `CategoriesCompanion` companions from `database.g.dart`.

**Spec:** [docs/superpowers/specs/2026-04-28-default-seed-amals-categories-design.md](../specs/2026-04-28-default-seed-amals-categories-design.md)

**Project rules** (from [CLAUDE.md](../../../CLAUDE.md)):
- **No test files.** Verification is manual: `flutter analyze` + fresh-install behavior on a simulator.
- Commit messages: NO `Co-Authored-By: Claude`, NO `🤖 Generated with Claude Code` footer.

---

## File Structure

| File | Status | Responsibility |
|---|---|---|
| `lib/data/db/seed.dart` | modify | All three seed functions (`seedInitialAmals`, `seedCategories`, `assignSeedCategoryIcons`) plus the `_seed` helper. |

That's the only file touched. No new files.

---

### Task 1: Extend `_seed` helper to support all frequency variants

**Files:**
- Modify: [lib/data/db/seed.dart](../../../lib/data/db/seed.dart) — the `_seed` helper at the bottom of the file.

The current `_seed` hardcodes `Frequency.daily` and uses default `target=1` (from the schema). Task 3 needs to seed weekly + monthly entries with explicit `weeklyDay`. Extending the helper now keeps Task 3's call sites readable.

- [ ] **Step 1: Replace the helper**

Open [lib/data/db/seed.dart](../../../lib/data/db/seed.dart). Replace the existing `_seed` function (lines 96-112) with this version:

```dart
AmalsCompanion _seed(
  String title,
  int order,
  DateTime createdAt, {
  required String icon,
  String? category,
  Frequency frequency = Frequency.daily,
  int? weeklyDay,
  int? monthlyDate,
  int target = 1,
}) {
  return AmalsCompanion.insert(
    title: title,
    frequency: frequency,
    createdAt: createdAt,
    sortOrder: Value(order),
    isSeed: const Value(true),
    icon: Value(icon),
    category: Value(category),
    target: Value(target),
    weeklyDay: Value(weeklyDay),
    monthlyDate: Value(monthlyDate),
  );
}
```

The four new named parameters (`frequency`, `weeklyDay`, `monthlyDate`, `target`) all have defaults that match the current behavior, so existing call sites in `seedInitialAmals` continue to compile unchanged.

- [ ] **Step 2: Verify compile**

Run: `flutter analyze lib/data/db/seed.dart`

Expected: `No issues found!`

- [ ] **Step 3: Commit**

```bash
git add lib/data/db/seed.dart
git commit -m "Extend _seed helper to support weekly + monthly amals"
```

---

### Task 2: Add Sunnah category + icon mapping

**Files:**
- Modify: [lib/data/db/seed.dart](../../../lib/data/db/seed.dart) — `seedCategories` (lines 31-56) and `assignSeedCategoryIcons` (lines 61-73).

Adds the new Sunnah category at sortOrder=1, between Salah and Dhikr. The existing categories' sortOrder values shift to 2/3/4 in the seed list. The `assignSeedCategoryIcons` icon mapping gets a `Sunnah` entry too — needed for any path where Sunnah is created without an icon (defensive; harmless if it never matches).

- [ ] **Step 1: Replace `seedCategories`**

Replace the body of `seedCategories` (the `b.insertAll(...)` call) with this 5-entry list:

```dart
Future<void> seedCategories(AppDatabase db) async {
  await db.batch((b) {
    b.insertAll(db.categories, [
      CategoriesCompanion.insert(
        name: 'Salah',
        sortOrder: const Value(0),
        icon: const Value('🕌'),
      ),
      CategoriesCompanion.insert(
        name: 'Sunnah',
        sortOrder: const Value(1),
        icon: const Value('🌟'),
      ),
      CategoriesCompanion.insert(
        name: 'Dhikr',
        sortOrder: const Value(2),
        icon: const Value('📿'),
      ),
      CategoriesCompanion.insert(
        name: 'Quran',
        sortOrder: const Value(3),
        icon: const Value('📖'),
      ),
      CategoriesCompanion.insert(
        name: 'Charity',
        sortOrder: const Value(4),
        icon: const Value('💰'),
      ),
    ], mode: InsertMode.insertOrIgnore);
  });
}
```

The `mode: InsertMode.insertOrIgnore` is preserved from the original; it makes the function safe to call on databases that already have any of these rows (e.g. the v1→v3 upgrade path described in the spec).

- [ ] **Step 2: Update `assignSeedCategoryIcons`**

Replace the `mapping` constant in `assignSeedCategoryIcons` to include Sunnah:

```dart
const mapping = <String, String>{
  'Salah': '🕌',
  'Sunnah': '🌟',
  'Dhikr': '📿',
  'Quran': '📖',
  'Charity': '💰',
};
```

The rest of the function (the loop that runs UPDATE statements with `IS NULL` guards) does not change.

- [ ] **Step 3: Verify compile**

Run: `flutter analyze lib/data/db/seed.dart`

Expected: `No issues found!`

- [ ] **Step 4: Commit**

```bash
git add lib/data/db/seed.dart
git commit -m "Add Sunnah category to seed list and icon mapping"
```

---

### Task 3: Expand amal seed list to 12 entries

**Files:**
- Modify: [lib/data/db/seed.dart](../../../lib/data/db/seed.dart) — `seedInitialAmals` (lines 8-21).

Replaces the 6-entry amal list with the 12-entry list from the spec. Uses the extended `_seed` helper from Task 1 for the weekly Surah Kahf and monthly Sadaqah entries.

- [ ] **Step 1: Replace the entries list**

In `seedInitialAmals`, replace the `entries` list with:

```dart
final entries = <AmalsCompanion>[
  _seed('Fajr', 0, now, icon: '🕌', category: 'Salah'),
  _seed('Dhuhr', 1, now, icon: '🕌', category: 'Salah'),
  _seed('Asr', 2, now, icon: '🕌', category: 'Salah'),
  _seed('Maghrib', 3, now, icon: '🕌', category: 'Salah'),
  _seed('Isha', 4, now, icon: '🕌', category: 'Salah'),
  _seed('Tahajjud', 5, now, icon: '🌙', category: 'Sunnah'),
  _seed('Duha', 6, now, icon: '☀️', category: 'Sunnah'),
  _seed('Morning Adhkar', 7, now, icon: '🌅', category: 'Dhikr'),
  _seed('Evening Adhkar', 8, now, icon: '🌇', category: 'Dhikr'),
  _seed('Tilawah', 9, now, icon: '📖', category: 'Quran'),
  _seed(
    'Surah Kahf',
    10,
    now,
    icon: '📜',
    category: 'Quran',
    frequency: Frequency.weekly,
    weeklyDay: DateTime.friday,
  ),
  _seed(
    'Sadaqah',
    11,
    now,
    icon: '💰',
    category: 'Charity',
    frequency: Frequency.monthly,
  ),
];
```

`DateTime.friday == 5`, which matches the spec's `weeklyDay: 5` requirement. Using the named constant is more readable than the literal `5`.

Sadaqah's `monthlyDate` is intentionally omitted (defaults to null), matching the spec — the app shows monthly amals every day of the month when `monthlyDate` is null.

- [ ] **Step 2: Update the docstring**

Replace the existing docstring on `seedInitialAmals` (line 6-7) with an accurate one:

```dart
/// Inserts the first-run default amal list: the five fard prayers plus a
/// foundation set of sunnah prayers, daily adhkar, Quran routine, and a
/// monthly Sadaqah token. Called from `AppDatabase.migration.onCreate`.
```

- [ ] **Step 3: Verify compile**

Run: `flutter analyze lib/data/db/seed.dart`

Expected: `No issues found!`

- [ ] **Step 4: Commit**

```bash
git add lib/data/db/seed.dart
git commit -m "Expand default amal seed to 12 entries across 5 categories

Adds Tahajjud, Duha (Sunnah), Morning Adhkar, Evening Adhkar (Dhikr),
Surah Kahf (Quran, weekly Friday), and Sadaqah (Charity, monthly).
The five fard prayers and Tilawah remain. Fresh installs only —
existing databases keep their current data."
```

---

### Task 4: Verification + format

**Files:**
- Possibly modify: [lib/data/db/seed.dart](../../../lib/data/db/seed.dart) (formatter only).

- [ ] **Step 1: Project-wide analyze**

Run: `flutter analyze`

Expected: `No issues found!` (no new warnings introduced).

- [ ] **Step 2: Format**

Run: `dart format lib/data/db/seed.dart`

If the formatter changes the file, stage only `lib/data/db/seed.dart` (do NOT use `dart format .` and stage other unrelated reformatting).

- [ ] **Step 3: Build for Android (catches Drift codegen issues if any)**

Run: `flutter build apk --debug`

Expected: build succeeds. No Drift errors. Confirm the APK file exists at `build/app/outputs/flutter-apk/app-debug.apk`.

If the build fails with a Drift codegen error, check that the `_seed` helper's parameter types match the schema column types in [lib/data/db/tables.dart](../../../lib/data/db/tables.dart) (e.g., `weeklyDay` is `int?`, `monthlyDate` is `int?`, `target` is `int`).

- [ ] **Step 4: Manual fresh-install verification (the meat of verification, since the project has no tests)**

Delete the local app database to simulate a fresh install:

```bash
flutter clean
```

Then run on an iOS simulator:

```bash
flutter run -d "iPhone 15"
```

Confirm on the Today screen:
- 9 daily amals visible: Fajr, Dhuhr, Asr, Maghrib, Isha, Tahajjud, Duha, Morning Adhkar, Evening Adhkar, Tilawah.
- Surah Kahf appears ONLY on Fridays (set the device date to a Friday in iOS Settings → General → Date & Time if needed).
- Sadaqah appears (since it has no `monthlyDate` pin, the existing TodayBuilder rule shows it every day of the month).
- Tap the category dropdown in the create-amal screen — confirm 5 categories show: Salah, Sunnah, Dhikr, Quran, Charity, each with its icon.
- Group view on Today shows amals nested under their categories, with category icons.

- [ ] **Step 5: Commit format changes if any**

If `dart format` reformatted the file:

```bash
git add lib/data/db/seed.dart
git commit -m "Format seed.dart after expanding default amals"
```

If nothing changed, no commit needed.

---

## Out of Scope

These are explicitly NOT part of this plan. Each could become a follow-up if requested.

- Backfilling the new amals onto existing user databases (intentional — too intrusive; users have customized their lists).
- Adding Witr, Sunnah ratibah, Mondays/Thursdays fasting, Surah Mulk, etc. as templates in [amal_templates.dart](../../../lib/features/create_edit/amal_templates.dart).
- Localizing seed amal/category names — they stay in their canonical Arabic-transliterated English forms across all 23 locales (consistent with existing convention in [CLAUDE.md](../../../CLAUDE.md)).
- Default reminder times on any seeded amal.
- Renaming or reordering existing categories (Salah, Dhikr, Quran, Charity).
- Touching iOS/Android native splash code, the SplashScreen widget, or anything outside `lib/data/db/seed.dart`.

## Critical References

- [lib/data/db/seed.dart](../../../lib/data/db/seed.dart) — the file being modified.
- [lib/data/db/tables.dart](../../../lib/data/db/tables.dart) — schema for `Amals` and `Categories`. Confirms `weeklyDay`/`monthlyDate` are `IntColumn().nullable()`, `target` is `IntColumn` with default 1, `category` is `TextColumn().nullable()`.
- [lib/domain/models/frequency.dart](../../../lib/domain/models/frequency.dart) — the `Frequency` enum: `daily`, `weekly`, `monthly`.
- [lib/data/db/database.dart](../../../lib/data/db/database.dart) — migration. Confirms `seedInitialAmals` runs only in `onCreate`, and `seedCategories` runs in `onCreate` + the `from < 2` upgrade branch (which is the v1→v3 path discussed in the spec).
- [lib/domain/services/today_builder.dart](../../../lib/domain/services/today_builder.dart) — confirms how monthly/weekly visibility is computed for the Today screen.
