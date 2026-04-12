import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app/app.dart';
import 'app/providers.dart';
import 'domain/services/reminder_scheduler.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final scheduler = await ReminderScheduler.initialize();

  runApp(
    ProviderScope(
      overrides: [reminderSchedulerProvider.overrideWithValue(scheduler)],
      child: const MuhasabaApp(),
    ),
  );
}
