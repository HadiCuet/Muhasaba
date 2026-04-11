import 'package:flutter_test/flutter_test.dart';

import 'package:muhasaba/core/time/period.dart';

void main() {
  group('weekPeriodOf', () {
    test('Saturday start: Sat 2026-04-11 is the start of its own week', () {
      // 2026-04-11 is a Saturday.
      final p = weekPeriodOf(DateTime.utc(2026, 4, 11), DateTime.saturday);
      expect(p.start, DateTime.utc(2026, 4, 11));
      expect(p.endExclusive, DateTime.utc(2026, 4, 18));
    });

    test('Saturday start: Fri 2026-04-10 is the LAST day of prev week', () {
      final p = weekPeriodOf(DateTime.utc(2026, 4, 10), DateTime.saturday);
      expect(p.start, DateTime.utc(2026, 4, 4));
      expect(p.endExclusive, DateTime.utc(2026, 4, 11));
    });

    test('Monday start: Wed 2026-04-15 → week [Mon 13, Mon 20)', () {
      final p = weekPeriodOf(DateTime.utc(2026, 4, 15), DateTime.monday);
      expect(p.start, DateTime.utc(2026, 4, 13));
      expect(p.endExclusive, DateTime.utc(2026, 4, 20));
    });

    test('contains() matches inclusive-exclusive bounds', () {
      final p = weekPeriodOf(DateTime.utc(2026, 4, 11), DateTime.saturday);
      expect(p.contains(DateTime.utc(2026, 4, 11)), isTrue);
      expect(p.contains(DateTime.utc(2026, 4, 17)), isTrue);
      expect(p.contains(DateTime.utc(2026, 4, 18)), isFalse);
      expect(p.contains(DateTime.utc(2026, 4, 10)), isFalse);
    });
  });

  group('monthPeriodOf', () {
    test('startOfMonth = 1, date in middle of month', () {
      final p = monthPeriodOf(DateTime.utc(2026, 4, 15), 1);
      expect(p.start, DateTime.utc(2026, 4, 1));
      expect(p.endExclusive, DateTime.utc(2026, 5, 1));
    });

    test('startOfMonth = 1, date is first of month → that month', () {
      final p = monthPeriodOf(DateTime.utc(2026, 4, 1), 1);
      expect(p.start, DateTime.utc(2026, 4, 1));
      expect(p.endExclusive, DateTime.utc(2026, 5, 1));
    });

    test('startOfMonth = 15, date before 15th → previous month', () {
      final p = monthPeriodOf(DateTime.utc(2026, 4, 10), 15);
      expect(p.start, DateTime.utc(2026, 3, 15));
      expect(p.endExclusive, DateTime.utc(2026, 4, 15));
    });

    test('startOfMonth = 31, Feb 28 (non-leap) → [Jan 31, Feb 28)', () {
      // 2026 is not a leap year; Feb has 28 days. The period starting at 31
      // clamps to the last day of each month. For a date ON Feb 28, it's the
      // LAST day of the [Jan 31, Feb 28) period (endExclusive = Feb 28).
      // Feb 28 itself must fall in the NEXT period: [Feb 28, Mar 31).
      final p = monthPeriodOf(DateTime.utc(2026, 2, 28), 31);
      expect(p.start, DateTime.utc(2026, 2, 28));
      expect(p.endExclusive, DateTime.utc(2026, 3, 31));
    });

    test('startOfMonth = 31, Apr 30 → [Apr 30, May 31)', () {
      // Apr has 30 days so the clamped period start is Apr 30.
      final p = monthPeriodOf(DateTime.utc(2026, 4, 30), 31);
      expect(p.start, DateTime.utc(2026, 4, 30));
      expect(p.endExclusive, DateTime.utc(2026, 5, 31));
    });

    test('startOfMonth = 31, Apr 25 → prev period [Mar 31, Apr 30)', () {
      final p = monthPeriodOf(DateTime.utc(2026, 4, 25), 31);
      expect(p.start, DateTime.utc(2026, 3, 31));
      expect(p.endExclusive, DateTime.utc(2026, 4, 30));
    });

    test('year rollover: Jan 15 with startOfMonth=31 → [Dec 31, Jan 31)', () {
      final p = monthPeriodOf(DateTime.utc(2026, 1, 15), 31);
      expect(p.start, DateTime.utc(2025, 12, 31));
      expect(p.endExclusive, DateTime.utc(2026, 1, 31));
    });
  });

  group('daysInMonth', () {
    test('31-day months', () {
      expect(daysInMonth(2026, 1), 31);
      expect(daysInMonth(2026, 3), 31);
      expect(daysInMonth(2026, 12), 31);
    });

    test('30-day months', () {
      expect(daysInMonth(2026, 4), 30);
      expect(daysInMonth(2026, 11), 30);
    });

    test('February non-leap', () {
      expect(daysInMonth(2026, 2), 28);
    });

    test('February leap', () {
      expect(daysInMonth(2024, 2), 29);
    });
  });
}
