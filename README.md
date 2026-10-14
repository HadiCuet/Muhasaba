# Muhasaba

Personal daily deen tracker — built with Flutter, ships on iOS and Android.
Local-only data, no backend, fully localized in 23 languages.

## 📦 Release & store info — in the backup repo, not here

Anything you'd need to **ship a release, update store listings, or onboard a new
release-team member** lives in the private companion repo:

**🔗 https://github.com/HadiCuet/muhasaba-store-assets** *(private)*

That repo holds:
- **Android upload keystore** (`muhasaba-upload.jks`) and its password
- **App Store Connect listing copy** in 9 languages (name, subtitle, promo, keywords, description, release notes)
- **Play Console submission guide** (`PLAY-CONSOLE-GUIDE.md`)
- **Full release runbook**: which account owns what, build commands, version-bump gotchas, onboarding steps for a new Mac

Goal: nobody on the team has to *remember* anything to ship Muhasaba. If it's
release-related and not source code, it's there.

## Develop

```
flutter pub get
flutter run                          # pick a device with -d
flutter analyze && dart format .
flutter gen-l10n                     # after editing lib/l10n/*.arb
```

Build release artifacts: `flutter build appbundle --release` (Android) ·
`flutter build ipa --release` (iOS). See the backup repo's runbook for the
signing setup needed for Android.

## Project conventions

See `CLAUDE.md` for architecture, localization rules (23 languages, RTL handling),
state-management approach, and what's out of scope (no backend, no tests).

## Screenshots

Store screenshots are **not in this repo**. They live in the private repo
[HadiCuet/muhasaba-screenshots](https://github.com/HadiCuet/muhasaba-screenshots), one GitHub
Release per store version, checked out at `../Screenshots/muhasaba-screenshots/`, which is
also where the screenshot pipeline reads and writes. That folder is kept empty between
releases: `./archive.sh restore <tag>` there brings a version back, and
`./archive.sh push <tag> <sets>` archives a new set (do it as soon as a set is made).
`fastlane ios metadata` archives what it uploads on its own.
Never commit screenshots here.

Exception: the Play listing images in `fastlane/metadata/android/*/images/` stay in
this repo, because `fastlane android production` uploads them from here.
