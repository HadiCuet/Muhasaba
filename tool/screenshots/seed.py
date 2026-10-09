#!/usr/bin/env python3
"""Seeds the demo state behind the store captures into a simulator's database.

    python3 tool/screenshots/seed.py DB TODAY [LOCALE]

DB is the app's muhasaba.sqlite, TODAY the app's current day (YYYY-MM-DD). It
clears completions and challenges, then writes months of streak history and
five running challenges, one of them genuinely behind pace. iOS pins the
simulator clock to 9:41, so only night and morning acts are ticked today.
Titles and units stay English; the app translates them at display time.
"""
import datetime as dt
import sqlite3
import sys

# amal title -> (streak length ending yesterday, ticked today)
STREAKS = {
    "Fajr": (46, True), "Dhuhr": (63, False), "Asr": (27, False), "Maghrib": (88, False),
    "Isha": (12, False), "Duha": (9, True), "Tahajjud": (3, True), "Morning Adhkar": (18, True),
    "Evening Adhkar": (6, False), "Tilawah": (21, True),
}

# title, icon, mode (0 count, 1 days), target, unit, step, category, started days ago,
# window in days (None = no deadline), [(days ago, amount)]
CHALLENGES = [
    ("Khatm in 30 days", "📖", 0, 30, "juz", 1, "Quran", 11, 30, [(d, 1) for d in range(12)]),
    ("Learn the 99 Names of Allah", "✨", 0, 99, "names", 1, "Knowledge", 20, 99,
     [(d, 1) for d in range(14, 21)] + [(0, 2)]),
    ("40 nights Tahajjud", "🌙", 1, 40, None, 1, "Sunnah", 9, 40, [(d, 1) for d in range(10)]),
    ("30 days of istighfar", "💧", 1, 30, None, 1, "Dhikr", 5, 30, [(d, 1) for d in range(6)]),
    ("1000 Salawat", "📿", 0, 1000, "salawat", 100, "Dhikr", 14, None,
     [(14, 100), (12, 100), (9, 100), (6, 100), (3, 100), (0, 100)]),
]

SETTINGS = {
    "tutorial_seen": "1", "challenge_tutorial_seen": "1", "daily_reminder_permission_asked": "1",
    "support_intro_seen": "1", "support_prompt_state": "never", "theme_mode": "light",
    "today_view_mode": "grouped",
}


def day(d):
    return f"{d.isoformat()}T00:00:00.000Z"


def stamp(d, hour=5):
    return f"{d.isoformat()}T{hour:02d}:10:00.000Z"


def main():
    db, today = sys.argv[1], dt.date.fromisoformat(sys.argv[2])
    locale = sys.argv[3] if len(sys.argv) > 3 else "en"
    ago = lambda n: today - dt.timedelta(days=n)
    c = sqlite3.connect(db)
    for table in ("completions", "challenge_entries", "challenges"):
        c.execute(f"DELETE FROM {table}")
    c.execute("UPDATE amals SET created_at=?", (stamp(ago(120)),))
    for k, v in dict(SETTINGS, locale=locale).items():
        c.execute("INSERT OR REPLACE INTO settings_kv(key,value) VALUES(?,?)", (k, v))
    ids = {title: i for i, title in c.execute("SELECT id,title FROM amals")}
    for title, (streak, ticked) in STREAKS.items():
        days = [ago(n) for n in range(1, streak + 1)]
        days += [ago(n) for n in range(streak + 2, 100) if n % 4]
        if ticked:
            days.append(today)
        for d in days:
            c.execute("INSERT INTO completions(amal_id,muhasaba_date,progress,completed_at) VALUES(?,?,1,?)",
                      (ids[title], day(d), stamp(d)))
    for order, (title, icon, mode, target, unit, step, cat, started, window, entries) in enumerate(CHALLENGES):
        start = ago(started)
        end = day(start + dt.timedelta(days=window)) if window else None
        cur = c.execute(
            "INSERT INTO challenges(title,icon,mode,target,step_size,unit,category,start_date,end_exclusive,"
            "status,expiry_handled,created_at,sort_order,completion_seen) VALUES(?,?,?,?,?,?,?,?,?,0,0,?,?,0)",
            (title, icon, mode, target, step, unit, cat, day(start), end, stamp(start, 8), order))
        for n, amount in entries:
            c.execute("INSERT INTO challenge_entries(challenge_id,muhasaba_date,amount) VALUES(?,?,?)",
                      (cur.lastrowid, day(ago(n)), amount))
    c.execute("INSERT OR IGNORE INTO categories(name,sort_order,icon) VALUES('Family',8,'🏡')")
    c.commit()


if __name__ == "__main__":
    main()
