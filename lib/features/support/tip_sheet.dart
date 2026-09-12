import 'dart:async';
import 'dart:io' show Platform;

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

import '../../app/providers.dart';
import '../../domain/models/app_settings.dart';
import '../../domain/models/tip_tier.dart';
import '../../domain/services/tip_service.dart';
import '../../l10n/app_localizations.dart';
import '../settings/support_actions.dart';

/// Flip to false and resubmit if either store rejects on the "Write to us" line.
const bool kShowSupportContactLine = true;

enum TipSheetSource { prompt, settings }

String storeName() => Platform.isIOS ? 'App Store' : 'Google Play';

Future<void> showTipSheet(
  BuildContext context, {
  required TipSheetSource source,
}) {
  FirebaseAnalytics.instance.logEvent(
    name: 'tip_sheet_opened',
    parameters: {'source': source.name},
  );
  return showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    showDragHandle: true,
    useSafeArea: true,
    builder: (_) => const _TipSheet(),
  );
}

enum _Stage { tiers, busy, thanks }

class _TipSheet extends ConsumerStatefulWidget {
  const _TipSheet();

  @override
  ConsumerState<_TipSheet> createState() => _TipSheetState();
}

class _TipSheetState extends ConsumerState<_TipSheet> {
  _Stage _stage = _Stage.tiers;
  Map<TipTier, ProductDetails>? _products;
  bool _unavailable = false;
  bool _failed = false;
  bool _pending = false;
  TipTier? _buying;
  TipResult? _result;
  StreamSubscription<TipResult>? _subscription;

  @override
  void initState() {
    super.initState();
    final service = ref.read(tipServiceProvider);
    _subscription = service.results.listen(_onResult);
    _load(service);
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }

  Future<void> _load(TipService service) async {
    final products = await service.isAvailable()
        ? await service.loadProducts()
        : const <TipTier, ProductDetails>{};
    if (!mounted) return;
    final unavailable = products.length < TipTier.values.length;
    if (unavailable) {
      FirebaseAnalytics.instance.logEvent(
        name: 'tip_failed',
        parameters: {'reason': 'unavailable'},
      );
    }
    setState(() {
      _products = products;
      _unavailable = unavailable;
    });
  }

  Future<void> _buy(TipTier tier) async {
    setState(() {
      _stage = _Stage.busy;
      _buying = tier;
      _failed = false;
      _pending = false;
    });
    final launched = await ref.read(tipServiceProvider).buy(tier);
    if (!launched && mounted) _backToTiers(failed: true);
  }

  void _onResult(TipResult result) {
    if (!mounted || result.tier != _buying) return;
    final awaiting =
        _stage == _Stage.busy || (_pending && _stage == _Stage.tiers);
    if (!awaiting) return;
    switch (result.outcome) {
      case TipOutcome.purchased:
        setState(() {
          _result = result;
          _stage = _Stage.thanks;
        });
      case TipOutcome.pending:
        setState(() {
          _stage = _Stage.tiers;
          _pending = true;
          _failed = false;
        });
      case TipOutcome.canceled:
        _backToTiers(failed: false);
      case TipOutcome.failed:
        _backToTiers(failed: true);
    }
  }

  void _backToTiers({required bool failed}) {
    setState(() {
      _stage = _Stage.tiers;
      _buying = null;
      _failed = failed;
      _pending = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final settings = ref.watch(settingsProvider).value ?? AppSettings.defaults;
    final held = TipTier.fromRank(settings.supporterTier);
    final body = theme.textTheme.bodyMedium?.copyWith(
      color: theme.colorScheme.onSurfaceVariant,
      height: 1.4,
    );
    final muted = theme.textTheme.bodySmall?.copyWith(
      color: theme.colorScheme.onSurfaceVariant,
    );

    return SafeArea(
      top: false,
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
        child: switch (_stage) {
          _Stage.busy => _Busy(
            title: l.tipSheetTitle,
            message: l.tipBusy(storeName()),
          ),
          _Stage.thanks => _Thanks(
            badge: _result!.raised ? _result!.tier : (held ?? _result!.tier),
            onDone: () => Navigator.of(context).pop(),
          ),
          _Stage.tiers => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(l.tipSheetTitle, style: theme.textTheme.headlineSmall),
              const SizedBox(height: 8),
              if (held != null) _SupporterStrip(tier: held),
              Text(l.tipSheetBody, style: body),
              if (kShowSupportContactLine) ...[
                const SizedBox(height: 8),
                const _ContactLine(),
              ],
              const SizedBox(height: 14),
              if (_pending) ...[
                Text(l.tipPending(storeName()), style: body),
                const SizedBox(height: 8),
              ] else if (_failed) ...[
                Text(
                  l.tipFailed,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.error,
                  ),
                ),
                const SizedBox(height: 8),
              ],
              if (_unavailable)
                Text(l.tipUnavailable, style: muted)
              else
                _TierList(products: _products, held: held, onTap: _buy),
              const SizedBox(height: 12),
              Text(l.tipSheetStoreNote(storeName()), style: muted),
            ],
          ),
        },
      ),
    );
  }
}

class _SupporterStrip extends StatelessWidget {
  const _SupporterStrip({required this.tier});

  final TipTier tier;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: theme.colorScheme.primaryContainer.withValues(alpha: 0.5),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Text(tier.icon, style: const TextStyle(fontSize: 24)),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l.tipSheetSupporterLine(tier.title(l)),
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  l.tipSheetSupporterAgain,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _TierList extends StatelessWidget {
  const _TierList({
    required this.products,
    required this.held,
    required this.onTap,
  });

  final Map<TipTier, ProductDetails>? products;
  final TipTier? held;
  final ValueChanged<TipTier> onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: theme.colorScheme.outlineVariant),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (final (i, tier) in TipTier.values.indexed) ...[
            if (i > 0)
              Divider(
                height: 1,
                thickness: 0.5,
                color: theme.colorScheme.outlineVariant,
              ),
            _TierRow(
              tier: tier,
              price: products?[tier]?.price,
              held: tier == held,
              enabled: products != null,
              onTap: () => onTap(tier),
            ),
          ],
        ],
      ),
    );
  }
}

class _TierRow extends StatelessWidget {
  const _TierRow({
    required this.tier,
    required this.price,
    required this.held,
    required this.enabled,
    required this.onTap,
  });

  final TipTier tier;
  final String? price;
  final bool held;
  final bool enabled;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final meaning = tier.meaning(l);
    return InkWell(
      onTap: enabled ? onTap : null,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: Row(
          children: [
            Text(tier.icon, style: const TextStyle(fontSize: 22)),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tier.title(l),
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  if (meaning.isNotEmpty)
                    Text(
                      meaning,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                color: theme.colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(999),
              ),
              child: Text(
                '${held ? '✓ ' : ''}${price ?? '…'}',
                style: theme.textTheme.labelLarge?.copyWith(
                  color: theme.colorScheme.onPrimaryContainer,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Busy extends StatelessWidget {
  const _Busy({required this.title, required this.message});

  final String title;
  final String message;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(title, style: theme.textTheme.headlineSmall),
        const SizedBox(height: 28),
        const Center(child: CircularProgressIndicator()),
        const SizedBox(height: 14),
        Text(
          message,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodyMedium?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}

class _Thanks extends StatelessWidget {
  const _Thanks({required this.badge, required this.onDone});

  final TipTier badge;
  final VoidCallback onDone;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final name = badge.title(l);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 6),
        Text(
          badge.icon,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 52),
        ),
        const SizedBox(height: 12),
        Text(
          l.tipThanks,
          textAlign: TextAlign.center,
          style: theme.textTheme.headlineSmall,
        ),
        const SizedBox(height: 12),
        Center(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
            decoration: BoxDecoration(
              color: theme.colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(999),
            ),
            child: Text(
              '${badge.icon} $name',
              style: theme.textTheme.labelLarge?.copyWith(
                color: theme.colorScheme.onPrimaryContainer,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        FilledButton(onPressed: onDone, child: Text(l.tipDone)),
      ],
    );
  }
}

class _ContactLine extends StatelessWidget {
  const _ContactLine();

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final muted = theme.textTheme.bodySmall?.copyWith(
      color: theme.colorScheme.onSurfaceVariant,
    );
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 4,
      children: [
        Text(l.tipSheetOtherWays, style: muted),
        Semantics(
          button: true,
          child: GestureDetector(
            onTap: () => sendSupportEmail(context),
            child: Text(
              l.tipSheetWriteToUs,
              style: muted?.copyWith(
                color: theme.colorScheme.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
