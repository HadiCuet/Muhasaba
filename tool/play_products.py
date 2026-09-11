#!/usr/bin/env python3
"""Create or update Muhasaba's Play one-time tip products.

    python3 tool/play_products.py             # create/update all four tiers
    python3 tool/play_products.py rafiq       # one tier
    python3 tool/play_products.py --dry-run   # print what would be sent
    python3 tool/play_products.py --activate  # make them purchasable

A newly created purchase option is DRAFT, which is not purchasable; --activate
flips it to ACTIVE. Creating and activating are separate calls in this API.

Prices are USD base; every other region uses Play's own conversion, fetched
live from `pricing:convertRegionPrices`. That response also carries the
regions version the prices belong to and the USD/EUR pair Play wants for
regions it launches later, so nothing about regions or currencies is
hard-coded here — repricing is just editing TIERS and re-running.

Auth reuses the Play service-account JSON that fastlane uses
(fastlane/.keys/play-service-account.json, gitignored).

Two things the API gets particular about, both learned the hard way:
  * the upsert is routed at lowercase `onetimeproducts` while every other
    method on the resource uses `oneTimeProducts` — camelCase 404s as HTML;
  * `updateMask` must name fields explicitly, `*` is rejected.
"""
import base64
import json
import sys
import time
from pathlib import Path

import requests
from cryptography.hazmat.primitives import hashes, serialization
from cryptography.hazmat.primitives.asymmetric import padding

ROOT = Path(__file__).resolve().parent.parent
KEY = ROOT / "fastlane" / ".keys" / "play-service-account.json"
PKG = "dev.mukashi.muhasaba"
BASE = f"https://androidpublisher.googleapis.com/androidpublisher/v3/applications/{PKG}"
PATCH_BASE = f"{BASE}/onetimeproducts"

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


def conversion(token: str, units: int, nanos: int) -> dict:
    """Play's own regional prices for a USD amount, with the version they belong to."""
    resp = requests.post(
        f"{BASE}/pricing:convertRegionPrices",
        headers={"Authorization": f"Bearer {token}"},
        json={"price": {"currencyCode": "USD", "units": str(units), "nanos": nanos}},
        timeout=60,
    )
    resp.raise_for_status()
    return resp.json()


def product_body(slug: str, title: str, conv: dict) -> dict:
    prices = conv["convertedRegionPrices"]
    other = conv["convertedOtherRegionsPrice"]
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
            "newRegionsConfig": {
                "availability": "AVAILABLE",
                "usdPrice": other["usdPrice"],
                "eurPrice": other["eurPrice"],
            },
        }],
    }


def activate(token: str, slug: str) -> None:
    """A freshly created purchase option is DRAFT; this makes it purchasable."""
    pid = f"{PKG}.tip.{slug}"
    resp = requests.post(
        f"{BASE}/oneTimeProducts/{pid}/purchaseOptions:batchUpdateStates",
        headers={"Authorization": f"Bearer {token}"},
        json={"requests": [{"activatePurchaseOptionRequest": {
            "packageName": PKG, "productId": pid, "purchaseOptionId": "tip",
        }}]},
        timeout=60,
    )
    print(f"{pid} activate -> {resp.status_code} {'ok' if resp.ok else 'FAILED'}")
    if not resp.ok:
        print(resp.text[:1500])
        sys.exit(1)


def update_mask(body: dict) -> str:
    return ",".join(k for k in body if k not in ("packageName", "productId", "regionsVersion"))


def main() -> None:
    args = [a for a in sys.argv[1:] if not a.startswith("-")]
    dry_run = "--dry-run" in sys.argv
    slugs = args or list(TIERS)
    unknown = [s for s in slugs if s not in TIERS]
    if unknown:
        sys.exit(f"Unknown tier(s): {', '.join(unknown)}. Known: {', '.join(TIERS)}")

    token = access_token()

    if "--activate" in sys.argv:
        for slug in slugs:
            activate(token, slug)
        return

    for slug in slugs:
        title, units, nanos = TIERS[slug]
        conv = conversion(token, units, nanos)
        version = conv["regionVersion"]["version"]
        body = product_body(slug, title, conv)
        pid = body["productId"]
        regions = len(conv["convertedRegionPrices"])

        if dry_run:
            usd = conv["convertedRegionPrices"]["US"]["price"]
            amount = int(usd.get("units", 0)) + usd.get("nanos", 0) / 1e9
            print(f"{pid}: {title}, {regions} regions @ {version}, "
                  f"US {usd['currencyCode']} {amount:g}, updateMask={update_mask(body)}")
            continue

        resp = requests.patch(
            f"{PATCH_BASE}/{pid}",
            headers={"Authorization": f"Bearer {token}"},
            # The prices and the version must come from the same response, or
            # Play rejects regions whose currency changed between versions.
            params={
                "allowMissing": "true",
                "regionsVersion.version": version,
                "updateMask": update_mask(body),
            },
            json=body,
            timeout=120,
        )
        print(f"{pid} -> {resp.status_code} {'ok' if resp.ok else 'FAILED'} "
              f"({regions} regions @ {version})")
        if not resp.ok:
            print(resp.text[:1500])
            sys.exit(1)

    print("\nProducts are DRAFT until activated: "
          "python3 tool/play_products.py --activate")


if __name__ == "__main__":
    main()
