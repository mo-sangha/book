// The Meditation Online Handbook.

// TODO: Can we get good-looking quote blocks for book quotes?
// TODO: Split into multiple chapters following
//       https://sitandr.github.io/typst-examples-book/book/basics/must_know/project_struct.html

#let book_title = "The Meditation Online Handbook"

#set document(
  title: book_title,
  author: (),
  description: none,
  keywords: (),
  date: auto,
)

#set heading(numbering: "1.1.")

/////////////////////////////////////////////////////////////////////////////////
// Style configuration
/////////////////////////////////////////////////////////////////////////////////

#set page(
  paper: "uk-book-b", // 129mm x 198mm (~5" x 7.8")
  numbering: "1",
  margin: 1.25cm,
)

// This font is in the fonts/ folder. The Makefile supplies that path by default.
// This is the closest freely-licensed font that mimics the style of the Way of Abiding.
#set text(font: "EB Garamond")

/////////////////////////////////////////////////////////////////////////////////
// Cover Page
/////////////////////////////////////////////////////////////////////////////////

#page(
  background: rect(
    fill: gradient.linear(rgb("#87cfe9"), white, angle: 90deg),
    width: 100%,
    height: 100%
  ),
  numbering: none,
  margin: auto,
  [
    #place(top + center, text(32pt, weight: "bold", book_title))
    #place(horizon + center, image("images/thigle.png", width: 90%))
    #place(bottom + center, text(24pt, "Lama Dawai Gocha\n& Sangha"))
  ]
)

#pagebreak()
#counter(page).update(1) // Don't count the cover page.

/////////////////////////////////////////////////////////////////////////////////
// Table of Contents
/////////////////////////////////////////////////////////////////////////////////

#show outline.entry.where(
  level: 1
): set block(above: 1.2em)

#page(
  numbering: "i", // Use a different numbering for the table of contents.
  outline(
    title: [Table of Contents],
    target: heading,
  )
)
#pagebreak(weak: true)
#counter(page).update(1) // For the rest of the book, switch back to "1, 2, 3" page numbering.

/////////////////////////////////////////////////////////////////////////////////
// Recognition
/////////////////////////////////////////////////////////////////////////////////

= Recognition

== Revealing the Key Point
=== The Nature of Mind as Awareness

== Discerning the Implications
=== The Nine Levels of Capability
=== The Eight Consciousness Model
=== Resolving Confusion

== Embracing the Larger Scope
=== The Eight Similes of Illusion
=== The Four Foundations of Mindfulness
=== Introduction to the Four Dzogchen Samayas

== Coming to the Decisive Experience
=== Pointing Out
=== Short Sits

/////////////////////////////////////////////////////////////////////////////////
// Familiarization
/////////////////////////////////////////////////////////////////////////////////

= Familiarization

== Revealing the Key Point
=== Garab Dorje's Three Statements

== Discerning the Implications
=== The Three Modes of Liberation
=== Tilopa's Six Words of Advice

== Embracing the Larger Scope
=== The Three Kayas
=== The Four Chokshyaks

== Coming to the Decisive Experience
=== Dzogchen Samatha
=== Ways of Pointing Out

/////////////////////////////////////////////////////////////////////////////////
// Effortlessness
/////////////////////////////////////////////////////////////////////////////////

= Complete Effortlessness

== Revealing the Key Point
=== The Third Mode of Liberation
=== Abiding in Unbinding, Nirvana

== Discerning the Implications

== Embracing the Larger Scope
=== The Four Dzogchen Samayas
=== Distinguishing Consciousness from Wisdom

== Coming to the Decisive Experience
=== Dzogchen Non-Meditation

/////////////////////////////////////////////////////////////////////////////////
// Liberation
/////////////////////////////////////////////////////////////////////////////////

= Complete Liberation

== Revealing the Key Point

== Discerning the Implications

== Embracing the Larger Scope

== Coming to the Decisive Experience

Test Citation for the Basic Space of Phenomena @basic-space

Test Citation for the Way of Abiding @way-of-abiding


= Uncategorized


// Taken from Phase 3.
=== Resting in Presence
=== Reflective Inquiry
=== Dream Yoga (Getting Ahead of Myself Here)

// Taken from Phase 4.
=== Deep Release Meditation
=== Living in Liberation
=== Integration of All Experiences

// Uncategorized
=== The Ayatanas
=== The Watcher
=== Lineage


/////////////////////////////////////////////////////////////////////////////////
// Bibliography
/////////////////////////////////////////////////////////////////////////////////

#bibliography(
  "bib.yml",
  style: "ieee",
)

/////////////////////////////////////////////////////////////////////////////////
// Notes
/////////////////////////////////////////////////////////////////////////////////
//
// 2025-10-10:
// Dharma Toolbox!
//
// Four main chapters:
// Corresponding to the curriculum
// NOT EMPHASIZED BY PEOPLE, BUT IN SCRIPTURES: Recognize Awareness (chapter 1)
// 	All the ways to recognize awareness
//
// Introduction: which scriptures exactly emphasize this?
//
// Chapter 2: Familiarization / Stabliziation into awareness
// 	Dzogchen shamata practice
// Chapter 3: Effortless Abiding (Stabilized into awareness)
// 	Now self-liberation and abiding in unbinding in nirvana
// 	self-liberation, unbinding
// Chapter 4: Liberation
// 	In treasuries, what does it even look like?
//
// Looking for the mind: looking for the watcher
