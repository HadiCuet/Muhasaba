import 'package:drift/native.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:muhasaba/app/app.dart';
import 'package:muhasaba/app/providers.dart';
import 'package:muhasaba/data/db/database.dart';
import 'package:muhasaba/domain/services/reminder_scheduler.dart';

void main() {
  testWidgets('App boots to Today with seeded amal', (tester) async {
    final db = AppDatabase(NativeDatabase.memory());

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          appDatabaseProvider.overrideWithValue(db),
          reminderSchedulerProvider
              .overrideWithValue(const ReminderScheduler.noop()),
        ],
        child: const MuhasabaApp(),
      ),
    );
    // Give Drift's streams + Riverpod providers a few async turns to settle.
    // pumpAndSettle doesn't work here because Drift keeps background timers
    // alive and would trip the test binding's pending-timer invariant.
    for (var i = 0; i < 5; i++) {
      await tester.pump(const Duration(milliseconds: 50));
    }

    expect(find.byType(MaterialApp), findsOneWidget);
    expect(find.text('Today'), findsOneWidget);
    expect(find.text('Fajr'), findsOneWidget);
    expect(find.text('Tilawah'), findsOneWidget);

    // Close the database *inside* the test body so its internal timers are
    // gone before the framework's post-test verification runs.
    await db.close();
  });
}
