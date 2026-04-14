# Hadith collection audit

**Date:** 2026-04-14
**Scope:** All 100 hadith entries (`hadith0` – `hadith99`) in `lib/l10n/app_en.arb` and `lib/l10n/app_ar.arb`.

**Anchor for verification:** The Arabic ARB contains authentic classical hadith text. Arabic is the primary source; English is checked against Arabic and against my knowledge of the canonical collections (Bukhari, Muslim, Tirmidhi, Abu Dawud, Nasa'i, Ibn Majah, Ahmad, Bayhaqi, Tabarani, Hakim).

**Authenticity gradings referenced:** Bukhari/Muslim (sahih by consensus), Tirmidhi's own grading, al-Albani's rulings in *Silsilah al-Sahihah* / *Da'if al-Jami'*, Ibn al-Jawzi's *al-Mawdu'at*. Where scholars disagree, I note the disagreement rather than take a side.

---

## Summary

| Severity | Count | Items |
|---|---:|---|
| 🔴 **Critical** (weak/fabricated hadith, wrong attribution, or Arabic text error) | 7 | 21, 52, 59, 61, 62, 84, 91 |
| 🟡 **Moderate** (weak-contested, truncation loses meaning, imprecise English, composite of multiple hadiths) | 8 | 1, 33, 35, 60, 64, 83, 92, 99 |
| 🟢 **Minor** (borderline authenticity, minor wording, redundancy, slight English imprecision) | 10 | 5, 11, 28, 31, 39, 48, 50, 51, 63, 76 |
| ✅ **Clean** | 75 | the rest |

**Recommendation:** Replace all 🔴 Critical items with authentic alternatives. Fix 🟡 Moderate items (correct English/Arabic where possible, or replace). 🟢 Minor items are your call — most are acceptable, a few (like `hadith50` duplicating `hadith5`) are worth a rewrite.

---

## 🔴 Critical issues (7)

### hadith21 — "Prayer is the pillar of religion"

- **Current AR:** «الصَّلاةُ عِمَادُ الدِّينِ.» — البيهقي
- **Current EN:** "Prayer is the pillar of religion." — Bayhaqi
- **Problem:** This wording has been classified as **weak / baseless (la asla lahu)** by major hadith critics — al-Bayhaqi himself noted the chain weakness, al-Nawawi and al-Albani graded it weak (*Da'if al-Jami'* 3553). Frequently quoted in sermons but not an authenticated prophetic hadith.
- **Proposed replacement:** Keep the theme (prayer's centrality) using an authentic hadith.
  - **AR:** «بَيْنَ الرَّجُلِ وَبَيْنَ الشِّرْكِ وَالكُفْرِ تَرْكُ الصَّلاةِ.» — مسلم
  - **EN:** "Between a man and disbelief and polytheism is the abandonment of prayer." — Muslim
  - Source: Sahih Muslim 82 (Jabir ibn Abdullah), sahih.

### hadith52 — "Give charity without delay"

- **Current AR:** «باكروا بالصدقة فإن البلاء لا يتخطاها.» — الترمذي
- **Current EN:** "Give charity without delay, for it stands in the way of calamity." — Tirmidhi
- **Problem:** Graded **weak (da'īf)** by al-Albani (*Da'if al-Jami'* 1877). Attribution also wrong — this wording is in al-Bayhaqi's *Shu'ab al-Iman* 3087, not Tirmidhi.
- **Proposed replacement:**
  - **AR:** «اتَّقُوا النَّارَ وَلَوْ بِشِقِّ تَمْرَةٍ.» — البخاري ومسلم
  - **EN:** "Protect yourselves from the Hellfire, even with half a date (in charity)." — Bukhari & Muslim
  - Source: Bukhari 1417, Muslim 1016 (Adi ibn Hatim), sahih.

### hadith59 — "The mosque is the house of every pious person"

- **Current AR:** «المسجد بيت كل تقيّ.» — الطبراني
- **Current EN:** "The mosque is the house of every pious person." — Tabarani
- **Problem:** Graded **weak (da'īf)** by al-Albani in *Da'if al-Jami'* 5635; al-Haythami noted chain weakness in *Majma' al-Zawa'id*.
- **Proposed replacement:**
  - **AR:** «أَحَبُّ البِلادِ إِلَى اللَّهِ مَسَاجِدُهَا، وَأَبْغَضُ البِلادِ إِلَى اللَّهِ أَسْوَاقُهَا.» — مسلم
  - **EN:** "The most beloved places to Allah are the mosques, and the most disliked places to Allah are the marketplaces." — Muslim
  - Source: Sahih Muslim 671 (Abu Hurayrah), sahih.

### hadith61 — "Allah loves excellence in work"

- **Current AR:** «إن الله يحب إذا عمل أحدكم عملاً أن يتقنه.» — الطبراني
- **Current EN:** "Allah loves that when you do something, you do it with excellence." — Tabarani
- **Problem:** Extremely widely circulated but graded **weak (da'īf)** by al-Albani. Found in al-Tabarani's *Mu'jam al-Awsat* and al-Bayhaqi's *Shu'ab al-Iman* with weak chains.
- **Proposed replacement:** The theme of excellence (*ihsan*) is better served by an authentic hadith:
  - **AR:** «إِنَّ اللَّهَ كَتَبَ الإِحْسَانَ عَلَى كُلِّ شَيْءٍ.» — مسلم
  - **EN:** "Allah has prescribed excellence (ihsan) in everything." — Muslim
  - Source: Sahih Muslim 1955 (Shaddad ibn Aws), sahih.

### hadith62 — "Paradise lies under the feet of mothers"

- **Current AR:** «الجنة تحت أقدام الأمهات.» — النسائي
- **Current EN:** "Paradise lies under the feet of mothers." — Nasa'i
- **Problem:** **Wrong attribution and contested authenticity.** The popular aphorism in this exact form does NOT appear in Sunan al-Nasa'i. The closest is Nasa'i 3104 from Mu'awiyah ibn Jahimah: «الْزَمْهَا فَإِنَّ الْجَنَّةَ تَحْتَ رِجْلَيْهَا» ("Stay with her, for Paradise is at her feet") — singular, addressed to a specific man about his mother. The popular "under the feet of mothers" form has been graded **fabricated (mawdu')** by Ibn al-Jawzi in *al-Mawdu'at*.
- **Proposed replacement:** Keep the theme (mothers' status) using the actual Nasa'i hadith:
  - **AR:** «جَاءَ رَجُلٌ إِلَى رَسُولِ اللَّهِ ﷺ فَقَالَ: أُجَاهِدُ؟ قَالَ: «لَكَ أُمٌّ؟» قَالَ: نَعَمْ. قَالَ: «فَالْزَمْهَا فَإِنَّ الجَنَّةَ تَحْتَ رِجْلَيْهَا».» — النسائي
  - **EN:** "A man came to the Prophet ﷺ and said: 'Shall I go to jihad?' He said: 'Do you have a mother?' He said: 'Yes.' He said: 'Then stay with her, for Paradise is at her feet.'" — Nasa'i
  - Source: Sunan al-Nasa'i 3104 (Mu'awiyah ibn Jahimah), hasan by al-Albani.
  - **Alternative** (shorter, fully authentic, different angle): «رِضَا الرَّبِّ فِي رِضَا الوَالِدِ، وَسَخَطُ الرَّبِّ فِي سَخَطِ الوَالِدِ.» — الترمذي (Tirmidhi 1899, sahih). *"The pleasure of the Lord is in the pleasure of the parent, and the displeasure of the Lord is in the displeasure of the parent."*

### hadith84 — "The best of worship is awaiting relief"

- **Current AR:** «أَفْضَلُ العِبَادَةِ انْتِظَارُ الفَرَجِ.» — الترمذي
- **Current EN:** "The best of worship is awaiting relief." — Tirmidhi
- **Problem:** Graded **weak (da'īf)** by al-Albani in *Da'if al-Jami'* 1061. From Tirmidhi 3571 (Anas) but chain is weak.
- **Proposed replacement:**
  - **AR:** «مَا مِنْ شَيْءٍ أَثْقَلُ فِي مِيزَانِ المُؤْمِنِ يَوْمَ القِيَامَةِ مِنْ خُلُقٍ حَسَنٍ.» — الترمذي
  - **EN:** "Nothing is heavier on the scale of the believer on the Day of Judgment than good character." — Tirmidhi
  - Source: Tirmidhi 2002 (Abu al-Darda), sahih by Tirmidhi and al-Albani.

### hadith91 — "Leaving lying / palace in Paradise" — **Arabic text error**

- **Current AR:** «مَنْ تَرَكَ الكَذِبَ وَهُوَ مَازِحٌ بُنِيَ لَهُ فِي رَبَضِ الجَنَّةِ.» — أبو داود
- **Current EN:** "Whoever gives up lying for the sake of Allah, even while joking, I guarantee him a palace in the outskirts of Paradise." — Abu Dawud
- **Problem:** **The Arabic says "outskirts" (ربض) but the actual hadith places leaving-lying in the *middle* (وسط) of Paradise.** The hadith in Abu Dawud 4800 is a triplet:
  - "ببيت في **ربض** الجنة لمن ترك المراء وإن كان محقا" — house in **outskirts** for whoever leaves quarreling
  - "وببيت في **وسط** الجنة لمن ترك الكذب وإن كان مازحا" — house in **middle** for whoever leaves lying
  - "وببيت في **أعلى** الجنة لمن حسن خلقه" — house in **upper** for good character

  The app's Arabic has cross-wired the two — it attaches the *outskirts* location to *leaving lying*. Also the English says "palace" where Arabic says "بيت" (house).
- **Proposed fix:**
  - **AR:** «مَنْ تَرَكَ الكَذِبَ وَهُوَ مَازِحٌ بُنِيَ لَهُ فِي وَسَطِ الجَنَّةِ.» — أبو داود
  - **EN:** "Whoever gives up lying even while joking will have a house built for him in the middle of Paradise." — Abu Dawud
  - Source: Sunan Abi Dawud 4800 (Abu Umamah), hasan by al-Albani.

---

## 🟡 Moderate issues (8)

### hadith1 — Attribution wrong

- **Current:** Attributed to **Ibn Majah**.
- **Actual:** The hadith «خذوا من الأعمال ما تطيقون، فإن خير الأعمال أدومه وإن قلّ» in this form is from Bukhari 5861 and Muslim 782 (Aisha). Ibn Majah attribution alone is unusual/incorrect.
- **Fix:** Change attribution to `البخاري ومسلم` / "Bukhari & Muslim".

### hadith33 — English imprecise

- **Current AR:** «الطُّهُورُ شَطْرُ الإِيمَانِ.»
- **Current EN:** "Cleanliness is half of faith."
- **Problem:** "Cleanliness" in English is ambiguous (hygiene vs. ritual). The Arabic *ṭuhūr* specifically means ritual purification (*wudu'*, *ghusl*). In Islamic texts this is conventionally translated as "Purification" or "Purity".
- **Fix:** Change EN to "Purification is half of faith." or "Purity is half of faith."

### hadith35 — English severely truncated & Arabic possibly composite

- **Current AR:** «خَيْرُ الرِّزْقِ لِسَانٌ ذَاكِرٌ، وَقَلْبٌ شَاكِرٌ، وَزَوْجَةٌ مُؤْمِنَةٌ تُعِينُهُ عَلَى إِيمَانِهِ.» — الطبراني
- **Current EN:** "The best wealth is a tongue that remembers Allah." — Tabarani
- **Problem 1:** English drops two-thirds of the Arabic (omits heart and wife).
- **Problem 2:** The exact Arabic composite appears in Tabarani's *Awsat* with weak chains. The stronger parallel from Tirmidhi 3094 (Thawban, sahih) uses different opening — "ليتخذ أحدكم قلبا شاكرا..."
- **Fix (option A, salvage):**
  - **AR:** keep as is.
  - **EN:** "The best provision is a tongue that remembers Allah, a thankful heart, and a believing wife who helps him in his faith." — Tabarani
- **Fix (option B, replace with fully authentic version):**
  - **AR:** «لِيَتَّخِذْ أَحَدُكُمْ قَلْبًا شَاكِرًا، وَلِسَانًا ذَاكِرًا، وَزَوْجَةً مُؤْمِنَةً تُعِينُهُ عَلَى أَمْرِ الآخِرَةِ.» — الترمذي
  - **EN:** "Let each of you have a thankful heart, a remembering tongue, and a believing wife who helps him in the affairs of the hereafter." — Tirmidhi
  - Source: Tirmidhi 3094 (Thawban), sahih by al-Albani. **Recommended.**

### hadith60 — "La hawla" = remedy for 99 diseases

- **Current AR:** «من قال لا حول ولا قوة إلا بالله كانت له دواءً من تسعة وتسعين داءً أيسرها الهمّ.» — الحاكم
- **Problem:** Graded **weak (da'īf)** by al-Albani (*Da'if al-Jami'* 5746). Hakim's grading was lenient here.
- **Fix:** Replace with an authentic hadith on *la hawla*:
  - **AR:** «لا حَوْلَ وَلا قُوَّةَ إِلَّا بِاللَّهِ كَنْزٌ مِنْ كُنُوزِ الجَنَّةِ.» — البخاري ومسلم
  - **EN:** "La hawla wa la quwwata illa billah is a treasure from the treasures of Paradise." — Bukhari & Muslim
  - Source: Bukhari 6409, Muslim 2704 (Abu Musa), sahih by consensus.

### hadith64 — "Thankful for little"

- **Current AR:** «من شكر القليل أُعطي الكثير.» — البيهقي
- **Problem:** Attributed as prophetic but most classifications grade it weak or baseless as a marfū' hadith.
- **Fix:** Replace with authentic Quranic-based narration:
  - **AR:** «لا يَشْكُرُ اللَّهَ مَنْ لا يَشْكُرُ النَّاسَ.» — but this duplicates `hadith80`. 
  - Better: **AR:** «مَنْ لَمْ يَشْكُرِ القَلِيلَ لَمْ يَشْكُرِ الكَثِيرَ.» — أحمد (Musnad Ahmad 18449, hasan). **EN:** "Whoever is not grateful for little will not be grateful for much." — Ahmad. Same theme, authenticated source.

### hadith83 — English adds content not in Arabic

- **Current AR:** «أَكْثِرُوا ذِكْرَ هَاذِمِ اللَّذَّاتِ.» — الترمذي
- **Current EN:** "Remember death often, for it purifies the heart." — Tirmidhi
- **Problem:** Arabic literally says "Remember often the destroyer of pleasures" (= death). The clause *"for it purifies the heart"* is not in the original hadith — it's an interpretation added to English.
- **Fix:** Change EN to "Remember often the destroyer of pleasures (i.e., death)." — Tirmidhi, or "Frequently remember death, the destroyer of pleasures." — Tirmidhi.

### hadith92 — Arabic appears to be composite, attribution unclear

- **Current AR:** «أبواب الخير كثيرة: التسبيح، والتحميد، والصدقة، والأمر بالمعروف، وإماطة الأذى عن الطريق.» — مسلم
- **Problem:** This specific summary wording with this list does not appear as a single narration in Sahih Muslim. The themes appear across several authentic hadiths but not bundled this way.
- **Fix:** Replace with an authentic single-narration hadith on the multiplicity of good deeds:
  - **AR:** «كُلُّ سُلامَى مِنَ النَّاسِ عَلَيْهِ صَدَقَةٌ كُلَّ يَوْمٍ تَطْلُعُ فِيهِ الشَّمْسُ: تَعْدِلُ بَيْنَ اثْنَيْنِ صَدَقَةٌ، وَتُعِينُ الرَّجُلَ فِي دَابَّتِهِ... وَالكَلِمَةُ الطَّيِّبَةُ صَدَقَةٌ.» — البخاري ومسلم
  - **EN:** "Every joint of a person owes a charity every day: reconciling between two is charity, helping a man with his animal is charity... and a good word is charity." — Bukhari & Muslim
  - Source: Bukhari 2989, Muslim 1009 (Abu Hurayrah), sahih.
  - But this overlaps with `hadith13`. **Alternative:** replace with a distinct authentic theme — see recommendation below.

### hadith99 — Arabic conflates two hadiths

- **Current AR:** «أحب الكلام إلى الله: سبحان الله وبحمده، سبحان الله العظيم.» — البخاري ومسلم
- **Problem:** The Arabic merges two separate hadiths:
  - Muslim 2731 (Samurah): «أحب الكلام إلى الله أربع: سبحان الله، والحمد لله، ولا إله إلا الله، والله أكبر» (four phrases)
  - Bukhari 7563 / Muslim 2694 (Abu Hurayrah): «كلمتان خفيفتان على اللسان، ثقيلتان في الميزان، حبيبتان إلى الرحمن: سبحان الله وبحمده، سبحان الله العظيم»
  - The ARB bolts the first phrasing onto the second list — not a literal quotation of either.
- **Fix (keep the meaning, cite correctly):**
  - **AR:** «كَلِمَتَانِ خَفِيفَتَانِ عَلَى اللِّسَانِ، ثَقِيلَتَانِ فِي المِيزَانِ، حَبِيبَتَانِ إِلَى الرَّحْمَنِ: سُبْحَانَ اللَّهِ وَبِحَمْدِهِ، سُبْحَانَ اللَّهِ العَظِيمِ.» — البخاري ومسلم
  - **EN:** "Two phrases light on the tongue, heavy on the scale, and beloved to the Most Merciful: SubhanAllahi wa bihamdihi, SubhanAllahil Azeem." — Bukhari & Muslim
  - Source: Bukhari 7563, Muslim 2694 (Abu Hurayrah), sahih.

---

## 🟢 Minor issues (10)

| # | Issue | Suggested action |
|---|---|---|
| 5 | "The best of people are those most beneficial" (Tabarani). Borderline authenticity — al-Albani graded hasan in *Silsilah Sahihah* 426 but some contest it. | Keep. Acceptable. |
| 11 | English truncates the full tawhid formula from the Arafah supplication. Arabic in Tirmidhi 3585 continues: «وحده لا شريك له، له الملك وله الحمد وهو على كل شيء قدير». Our ARB already truncates in Arabic too. | Optionally extend both AR and EN to include the full formula. |
| 28 | "Seeking knowledge is an obligation" — graded weak by some, sahih by al-Albani. Borderline. | Keep, flagged for user's info. |
| 31 | English drops the second half (mercy to those on earth / heaven's mercy). | Extend EN: "The merciful are shown mercy by the Most Merciful. Show mercy to those on earth, the One above the heavens will show mercy to you." |
| 39 | Arabic in ARB uses «من حفظ…دخل» but authentic wording is «من يضمن لي…أضمن له». English matches the authentic wording; Arabic doesn't. | Fix Arabic to match: «مَنْ يَضْمَنْ لِي مَا بَيْنَ لَحْيَيْهِ وَمَا بَيْنَ رِجْلَيْهِ أَضْمَنْ لَهُ الجَنَّةَ.» |
| 48 | "Every good deed is charity" — this specific wording is in Sahih Muslim; Bukhari has it in *al-Adab al-Mufrad* (not the Sahih). Attributing to both is slightly inflated. | Change attribution to "Muslim" alone, or keep if acceptable. |
| 50 | "Most beloved people to Allah are those most beneficial" overlaps heavily with `hadith5`. Same theme, similar attribution. | Replace `hadith50` with an unrelated authentic hadith to avoid redundancy. Suggestion: «إِنَّ مِمَّا يَلْحَقُ المُؤْمِنَ مِنْ عَمَلِهِ وَحَسَنَاتِهِ بَعْدَ مَوْتِهِ: عِلْمًا عَلَّمَهُ وَنَشَرَهُ، وَوَلَدًا صَالِحًا تَرَكَهُ...» — but this overlaps with `hadith2`. Alternative: any hadith from An-Nawawi's 40 not yet covered. |
| 51 | English generalizes «من الحور ما شاء» (whichever of the Hur he wishes) to "his reward". Softens specificity. | Acceptable for general audience; could restore specifics if you prefer. |
| 63 | Arabic in ARB: «الصَّلاةُ لِوَقْتِهَا»; authentic wording in Bukhari/Muslim: «الصَّلاةُ عَلَى وَقْتِهَا» (لـ vs. على). | Fix preposition: «عَلَى وَقْتِهَا». |
| 76 | "Whoever says Astaghfirullah regularly…" — Arabic is shortened (drops "من كل هم فرجا"), authenticity contested. | Optionally extend Arabic: «مَنْ لَزِمَ الاسْتِغْفَارَ جَعَلَ اللَّهُ لَهُ مِنْ كُلِّ هَمٍّ فَرَجًا، وَمِنْ كُلِّ ضِيقٍ مَخْرَجًا، وَرَزَقَهُ مِنْ حَيْثُ لا يَحْتَسِبُ.» with EN to match. |

---

## ✅ Clean entries (75)

hadith0, 2, 3, 4, 6, 7, 8, 9, 10, 12, 13, 14, 15, 16, 17, 18, 19, 20, 22, 23, 24, 25, 26, 27, 29, 30, 32, 34, 36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 49, 53, 54, 55, 56, 57, 58, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 77, 78, 79, 80, 81, 82, 85, 86, 87, 88, 89, 90, 93, 94, 95, 96, 97, 98.

These match authentic narrations in standard collections with correct attribution and faithful translation. No action required.

---

## Proposed plan of action

1. **You review this report**, approve/reject each fix individually or accept all critical+moderate.
2. I apply approved changes to `app_en.arb` and `app_ar.arb`. Where a hadith is replaced wholesale, both files change in the same commit.
3. After English/Arabic anchors are stable, I regenerate every one of the 22 other ARB files so translations line up with the new anchor. (Mechanical translation of approved text.)
4. `flutter gen-l10n` + `flutter analyze` to confirm nothing breaks.
5. Commit.

---

## Limits I want to be explicit about

- **Hadith grading has real scholarly disagreement.** Where I say "weak by al-Albani", someone else may rank it differently. For anything contested, I've surfaced the issue and let you decide.
- **22 translations not yet audited.** Once you approve anchor fixes, I'll regenerate them from the new English/Arabic. I cannot guarantee native-speaker-level nuance in every language — a final native-speaker review before shipping would be the gold standard for a religious app.
- **No hadith numbers currently stored.** If you want collection + hadith number in attributions (e.g. "Bukhari 6464, Muslim 783"), that's a separate enhancement — happy to do it while we're in here.
