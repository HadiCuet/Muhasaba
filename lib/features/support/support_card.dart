import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app/providers.dart';
import '../../domain/models/app_settings.dart';
import '../../domain/models/tip_tier.dart';
import '../../domain/utils/localized_number.dart';
import '../../l10n/app_localizations.dart';
import 'tip_sheet.dart';

/// Top card of Settings: the app's identity, and under it either the support
/// ask or the supporter's badge. The tier icon takes the app icon's slot once
/// the user has tipped.
class SupportCard extends ConsumerWidget {
  const SupportCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final seed = theme.colorScheme.primary;
    final settings = ref.watch(settingsProvider).value ?? AppSettings.defaults;
    final tier = TipTier.fromRank(settings.supporterTier);
    final supported = ref.read(tipServiceProvider).isSupportedPlatform;

    return Container(
      margin: const EdgeInsets.only(top: 8),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        gradient: LinearGradient(
          colors: [seed.withValues(alpha: 0.12), seed.withValues(alpha: 0.04)],
          begin: AlignmentDirectional.topStart,
          end: AlignmentDirectional.bottomEnd,
        ),
        border: Border.all(color: seed.withValues(alpha: 0.10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              _IconSlot(tier: tier),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      l.aboutTitle,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      l.aboutSubtitle,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          if (supported) ...[
            const SizedBox(height: 10),
            Divider(height: 1, color: seed.withValues(alpha: 0.14)),
            const SizedBox(height: 10),
            if (tier == null)
              Text(
                l.supportCardBody,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                  height: 1.35,
                ),
              )
            else
              _SupporterLines(tier: tier, since: settings.supporterSince),
            const SizedBox(height: 12),
            FilledButton(
              onPressed: () =>
                  showTipSheet(context, source: TipSheetSource.settings),
              child: Text(tier == null ? l.supportCta : l.supportAgain),
            ),
          ],
        ],
      ),
    );
  }
}

class _IconSlot extends StatelessWidget {
  const _IconSlot({required this.tier});

  final TipTier? tier;

  @override
  Widget build(BuildContext context) {
    final tier = this.tier;
    if (tier == null) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset('assets/icon/app_icon.png', width: 44, height: 44),
      );
    }
    return Container(
      width: 44,
      height: 44,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(tier.icon, style: const TextStyle(fontSize: 26)),
    );
  }
}

class _SupporterLines extends StatelessWidget {
  const _SupporterLines({required this.tier, required this.since});

  final TipTier tier;
  final DateTime? since;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final locale = Localizations.localeOf(context).toString();
    final since = this.since;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${tier.icon} ${l.supporterTitle(tier.title(l))}',
          style: theme.textTheme.titleSmall?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          l.supporterThanks,
          style: theme.textTheme.bodySmall?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
            height: 1.35,
          ),
        ),
        if (since != null) ...[
          const SizedBox(height: 4),
          Text(
            localizeDigits(
              context,
              l.supporterSince(
                safeDateFormat('yMMMM', locale).format(since.toLocal()),
              ),
            ),
            style: theme.textTheme.labelSmall?.copyWith(
              color: theme.colorScheme.primary,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ],
    );
  }
}
