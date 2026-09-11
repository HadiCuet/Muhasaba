import '../../l10n/app_localizations.dart';

/// The four tip products. `rank` orders the badge ladder and is what
/// `AppSettings.supporterTier` stores.
enum TipTier {
  rafiq(1, 'dev.mukashi.muhasaba.tip.rafiq', '🌱'),
  nasir(2, 'dev.mukashi.muhasaba.tip.nasir', '🌿'),
  muhsin(3, 'dev.mukashi.muhasaba.tip.muhsin', '🌳'),
  ansar(4, 'dev.mukashi.muhasaba.tip.ansar', '🌴');

  const TipTier(this.rank, this.productId, this.icon);

  final int rank;
  final String productId;
  final String icon;

  static Set<String> get productIds => {for (final t in values) t.productId};

  static TipTier? fromRank(int rank) {
    for (final t in values) {
      if (t.rank == rank) return t;
    }
    return null;
  }

  static TipTier? fromProductId(String id) {
    for (final t in values) {
      if (t.productId == id) return t;
    }
    return null;
  }

  String title(AppLocalizations l) => switch (this) {
    TipTier.rafiq => l.tierRafiq,
    TipTier.nasir => l.tierNasir,
    TipTier.muhsin => l.tierMuhsin,
    TipTier.ansar => l.tierAnsar,
  };

  String meaning(AppLocalizations l) => switch (this) {
    TipTier.rafiq => l.tierRafiqMeaning,
    TipTier.nasir => l.tierNasirMeaning,
    TipTier.muhsin => l.tierMuhsinMeaning,
    TipTier.ansar => l.tierAnsarMeaning,
  };
}
