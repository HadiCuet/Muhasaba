#!/usr/bin/env python3
"""Uploads App Store creative assets to Muhasaba's App Asset Library.

    python3 tool/screenshots/asset_library.py upload DIR LABEL   # DIR/header_<ASC locale>.png
    python3 tool/screenshots/asset_library.py status             # creative assets and their state

Uploads are named "Header <locale> (<LABEL>)" and skipped when that name
already exists. Nothing is placed or submitted: submit the assets from
App Store Connect › Asset Library, which reviews them on their own.

Auth reuses the App Store Connect API key fastlane uses (fastlane/.env and
fastlane/.keys/, gitignored).
"""
import base64
import json
import sys
import time
from pathlib import Path

import requests
from cryptography.hazmat.primitives import hashes, serialization
from cryptography.hazmat.primitives.asymmetric import ec
from cryptography.hazmat.primitives.asymmetric.utils import decode_dss_signature

ROOT = Path(__file__).resolve().parents[2]
API = "https://api.appstoreconnect.apple.com"
BUNDLE_ID = "dev.mukashi.muhasaba"


def load_env():
    env = {}
    for line in (ROOT / "fastlane" / ".env").read_text().splitlines():
        if "=" in line and not line.lstrip().startswith("#"):
            k, v = line.split("=", 1)
            env[k.strip()] = v.strip().strip("'\"")
    return env


ENV = load_env()


def key_path():
    p = Path(ENV["ASC_KEY_FILEPATH"]).expanduser()
    p = p if p.is_absolute() else ROOT / p
    return p if p.exists() else ROOT / "fastlane" / ".keys" / p.name


def b64(raw):
    return base64.urlsafe_b64encode(raw).rstrip(b"=").decode()


def token():
    key = serialization.load_pem_private_key(key_path().read_bytes(), password=None)
    now = int(time.time())
    head = b64(json.dumps({"alg": "ES256", "kid": ENV["ASC_KEY_ID"], "typ": "JWT"}).encode())
    body = b64(json.dumps({"iss": ENV["ASC_ISSUER_ID"], "iat": now, "exp": now + 900,
                           "aud": "appstoreconnect-v1"}).encode())
    r, s = decode_dss_signature(key.sign(f"{head}.{body}".encode(), ec.ECDSA(hashes.SHA256())))
    return f"{head}.{body}.{b64(r.to_bytes(32, 'big') + s.to_bytes(32, 'big'))}"


def call(method, path, body=None, params=None):
    r = requests.request(method, API + path, params=params, json=body, timeout=60,
                         headers={"Authorization": f"Bearer {token()}"})
    if r.status_code >= 400:
        sys.exit(f"{method} {path} -> {r.status_code}\n{r.text[:1500]}")
    return r.json() if r.text else {}


def library_id():
    app = call("GET", "/v1/apps", params={"filter[bundleId]": BUNDLE_ID})["data"][0]
    return call("GET", f"/v1/apps/{app['id']}/assetLibrary")["data"]["id"]


def creative_assets(lib):
    return call("GET", f"/v1/appAssetLibraries/{lib}/images",
                params={"limit": 200, "filter[category]": "CREATIVE_ASSETS"})["data"]


def upload(lib, folder, label):
    have = {i["attributes"]["referenceName"] for i in creative_assets(lib)}
    for f in sorted(folder.glob("header_*.png")):
        name = f"Header {f.stem.split('_', 1)[1]} ({label})"
        if name in have:
            print("already uploaded:", name)
            continue
        data = f.read_bytes()
        img = call("POST", "/v1/appAssetLibraryImages", {"data": {
            "type": "appAssetLibraryImages",
            "attributes": {"fileName": f.name, "fileSize": len(data), "category": "CREATIVE_ASSETS",
                           "referenceName": name},
            "relationships": {"assetLibrary": {"data": {"type": "appAssetLibraries", "id": lib}}}}})["data"]
        for op in img["attributes"]["uploadOperations"]:
            r = requests.request(op["method"], op["url"], data=data[op["offset"]:op["offset"] + op["length"]],
                                 headers={h["name"]: h["value"] for h in op.get("requestHeaders", [])}, timeout=300)
            if r.status_code >= 400:
                sys.exit(f"upload {f.name} -> {r.status_code} {r.text[:300]}")
        call("PATCH", f"/v1/appAssetLibraryImages/{img['id']}",
             {"data": {"type": "appAssetLibraryImages", "id": img["id"], "attributes": {"uploaded": True}}})
        print("uploaded:", name)


def status(lib):
    for i in sorted(creative_assets(lib), key=lambda i: i["attributes"]["referenceName"]):
        a = i["attributes"]
        print(f"{a['referenceName']}: {a['state']} {a.get('stateDetails') or ''}".rstrip())


def main():
    lib = library_id()
    if sys.argv[1] == "upload":
        upload(lib, Path(sys.argv[2]), sys.argv[3])
    status(lib)


if __name__ == "__main__":
    main()
