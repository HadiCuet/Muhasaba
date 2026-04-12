# Card Tint + Inline Notes

**Date:** 2026-04-12
**Status:** Approved

## Changes

### 1. Progressive Completion Tint
- Card background lerps from `surface` → `primaryContainer` based on `progress / target`
- Card border lerps from `outlineVariant` → `primary` at 40% opacity
- Simple amal (target=1): jumps to full tint on completion
- Count-based (target>1): tint deepens incrementally with each step
- Works in both light and dark mode via Material 3 color tokens

### 2. Remove Strikethrough
- Completed title no longer has `TextDecoration.lineThrough`
- Title just dims to `onSurfaceVariant` color when done

### 3. Inline Collapsible Note
- Replace popup `AlertDialog` with inline expandable section inside the card
- `AmalRowTile` converts from `StatelessWidget` → `StatefulWidget` to track `_noteExpanded`
- `AnimatedSize` for smooth expand/collapse
- Collapsed: note preview shown as italic one-liner (existing behavior)
- Expanded: inline `TextField` with Save / Clear / Cancel buttons
- Triggers: note icon tap, note preview tap, SnackBar "Add note" action
- Note icon visible for both simple and count-based amal

### 4. Files
- `lib/features/today/widgets/amal_row.dart` — all changes
