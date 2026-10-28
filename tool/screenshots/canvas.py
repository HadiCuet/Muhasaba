#!/usr/bin/env python3
"""Cuts store files out of the continuous canvas in docs/appstore-screenshot-options.html.

    python3 tool/screenshots/canvas.py --device duo --out DIR [--locales en,ar,...] [--files 2,3,6,7,8,9]

Writes <out>/<locale>/<device>_NN.png, the names assemble.py --kept reads. The
default files are the canvas cuts the store order keeps. The canvas loads its
phones from shots/<device>/<lang>/ in ../Screenshots/muhasaba-screenshots, so
restore or capture them first.
"""
import argparse
import pathlib
import subprocess

ROOT = pathlib.Path(__file__).resolve().parents[2]
CANVAS = ROOT / "docs" / "appstore-screenshot-options.html"
CHROME = "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
LOCALES = ["en", "ar", "bn", "fr", "hi", "id", "ms", "tr", "ur"]
# Canvas size of one file, and the width it is written out at.
SIZES = {"iphone": (1320, 2868, 1320), "ipad": (2064, 2752, 2064), "duo": (2064, 3003, 1398)}


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--device", required=True, choices=SIZES)
    ap.add_argument("--out", required=True, type=pathlib.Path)
    ap.add_argument("--locales", default=",".join(LOCALES))
    ap.add_argument("--files", default="2,3,6,7,8,9")
    a = ap.parse_args()
    w, h, out_w = SIZES[a.device]
    for loc in a.locales.split(","):
        for n in map(int, a.files.split(",")):
            out = a.out / loc / f"{a.device}_{n:02d}.png"
            out.parent.mkdir(parents=True, exist_ok=True)
            url = f"{CANVAS.as_uri()}?export={n - 1}&lang={loc}&device={a.device}&pal=dawn"
            subprocess.run([CHROME, "--headless", "--disable-gpu", "--hide-scrollbars",
                            f"--force-device-scale-factor={out_w / w}", "--run-all-compositor-stages-before-draw",
                            "--virtual-time-budget=10000", "--allow-file-access-from-files",
                            f"--window-size={w},{h}", f"--screenshot={out}", url],
                           check=True, capture_output=True)
            print(out)


if __name__ == "__main__":
    main()
