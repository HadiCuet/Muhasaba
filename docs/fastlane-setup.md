# Fastlane — iOS TestFlight

Builds the iOS app with Flutter and uploads a build to TestFlight with localized
**"What's New"** notes. Nothing is submitted for review or distributed to
external testers.

## One-time setup

```sh
bundle install            # installs fastlane (pinned in Gemfile)
```

Credentials are already in place:

- `fastlane/.keys/AuthKey_5UQ4F5P9J3.p8` — App Store Connect **team** API key
  (reused from MukashiStories; team-scoped so it covers `dev.mukashi.muhasaba`).
- `fastlane/.env` — Key ID / Issuer ID / key path / team ID.

Both are gitignored. To rotate: App Store Connect → Users and Access →
Integrations → App Store Connect API → generate a Team Key with the
"App Manager" role, download the `.p8` once into `fastlane/.keys/`, and update
`fastlane/.env`.

## Lanes

```sh
# Read-only: confirm the API key authenticates and list the staged locales
bundle exec fastlane ios verify

# Read-only: list the locale codes this app uses on its App Store version
bundle exec fastlane ios locales

# Build only (no upload), prints which What's New locales are ready
bundle exec fastlane ios beta

# Build and upload to TestFlight with localized What's New
bundle exec fastlane ios beta upload:true

# Attach/refresh localized What's New on the latest build (no rebuild/upload)
bundle exec fastlane ios notes

# Set ONLY the localized "What's New" on the editable App Store version
# (the release notes shown to users; touches no other metadata, never submits)
bundle exec fastlane ios release_notes
```

`notes` targets the TestFlight build's test notes (betaBuildLocalizations);
`release_notes` targets the App Store version's user-facing "What's New". They
are different fields — set both if you want them to match.

`beta upload:true` waits for App Store Connect to finish processing the build so
it can attach the localized notes — this can take several minutes. Use `notes`
to (re)apply the What's New text to a build that is already processed.

## "What's New" text

One file per language in `fastlane/whatsnew/<lang>.txt`. `en.txt` is the
`default` fallback; the others map to App Store Connect locales:

| File | ASC locale |
|------|------------|
| en.txt | en-US (default) |
| ar.txt | ar-SA |
| bn.txt | bn-BD |
| ur.txt | ur-PK |
| id.txt | id |
| tr.txt | tr |
| fr.txt | fr-FR |
| ms.txt | ms |
| hi.txt | hi |

Only ASC-supported locales can hold notes; the app's other languages fall back
to the English `default`.

## Notes

- Signing is automatic (team `BK6SA89C8K`); the API key provisions on the fly.
- `ITSAppUsesNonExemptEncryption=false` is set in `Info.plist`, so TestFlight
  skips the per-build export-compliance prompt.
- The build number comes from `pubspec.yaml` (`version: x.y.z+BUILD`). If a build
  number was already uploaded, Apple rejects the duplicate — bump it and re-run.
