#!/usr/bin/env python3
"""Captures the store screens from a booted simulator running a debug build.

    python3 tool/screenshots/capture.py DEVICE LOCALE OUT [SCREENS]

DEVICE is iphone (iPhone 18 Pro Max), ipad (iPad Pro 13-inch (M5)) or duo
(iPhone Duo); SCREENS is a comma list of today, amal_library, challenges,
challenge_library (default: all four), plus form, insights and heatmap on the
Duo, which also needs all of them for the canvas frames. Re-seeds through
seed.py, relaunches the app in LOCALE, taps through with Orca and writes
OUT/<device>/<screen>.png. The New amal form on Play is filled by hand. Put the
iPad in Settings › Multitasking › Full Screen Apps first, or the status bar
carries the app name and a resize handle.

The Duo renders the app on its cover display only, and iOS puts the clock and
status ring in a column down its right edge. The app keeps that column clear,
so taps mirror within the content width and the column is painted over. Pin
the clock first: xcrun simctl status_bar <udid> override --time 9:41.
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
    "duo": dict(name="iPhone Duo", display="primary", content=1146 / 1398,
                library=(0.665, 0.041), back=(0.060, 0.041), tab_y=0.891,
                tabs=(0.102, 0.307, 0.512, 0.717), challenge_library=(0.768, 0.041),
                new_amal=(0.641, 0.767), time=(0.152, 0.200)),
}
TABS = (0.125, 0.375, 0.625, 0.875)


def run(*args):
    return subprocess.run(args, capture_output=True, text=True, check=False)


def udid_of(name):
    devices = json.loads(run("xcrun", "simctl", "list", "devices", "booted", "-j").stdout)["devices"]
    for runtime in devices.values():
        for d in runtime:
            if d["name"] == name:
                return d["udid"]
    sys.exit(f"{name} is not booted")


def hide_status_column(path, content):
    """Paints the Duo's status column with the plain gutter colour beside it."""
    from PIL import Image
    im = Image.open(path).convert("RGB")
    w, h = im.size
    im.paste(im.getpixel((w - 4, h // 2)), (round(w * content), 0, w, h))
    im.save(path)


def gesture(points):
    run("orca", "emulator", "gesture", json.dumps(points), "--json")


def drag(y0, y1, x=0.4):
    """A scroll with a held finish, so the list stops where the finger does."""
    gesture([{"type": "begin", "x": x, "y": y0}] +
            [{"type": "move", "x": x, "y": y0 + (y1 - y0) * i / 24} for i in range(1, 25)])
    time.sleep(0.3)
    gesture([{"type": "move", "x": x, "y": y1}, {"type": "end", "x": x, "y": y1}])
    time.sleep(1.2)


def tap_label(label, wait):
    """Taps the accessibility node whose label is exactly LABEL."""
    tree = json.loads(run("orca", "emulator", "ax", "--json").stdout)["result"]
    stack = list(tree)
    while stack:
        n = stack.pop()
        f = n.get("frame") or {}
        if n.get("label") == label and f.get("width"):
            run("orca", "emulator", "tap", f"{f['x'] + f['width'] / 2:.3f}", f"{f['y'] + f['height'] / 2:.3f}", "--json")
            time.sleep(wait)
            return
        stack.extend(n.get("children", []))
    sys.exit(f"no {label!r} on screen")


def main():
    device, locale, out = sys.argv[1], sys.argv[2], pathlib.Path(sys.argv[3])
    screens = sys.argv[4].split(",") if len(sys.argv) > 4 else ["today", "amal_library", "challenges", "challenge_library"]
    D = DEVICES[device]
    udid = udid_of(D["name"])
    data = run("xcrun", "simctl", "get_app_container", udid, BUNDLE, "data").stdout.strip()
    out = out / device
    out.mkdir(parents=True, exist_ok=True)
    tabs = D.get("tabs", TABS)
    mirror = D.get("content", 1)

    def tap(point, wait):
        x, y = point
        run("orca", "emulator", "tap", f"{mirror - x if locale in RTL else x:.3f}", f"{y:.3f}", "--json")
        time.sleep(wait)

    def shot(screen):
        path = out / f"{screen}.png"
        display = [f"--display={D['display']}"] if "display" in D else []
        run("xcrun", "simctl", "io", udid, "screenshot", *display, str(path))
        if "content" in D:
            hide_status_column(path, D["content"])
        print(path)

    def relaunch(*seed_args):
        run("xcrun", "simctl", "terminate", udid, BUNDLE)
        time.sleep(1)
        seeded = run(sys.executable, str(HERE / "seed.py"), f"{data}/Documents/muhasaba.sqlite",
                     time.strftime("%Y-%m-%d"), locale, *seed_args)
        if seeded.returncode:
            sys.exit(seeded.stderr)
        run("xcrun", "simctl", "launch", udid, BUNDLE)
        time.sleep(7)

    run("orca", "emulator", "attach", udid, "--json")
    relaunch()
    if "today" in screens:
        shot("today")
    if "amal_library" in screens:
        tap(D["library"], 2.5)
        shot("amal_library")
        tap(D["back"], 1.5)
    if "form" in screens:
        tap(D["new_amal"], 2.5)
        shot("form")
        tap(D["back"], 1.5)
    if "challenges" in screens or "challenge_library" in screens:
        tap((tabs[1], D["tab_y"]), 2.5)
        if "challenges" in screens:
            shot("challenges")
        if "challenge_library" in screens:
            tap(D["challenge_library"], 2.5)
            shot("challenge_library")
            tap(D["back"], 1.5)
    if "insights" in screens or "heatmap" in screens:
        relaunch("--history")
        tap((tabs[2], D["tab_y"]), 3)
        tap(D["time"], 1.5)
        arb = json.loads((HERE.parents[1] / "lib" / "l10n" / f"app_{locale}.arb").read_text(encoding="utf-8"))
        tap_label(arb["statsAllTime"], 3)
        if "insights" in screens:
            shot("insights")
        if "heatmap" in screens:
            for _ in range(3):
                drag(0.70, 0.35)
            drag(0.70, 0.30)
            shot("heatmap")


if __name__ == "__main__":
    main()
