#!/usr/bin/env python3
"""Captures the store screens from a booted simulator running a debug build.

    python3 tool/screenshots/capture.py DEVICE LOCALE OUT [SCREENS]

DEVICE is iphone (iPhone 18 Pro Max) or ipad (iPad Pro 13-inch (M5)); SCREENS
is a comma list of today, amal_library, challenges, challenge_library (default:
all four). Re-seeds through seed.py, relaunches the app in LOCALE, taps through
with Orca and writes OUT/<device>/<screen>.png. The New amal form is filled by
hand. Put the iPad in Settings › Multitasking › Full Screen Apps first, or the
status bar carries the app name and a resize handle.
"""
import json
import pathlib
import subprocess
import sys
import time

HERE = pathlib.Path(__file__).resolve().parent
BUNDLE = "dev.mukashi.muhasaba"
RTL = {"ar", "ur", "fa", "ps"}
# Tap targets as fractions of the screen, left-to-right layout.
DEVICES = {
    "iphone": dict(name="iPhone 18 Pro Max", library=(0.836, 0.094), back=(0.065, 0.094),
                   tab_y=0.92, challenge_library=(0.945, 0.094)),
    "ipad": dict(name="iPad Pro 13-inch (M5)", library=(0.930, 0.044), back=(0.027, 0.044),
                 tab_y=0.953, challenge_library=(0.977, 0.044)),
}


def run(*args):
    return subprocess.run(args, capture_output=True, text=True, check=False)


def udid_of(name):
    devices = json.loads(run("xcrun", "simctl", "list", "devices", "booted", "-j").stdout)["devices"]
    for runtime in devices.values():
        for d in runtime:
            if d["name"] == name:
                return d["udid"]
    sys.exit(f"{name} is not booted")


def main():
    device, locale, out = sys.argv[1], sys.argv[2], pathlib.Path(sys.argv[3])
    screens = sys.argv[4].split(",") if len(sys.argv) > 4 else ["today", "amal_library", "challenges", "challenge_library"]
    D = DEVICES[device]
    udid = udid_of(D["name"])
    data = run("xcrun", "simctl", "get_app_container", udid, BUNDLE, "data").stdout.strip()
    out = out / device
    out.mkdir(parents=True, exist_ok=True)

    def tap(point, wait):
        x, y = point
        run("orca", "emulator", "tap", f"{1 - x if locale in RTL else x:.3f}", f"{y:.3f}", "--json")
        time.sleep(wait)

    def shot(screen):
        run("xcrun", "simctl", "io", udid, "screenshot", str(out / f"{screen}.png"))
        print(out / f"{screen}.png")

    run("orca", "emulator", "attach", D["name"], "--json")
    run("xcrun", "simctl", "terminate", udid, BUNDLE)
    time.sleep(1)
    seeded = run(sys.executable, str(HERE / "seed.py"), f"{data}/Documents/muhasaba.sqlite",
                 time.strftime("%Y-%m-%d"), locale)
    if seeded.returncode:
        sys.exit(seeded.stderr)
    run("xcrun", "simctl", "launch", udid, BUNDLE)
    time.sleep(7)
    if "today" in screens:
        shot("today")
    if "amal_library" in screens:
        tap(D["library"], 2.5)
        shot("amal_library")
        tap(D["back"], 1.5)
    if "challenges" in screens or "challenge_library" in screens:
        tap((0.375, D["tab_y"]), 2.5)
        if "challenges" in screens:
            shot("challenges")
        if "challenge_library" in screens:
            tap(D["challenge_library"], 2.5)
            shot("challenge_library")
            tap(D["back"], 1.5)


if __name__ == "__main__":
    main()
