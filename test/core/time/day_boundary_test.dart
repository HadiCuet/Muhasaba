import 'package:flutter_test/flutter_test.dart';

import 'package:muhasaba/core/time/day_boundary.dart';

void main() {
  group('muhasabaDateOf', () {
    test('rolloverHour = 0 → uses local date as-is', () {
      final t = DateTime(2026, 4, 11, 2, 30);
      expect(muhasabaDateOf(t, 0), DateTime.utc(2026, 4, 11));
    });

    test('rolloverHour = 3, instant before 3am → previous muhasaba day', () {
      final t = DateTime(2026, 4, 11, 2, 30);
      expect(muhasabaDateOf(t, 3), DateTime.utc(2026, 4, 10));
    });

    test('rolloverHour = 3, instant exactly 3am → new muhasaba day', () {
      final t = DateTime(2026, 4, 11, 3, 0);
      expect(muhasabaDateOf(t, 3), DateTime.utc(2026, 4, 11));
    });

    test('rolloverHour = 3, instant after 3am → new muhasaba day', () {
      final t = DateTime(2026, 4, 11, 3, 30);
      expect(muhasabaDateOf(t, 3), DateTime.utc(2026, 4, 11));
    });

    test('UTC instant is converted to local first', () {
      // This test is timezone-independent: whatever local tz the test host
      // is in, the returned value should match the local wall-clock date of
      // (instant - rollover).
      final utc = DateTime.utc(2026, 4, 11, 12, 0);
      final local = utc.toLocal();
      final expectedLocal = local.subtract(const Duration(hours: 3));
      expect(
        muhasabaDateOf(utc, 3),
        DateTime.utc(expectedLocal.year, expectedLocal.month, expectedLocal.day),
      );
    });

    test('month rollover across midnight with rollover = 0', () {
      final t = DateTime(2026, 5, 1, 0, 0, 1);
      expect(muhasabaDateOf(t, 0), DateTime.utc(2026, 5, 1));
    });
  });
}
