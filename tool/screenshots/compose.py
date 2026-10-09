#!/usr/bin/env python3
"""Renders Muhasaba's new store frames in the house style of
docs/appstore-screenshot-options.html, the canvas that made the live set, so
they sit beside the kept live frames without a seam.

    python3 tool/screenshots/compose.py --locale en --captures DIR --out DIR

<captures>/<device>/<screen>.png are plain simulator screenshots, device
iphone or ipad, screen today | amal_library | challenge_library | challenges |
new_amal. Google Play and the feature graphic reuse the iPhone captures.
Copy comes from copy/<locale>.json; `*word*` marks the highlighted part.
"""
import argparse
import html
import json
import math
import pathlib
import re
import subprocess
import tempfile

HERE = pathlib.Path(__file__).resolve().parent
ICON = HERE.parents[1] / "fastlane" / "metadata" / "android" / "en-US" / "images" / "icon.png"
CHROME = "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
STRIP_FILES = 10
TILT = 18

# From DEVICES in docs/appstore-screenshot-options.html. capEdge is where the
# live captions end (bottom) or start (top); a longer caption grows away from
# it and pushes the device the other way.
DEVICES = {
    "iphone": dict(W=1320, H=2868, gut=76, capW=1168, eb=48, hs=162, heroHs=196, sub=96, chip=52,
                   scrW=390, scrH=844, bezel=16, radius=74, radiusIn=58, dz=1.95,
                   capAt="bottom", capEdge=2842, gap=90,
                   lockTop=300, lockIcon=216, lockName=96, lockSub=46, lockGap=38, heroTop=1090, chipsTop=2500),
    "play": dict(W=1440, H=2560, gut=84, capW=1272, eb=50, hs=168, heroHs=200, sub=100, chip=56,
                 scrW=390, scrH=844, bezel=16, radius=74, radiusIn=58, dz=1.85,
                 capAt="bottom", capEdge=2435, gap=60,
                 lockTop=250, lockIcon=224, lockName=100, lockSub=48, lockGap=38, heroTop=880, chipsTop=2150),
    "ipad": dict(W=2064, H=2752, gut=120, capW=1800, eb=64, hs=216, heroHs=262, sub=128, chip=66,
                 scrW=1024, scrH=1366, bezel=20, radius=66, radiusIn=46, dz=1.40,
                 capAt="top", capEdge=150, gap=33,
                 lockTop=180, lockIcon=300, lockName=132, lockSub=64, lockGap=50, heroTop=840, chipsTop=2440),
}

# (output name, index in the 10-file strip, frame kind)
FRAMES = {
    "iphone": [("iphone_01", 0, "statement"), ("iphone_04", 3, "amal_library"),
               ("iphone_05", 4, "challenge_library"), ("iphone_06", 5, "pace")],
    "ipad": [("ipad_01", 0, "statement"), ("ipad_04", 3, "amal_library"),
             ("ipad_05", 4, "challenge_library"), ("ipad_06", 5, "pace")],
    "play": [("1", 0, "statement"), ("2", 1, "tick"), ("3", 2, "amal_library"),
             ("4", 3, "challenge_library"), ("5", 4, "pace"), ("8", 7, "track")],
    "fg": [("featureGraphic", 0, "fg")],
    "header": [("header", 0, "header")],
}

# App Store product page header (iOS 27): 21:9, with Apple's template safe area.
HEADER = dict(W=3840, H=1646, safe=(1097, 493, 2743, 1154), hs=132)
SCREEN = {"tick": "today", "amal_library": "amal_library", "challenge_library": "challenge_library",
          "pace": "challenges", "track": "new_amal", "fg": "today"}

FONTS = {
    "latin": '"Avenir Next","Helvetica Neue",Helvetica,sans-serif',
    "arabic": '"SF Arabic","Geeza Pro","Baghdad",-apple-system,sans-serif',
    "bengali": '"Kohinoor Bangla","Bangla Sangam MN",-apple-system,sans-serif',
    "deva": '"Kohinoor Devanagari","Devanagari Sangam MN",-apple-system,sans-serif',
}

# The Dynamic Island as the live captures carry it, in iPhone 1320-px capture pixels.
ISLAND = (472, 42, 376, 110)

DAWN = ("radial-gradient(78% 40% at 10% 4%,rgba(255,255,255,.95),rgba(255,255,255,0) 70%),"
        "radial-gradient(64% 36% at 48% 2%,rgba(255,255,255,.8),rgba(255,255,255,0) 70%),"
        "radial-gradient(64% 36% at 86% 2%,rgba(255,255,255,.8),rgba(255,255,255,0) 70%),"
        "linear-gradient(180deg,#FBFEFC 0%,#DCF1E3 36%,#68B78D 74%,#2E7D5B 100%)")

# Weights sit one step under the generator's CSS because that is how the live
# files rendered: its 800 shows as Avenir Next Bold.
CSS = """
*{box-sizing:border-box}html,body{margin:0;padding:0;background:#000}
.frame{position:relative;overflow:hidden;font-family:var(--ff);-webkit-font-smoothing:antialiased}
.dawn{background:DAWN}
.stmt{background:radial-gradient(120% 80% at var(--glowX) 0%,#2f8a60 0%,#1c6844 45%,#124a30 100%)}
.ph3{position:absolute;transform:rotate(var(--tilt));transform-origin:center;filter:drop-shadow(0 70px 90px rgba(6,42,27,.42))}
.dev{position:relative;background:#0C0C0C;box-shadow:0 0 0 3px rgba(255,255,255,.10) inset}
.glass{position:relative;overflow:hidden;display:block}
.shotimg{object-fit:cover;object-position:top center;display:block}
.isl{position:absolute;background:#000}
.cap{position:absolute}
.cap .eb{font-size:var(--eb);letter-spacing:var(--ebls);text-transform:uppercase;font-weight:600;color:rgba(255,255,255,.85);line-height:1.2}
.cap h5{font-size:var(--hs);font-weight:700;line-height:var(--lh);margin:20px 0 0;color:#FFF;white-space:nowrap}
.cap .sub{font-size:var(--sub);margin-top:28px;font-weight:400;color:#FFF;opacity:.88;line-height:1.3;text-wrap:balance}
.cap h5 em{font-style:normal;background:#FFF;color:#0F5137;padding:.04em .11em .12em;border-radius:14px;
  box-decoration-break:clone;-webkit-box-decoration-break:clone}
.cap.onlight .eb{color:#2E7D5B}
.cap.onlight h5{color:#0A3A26}
.cap.onlight .sub{color:#0A3A26;opacity:.72}
.cap.onlight h5 em{background:#2E7D5B;color:#FFF}
.stmt .cap h5{margin:0}
.stmt .cap h5 em{background:#C6F2DA;color:#134A32}
.stmt .cap .sub{color:#D9F5E6;opacity:1}
.lock{position:absolute;display:flex;align-items:center}
.lock img{display:block;box-shadow:0 26px 52px -18px rgba(0,0,0,.45)}
.lock .nm{font-weight:700;color:#FFF;line-height:1.1}
.lock .st{font-weight:500;color:#BFEED4;margin-top:10px;letter-spacing:var(--stls);text-transform:uppercase}
.chips{position:absolute;display:flex;gap:20px;flex-wrap:wrap;align-items:flex-start}
.chips b{font-size:var(--chip);font-weight:600;letter-spacing:var(--chls);white-space:nowrap;text-transform:uppercase;color:#C6F2DA;
  border:4px solid rgba(143,217,176,.8);border-radius:99px;padding:14px 30px}
.hdrbg{background:radial-gradient(120% 140% at 50% 0%,#2f8a60 0%,#1c6844 45%,#124a30 100%)}
.pat{background-image:url("data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='100' height='100' viewBox='0 0 100 100'><g fill='none' stroke='%23ffffff' stroke-opacity='0.08' stroke-width='1.1'><path d='M50 8 L61 39 L92 50 L61 61 L50 92 L39 61 L8 50 L39 39 Z'/><rect x='26' y='26' width='48' height='48' transform='rotate(45 50 50)'/><rect x='26' y='26' width='48' height='48'/></g></svg>");background-size:240px 240px}
.cap.hdr{display:flex;align-items:center;justify-content:center;text-align:center}
.cap.hdr h5{margin:0;color:#FFF}
.cap.hdr h5 em{background:#C6F2DA;color:#134A32;padding:.04em .14em .12em}
.fg{background:linear-gradient(var(--fgAngle),#f4fbf7 0%,#e2f2e8 46%,#7cc29c 78%,#3f9a6e 100%)}
.fg .in{position:absolute;top:0;bottom:0;inset-inline-start:62px;width:560px;display:flex;flex-direction:column;justify-content:center}
.fg .lock{position:static}
.fg .lock .nm{color:#18412D}
.fg .lock .st{color:#4B7A62;margin-top:4px}
.fg .lock img{box-shadow:0 6px 16px rgba(0,0,0,.12)}
.fg h5{font-size:50px;font-weight:700;line-height:1.16;margin:26px 0 0;color:#18412D;white-space:nowrap}
.fg h5 em{font-style:normal;background:#1D6A46;color:#FFF;padding:.04em .11em .12em;border-radius:9px;
  box-decoration-break:clone;-webkit-box-decoration-break:clone}
.fg .chips{position:static;margin-top:22px;gap:8px}
.fg .chips b{font-size:12.5px;border-width:1.5px;border-color:#1D6A46;color:#1D6A46;padding:7px 11px}
""".replace("DAWN", DAWN)

# Fits each headline to its column and each sub to its line budget (two, or one
# per phrase), then hangs the device off the caption as the live layout does.
LAYOUT = """
<script>
const P = PARAMS;
function fitWidth(el, maxW, minPx) {
  let fs = parseFloat(getComputedStyle(el).fontSize);
  el.style.display = 'inline-block';
  while (el.getBoundingClientRect().width > maxW && fs > minPx) { fs -= 1; el.style.fontSize = fs + 'px'; }
  el.style.display = '';
}
function fitLines(el, lines, minPx) {
  let fs = parseFloat(getComputedStyle(el).fontSize);
  const lh = parseFloat(getComputedStyle(el).lineHeight) / fs;
  while ((el.getBoundingClientRect().height > fs * lh * lines + 2 || el.scrollWidth > el.clientWidth) && fs > minPx) {
    fs -= 1; el.style.fontSize = fs + 'px';
  }
}
function layout() {
  document.querySelectorAll('h5').forEach(h => fitWidth(h, P.capW, 40));
  document.querySelectorAll('.cap .sub').forEach(s => fitLines(s, +(s.dataset.lines || 2), P.subMin));
  document.querySelectorAll('.chips').forEach(c => {
    const chips = [...c.children], oneRow = () => chips.every(b => b.offsetTop === chips[0].offsetTop);
    let fs = parseFloat(getComputedStyle(chips[0]).fontSize);
    while (!oneRow() && fs > P.chipMin) { fs -= 1; chips.forEach(b => b.style.fontSize = fs + 'px'); }
    if (!oneRow()) chips.forEach(b => b.style.fontSize = '');
  });
  const cap = document.querySelector('.cap.band'), ph = document.querySelector('.ph3.band');
  if (cap && ph) {
    const h = cap.getBoundingClientRect().height;
    let cy;
    if (P.capAt === 'bottom') {
      cap.style.top = (P.capEdge - h) + 'px';
      cy = P.capEdge - h - P.gap - P.bbH / 2;
    } else {
      cap.style.top = P.capEdge + 'px';
      cy = P.capEdge + h + P.gap + P.bbH / 2;
    }
    ph.style.top = (cy - P.bh / 2) + 'px';
  }
}
document.fonts.ready.then(layout);
</script>
"""


def esc(s):
    return html.escape(s, quote=False)


def hl(s):
    return re.sub(r"\*(.+?)\*", r"<em>\1</em>", esc(s))


def device_html(src, D, kind, scale=1.0, cls="", left=0.0, top=0.0, tilt=0.0):
    """A phone or tablet in the generator's style; returns (html, box width, box height)."""
    sw, sh = D["scrW"] * D["dz"] * scale, D["scrH"] * D["dz"] * scale
    bezel = D["bezel"] * scale
    bw, bh = sw + 2 * bezel, sh + 2 * bezel
    island = ""
    if kind == "phone":
        k = sw / 1320
        x, y, w, h = (v * k for v in ISLAND)
        island = f'<div class="isl" style="left:{x:.1f}px;top:{y:.1f}px;width:{w:.1f}px;height:{h:.1f}px;border-radius:{h / 2:.1f}px"></div>'
    shadow = "" if scale == 1 else f";filter:drop-shadow(0 {70 * scale:.0f}px {90 * scale:.0f}px rgba(6,42,27,.42))"
    return (f'<div class="ph3 {cls}" style="left:{left:.1f}px;top:{top:.1f}px;--tilt:{tilt}deg{shadow}">'
            f'<div class="dev" style="width:{bw:.1f}px;height:{bh:.1f}px;padding:{bezel:.1f}px;border-radius:{D["radius"] * scale:.1f}px">'
            f'<div class="glass" style="width:{sw:.1f}px;height:{sh:.1f}px;border-radius:{D["radiusIn"] * scale:.1f}px">'
            f'<img class="shotimg" style="width:{sw:.1f}px;height:{sh:.1f}px" src="{src}">{island}</div></div></div>'), bw, bh


def bbox_h(bw, bh, tilt):
    t = math.radians(abs(tilt))
    return bw * math.sin(t) + bh * math.cos(t)


def sub_html(sub):
    """A sub is a sentence, or a list of phrases that only break between each other."""
    if isinstance(sub, str):
        return f'<div class="sub">{esc(sub)}</div>'
    phrases = " ".join(f'<span style="white-space:nowrap">{esc(p)}</span>' for p in sub)
    return f'<div class="sub" data-lines="{len(sub)}">{phrases}</div>'


def caption_html(c, D, onlight):
    eb, lines, sub = c
    cls = "cap band" + (" onlight" if onlight else "")
    return (f'<div class="{cls}" style="inset-inline-start:{D["gut"]}px;width:{D["capW"]}px">'
            f'<div class="eb">{esc(eb)}</div><h5>{"<br>".join(hl(l) for l in lines)}</h5>'
            f'{sub_html(sub)}</div>')


def size_vars(D, copy):
    k = copy["hs"]
    return (f'--eb:{D["eb"]}px;--hs:{round(D["hs"] * k)}px;--sub:{round(D["sub"] * k)}px;'
            f'--chip:{D["chip"]}px;')


def std_frame(copy, kind, D, idx, shot, rtl, device):
    W, H = D["W"], D["H"]
    tilt = TILT if rtl else -TILT
    dev, bw, bh = device_html(shot, D, "tablet" if device == "ipad" else "phone", cls="band",
                              left=(W - (D["scrW"] * D["dz"] + 2 * D["bezel"])) / 2, tilt=tilt)
    cap = caption_html(copy[kind], D, onlight=D["capAt"] == "top")
    style = (f"{size_vars(D, copy)}width:{W}px;height:{H}px;background-size:{W * STRIP_FILES}px {H}px;"
             f"background-position:{-idx * W}px 0")
    params = dict(capW=D["capW"], capAt=D["capAt"], capEdge=D["capEdge"], gap=D["gap"],
                  bbH=bbox_h(bw, bh, tilt), bh=bh, subMin=round(D["sub"] * copy["hs"] * .8))
    return f'<div class="frame dawn" style="{style}">{dev}{cap}</div>', params


def statement_frame(copy, D, rtl):
    lines, sub = copy["statement"]
    W, H = D["W"], D["H"]
    icon = D["lockIcon"]
    lock = (f'<div class="lock" style="inset-inline-start:{D["gut"]}px;top:{D["lockTop"]}px;gap:{D["lockGap"]}px">'
            f'<img src="ICON" style="width:{icon}px;height:{icon}px;border-radius:{icon * .22:.0f}px">'
            f'<div><div class="nm" style="font-size:{D["lockName"]}px">{esc(copy["brand"])}</div>'
            f'<div class="st" style="font-size:{D["lockSub"]}px">{esc(copy["brandSub"])}</div></div></div>')
    body = (f'<div class="cap" style="inset-inline-start:{D["gut"]}px;top:{D["heroTop"]}px;width:{D["capW"]}px">'
            f'<h5 style="font-size:{D["heroHs"]}px">{"<br>".join(hl(l) for l in lines)}</h5>'
            f'<div class="sub">{esc(sub)}</div></div>')
    chips = (f'<div class="chips" style="inset-inline-start:{D["gut"]}px;top:{D["chipsTop"]}px;width:{D["capW"]}px">'
             + "".join(f"<b>{esc(t)}</b>" for t in copy["chips"]) + "</div>")
    glow = "80%" if rtl else "20%"
    params = dict(capW=D["capW"], subMin=round(D["sub"] * copy["hs"] * .8), chipMin=round(D["chip"] * .8))
    return (f'<div class="frame stmt" style="{size_vars(D, copy)}width:{W}px;height:{H}px;--glowX:{glow}">'
            f'{lock}{body}{chips}</div>', params)


def feature_graphic(copy, shot, rtl):
    D = DEVICES["iphone"]
    scale = 250 / (D["scrW"] * D["dz"] + 2 * D["bezel"])
    left = 1024 - 700 - 250 if rtl else 700
    dev, _, _ = device_html(shot, D, "phone", scale=scale, left=left, top=44, tilt=9 if rtl else -9)
    lines, _ = copy["statement"]
    body = (f'<div class="in"><div class="lock" style="gap:16px"><img src="ICON" style="width:82px;height:82px;border-radius:19px">'
            f'<div><div class="nm" style="font-size:40px">{esc(copy["brand"])}</div>'
            f'<div class="st" style="font-size:15px">{esc(copy["brandSub"])}</div></div></div>'
            f'<h5>{"<br>".join(hl(l) for l in lines)}</h5>'
            f'<div class="chips">{"".join(f"<b>{esc(t)}</b>" for t in copy["chips"])}</div></div>')
    angle = "260deg" if rtl else "100deg"
    return (f'<div class="frame fg" style="width:1024px;height:500px;--fgAngle:{angle}">{body}{dev}</div>',
            dict(capW=560, subMin=12, chipMin=11))


def header_frame(copy):
    W, H = HEADER["W"], HEADER["H"]
    x0, y0, x1, y1 = HEADER["safe"]
    lines = "<br>".join(hl(l) for l in copy["header"])
    return (f'<div class="frame hdrbg" style="width:{W}px;height:{H}px"><div class="pat" style="position:absolute;inset:0"></div>'
            f'<div class="cap hdr" style="left:{x0}px;top:{y0}px;width:{x1 - x0}px;height:{y1 - y0}px">'
            f'<h5 style="font-size:{round(HEADER["hs"] * copy["hs"])}px">{lines}</h5></div></div>',
            dict(capW=x1 - x0 - 80, subMin=0, chipMin=0))


def page(frame, params, copy, locale):
    rtl = copy.get("dir") == "rtl"
    latin = copy["font"] == "latin"
    root = (f':root{{--ff:{FONTS[copy["font"]]};--lh:{copy["lh"]};'
            f'--ebls:{".25em" if latin else "0"};'
            f'--stls:{".06em" if latin else "0"};--chls:{".1em" if latin else "0"}}}')
    return (f'<!doctype html><html lang="{locale}" dir="{"rtl" if rtl else "ltr"}"><head><meta charset="utf-8">'
            f'<style>{CSS}{root}</style></head><body>{frame}{LAYOUT.replace("PARAMS", json.dumps(params))}</body></html>')


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--locale", required=True)
    ap.add_argument("--captures", required=True, type=pathlib.Path)
    ap.add_argument("--out", required=True, type=pathlib.Path)
    ap.add_argument("--devices", default="iphone,ipad,play,fg")
    a = ap.parse_args()
    copy = json.loads((HERE / "copy" / f"{a.locale}.json").read_text(encoding="utf-8"))
    rtl = copy.get("dir") == "rtl"
    icon = ICON.as_uri()
    with tempfile.TemporaryDirectory() as tmp:
        for device in a.devices.split(","):
            for name, idx, kind in FRAMES[device]:
                shot = None
                if kind in SCREEN:
                    cap_dev = "ipad" if device == "ipad" else "iphone"
                    shot = (a.captures / cap_dev / f"{SCREEN[kind]}.png").resolve().as_uri()
                if kind == "fg":
                    frame, params = feature_graphic(copy, shot, rtl)
                    w, h = 1024, 500
                elif kind == "header":
                    frame, params = header_frame(copy)
                    w, h = HEADER["W"], HEADER["H"]
                else:
                    D = DEVICES[device]
                    if kind == "statement":
                        frame, params = statement_frame(copy, D, rtl)
                    else:
                        frame, params = std_frame(copy, kind, D, idx, shot, rtl, device)
                    w, h = D["W"], D["H"]
                src = pathlib.Path(tmp) / f"{device}_{name}.html"
                src.write_text(page(frame.replace("ICON", icon), params, copy, a.locale), encoding="utf-8")
                out = a.out / device / f"{name}.png"
                out.parent.mkdir(parents=True, exist_ok=True)
                subprocess.run([CHROME, "--headless", "--disable-gpu", "--hide-scrollbars",
                                "--force-device-scale-factor=1", "--run-all-compositor-stages-before-draw",
                                "--virtual-time-budget=10000", "--allow-file-access-from-files",
                                f"--window-size={w},{h}", f"--screenshot={out}", src.as_uri()],
                               check=True, capture_output=True)
                print(out)


if __name__ == "__main__":
    main()
