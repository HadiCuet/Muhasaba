import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';

import '../../../domain/models/frequency.dart';
import '../amal_templates.dart';

/// Shows the template selection sheet.
///
/// Returns:
/// - An [AmalTemplate] if the user selected one
/// - `true` if the user chose "Custom Amal"
/// - `null` if the sheet was dismissed
Future<Object?> showTemplateSheet(BuildContext context) async {
  return showModalBottomSheet<Object?>(
    context: context,
    isScrollControlled: true,
    backgroundColor: Theme.of(context).colorScheme.surface,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (context) => const _TemplateSheetBody(),
  );
}

class _TemplateSheetBody extends StatelessWidget {
  const _TemplateSheetBody();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Drag handle
            Container(
              width: 36,
              height: 4,
              decoration: BoxDecoration(
                color: theme.colorScheme.onSurfaceVariant.withValues(
                  alpha: 0.4,
                ),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            const SizedBox(height: 16),

            // Title
            Text(
              AppLocalizations.of(context).addAmal,
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),

            // Template grid
            GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              childAspectRatio: 1.4,
              children: kAmalTemplates
                  .map((t) => _TemplateCard(template: t))
                  .toList(),
            ),
            const SizedBox(height: 14),

            // Custom Amal button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  foregroundColor: theme.colorScheme.primary,
                  side: BorderSide(
                    color: theme.colorScheme.primary,
                    style: BorderStyle.solid,
                    strokeAlign: BorderSide.strokeAlignInside,
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () => Navigator.pop(context, true),
                child: Text(AppLocalizations.of(context).customAmal),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TemplateCard extends StatelessWidget {
  const _TemplateCard({required this.template});

  final AmalTemplate template;

  String _subtitle(AppLocalizations l) {
    final freq = switch (template.frequency) {
      Frequency.daily => l.frequencyDaily,
      Frequency.weekly => l.frequencyWeekly,
      Frequency.monthly => l.frequencyMonthly,
    };
    return '$freq \u00B7 ${template.category}';
  }

  String _localizedTitle(AppLocalizations l) {
    return switch (template.title) {
      'Tasbih 33x' => l.templateTasbih,
      'Istighfar 100x' => l.templateIstighfar,
      'Surah Kahf' => l.templateSurahKahf,
      'Sadaqah' => l.templateSadaqah,
      'Tahajjud' => l.templateTahajjud,
      'Duha Prayer' => l.templateDuhaPrayer,
      _ => template.title,
    };
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l = AppLocalizations.of(context);

    return Material(
      color: theme.colorScheme.surfaceContainerLow,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {
          FirebaseAnalytics.instance.logEvent(
            name: 'amal_template_selected',
            parameters: {
              'template_id': template.title,
              'category': template.category,
            },
          );
          Navigator.pop(context, template);
        },
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(template.icon, style: const TextStyle(fontSize: 24)),
              const SizedBox(height: 6),
              Text(
                _localizedTitle(l),
                style: theme.textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 2),
              Text(
                _subtitle(l),
                style: theme.textTheme.bodySmall?.copyWith(
                  fontSize: 10,
                  color: theme.colorScheme.onSurfaceVariant,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
