// The Meditation Online Handbook.

#import "template.typ": *
#show: template

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
#include("chapters/nature-as-awareness.typ")

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
