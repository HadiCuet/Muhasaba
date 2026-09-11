#!/usr/bin/env python3
"""Create or update Muhasaba's Play one-time tip products.

    python3 tool/play_products.py            # all four tiers
    python3 tool/play_products.py rafiq      # one tier
    python3 tool/play_products.py --dry-run  # print what would be sent

Prices are USD base; every other region uses Play's own conversion, fetched
live from `pricing:convertRegionPrices` so the rates are Google's and not a
hard-coded table. Re-run after changing USD_PRICE to reprice everywhere.

Auth reuses the Play service-account JSON that fastlane uses
(fastlane/.keys/play-service-account.json, gitignored). The legacy
`inappproducts` API is retired for this app; this uses `oneTimeProducts`.
"""
import base64, json, sys, time
from pathlib import Path

import requests
from cryptography.hazmat.primitives import hashes, serialization
from cryptography.hazmat.primitives.asymmetric import padding

ROOT = Path(__file__).resolve().parent.parent
KEY = ROOT / "fastlane" / ".keys" / "play-service-account.json"
PKG = "dev.mukashi.muhasaba"
BASE = f"https://androidpublisher.googleapis.com/androidpublisher/v3/applications/{PKG}"
REGIONS_VERSION = "2022/02"

# tier slug -> (store title, USD units, USD nanos)
TIERS = {
    "rafiq": ("Tip — Rafiq", 0, 990_000_000),
    "nasir": ("Tip — Nasir", 4, 990_000_000),
    "muhsin": ("Tip — Muhsin", 9, 990_000_000),
    "ansar": ("Tip — Ansar", 19, 990_000_000),
}
DESCRIPTION = "Optional tip to support Muhasaba's development. Unlocks nothing."


def _b64(raw: bytes) -> bytes:
    return base64.urlsafe_b64encode(raw).rstrip(b"=")


def access_token() -> str:
    if not KEY.exists():
        sys.exit(f"Play service-account JSON not found at {KEY}")
    sa = json.loads(KEY.read_text())
    now = int(time.time())
    header = _b64(json.dumps({"alg": "RS256", "typ": "JWT"}).encode())
    claims = _b64(json.dumps({
        "iss": sa["client_email"],
        "scope": "https://www.googleapis.com/auth/androidpublisher",
        "aud": "https://oauth2.googleapis.com/token",
        "iat": now,
        "exp": now + 3600,
    }).encode())
    signed = header + b"." + claims
    key = serialization.load_pem_private_key(sa["private_key"].encode(), password=None)
    assertion = (signed + b"." + _b64(key.sign(signed, padding.PKCS1v15(), hashes.SHA256()))).decode()
    resp = requests.post("https://oauth2.googleapis.com/token", data={
        "grant_type": "urn:ietf:params:oauth:grant-type:jwt-bearer",
        "assertion": assertion,
    }, timeout=30)
    resp.raise_for_status()
    return resp.json()["access_token"]


def converted_prices(token: str, units: int, nanos: int) -> dict:
    resp = requests.post(
        f"{BASE}/pricing:convertRegionPrices",
        headers={"Authorization": f"Bearer {token}"},
        json={"price": {"currencyCode": "USD", "units": str(units), "nanos": nanos}},
        timeout=60,
    )
    resp.raise_for_status()
    return resp.json()["convertedRegionPrices"]


def product_body(slug: str, title: str, prices: dict) -> dict:
    return {
        "packageName": PKG,
        "productId": f"{PKG}.tip.{slug}",
        "listings": [{"languageCode": "en-US", "title": title, "description": DESCRIPTION}],
        "purchaseOptions": [{
            "purchaseOptionId": "tip",
            # legacyCompatible so BillingClient's classic INAPP query finds it,
            # which is what the app's in_app_purchase flow uses.
            "buyOption": {"legacyCompatible": True},
            "regionalPricingAndAvailabilityConfigs": [
                {"regionCode": rc, "price": entry["price"], "availability": "AVAILABLE"}
                for rc, entry in sorted(prices.items())
            ],
            "newRegionsConfig": {"availability": "AVAILABLE"},
        }],
    }


def main() -> None:
    args = [a for a in sys.argv[1:] if not a.startswith("-")]
    dry_run = "--dry-run" in sys.argv
    slugs = args or list(TIERS)
    unknown = [s for s in slugs if s not in TIERS]
    if unknown:
        sys.exit(f"Unknown tier(s): {', '.join(unknown)}. Known: {', '.join(TIERS)}")

    token = access_token()
    for slug in slugs:
        title, units, nanos = TIERS[slug]
        prices = converted_prices(token, units, nanos)
        body = product_body(slug, title, prices)
        pid = body["productId"]
        if dry_run:
            usd = prices["US"]["price"]
            print(f"{pid}: {title}, {len(prices)} regions, "
                  f"US {usd['currencyCode']} {int(usd.get('units', 0)) + usd.get('nanos', 0) / 1e9:g}")
            continue
        resp = requests.patch(
            f"{BASE}/oneTimeProducts/{pid}",
            headers={"Authorization": f"Bearer {token}"},
            params={"allowMissing": "true", "regionsVersion.version": REGIONS_VERSION, "updateMask": "*"},
            json=body,
            timeout=120,
        )
        status = "ok" if resp.ok else "FAILED"
        print(f"{pid} -> {resp.status_code} {status} ({len(prices)} regions)")
        if not resp.ok:
            print(resp.text[:1500])
            sys.exit(1)


if __name__ == "__main__":
    main()
