/// What a challenge counts.
///
/// NOTE: Drift stores this as `index` (via `intEnum`). Do NOT reorder the
/// values — append new ones at the end, and write a migration if you must
/// remove any. Reordering would silently corrupt existing data.
enum ChallengeMode {
  /// Cumulative units, e.g. "20 rakah". Entries hold the day's amount.
  count,

  /// One per day regardless of amount, e.g. "Fajr on 30 days". Entries hold 1.
  days,
}

/// Same ordering caveat as [ChallengeMode].
enum ChallengeStatus { active, completed, ended }
