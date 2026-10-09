# Muhasaba — ASO profile

The single source of truth for how this app is positioned in **both** stores.
Loaded by the `app-store-aso` and `google-play-aso` skills before any metadata,
keyword, or creative work. Nothing here may be carried over from another app,
and nothing in those skills may override what is written here.

Last reviewed: **2026-10-09**, against version **3.0.3 (build 13)** plus the
unreleased Amal Library and Challenge Library (§4).

---

## 1. Identity

| | |
|---|---|
| Name | **Muhasaba** — store title on both stores: **Muhasaba: Muslim Habit Tracker** (en, 30/30; other ASC locales keep their localized "My Ibadah" names) |
| Bundle / application ID | `dev.mukashi.muhasaba` |
| Version | 3.0.3 (13) |
| Price | **Free.** Optional in-app tips ($0.99–$19.99, consumable, unlock nothing); no subscriptions, no ads. |
| Platforms | iOS/iPadOS **and** Android — both listings are maintained, neither is a port afterthought |
| App Store Connect | mukashi.dev@gmail.com |
| Google Play Console | hadi.cuet@gmail.com |
| Privacy policy | https://hadicuet.github.io/Muhasaba/privacy/ |
| Support email | mukashi.dev@gmail.com |

**Categories** — Play: **Lifestyle**. App Store primary: **Lifestyle**; secondary:
**Health & Fitness** is wrong for this app (see §5) — prefer **Productivity**, since
the app's mechanic is habit-tracking and the category is a lower-weight indexed
surface worth spending on an accurate term.

---

## 2. One-line positioning

> A private, offline checklist for your daily worship — you decide what to track,
> tick it off, and watch your consistency build.

The concept the app is named for is **muhāsaba** (محاسبة), the practice of taking
account of oneself. Every listing should make that idea legible without requiring
the reader to already know the word.

**The app's job:** turn intention into a habit you actually keep.
**Not:** teach religion, issue rulings, or tell the user what they ought to do.

---

## 3. Audience

- Practising Muslims who already know *what* they want to do and want help being
  consistent. Not seekers looking to learn how to pray.
- Skews toward people who have tried and abandoned generic habit trackers because
  those don't understand salah/dhikr/Qur'an as recurring, counted acts.
- Strong secondary draw: **privacy-conscious users** who won't install an app that
  requires an account or uploads their worship record.
- Ramadan is the highest-intent season, but the app is explicitly year-round. Never
  position it as a Ramadan-only app.

---

## 4. What the app actually does (claimable)

Everything below is real in 2.0.0 and may be stated plainly.

- Daily / weekly / monthly acts, with categories: Salah, Sunnah, Dhikr, Quran,
  Charity, and user-created categories
- Count-based goals (e.g. 33× tasbih, a page of Qur'an) with a tap counter
- **Challenges** *(new in 2.0.0)* — a target over a window, either a cumulative
  count ("1000 salawat") or a day streak ("40 nights Tahajjud"); shows on-track /
  behind-pace and nudges you the day you fall behind
- **Insights** *(new in 2.0.0)* — completion rate, daily breakdown, per-category
  and per-amal stats, streaks, a consistency grid, and an archive
- Streaks per amal and an overall streak
- Local daily reminders, and per-challenge reminders
- Custom acts and categories with emoji
- Notes on any day; jump to any past date; record a day you missed
- Archive and restore acts you've stopped
- Light and dark themes; adjustable day-rollover hour and start-of-week
- **23 in-app languages** with full right-to-left support and local numerals
- All data stored on-device in SQLite. No account, no sign-up, no cloud sync.

**In the next release — not claimable until that version is live:**

- **Amal Library** — 102 ready-made amals in 10 categories, added to Today in one tap
- **Challenge Library** — 27 ready-made challenges, e.g. 40 days of every prayer in
  jamaah, six days of Shawwal, a khatm in 30 days; started in one tap
- Default categories now also include Dua, Fasting and Ilm; Character and Family
  appear once used

---

## 5. What the app does NOT do — hard relevance guardrail

The app has **no** location, prayer-time, calendar, or Qur'an-content dependency
(verified in `pubspec.yaml`, 2026-08-25). Ranking for these terms would draw
installs that uninstall immediately, which damages ranking and invites one-star
reviews. **Do not target, imply, or claim any of the following:**

| Not in the app | Terms to avoid |
|---|---|
| Prayer times | `prayer times`, `namaz time`, `salah time`, `adhan`, `azan`, `iqamah`, `prayer alarm` |
| Direction of prayer | `qibla`, `compass`, `kaaba direction` |
| Qur'an content | `read Quran`, `Quran audio`, `recitation`, `tafsir`, `translation`, `mushaf`, `memorise` |
| Hijri calendar / conversion | `hijri`, `islamic calendar`, `moon sighting` |
| Zakat / finance | `zakat calculator`, `nisab`, `zakat` |
| Automatic tracking | `auto-track`, `detects`, `knows when you pray` — every entry is manual |
| Social / community | `friends`, `leaderboard`, `share progress`, `community`, `family` |
| Cloud | `sync`, `backup`, `cloud`, `across devices`, `restore` |
| Health claims | anything framing worship as wellness, mental-health, or medical benefit |

`quran`, `salah`, `dhikr` etc. remain valid **as category names for things you
track** — the ban is on implying the app *supplies* that content or those times.

---

## 6. Forbidden terms & framings

1. **No religious authority.** Never imply endorsement by a scholar, madhhab,
   institution, or country. Never present the app as a source of rulings. No
   "approved by", "certified halal", "according to Sunnah" as an authority claim.
2. **No sectarian framing.** Content stays within mainstream practice and must not
   favour or exclude a school. Category names stay neutral.
3. **No guilt or fear marketing.** No "don't be among the losers", no punishment
   framing, no shaming the user for missed days. The app's whole tone is gentle
   self-accountability, and the listing must match it.
4. **No superlatives Apple rejects** — `#1`, `best`, `top-rated`, `world's leading`.
5. **No competitor or third-party trademarks** in any field, including the keyword
   field. This includes other Muslim-app brand names.
6. **"Free" must not appear in the App Name.** Price belongs to the store, not the
   name; Apple treats it as name padding.
7. **Never promise features that are only planned.** No "coming soon" in the
   description.
8. **Careful with absolute privacy claims** — see §7. "No internet" as a bare
   statement is not defensible; "no internet needed" is.

---

## 7. Privacy claims — the one thing that needs care

The app stores **all user data locally** and has no account, no cloud sync, and no
ads. That is true and is the strongest differentiator in the category.

**But release builds do send anonymous telemetry** — Firebase Analytics and
Crashlytics (`main.dart` disables Crashlytics in debug only). The app also declares
`INTERNET` on Android.

Consequences:

- ✅ Safe: "Your record stays on your device", "No account", "No ads",
  "Works offline", "No cloud sync", "No internet needed"
- ❌ Not safe as a bare claim: "No internet", "100% offline", "sends nothing",
  "zero data collected", "completely private"
- The current **Play full description** says *"100% private and offline"* — this
  overstates it and should be revised, and Play **Data Safety** must declare the
  analytics/crash collection. Treat this as an open compliance item (§11).
- The **2026-08 screenshot set, file 10** uses the caption "No internet." on both
  devices in all nine languages. Revise to a "needed"-style phrasing at the next
  asset pass.

---

## 8. Keyword strategy

### Intent clusters

| Cluster | Terms |
|---|---|
| Core action | tracker, track, checklist, log, counter, habit, routine, streak |
| Objects tracked | salah, namaz, prayer, dhikr, azkar, tasbih, quran, sunnah, sadaqah, fasting, dua |
| Outcome | consistency, discipline, self-accountability, muhasaba, improvement |
| Audience / frame | muslim, islam, islamic, deen, ibadah, amal, worship, iman |
| Differentiator | offline, private, no account, no ads, ad-free |
| Seasonal | ramadan, tarawih, tahajjud, jumuah, laylatul qadr *(promo text only)* |

Highest-intent pairing for this app is **`islamic` / `muslim` + `habit` / `tracker`**
— it captures people looking for exactly this, and the app can satisfy it fully.
`prayer` is high-volume but ambiguous with prayer *times*; keep it, but never let
the listing imply times.

### iOS (App Store)

Indexed pool is **Name + Subtitle + Keyword field**, globally de-duplicated.
Current usage, measured 2026-08-25:

| Locale | Name | Subtitle | Keywords |
|---|---|---|---|
| en | **30/30** | 28/30 | 95/100 |
| id | 19/30 | 29/30 | 98/100 |
| fr | 21/30 | 27/30 | 96/100 |
| ms | 19/30 | 28/30 | 93/100 |
| tr | 23/30 | 28/30 | 92/100 |
| bn | 20/30 | 27/30 | 82/100 |
| ur | 18/30 | 21/30 | 81/100 |
| ar | 15/30 | 20/30 | **79/100** ⚠ |
| hi | 20/30 | 26/30 | **76/100** ⚠ |

English was reworked as a set on 2026-09-17 (version 3.0.1): Name **Muhasaba:
Muslim Habit Tracker**, Subtitle **Salah, Dhikr, Quran & Sunnah**, Keywords
`islamic,amal,prayer,namaz,azkar,dua,worship,deen,fasting,sadaqah,ibadah,checklist,streak,tasbih`.
Nothing is duplicated across the three fields. **ar and hi leave 20+ characters
unused**, and the non-English Names leave 7–15 characters unused. Those are the
cheapest wins available.

#### Approved 2026-10-09 (en-US) — ship with the next App Store version

| Field | Was (rating /10) | Now (rating /10) |
|---|---|---|
| Name | Muhasaba: Muslim Habit Tracker (8.5) | *unchanged* (8.5) |
| Subtitle | Salah, Dhikr, Quran & Sunnah — 28 (6) | **Islamic Prayer & Dhikr Tracker** — 30 (8.5) |
| Keywords | the 2026-09-17 set above — 95 (6) | `salah,quran,sunnah,namaz,muhasabah,salat,ibadah,deen,sadaqah,fasting,tasbih,deed,routine,amal,qada` — 98 (8.5) |

Why, so nobody undoes it by accident:

- **Name stays**: #1 for "muhasaba", #4 "muslim habit tracker", #2 "ibadah tracker".
- **Subtitle**: "prayer tracker" is Apple's top autocomplete for "prayer tr" and the app
  did not rank for it, nor for "muslim/islamic prayer tracker"; "islamic habit
  tracker" was #26 with "islamic" only in the keyword field. "Tracker" keeps the
  line about logging, never prayer *times* (§5).
- **Dropped from keywords** — `worship` (results are Christian worship-music apps;
  ranked #145), `azkar` (searchers want azkar content from apps with 46k–122k
  ratings; #118), `dua` (content-seekers; autocomplete is all "dual…"). `islamic`
  and `prayer` moved up into the subtitle; `checklist` and `streak` moved to the
  optional es-MX field below.
- **Added** — `muhasabah` (the "-ah" spelling; competitors rank for it, we did not),
  `salat`, `routine` ("muslim routine" is a real query), `deed` ("deeds tracker"),
  `qada` (backed by the Qada prayers amal and the make-up fasts challenge).
  `salah`, `quran`, `sunnah` came down from the old subtitle; their ranks came from
  low-competition phrases (salah habit tracker #5, quran habit tracker #6, sunnah
  tracker #4) and should hold.

**Optional, +0.5** — add a **Spanish (Mexico)** localization; its keyword field
indexes for the U.S. storefront, so fill it with *English* terms:
`good,checklist,streak,zikr,tasbeeh,istighfar,salawat,khatm,witr,duha,daily,goal,log,juz,rakah`.
Costs one more listing to maintain. Not decided.

#### Baseline rankings, 2026-10-09 (U.S., before the change)

Measured with Apple's public search API (`itunes.apple.com/search`, `entity=software`,
`limit=200`, which approximates on-device ranking) and autocomplete hints
(`search.itunes.apple.com/.../MZSearchHints.woa/wa/hints`). 0 ratings at the time.
Re-measure the same queries ~4 weeks after the next version ships.

| Rank | Queries |
|---|---|
| Top 10 | muhasaba 1 · ibadah tracker 2 · muslim habit tracker 4 · muslim habit 4 · sunnah tracker 4 · salah habit tracker 5 · quran habit tracker 6 · sunnah habits 9 |
| 11–50 | deen habit 20 · muslim checklist 23 · islamic habit tracker 26 · sadaqah tracker 28 · muslim tracker 30 · habit tracker islam 31 · prayer habit tracker 42 · dhikr tracker 46 |
| 51–200 | deen tracker 65 · salah tracker 86 · islamic tracker 90 · namaz tracker 97 · amal tracker 113 · sunnah 117 · azkar 118 · amal 142 · worship tracker 145 · ibadah 156 · muslim goals 175 |
| Not in 200 | prayer tracker · muslim/islamic prayer tracker · salat tracker · muhasabah · deeds tracker · good deeds tracker · muslim routine · qada tracker · dhikr counter · quran tracker · ramadan tracker · islamic, muslim, salah, prayer, namaz, dhikr, deen (single words) |

### Android (Google Play)

Play has **no keyword field**. It indexes the **title (30)**, **short description
(80)** and **full description (4,000)** — the long description genuinely matters
here, unlike on iOS. Terms should appear naturally two or three times across the
description, never stuffed; Play's policy explicitly bans repetitive keyword lists.

Because Play indexes the description, terms that don't fit iOS's 100 characters
(`self-accountability`, `daily deen`, `good deeds`, `worship tracker`) can and
should be worked into the Play copy instead of being dropped.

#### Approved 2026-10-09 (en-US) — Play text goes live without a release

| Field | Was (rating /10) | Now (rating /10) |
|---|---|---|
| Title | Muhasaba: Muslim Habit Tracker (8) | *unchanged* (8) |
| Short description | Track salah, dhikr, Qur'an and your daily amal — no account, works offline. — 75 (6.5) | **Prayer, dhikr & Quran tracker to build Islamic habits. No account, works offline** — 80 (8.5) |
| Full description | 1,806 of 4,000 chars (4) | rewrite to ~3,500 chars — *not written yet* (target 8.5) |

- Spell it **Quran** in indexed Play text: the apostrophe form "Qur'an" may not
  match "quran", the form nearly everyone types.
- The 2026-10-09 full description says "muslim" and "islamic" 0 times, "quran" 0
  (only "Qur'an"), "namaz", "good deeds", "ibadah", "deen", "muhasabah" 0, and
  "prayer"/"salah" once each, and does not mention either library. The rewrite
  should carry each of these 2–3 times in natural prose: prayer/salah tracker,
  namaz, dhikr, Quran (khatm, juz), sunnah, fasting, sadaqah, good deeds, ibadah,
  deen, Islamic/Muslim habit tracker, muhasabah — plus the Amal Library and the
  Challenge Library once they ship. No keyword lists (Play policy).
- Baseline: Play search (en_US/US) ranked the app only for "muhasaba" (#1) and
  "muhasabah" (#6); outside the top 30 for every generic query, including its own
  title phrase. Installs and ratings drive most of that, so the indexed text has to
  carry more of the weight.

---

## 9. Localization

- **App Store Connect supports 9** of the app's 23 languages:
  `en · ar · bn · ur · id · tr · fr · ms · hi`. The other 14 fall back to English.
  Note the ASC code for Urdu is **ur-PK**, not `ur`.
- **Google Play supports far more** — most of the app's 23 languages can have a
  real localized listing. This is a genuine Android-only advantage and is currently
  unexploited: only `en-US` metadata exists in `fastlane/metadata/android/`.
- Copy must read as though written by a native speaker, using the vocabulary the
  app itself ships (`lib/l10n/app_*.arb`) — Turkish *Hedef*, Bengali *সংকল্প*,
  Malay *Cabaran*. Never a literal translation of the English line.
- Category names (Salah, Dhikr, Quran, Charity) are **not localized** in the app;
  keep listing copy consistent with that.

---

## 10. Creative

- Screenshots: **2026-08 set**, 9 languages × 10 files × 2 devices, in
  `muhasaba-screenshots/{ios,ipad}-marketing-2026-08/`. Built as one continuous
  canvas per language; ar/ur mirror entirely. See `SCREENSHOTS.md` there.
- Play needs its own sizes plus a **1024×500 feature graphic**
  (`store-assets/play-feature-graphic-1024x500.png` — predates 2.0.0, needs redoing).
- App icon is a **seedling inside an eight-point star (rub el hizb)** — growth and
  Islamic geometry. It is *not* a minaret or a mosque; don't describe it as one.
- No app preview video exists on either store. Biggest untapped conversion asset.

---

## 11. Open items

- [x] **iOS en-US** — the approved Subtitle and Keywords (§8) went out with 3.1.0 (14),
      submitted 2026-10-10, together with the October screenshot set.
- [x] **Play en-US** — the approved short description, the October screenshots and a new
      feature graphic went live with the 3.1.0 (14) production release, 2026-10-10.
- [x] All 9 App Store descriptions end with a "SUBSCRIPTION, TERMS & PRIVACY" block
      (Apple standard EULA + privacy page) since 3.1.0.
- [ ] **iOS 27 product page header** — the statement ("Salah, dhikr & Quran. Build the
      habit.") in all 9 languages, uploaded to Asset Library 2026-10-10 as
      "Header <locale> (Oct 2026)" (`tool/screenshots/asset_library.py`). Submit them
      there (standalone review), then publish them onto the live 3.1.0 page per
      language. Search results keep the screenshots: no search asset, decided 2026-10-10.
- [ ] **Play en-US** — rewrite the full description to ~3,500 chars with the term
      coverage listed in §8.
- [ ] Write App Store promotional text: live has none as of 2026-10-10 (the stale
      "New in 2.0" copy survived only in the deliver staging, now removed).
      Editable any time without review.
- [ ] Decide on the optional es-MX keyword field (§8).
- [ ] Once the libraries ship: move them into the claimable list in §4 and mention
      them in both descriptions and the promotional text.
- [ ] Re-measure the §8 baseline queries ~4 weeks after the next version ships.
- [ ] Revise the Play full description: "100% private and offline" overstates it (§7).
- [ ] Complete/verify Play **Data Safety** for Firebase Analytics + Crashlytics.
- [ ] Fill the unused keyword characters in `ar` and `hi`; tighten the non-English App Names (en done 2026-09-17).
- [ ] Localize the Play listing beyond `en-US` — the app supports 23 languages.
- [x] Rebuild the Play feature graphic (new one live with 3.1.0).
- [ ] Write 2.0.0 release notes (Challenges, Insights) for both stores, 9+ locales.
- [x] Screenshot file 10's "No internet." frame was dropped from the October set.
- [ ] First release with tips: App Store listing will show "In-App Purchases";
      Play Data Safety and Apple's privacy label need no new declaration (no
      purchase history collected by us) — confirm at submission.
      Done already: 2.1.0 release notes in all 9 ASC locales
      (`fastlane/whatsnew/`) and the Play changelog
      (`fastlane/metadata/android/en-US/changelogs/9.txt`); build 9 is on the
      Play **internal** track.
- [x] Play tip products — created and ACTIVE (4 × 173 regions, 2026-09-11,
      `python3 tool/play_products.py`; `--activate` is a separate step).
- [ ] App Store Connect tip products — create by hand at $0.99 / $4.99 /
      $9.99 / $19.99 with the same IDs, and apply for the **Small Business
      Program** (unlike Play's 15% tier, Apple's needs an application).
- [ ] Play license testers + on-device purchase pass against build 9.

---

## 12. Source of truth

| Topic | Where |
|---|---|
| Shipped listing copy (iOS, 9 locales) | `../muhasaba-screenshots/appstore-metadata/` |
| Play listing + console walkthrough | `../muhasaba-screenshots/PLAY-CONSOLE-GUIDE.md` |
| Screenshots and their build | `../muhasaba-screenshots/SCREENSHOTS.md` |
| Release & signing runbook | https://github.com/HadiCuet/muhasaba-store-assets *(private)* |
| In-app wording per language | `lib/l10n/app_*.arb` |
| Feature truth | this repo at the tagged release — not memory, not an old listing |
