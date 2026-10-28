#!/usr/bin/env python3
"""Puts the composed frames and the kept live frames into store order.

    python3 tool/screenshots/assemble.py --frames DIR --dest DIR [--locales en,ar,...] [--devices iphone,ipad,duo]

--frames is compose.py's output root (<frames>/<locale>/<device>/<name>.png).
Kept frames come from the live set: {ios,ipad}-marketing-2026-08/<locale>/ in
../Screenshots/muhasaba-screenshots (--live; archived as release v2.0.0) for the
App Store, and the tracked Play images for Google Play (English only). --kept
points at re-rendered live frames (<kept>/<locale>/<device>_NN.png) that win
over the live files.
The iPhone Duo has no live set: its kept frames are canvas.py cuts passed as
--kept.
Writes <dest>/ios/<locale>/01..10.png, <dest>/ipad/<locale>/01..10.png,
<dest>/duo/<locale>/01..10.png and <dest>/play/en/1..8.png + featureGraphic.png.
"""
import argparse
import pathlib
import shutil

ROOT = pathlib.Path(__file__).resolve().parents[2]
LIVE_SETS = ROOT.parent / "Screenshots" / "muhasaba-screenshots"
LIVE_FOLDER = {"iphone": "ios-marketing-2026-08", "ipad": "ipad-marketing-2026-08"}
DEST = {"iphone": "ios", "ipad": "ipad", "duo": "duo"}
LIVE_PLAY = ROOT / "fastlane" / "metadata" / "android" / "en-US" / "images" / "phoneScreenshots"
LOCALES = ["en", "ar", "bn", "fr", "hi", "id", "ms", "tr", "ur"]

# ("new", frame number) is a composed frame, ("live", n) the live file n.
IOS_ORDER = [("new", 1), ("live", 2), ("live", 3), ("new", 4), ("new", 5), ("new", 6),
             ("live", 6), ("live", 7), ("live", 9), ("live", 8)]
PLAY_ORDER = [("new", 1), ("new", 2), ("new", 3), ("new", 4), ("new", 5),
              ("live", 6), ("live", 7), ("new", 8)]


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--frames", required=True, type=pathlib.Path)
    ap.add_argument("--dest", required=True, type=pathlib.Path)
    ap.add_argument("--live", type=pathlib.Path, default=LIVE_SETS)
    ap.add_argument("--kept", type=pathlib.Path)
    ap.add_argument("--locales", default=",".join(LOCALES))
    ap.add_argument("--devices", default="iphone,ipad")
    a = ap.parse_args()
    devices = a.devices.split(",")
    for loc in a.locales.split(","):
        for device in devices:
            out = a.dest / DEST[device] / loc
            out.mkdir(parents=True, exist_ok=True)
            for i, (src, n) in enumerate(IOS_ORDER, 1):
                name = f"{device}_{n:02d}.png"
                if src == "new":
                    f = a.frames / loc / device / name
                elif a.kept and (a.kept / loc / name).exists():
                    f = a.kept / loc / name
                elif device == "duo":
                    raise SystemExit(f"{a.kept}/{loc}/{name} is missing; cut it with canvas.py --device duo")
                else:
                    f = a.live / LIVE_FOLDER[device] / loc / f"{n:02d}.png"
                    if not f.exists():
                        raise SystemExit(f"{f} is missing; bring it back with "
                                         f"{a.live}/archive.sh restore v2.0.0 {LIVE_FOLDER[device]}")
                shutil.copyfile(f, out / f"{i:02d}.png")
        if loc == "en" and "iphone" in devices:
            out = a.dest / "play" / "en"
            out.mkdir(parents=True, exist_ok=True)
            for i, (src, n) in enumerate(PLAY_ORDER, 1):
                f = a.frames / "en" / "play" / f"{n}.png" if src == "new" else LIVE_PLAY / f"{n}.png"
                shutil.copyfile(f, out / f"{i}.png")
            shutil.copyfile(a.frames / "en" / "fg" / "featureGraphic.png", out / "featureGraphic.png")
        print(loc)


if __name__ == "__main__":
    main()
