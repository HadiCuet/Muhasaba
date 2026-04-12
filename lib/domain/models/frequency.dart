/// How often an amal recurs.
///
/// NOTE: Drift stores this as `index` (via `intEnum`). Do NOT reorder the
/// values — append new ones at the end, and write a migration if you must
/// remove any. Reordering would silently corrupt existing data.
enum Frequency { daily, weekly, monthly }
