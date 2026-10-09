#!/usr/bin/env python3
"""Puts the composed frames and the kept live frames into store order.

    python3 tool/screenshots/assemble.py --frames DIR --dest DIR [--locales en,ar,...]

--frames is compose.py's output root (<frames>/<locale>/<device>/<name>.png).
Kept frames come from the live set: fastlane/screenshots/<ASC locale>/ for the
App Store and the tracked Play images for Google Play (English only).
Writes <dest>/ios/<locale>/01..10.png, <dest>/ipad/<locale>/01..10.png and
<dest>/play/en/1..8.png + featureGraphic.png.
"""
import argparse
import pathlib
import shutil

ROOT = pathlib.Path(__file__).resolve().parents[2]
LIVE_IOS = ROOT / "fastlane" / "screenshots"
LIVE_PLAY = ROOT / "fastlane" / "metadata" / "android" / "en-US" / "images" / "phoneScreenshots"
ASC = {"en": "en-US", "ar": "ar-SA", "bn": "bn-BD", "fr": "fr-FR", "hi": "hi",
       "id": "id", "ms": "ms", "tr": "tr", "ur": "ur-PK"}

# ("new", frame number) is a composed frame, ("live", n) the live file n.
IOS_ORDER = [("new", 1), ("live", 2), ("live", 3), ("new", 4), ("new", 5), ("new", 6),
             ("live", 6), ("live", 7), ("live", 9), ("live", 8)]
PLAY_ORDER = [("new", 1), ("new", 2), ("new", 3), ("new", 4), ("new", 5),
              ("live", 6), ("live", 7), ("new", 8)]


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--frames", required=True, type=pathlib.Path)
    ap.add_argument("--dest", required=True, type=pathlib.Path)
    ap.add_argument("--locales", default=",".join(ASC))
    a = ap.parse_args()
    for loc in a.locales.split(","):
        for device in ("iphone", "ipad"):
            out = a.dest / ("ios" if device == "iphone" else "ipad") / loc
            out.mkdir(parents=True, exist_ok=True)
            for i, (src, n) in enumerate(IOS_ORDER, 1):
                f = (a.frames / loc / device / f"{device}_{n:02d}.png" if src == "new"
                     else LIVE_IOS / ASC[loc] / f"{device}_{n:02d}.png")
                shutil.copyfile(f, out / f"{i:02d}.png")
        if loc == "en":
            out = a.dest / "play" / "en"
            out.mkdir(parents=True, exist_ok=True)
            for i, (src, n) in enumerate(PLAY_ORDER, 1):
                f = a.frames / "en" / "play" / f"{n}.png" if src == "new" else LIVE_PLAY / f"{n}.png"
                shutil.copyfile(f, out / f"{i}.png")
            shutil.copyfile(a.frames / "en" / "fg" / "featureGraphic.png", out / "featureGraphic.png")
        print(loc)


if __name__ == "__main__":
    main()
