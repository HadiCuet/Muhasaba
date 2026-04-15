---
layout: default
title: Privacy Policy for Muhasaba
description: Effective 15 April 2026
permalink: /privacy/
---

**Effective date:** 15 April 2026
**Last updated:** 15 April 2026
**Version:** 1.0

---

## 0. Plain-language summary (TL;DR)

Muhasaba is a local-first personal deen tracker. **Everything you enter in the app — your amals, completions, notes, categories, and settings — stays on your device.** We do not have a server that stores your content, and we cannot read it.

In release builds of the app, we collect two kinds of anonymous diagnostic data through Google's Firebase service:

1. **Usage analytics** — which buttons you tap and which screens you open (event names only, no user content). This helps us understand how the app is used and what to improve.
2. **Crash reports** — technical information when the app crashes, so we can fix bugs.

We do not know who you are. We do not collect your name, email, phone number, precise location, contacts, photos, or any advertising identifier. We do not sell or share your data with advertisers. We do not profile you, target you with ads, or combine your data with other sources.

If you email our support address, we will see whatever you write (and, if you choose "Send Bug Report," your device model and app version). That is the only way personal data would ever reach us, and only if you choose to write to us.

The rest of this policy is the long, legally-precise version of the paragraphs above.

---

## Table of contents
{: .no_toc }

* TOC placeholder
{:toc}

---

## 1. Who we are / data controller

The Muhasaba mobile application ("**Muhasaba**", "**the app**", "**we**", "**us**", "**our**") is developed and published by:

- **Name:** Abdullah Al Hadi (sole developer)
- **Role:** Data controller for the purposes of the EU General Data Protection Regulation (Regulation (EU) 2016/679, "**GDPR**"), the UK GDPR, and the Swiss Federal Act on Data Protection ("**FADP**"), and "business" for the purposes of the California Consumer Privacy Act, as amended by the California Privacy Rights Act ("**CCPA/CPRA**").
- **Contact email:** hadi.fiftytwo@gmail.com
- **Postal address:** Nakhargonj, Nageshwari, Kurigram — 5660, Bangladesh

Because Muhasaba is an independent, single-developer project, we have not appointed a Data Protection Officer (DPO). A DPO is not mandatory under GDPR Art. 37 for our processing activities (no large-scale, systematic, or special-category processing). If this changes, this policy will be updated.

---

## 2. Scope of this policy

This policy applies to the Muhasaba mobile application, distributed via the Apple App Store (iOS and iPadOS) and the Google Play Store (Android), and to any successor build targeting macOS or the web through the same codebase.

This policy does **not** apply to:

- **Third-party services** you access through operating-system hand-offs from the app (for example, your email client launched by a support link, or the App Store review prompt). Those services have their own privacy policies; see §16.
- **Your device operating system** (iOS, iPadOS, Android, macOS) and any OS-level telemetry Apple or Google may collect about app installation, launches, or crashes independent of our SDKs. That processing is governed by Apple's or Google's privacy policies.
- **Other apps** installed on your device.

---

## 3. Data we collect

We group the data we process into four categories:

### 3.1 Content you create inside the app (stored **only on your device**)

The app stores the following locally in an SQLite database on your device, using the Drift library. **This content never leaves your device through our systems.** It is not uploaded, synced, or backed up by us.

| Data | Where stored | Leaves your device? |
| --- | --- | --- |
| Amals (acts of worship you track): title, frequency, target count, weekly/monthly schedule, default-checked flag, reminder time, sort order, icon, category, timestamps | Device SQLite (`Amals` table) | No |
| Categories: name, icon, sort order | Device SQLite (`Categories` table) | No |
| Daily completions and your personal notes | Device SQLite (`Completions` table) | No |
| Hidden-day markers (transient) | Device SQLite (`HiddenDays` table) | No |
| App settings: locale, theme, rollover hour, start-of-week, view mode | Device SQLite (`SettingsKv` table) | No |

Your device's operating system may back up the app's local data to iCloud (iOS) or Google Drive (Android) as part of **OS-level backups you control in system settings**. Those backups are governed by Apple's or Google's terms and are outside our access. You can disable them in your device settings.

### 3.2 Usage analytics (Firebase Analytics — **release builds only**)

In release builds of the app, we use **Google Firebase Analytics** (provided by Google LLC and, for EEA/UK/Swiss users, Google Ireland Limited) to collect anonymous usage telemetry. Firebase Analytics is **not enabled in debug or developer builds** of the app.

**Events recorded.** Exactly the following events, with exactly the listed parameters, are logged. Nothing else.

| Event name | Parameters | When it fires |
| --- | --- | --- |
| `new_amal_started` | none | You tap the "new amal" button |
| `amal_created` | `frequency`, `has_reminder` (0/1), `category` | You save a newly-created amal |
| `amal_edited` | `frequency`, `has_reminder` (0/1), `category` | You save changes to an existing amal |
| `amal_completed` | `frequency`, `target` | You mark an amal complete |
| `amal_uncompleted` | `frequency` | You un-check a previously-completed amal |
| `amal_removed` | `scope` (`today` or `tracking`) | You remove an amal from today's list or stop tracking it |
| `amal_reordered` | `item_count` | You reorder amals on the Today screen |
| `amal_note_saved` | `had_previous_note` (0/1) | You save a note on a completion |
| `amal_template_selected` | template identifiers | You pick a template when creating an amal |
| `reminder_scheduled` | `hour`, `had_previous_reminder` (0/1) | A local reminder is scheduled |
| `reminder_canceled` | `source` (`tracking_removed` / `form_edit`) | A local reminder is canceled |
| `notification_permission_result` | `platform` (`ios`/`android`), `granted` (0/1) | You respond to the OS notification permission prompt |
| `category_created` | `category` | You create a category |
| `category_edited` | `category` | You rename or re-icon a category |
| `category_deleted` | `category` | You delete a category |
| `category_selected` | `category` | You pick a category in the form |
| `today_view_mode_changed` | `mode` (`flat`/`grouped`) | You toggle Today's layout |
| `rollover_hour_changed` | `hour` | You change the day-rollover setting |
| `start_of_week_changed` | `weekday` | You change the first-day-of-week setting |
| `theme_changed` | `mode` | You change between light/dark/system theme |
| `language_changed` | `locale` | You change the in-app language |
| `stats_period_changed` | `period` | You switch the Stats time range |
| `stats_category_filter_changed` | `active` (0/1) | You apply/remove a category filter on Stats |
| `stats_amal_filter_changed` | `active` (0/1) | You apply/remove an amal filter on Stats |
| `history_day_selected` | `days_back` | You tap a day on the History screen |
| `history_date_picked` | `days_back` | You pick a date from the History date picker |
| `rate_app_tapped` | none | You tap "Rate this app" in settings |
| `support_email_opened` | `topic` (`contact`/`bug`/`feature`) | You open a support email draft |

**User properties recorded.** Two pseudonymous user properties are attached to the analytics stream:

- `app_language`: your chosen in-app language (e.g. `en`, `ar`, `bn`, or `system` if unset)
- `theme_mode`: `light`, `dark`, or `system`

**Device and technical information collected by Firebase Analytics by default.** In addition to the events above, Firebase Analytics automatically records a limited set of technical signals with each event. These come from Google's SDK, not our code:

- A **pseudonymous app-instance ID** (a random identifier generated on first launch, used to group events from the same install). This ID is not linked to your name, email, Google account, Apple ID, or any advertising identifier.
- **Device model** (e.g. "iPhone 15"), **operating system name and version**, **screen size**, **language and locale**, **country** (derived from your IP address at the time of collection; Google then discards the IP from the event record per its standard configuration).
- **App version** and **build number**.
- **Session duration**, **first-open** and **app-update** signals.

We do **not** configure Firebase Analytics to collect the iOS Advertising Identifier (IDFA) or Android Advertising ID (AAID). We do not use Google Signals, Google Ads integration, or audience-building features.

### 3.3 Crash and performance diagnostics (Firebase Crashlytics — **release builds only**)

When the app crashes or throws an uncaught exception in a release build, we use **Google Firebase Crashlytics** to record:

- The crash type and exception message.
- The stack trace (file names, method names, line numbers in our code).
- Non-identifying device state: device model, OS version, orientation, free disk space, free memory, locale, whether a proxy is in use.
- A Crashlytics Installation UUID (a pseudonymous identifier that Google uses to count distinct devices affected by a crash; not linked to any user account or advertising ID).
- The app version and build number.

We do **not** set a Crashlytics user identifier (`setUserIdentifier` is not called), we do **not** attach custom keys (`setCustomKey` is not called), and we do **not** manually log arbitrary strings (`Crashlytics.log` is not called from our code). Only Flutter-framework exceptions and uncaught Dart errors are reported, via `FlutterError.onError` and `PlatformDispatcher.onError`.

Crashlytics is **explicitly disabled in debug builds** (`FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(!kDebugMode)`), so no crashes are reported from development builds.

Although crash stack traces are not designed to contain personal data, it is theoretically possible that a crash that occurs while you are typing (for example in a note or amal title) could include fragments of that text in an exception message. We do not intentionally capture such text, and we have reviewed the app to minimise this risk, but we disclose it here for transparency.

### 3.4 Data you send us by email (only if you choose to)

The app contains three support options in Settings that open a pre-filled email in your email client:

- **Contact us** — opens a blank draft addressed to `hadi.fiftytwo@gmail.com`.
- **Report a bug** — opens a draft that **pre-fills diagnostic information in the body**: app version, build number, platform (iOS/iPadOS/Android/macOS), OS version, device model (and on Android, manufacturer). You can edit or delete this text before sending.
- **Request a feature** — opens a blank draft.

Emails are sent through **your own email client** using the operating system's share sheet. We do not see or store anything until and unless you press "Send" in your email client, at which point the email reaches our inbox (`hadi.fiftytwo@gmail.com`) via Google Gmail.

What we receive: your email address (as sender), anything you write, and — if you used "Report a bug" — the diagnostic body described above.

---

## 4. Data we do not collect

For the avoidance of doubt, Muhasaba does **not** collect, process, or have access to any of the following:

- Your name, address, phone number, government-issued ID, date of birth, or gender (unless you voluntarily type one into a support email).
- Your email address, **except** when you send us an email.
- Your precise or approximate geolocation (beyond the country inferred from your IP by Firebase Analytics and immediately discarded).
- Contacts, calendar, photos, microphone, camera, health data, motion/fitness data, financial data, or browsing history.
- Biometric data.
- Advertising identifiers (IDFA, AAID, Ad ID for Web).
- Your religious beliefs, practices, or any special-category personal data within the meaning of GDPR Art. 9. The app does not transmit the content of your amals, notes, or completions.
- Any content from other apps.
- Your device's IP address as part of the analytics record (Google discards it from the event after deriving country).

---

## 5. How we use data (purposes)

| Data | Purpose | Why it is necessary |
| --- | --- | --- |
| Local content (amals, completions, notes, settings) | To provide the app's core functionality | Without it, the app cannot show you your tracker |
| Firebase Analytics events and properties | To understand aggregate usage patterns, prioritise improvements, detect regressions (for example, if a feature suddenly stops being used) | Product improvement |
| Firebase Crashlytics reports | To detect, diagnose, and fix bugs and crashes | App stability |
| Support emails | To respond to your question, bug report, or feature request | Customer support |
| Device info in bug reports | To reproduce bugs that may be device- or OS-specific | Technical support |

We do **not** use any of the above for advertising, profiling, scoring, or automated decisions with legal or similarly significant effects.

---

## 6. Legal bases (EEA / UK / Switzerland)

If you are in the European Economic Area, the United Kingdom, or Switzerland, we process personal data under the following legal bases (GDPR Art. 6; UK GDPR Art. 6; FADP Art. 31):

| Processing | Legal basis |
| --- | --- |
| Storing your content locally on your device | Not a processing activity carried out by us — the controller is you, acting in a purely personal / household capacity (GDPR Art. 2(2)(c)). We have no technical access. |
| Firebase Analytics telemetry in release builds | **Legitimate interests** (Art. 6(1)(f)): our interest in understanding how the app is used and improving it, balanced against your privacy interest. We have conducted a balancing assessment, concluding that the interest is legitimate, the processing is necessary and proportionate (pseudonymous, limited event set, no profiling, no advertising), and your reasonable expectations are met through this transparent disclosure. You have the right to object (see §11). |
| Firebase Crashlytics reports in release builds | **Legitimate interests** (Art. 6(1)(f)): our interest in keeping the app stable and secure. |
| Replying to a support email you send | **Legitimate interests** (Art. 6(1)(f)): responding to your enquiry. |
| Compliance with legal obligations (e.g. responding to a lawful order, defending claims) | **Legal obligation** (Art. 6(1)(c)) or **legitimate interests** (Art. 6(1)(f)) as applicable. |

Where the law of your country requires consent for analytics or diagnostics on a mobile device (for example, under national implementations of ePrivacy rules), we will introduce an in-app consent mechanism in a future release. If that release is not yet installed on your device, and you are in such a jurisdiction, please contact us to exercise your right to object, and we will treat the request as a withdrawal of the applicable legal basis.

---

## 7. Who we share data with

We share data only with the following categories of recipients, and only for the purposes listed:

| Recipient | Role | Data received | Purpose |
| --- | --- | --- | --- |
| Google LLC (US) / Google Ireland Limited (Ireland) — **Firebase Analytics, Firebase Crashlytics, Firebase Core** | Processor on our behalf (GDPR Art. 28) | Event stream (§3.2), crash reports (§3.3), automatically-collected device signals | Analytics and crash reporting |
| Google LLC — **Gmail** | Independent controller (inbound email service) | The contents of any support email you send | Email delivery to our inbox |
| Apple Inc. — **App Store, in-app review** | Independent controller | Whatever Apple collects when you install, review, or interact with the App Store listing | Distribution and reviews |
| Google LLC — **Google Play, in-app review** | Independent controller | Whatever Google collects when you install, review, or interact with the Play Store listing | Distribution and reviews |
| Legal and law-enforcement authorities | Independent controllers | Only what is required by valid legal process | Compliance with law |
| A successor entity if Muhasaba is transferred, sold, or merged | Controller | Whatever data exists at the time | Continuity of service |

We do **not** sell personal information. We do **not** share personal information for cross-context behavioural advertising. We do **not** share personal information with data brokers.

The agreements we have in place with Google for Firebase (Google's Data Processing Terms) contractually restrict Google from using the data for its own purposes beyond what is necessary to provide, secure, and maintain the Firebase services.

---

## 8. International data transfers

Muhasaba data processed through Firebase is transmitted to servers operated by Google. Google processes Firebase data in multiple regions; in practice, for our configuration, analytics and crash data may be processed in the United States and other countries where Google operates.

Where personal data is transferred from the EEA, UK, or Switzerland to a country that is not the subject of a European Commission adequacy decision (notably the United States for transfers outside the EU-U.S. Data Privacy Framework scope), the transfer is protected by:

- **Standard Contractual Clauses (SCCs)** incorporated into Google's Data Processing Terms and Google's Model Contract Clauses (EU Commission Decision 2021/914), including the UK International Data Transfer Addendum and the Swiss supplement where applicable.
- **Supplementary technical and organisational measures** implemented by Google, including encryption in transit and at rest.
- Where available, reliance on Google LLC's certification under the **EU-U.S. Data Privacy Framework**, the **UK Extension**, and the **Swiss-U.S. Data Privacy Framework**.

You may request a copy of the relevant transfer mechanisms by contacting us.

---

## 9. Data retention

| Data | Retention period |
| --- | --- |
| Local content on your device (amals, completions, notes, settings) | Until you delete it or uninstall the app. Uninstalling the app removes the local database. |
| Firebase Analytics events | Google retains event-level data for **2 months** by default (our configured setting); aggregated reports may be retained longer by Google per its own policies |
| Firebase Analytics user-property values (`app_language`, `theme_mode`) | Until you uninstall and reinstall (which resets the app-instance ID), or until Google's own retention window expires |
| Firebase Crashlytics crash reports | Google retains Crashlytics data for **90 days** per its standard configuration |
| Support emails (Gmail) | Up to **24 months** from the last correspondence, unless we need to retain them longer to defend legal claims or comply with law |
| Backups | None — we have no server-side backups of your data |

Uninstalling the app from your device clears all locally-stored content. It does **not** retroactively delete analytics events or crash reports that were already transmitted before uninstallation — those expire under the periods above. You may also ask us to delete them on request (see §11).

---

## 10. Security

We apply the following safeguards:

- **Local data** is stored within your app's private sandbox directory (iOS Data Protection class: default; Android internal storage). It is not accessible to other apps. You may additionally enable device-level encryption (on by default on modern iOS/Android devices with a passcode/PIN).
- **Transmitted data** (Firebase Analytics and Crashlytics) is sent over **TLS 1.2 or higher** to Google's servers.
- **No server of ours exists to compromise.** We do not operate backend infrastructure.
- **Bug reporting** uses your email client's transport (typically TLS). Once an email reaches Gmail, it is protected by Google's security controls.

No method of electronic transmission or storage is 100% secure. If we become aware of a security incident that involves personal data we hold (for example, in our email inbox) that is likely to result in a risk to your rights and freedoms, we will notify affected users and the relevant supervisory authority in accordance with applicable law (GDPR Art. 33-34, CCPA §1798.82, equivalents).

---

## 11. Your rights

Depending on where you live, you have some or all of the following rights in relation to personal data we hold about you.

### 11.1 All users

- **Right to information** — this policy, and any updates to it.
- **Right to contact us** at the address in §21 about anything in this policy.

### 11.2 EEA, UK, Switzerland (GDPR / UK GDPR / FADP)

- **Right of access** (Art. 15): to be told what personal data we hold and to receive a copy.
- **Right to rectification** (Art. 16): to have inaccurate data corrected.
- **Right to erasure / "right to be forgotten"** (Art. 17): to have your data deleted.
- **Right to restriction of processing** (Art. 18).
- **Right to data portability** (Art. 20): to receive your data in a structured, commonly-used, machine-readable format.
- **Right to object** (Art. 21): in particular, **you have an absolute right to object to processing based on legitimate interests for direct marketing, and a qualified right to object to analytics and crash reporting** (we must stop unless we show compelling legitimate grounds that override your rights).
- **Right not to be subject to solely automated decisions** (Art. 22) — we do not make such decisions.
- **Right to withdraw consent** (Art. 7(3)) — where consent is the basis, with no effect on lawfulness of prior processing.
- **Right to lodge a complaint** with a supervisory authority (§22).

### 11.3 California (CCPA/CPRA)

- **Right to know**: categories and specific pieces of personal information collected, sources, business/commercial purposes, and categories of third parties to whom it is disclosed — disclosed throughout this policy.
- **Right to delete**: to request deletion of personal information we have collected.
- **Right to correct** inaccurate personal information.
- **Right to opt out of sale/sharing** — we do not sell or share personal information for cross-context behavioural advertising, so this right is not engaged, but you may confirm this with us.
- **Right to limit use of sensitive personal information** — we do not use sensitive PI for purposes beyond those permitted without a limit request.
- **Right to non-discrimination** — we will not deny, charge different prices for, or provide a different quality of service because you exercised your rights.
- **Right to designate an authorised agent** to exercise rights on your behalf.
- "Shine the Light" (Cal. Civ. Code § 1798.83) — we do not share personal information with third parties for their direct marketing purposes.

**Categories of personal information collected** under CCPA, in the 12 months preceding the effective date, are: **identifiers** (app-instance ID, Crashlytics installation UUID), **internet or other electronic network activity information** (event names and parameters, app version, screen views), and **geolocation data** (country only, derived from IP). No other CCPA categories are collected.

### 11.4 Brazil (LGPD)

- Rights under Lei Geral de Proteção de Dados (Law 13.709/2018) Art. 18, including confirmation of processing, access, correction, anonymisation/blocking/deletion, portability, information on sharing, withdrawal of consent, and review of automated decisions.

### 11.5 Canada (PIPEDA and provincial equivalents)

- Right to access and correct personal information; right to withdraw consent; right to complain to the Office of the Privacy Commissioner of Canada.

### 11.6 Other jurisdictions

If you live elsewhere (for example, Australia, New Zealand, Japan, South Korea, South Africa, India, UAE), local laws may grant you similar rights. Please contact us and we will respond consistent with applicable law.

### 11.7 India (DPDP Act, 2023)

- Rights of access, correction, erasure, and grievance redressal under the Digital Personal Data Protection Act, 2023, once and to the extent its provisions become applicable to our processing.

---

## 12. How to exercise your rights

Send an email to **hadi.fiftytwo@gmail.com** from an address you control, describing your request. To help us respond, please:

- Tell us what right you are exercising.
- Tell us the approximate country/region you use the app from (this helps us identify the correct analytics/crash records).
- If known, share the approximate date range and device model.

We do not require you to create an account, and we do not ask for more information than is necessary to verify your request. Because we do not hold a record of who installed the app, verification is inherently limited; if we cannot verify a request without additional information that you are unwilling to provide, we will tell you so and explain what we can still do (for example, deletion by resetting your app-instance ID, which you can also do locally by uninstalling and reinstalling).

We will respond **within 30 days** (GDPR/UK GDPR), which may be extended by a further 60 days for complex requests with notice to you. For CCPA, we will confirm receipt within 10 business days and respond within 45 days (extendable by another 45 days).

**You may also simply uninstall the app** to stop any further telemetry from your device, and contact us if you additionally want existing telemetry deleted.

---

## 13. Children's privacy

Muhasaba is a general-audience app and is not directed to children under **13** (United States — COPPA), under **16** (default threshold in the EEA for consent; some Member States have lowered this to 13, 14, or 15), or under **18** where local law sets that threshold for processing a child's data.

We do not knowingly collect personal information from a child without verifiable parental consent. If you believe a child has used the app and we have received personal information about them (for example, through a support email), please contact us at hadi.fiftytwo@gmail.com and we will delete the information.

The religious-tracking nature of the app does not in itself constitute "special category" data about a child, because we do not transmit the content of amals or completions.

---

## 14. Automated decision-making and profiling

We do not carry out any automated decision-making, profiling, or scoring that produces legal or similarly significant effects on you (GDPR Art. 22). The analytics we collect are aggregated and descriptive, not predictive, and are not used to make decisions about individuals.

---

## 15. App permissions

The app requests the following permissions at the operating-system level. Each is used only for the purpose disclosed.

### 15.1 Android (`AndroidManifest.xml`)

| Permission | Purpose |
| --- | --- |
| `android.permission.POST_NOTIFICATIONS` | To display local reminder notifications at the times you choose |
| `android.permission.RECEIVE_BOOT_COMPLETED` | To reschedule your reminder notifications after the device restarts (so reminders continue to fire) |

No `INTERNET` permission is declared explicitly — network calls to Firebase use the network stack provided by the Flutter engine and Google Play Services; no custom network calls are made by the app.

### 15.2 iOS / iPadOS

The app does not list any `NSxxxUsageDescription` strings in `Info.plist` beyond those required implicitly by the SDKs, because the app does not access contacts, calendar, camera, microphone, photos, location, motion, or health data. The app will at runtime request permission to deliver local notifications via the standard iOS notification authorisation flow.

The app ships an **Apple Privacy Manifest** (`PrivacyInfo.xcprivacy`) declaring:

- **Tracking:** `NSPrivacyTracking = false`; no tracking domains.
- **Data collected:** `Crash Data` (for App Functionality), `Product Interaction` (for Analytics), `Performance Data` (for Analytics) — none linked to user identity, none used for tracking.
- **Required Reason APIs:**
  - `UserDefaults` (reason code `CA92.1` — used by this app's SDKs for their own user defaults access within their container).
  - `DiskSpace` (reason code `E174.1` — to report remaining free space in crash reports and to handle low-disk error cases).
  - `SystemBootTime` (reason code `35F9.1` — measuring time intervals for performance metrics within the app).

---

## 16. Third-party services

| Service | Provider | Purpose | Privacy policy |
| --- | --- | --- | --- |
| Firebase Analytics | Google LLC / Google Ireland Limited | Usage analytics (release builds) | https://firebase.google.com/support/privacy and https://policies.google.com/privacy |
| Firebase Crashlytics | Google LLC / Google Ireland Limited | Crash reporting (release builds) | https://firebase.google.com/support/privacy |
| Firebase Core | Google LLC / Google Ireland Limited | SDK initialisation | https://firebase.google.com/support/privacy |
| Apple App Store and StoreKit in-app review | Apple Inc. | App distribution and review prompt | https://www.apple.com/legal/privacy/ |
| Google Play and In-App Review API | Google LLC | App distribution and review prompt | https://policies.google.com/privacy |
| Gmail (inbound) | Google LLC | Our support email inbox | https://policies.google.com/privacy |

We do not embed advertising SDKs, attribution SDKs, social-login SDKs, chat/support SDKs, or any other third-party component that collects personal data.

---

## 17. Platform-specific disclosures

### 17.1 Apple Privacy "Nutrition Labels"

Consistent with this policy, our App Store privacy label declares the following data types as **collected, not linked to you, and not used for tracking**:

- Crash Data (for App Functionality)
- Product Interaction (for Analytics)
- Performance Data (for Analytics)

We do not declare any data collected for the purpose of "Third-Party Advertising" or "Developer's Advertising or Marketing." If you believe our label is out of date, please contact us.

### 17.2 Google Play Data Safety

Consistent with this policy, our Play Console "Data safety" section declares:

- **Data collected:** App info and performance (crash logs, diagnostics), App activity (app interactions), Device or other IDs (app-instance ID / Crashlytics installation UUID), Approximate location (country-level, derived from IP at collection time and discarded).
- **Data shared:** none of the above is shared with further third parties.
- **Encrypted in transit:** yes.
- **You can request data deletion:** yes — see §12.

---

## 18. Region-specific disclosures

### 18.1 European Economic Area, United Kingdom, Switzerland

See §6 (legal bases), §8 (international transfers), §11.2 (rights), §22 (supervisory authorities).

### 18.2 California

See §11.3. We do **not** sell or share (as those terms are defined under CCPA/CPRA) personal information, and we do not process sensitive personal information for purposes that trigger the "Limit Use of My Sensitive Personal Information" right. We do not knowingly sell or share the personal information of consumers under 16.

**Notice at Collection.** This policy serves as our Notice at Collection. Categories and purposes are listed in §3, §5, §11.3.

**Metrics.** In the 12 months preceding the effective date: number of CCPA requests received: 0 (new policy). We will update this annually.

### 18.3 Virginia, Colorado, Connecticut, Utah, Texas, Oregon, Montana, Delaware, Iowa, Tennessee, Nebraska, New Jersey, New Hampshire, Minnesota, Maryland, Rhode Island, Indiana, Kentucky (U.S. state consumer privacy laws)

You may have rights similar to California's (access, delete, correct, opt-out of targeted advertising/sale, opt-out of certain profiling, appeal). We do not engage in targeted advertising, sale, or high-risk profiling, so several of these rights are not practically engaged; you may still exercise access, deletion, correction, and appeal via §12.

### 18.4 Brazil

See §11.4. The legal bases used are those in LGPD Art. 7 analogous to those in §6.

### 18.5 Canada

See §11.5.

### 18.6 Australia

Personal information is handled consistent with the Australian Privacy Principles under the Privacy Act 1988 (Cth). Complaints may be made to the Office of the Australian Information Commissioner (OAIC).

### 18.7 Middle East, South Asia, Southeast Asia, North Africa, Sub-Saharan Africa

Where local data-protection law applies (for example UAE Federal Decree-Law 45/2021, KSA PDPL, Bahrain PDPL, Qatar Law 13/2016, Turkey KVKK, India DPDP Act, Indonesia PDP Law, Malaysia PDPA, Singapore PDPA, Nigeria NDPA, South Africa POPIA), we will honour applicable rights to access, correction, deletion, and objection upon verified request. Processing is limited as described above.

---

## 19. Do Not Track and Global Privacy Control

The app is a native mobile application and does not respond to browser-level "Do Not Track" signals because no web tracking is used. Where applicable mobile-level signals (for example, iOS **App Tracking Transparency**) apply, we honour them — we do not track (as ATT defines the term), and our `PrivacyInfo.xcprivacy` reflects this.

If your jurisdiction recognises "Global Privacy Control" or an equivalent opt-out signal at the operating-system level, we will respect that signal as an opt-out of any processing that would otherwise be permitted only with opt-in consent.

---

## 20. Changes to this policy

We may update this policy from time to time. When we do:

- We update the "Effective date" and "Last updated" fields at the top.
- For **material** changes (for example, introducing a new data category or third-party processor), we will provide prominent in-app notice at least **30 days** before the change takes effect, and where required we will seek your consent.
- Historical versions are available on request at the address in §21.

Continued use of the app after a non-material change constitutes acknowledgement of the updated policy.

---

## 21. Contact us

For any privacy question, request, or complaint:

- **Email:** hadi.fiftytwo@gmail.com (mark the subject line "Privacy request" for fastest handling)
- **Postal:** Abdullah Al Hadi, Nakhargonj, Nageshwari, Kurigram — 5660, Bangladesh

We aim to respond within **7 days** to simple questions and within the statutory time limits to formal rights requests (see §12).

---

## 22. Supervisory authorities

### 22.1 EEA

You may lodge a complaint with the supervisory authority of your country of residence, place of work, or place of the alleged infringement. A list is maintained by the European Data Protection Board: [edpb.europa.eu/about-edpb/about-edpb/members_en](https://edpb.europa.eu/about-edpb/about-edpb/members_en)

### 22.2 United Kingdom

Information Commissioner's Office (ICO), Wycliffe House, Water Lane, Wilmslow SK9 5AF — [ico.org.uk](https://ico.org.uk)

### 22.3 Switzerland

Federal Data Protection and Information Commissioner (FDPIC), Feldeggweg 1, 3003 Bern — [edoeb.admin.ch](https://www.edoeb.admin.ch)

### 22.4 Other regions

Contact the national or state data-protection authority for your region. We will cooperate fully with authorised requests.

---

## 23. Glossary

- **App-instance ID** — a random identifier generated by Firebase Analytics on first launch to group events from the same install. Reset by uninstalling + reinstalling, or by clearing app data.
- **Crashlytics installation UUID** — a random identifier generated by Firebase Crashlytics to count distinct devices affected by a crash.
- **Debug build** — a build of the app used during development, identifiable by the Dart `kDebugMode` constant being true. Analytics and Crashlytics do not run in debug builds.
- **Release build** — the production build distributed to users via app stores.
- **Processor** — a third party that processes personal data on our instructions (as defined in GDPR Art. 4(8)).
- **Controller** — the entity that determines the purposes and means of processing (GDPR Art. 4(7)).

---

*End of policy.*
