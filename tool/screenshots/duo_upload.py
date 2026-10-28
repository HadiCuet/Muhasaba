#!/usr/bin/env python3
"""Uploads the iPhone Duo screenshot set to an editable App Store version.

    python3 tool/screenshots/duo_upload.py VERSION [--replace] [--dry-run]

Reads duo-marketing-2026-10/<lang>/01..10.png from ../Screenshots/muhasaba-screenshots
(restore it with archive.sh first). fastlane's deliver has no APP_IPHONE_DUO display
type, and a deliver run that uploads screenshots deletes every set it doesn't upload,
so run this after any `fastlane ios metadata` and before submitting for review.
"""
import hashlib
import pathlib
import sys
import time

import requests

import asset_library as asc

DISPLAY_TYPE = "APP_IPHONE_DUO"
SET = pathlib.Path(__file__).resolve().parents[3] / "Screenshots" / "muhasaba-screenshots" / "duo-marketing-2026-10"
def api(method, path, body=None, params=None, tries=6):
    """asset_library.call, but Apple's intermittent 5xx and network drops are retried."""
    for attempt in range(tries):
        try:
            r = requests.request(method, asc.API + path, params=params, json=body, timeout=60,
                                 headers={"Authorization": f"Bearer {asc.token()}"})
        except requests.RequestException:
            time.sleep(3 * (attempt + 1))
            continue
        if r.status_code < 500:
            if r.status_code >= 400:
                sys.exit(f"{method} {path} -> {r.status_code}\n{r.text[:1500]}")
            return r.json() if r.text else {}
        time.sleep(3 * (attempt + 1))
    sys.exit(f"{method} {path} still failing after {tries} tries")


LOCALES = {"en": "en-US", "ar": "ar-SA", "bn": "bn-BD", "fr": "fr-FR", "hi": "hi",
           "id": "id", "ms": "ms", "tr": "tr", "ur": "ur-PK"}


def editable_version(version):
    app = api("GET", "/v1/apps", params={"filter[bundleId]": asc.BUNDLE_ID})["data"][0]["id"]
    for v in api("GET", f"/v1/apps/{app}/appStoreVersions",
                      params={"filter[platform]": "IOS", "limit": 10})["data"]:
        if v["attributes"]["versionString"] == version:
            return v
    sys.exit(f"No App Store version {version}")


def upload_one(set_id, path):
    data = path.read_bytes()
    shot = api("POST", "/v1/appScreenshots", body={"data": {
        "type": "appScreenshots",
        "attributes": {"fileName": path.name, "fileSize": len(data)},
        "relationships": {"appScreenshotSet": {"data": {"type": "appScreenshotSets", "id": set_id}}},
    }})["data"]
    for op in shot["attributes"]["uploadOperations"]:
        part = data[op["offset"]:op["offset"] + op["length"]]
        headers = {h["name"]: h["value"] for h in op.get("requestHeaders") or []}
        for attempt in range(6):
            try:
                r = requests.request(op["method"], op["url"], data=part, headers=headers, timeout=120)
                if r.status_code < 500:
                    r.raise_for_status()
                    break
            except requests.ConnectionError:
                pass
            except requests.Timeout:
                pass
            time.sleep(3 * (attempt + 1))
        else:
            sys.exit(f"upload of {path.name} kept failing")
    api("PATCH", f"/v1/appScreenshots/{shot['id']}", body={"data": {
        "type": "appScreenshots", "id": shot["id"],
        "attributes": {"uploaded": True, "sourceFileChecksum": hashlib.md5(data).hexdigest()},
    }})
    return shot["id"]


def wait_processed(ids):
    pending = set(ids)
    for _ in range(90):
        for sid in list(pending):
            state = api("GET", f"/v1/appScreenshots/{sid}")["data"]["attributes"]["assetDeliveryState"]["state"]
            if state == "COMPLETE":
                pending.discard(sid)
            elif state == "FAILED":
                sys.exit(f"Apple rejected screenshot {sid}")
        if not pending:
            return
        time.sleep(4)
    sys.exit(f"{len(pending)} screenshots still processing")


def complete(set_id):
    """A set an earlier run finished: all ten frames there and processed."""
    shots = api("GET", f"/v1/appScreenshotSets/{set_id}/appScreenshots", params={"limit": 50})["data"]
    return len(shots) == 10 and all(
        (s["attributes"].get("assetDeliveryState") or {}).get("state") == "COMPLETE" for s in shots)


def main():
    args = [a for a in sys.argv[1:] if not a.startswith("--")]
    if not args:
        sys.exit(__doc__)
    replace, dry = "--replace" in sys.argv, "--dry-run" in sys.argv
    files = {lang: sorted((SET / lang).glob("[0-9][0-9].png")) for lang in LOCALES}
    for lang, fs in files.items():
        if len(fs) != 10:
            sys.exit(f"{lang}: expected 10 frames in {SET / lang}, found {len(fs)}")
    version = editable_version(args[0])
    if version["attributes"]["appStoreState"] not in ("PREPARE_FOR_SUBMISSION", "DEVELOPER_REJECTED", "REJECTED"):
        sys.exit(f"{args[0]} is {version['attributes']['appStoreState']}; screenshots can't change now")
    locs = {l["attributes"]["locale"]: l["id"] for l in api(
        "GET", f"/v1/appStoreVersions/{version['id']}/appStoreVersionLocalizations", params={"limit": 50})["data"]}
    for lang, locale in LOCALES.items():
        if locale not in locs:
            print(f"{locale}: no localization on {args[0]}, skipped")
            continue
        sets = api("GET", f"/v1/appStoreVersionLocalizations/{locs[locale]}/appScreenshotSets",
                        params={"limit": 50})["data"]
        existing = next((s for s in sets if s["attributes"]["screenshotDisplayType"] == DISPLAY_TYPE), None)
        if existing and not replace and complete(existing["id"]):
            print(f"{locale}: Duo set already there, pass --replace to rebuild it")
            continue
        if dry:
            print(f"{locale}: would upload {len(files[lang])} frames" + (" (replacing)" if existing else ""))
            continue
        if existing:
            api("DELETE", f"/v1/appScreenshotSets/{existing['id']}")
        set_id = api("POST", "/v1/appScreenshotSets", body={"data": {
            "type": "appScreenshotSets",
            "attributes": {"screenshotDisplayType": DISPLAY_TYPE},
            "relationships": {"appStoreVersionLocalization": {
                "data": {"type": "appStoreVersionLocalizations", "id": locs[locale]}}},
        }})["data"]["id"]
        ids = [upload_one(set_id, f) for f in files[lang]]
        wait_processed(ids)
        api("PATCH", f"/v1/appScreenshotSets/{set_id}/relationships/appScreenshots",
                 body={"data": [{"type": "appScreenshots", "id": i} for i in ids]})
        print(f"{locale}: {len(ids)} Duo frames uploaded")


if __name__ == "__main__":
    main()
