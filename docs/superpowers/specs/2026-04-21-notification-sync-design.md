# Notification Sync: Centralized Deletion + Startup Recovery

## Context

The app schedules local notifications (reminders) for amals using `flutter_local_notifications`. The create/edit flow in `amal_form_screen.dart` correctly schedules and cancels notifications when a user saves changes. However, three gaps exist:

1. **Deleting from the form screen** (`_deleteAmal()`) archives the amal but does NOT cancel its notification — the reminder keeps firing for a deleted amal.
2. **Inconsistent deletion paths**: Today/History screens cancel the notification on delete, but the form screen does not.
3. **No startup recovery**: If the OS clears scheduled notifications (device restart, app reinstall), reminders silently stop working with no recovery mechanism.

## Design

### Part 1: Centralize notification cancellation in AmalRepository

**Goal**: Any code path that archives an amal automatically cancels its notification.

**Changes**:

- **`lib/data/repositories/amal_repository.dart`**
  - Add `ReminderScheduler` as a second constructor parameter
  - `removeFromTracking(int id)` calls `_scheduler.cancel(id)` after `_dao.archive()`
  
- **`lib/app/providers.dart`**
  - Update `amalRepositoryProvider` to inject `ref.watch(reminderSchedulerProvider)` as the second argument

- **`lib/features/today/today_screen.dart`**
  - Remove the redundant `await ref.read(reminderSchedulerProvider).cancel(row.amal.id)` call after `removeFromTracking()` — the repository now handles it

- **`lib/features/history/history_screen.dart`**
  - Same: remove redundant `scheduler.cancel()` after `removeFromTracking()`

- **`lib/features/create_edit/amal_form_screen.dart`**
  - `_deleteAmal()`: No change needed — repository now handles cancellation
  - `_save()`: **Stays as-is** — the form keeps its notification scheduling logic because it handles UI-level concerns (permission prompts, analytics events, snackbar messages) that don't belong in the repository

### Part 2: Startup recovery

**Goal**: Re-register all active reminders on every app launch so device restarts and OS notification clears don't silently kill reminders.

**Changes**:

- **`lib/main.dart`**
  - Create `AppDatabase` eagerly in `main()` instead of lazily via the provider
  - After `ReminderScheduler.initialize()`, query all active amals with non-null `reminderTime`
  - For each, call `scheduler.scheduleDaily()` — this is idempotent (internally cancels before re-scheduling)
  - Override `appDatabaseProvider` with the pre-created instance (alongside the existing `reminderSchedulerProvider` override)

```dart
final db = AppDatabase();
final scheduler = await ReminderScheduler.initialize();

// Startup recovery: re-register all active reminders.
// Idempotent — scheduleDaily cancels any existing notification with the same ID.
final activeAmals = await db.amalDao.getActive();
for (final amal in activeAmals) {
  final t = parseReminderTime(amal.reminderTime);
  if (t != null) {
    await scheduler.scheduleDaily(
      amalId: amal.id,
      title: amal.title,
      hour: t.hour,
      minute: t.minute,
    );
  }
}

runApp(
  ProviderScope(
    overrides: [
      appDatabaseProvider.overrideWithValue(db),
      reminderSchedulerProvider.overrideWithValue(scheduler),
    ],
    child: const MuhasabaApp(),
  ),
);
```

**Note**: Moving DB creation to `main()` does NOT change the existing `ref.onDispose(db.close)` behavior for tests — the provider's factory function is only invoked when it is NOT overridden.

## Files touched

| File | Change |
|------|--------|
| `lib/data/repositories/amal_repository.dart` | Add `ReminderScheduler` constructor param; cancel in `removeFromTracking()` |
| `lib/app/providers.dart` | Inject scheduler into `amalRepositoryProvider` |
| `lib/features/today/today_screen.dart` | Remove redundant `scheduler.cancel()` |
| `lib/features/history/history_screen.dart` | Remove redundant `scheduler.cancel()` |
| `lib/main.dart` | Eagerly create DB; add startup recovery loop; override `appDatabaseProvider` |

## What stays unchanged

- `amal_form_screen.dart` `_save()` — keeps full notification scheduling logic (permission prompts, analytics, snackbar). Belt-and-suspenders: form handles create/edit notifications at the UI level; repository handles deletion at the data level.
- `reminder_scheduler.dart` — no changes; existing API is sufficient.
- Database schema — no migration needed.

## Verification

1. `flutter analyze` — no issues
2. **Delete from form**: create amal with reminder → edit → delete → verify notification does NOT fire at the scheduled time
3. **Delete from Today/History**: same test via the remove sheet → verify notification cancelled
4. **Startup recovery**: create amal with reminder → force-stop app → relaunch → verify notification still fires
5. **Edit reminder time**: edit amal, change reminder time → verify old time doesn't fire, new time does
6. **Remove reminder**: edit amal, remove reminder → verify notification cancelled
