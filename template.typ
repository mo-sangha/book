// This file contains all functions and variables used in common between the main file and various chapters.

/////////////////////////////////////////////////////////////////////////////////
// Common Variables
/////////////////////////////////////////////////////////////////////////////////

#let book_title = "Four Phases of Freedom"

/////////////////////////////////////////////////////////////////////////////////
// Functions
/////////////////////////////////////////////////////////////////////////////////

// Colors the words, signifying that the section is unfinished. Used for headers.
#let todo(words) = {
  text(fill: blue, [#words])
}

// Colors the words, signifying that approval from Dawai is needed.
#let approval(words) = {
  text(fill: purple, [#words])
}

/////////////////////////////////////////////////////////////////////////////////
// Style and Layout
/////////////////////////////////////////////////////////////////////////////////

#let template(doc) = {
  set document(
    title: book_title,
    author: (),
    description: none,
    keywords: (),
    date: auto,
  )

  set page(
    paper: "uk-book-b", // 129mm x 198mm (~5" x 7.8")
    numbering: "1",
    margin: 1.25cm,
  )

  set heading(numbering: "1.1.")

  // This font is in the fonts/ folder. The Makefile supplies that path by default.
  // This is the closest freely-licensed font that mimics the style of The Way of Abiding.
  set text(
    lang: "en",
    font: ("EB Garamond", "Jomolhari"), // Fall back to Jomolhari for Tibetan glyphs.
    hyphenate: auto,
  )

  set par(
    justify: true,
    justification-limits: (
      // How much can the width of spaces between words be adjusted?
      "spacing": ("min": 90% - 0.01em, "max": 100% + 0.02em),
      // How much can the spacing between letters be adjusted?
      "tracking": ("min": -0.01em, "max": 0.02em),
    )
  )

  // Modify #quote blocks so that they appear as just indented paragraphs,
  // without additional spacing above and below.
  show quote: set pad(top: -1.25em)

  // Fix spacing around em-dashes. Use em-dashes like this: "a --- b".
  // Source: https://www.flother.is/til/typst-em-dash-show-rule/
  show " — ": [\u{202F}#sym.dash.em\u{202F}]

  // Renditions of common Pali words.
  show "shamatha": [samatha] // Standardize on the Pali, not the Sanskrit.
  show "Shamatha": [Samatha] // Standardize on the Pali, not the Sanskrit.
  show "vipassana": [vipassanā]
  show "Vipassana": [Vipassanā]

  // Renditions of common Sanskrit words.
  show "dakini": [ḍākinī]
  show "Dakini": [Ḍākinī]
  show "dharmakaya": [dharmakāya]
  show "Dharmakaya": [Dharmakāya]
  show "sambhogakaya": [sambhogakāya]
  show "Sambhogakaya": [Sambhogakāya]
  show "nirmanakaya": [nirmāṇakāya]
  show "Nirmanakaya": [Nirmāṇakāya]
  show "kaya": [kāya]
  show "Kaya": [Kāya]
  show "samsara": [saṃsāra]
  show "Samsara": [Saṃsāra]
  show "nirvana": [nirvāṇa]
  show "Nirvana": [Nirvāṇa]
  show "mahamudra": [mahāmudrā]
  show "Mahamudra": [Mahāmudrā]
  show "sutra": [sūtra]
  show "Sutra": [Sūtra]
  show "samadhi": [samādhi]
  show "Samadhi": [Samādhi]
  show "bhumi": [bhūmi]
  show "Bhumi": [Bhūmi]
  show "manas-vijnana": [mānas-vijñāna]
  show "Manas-vijnana": [Mānas-vijñāna]
  show "Dignaga": [Dignāga]
  show "Mahayana": [Mahāyāna]
  show "vidya": [vidyā]
  show "Vidya": [Vidyā]

  // Renditions of common Tibetan words.
  show "trekcho": [trekchö]
  show "Trekcho": [Trekchö]
  show "togal": [tögal]
  show "Togal": [Tögal]
  show "togyal": [tögal]
  show "Togyal": [Tögal]
  show "ngondro": [ngöndro]
  show "Ngondro": [Ngöndro]

  doc
}

