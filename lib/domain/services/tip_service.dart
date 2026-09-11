import 'dart:async';
import 'dart:io' show Platform;

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

import '../../data/repositories/settings_repository.dart';
import '../models/tip_tier.dart';

enum TipOutcome { purchased, canceled, failed, pending }

class TipResult {
  const TipResult(this.tier, this.outcome, {this.raised = false});

  final TipTier tier;
  final TipOutcome outcome;

  /// True when this purchase raised the badge.
  final bool raised;
}

/// Owns the store connection for the app's lifetime. The purchase stream is
/// subscribed once at startup so a transaction that resolves while no sheet
/// is open — an Android pending payment, an app killed mid-purchase, an
/// unfinished StoreKit transaction — is still credited and completed.
class TipService {
  TipService(this._settings);

  final SettingsRepository _settings;
  final InAppPurchase _iap = InAppPurchase.instance;
  final _results = StreamController<TipResult>.broadcast();

  StreamSubscription<List<PurchaseDetails>>? _subscription;
  bool _available = false;
  Map<TipTier, ProductDetails>? _products;
  TipTier? _inFlight;

  // One batch at a time: recordTip is a read-then-write.
  Future<void> _chain = Future.value();

  Stream<TipResult> get results => _results.stream;

  bool get isSupportedPlatform => Platform.isIOS || Platform.isAndroid;

  void start() {
    if (!isSupportedPlatform) return;
    _subscription ??= _iap.purchaseStream.listen((purchases) {
      _chain = _chain.then((_) => _onPurchases(purchases)).catchError((
        Object e,
        StackTrace s,
      ) {
        FirebaseCrashlytics.instance.recordError(e, s);
      });
    }, onError: (Object _) {});
  }

  void dispose() {
    _subscription?.cancel();
    _results.close();
  }

  Future<bool> isAvailable() async {
    if (!isSupportedPlatform) return false;
    if (_available) return true;
    final ok = await _iap.isAvailable().catchError((Object _) => false);
    if (ok) _available = true;
    return ok;
  }

  /// Store-localized product details keyed by tier. Cached once all four
  /// resolve; a partial or failed answer is returned but not cached.
  Future<Map<TipTier, ProductDetails>> loadProducts() async {
    final cached = _products;
    if (cached != null) return cached;
    try {
      final response = await _iap.queryProductDetails(TipTier.productIds);
      final products = <TipTier, ProductDetails>{};
      for (final p in response.productDetails) {
        final tier = TipTier.fromProductId(p.id);
        if (tier != null) products[tier] = p;
      }
      if (products.length == TipTier.values.length) _products = products;
      return products;
    } catch (_) {
      return const {};
    }
  }

  /// Launches the store's purchase UI. The outcome arrives on [results].
  Future<bool> buy(TipTier tier) async {
    final product = (await loadProducts())[tier];
    if (product == null) return false;
    FirebaseAnalytics.instance.logEvent(
      name: 'tip_started',
      parameters: {'tier': tier.name},
    );
    _inFlight = tier;
    try {
      final launched = await _iap.buyConsumable(
        purchaseParam: PurchaseParam(productDetails: product),
      );
      if (!launched) _inFlight = null;
      return launched;
    } catch (_) {
      _inFlight = null;
      return false;
    }
  }

  Future<void> _onPurchases(List<PurchaseDetails> purchases) async {
    for (final purchase in purchases) {
      try {
        final known = TipTier.fromProductId(purchase.productID);
        final tier = known ?? _inFlight;
        switch (purchase.status) {
          case PurchaseStatus.pending:
            if (tier != null) {
              _results.add(TipResult(tier, TipOutcome.pending));
            }
            continue;
          case PurchaseStatus.purchased:
          case PurchaseStatus.restored:
            if (known != null) await _credit(known);
          case PurchaseStatus.error:
            _fail(tier, TipOutcome.failed);
          case PurchaseStatus.canceled:
            _fail(tier, TipOutcome.canceled);
        }
        if (tier == _inFlight) _inFlight = null;
        if (purchase.pendingCompletePurchase) {
          await _iap.completePurchase(purchase);
        }
      } catch (e, s) {
        FirebaseCrashlytics.instance.recordError(e, s);
      }
    }
  }

  Future<void> _credit(TipTier tier) async {
    final before = await _settings.get();
    final raised = tier.rank > before.supporterTier;
    await _settings.recordTip(tier, now: DateTime.now().toUtc());
    FirebaseAnalytics.instance.logEvent(
      name: 'tip_completed',
      parameters: {'tier': tier.name, 'raised': raised.toString()},
    );
    _results.add(TipResult(tier, TipOutcome.purchased, raised: raised));
  }

  void _fail(TipTier? tier, TipOutcome outcome) {
    FirebaseAnalytics.instance.logEvent(
      name: 'tip_failed',
      parameters: {
        'reason': outcome == TipOutcome.canceled ? 'canceled' : 'error',
      },
    );
    if (tier != null) _results.add(TipResult(tier, outcome));
  }
}
