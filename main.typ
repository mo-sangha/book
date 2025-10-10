// The Meditation Online Handbook.

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
)

// TODO: Letterpress Text Bold?
// #set text(font: "New Computer Modern")

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
  [
    #set align(center)
    #text(32pt, book_title) // TODO: Positioning of these elements (author not far from bottom).
    #image("thigle.png", width: 75%)
    #text(24pt, "Lama Dawai Gocha\n& Sangha")

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
// Body
/////////////////////////////////////////////////////////////////////////////////

= Recognition

== Revealing the Key Point

=== The Nature of Mind as Awareness

== Discerning the Implications

=== The Four Dzogchen Samayas

== Embracing the Larger Scope

== Coming to the Decisive Experience


= Familiarization

== Revealing the Key Point

=== Dzogchen Samatha

== Discerning the Implications

== Embracing the Larger Scope

== Coming to the Decisive Experience


= Complete Effortlessness

== Revealing the Key Point

=== The Self-Liberation of Phenomena

=== Abiding in Unbinding, Nirvana

== Discerning the Implications

== Embracing the Larger Scope

== Coming to the Decisive Experience


= Complete Liberation

== Revealing the Key Point

== Discerning the Implications

== Embracing the Larger Scope

== Coming to the Decisive Experience

Test Citation for the Basic Space of Phenomena @basic-space

Test Citation for the Way of Abiding @way-of-abiding


= Uncategorized

// Taken from Phase 1.
=== Pointing-Out Instructions
=== Short Sits
=== Inquiry Discussions

// Taken from Phase 2.
=== The Three Modes of Liberation
=== The Four Chokshyaks
=== Tilopa's Six Words of Advice
=== Garab Dorje's Three Statements
=== Stillness and Movement
=== Integration Exercises
=== Expanded Inquiry Discussions

// Taken from Phase 3.
=== The Third Mode of Liberation
=== Dzogchen Non-Meditation
=== Resting in Presence
=== Reflective Inquiry
=== Dream Yoga (Getting Ahead of Myself Here)

// Taken from Phase 4.
=== Deep Relase Meditation
=== Living in Liberation
=== Integration of All Experiences


/////////////////////////////////////////////////////////////////////////////////
// Bibliography
/////////////////////////////////////////////////////////////////////////////////

#bibliography(
  "bib.yml",
  style: "ieee",
)
