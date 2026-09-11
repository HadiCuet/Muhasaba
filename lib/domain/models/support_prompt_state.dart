/// Where the one-time support prompt stands. Persisted by name in `settings_kv`.
enum SupportPromptState {
  pending,
  snoozed,
  never,
  done;

  static SupportPromptState parse(String? v) {
    for (final s in values) {
      if (s.name == v) return s;
    }
    return SupportPromptState.pending;
  }
}
