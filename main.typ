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
    #set par(justify: false)
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
  [
    Drafting notes:
    
    - Sections #todo[in this color] are still in development.
    - Sections #approval[in this color] need review by Dawai.
    - Sections in this color have been explicitly approved by Dawai.
  
    #outline(
      title: [Table of Contents],
      target: heading,
    )
  ]
)
#pagebreak(weak: true)
#counter(page).update(1) // For the rest of the book, switch back to "1, 2, 3" page numbering.

/////////////////////////////////////////////////////////////////////////////////
// Recognition
/////////////////////////////////////////////////////////////////////////////////

= #todo[Revealing the Nature of Mind]

== #todo([Key Point])
=== #todo([The Practitioner is Pointed to the Nature of Mind as Awareness])
#include("chapters/nature-as-awareness.typ")
=== #todo([Pointing Out])
#include("chapters/pointing-out.typ")

== #todo([Discerning the Implications])
#include("chapters/recognition-implications.typ")

== #todo([])#todo([Embracing the Larger Scope])
#include("chapters/recognition-embracing.typ")

== #todo([Coming to the Decisive Conclusion])
#include("chapters/recognition-decisive.typ")

/////////////////////////////////////////////////////////////////////////////////
// Familiarization
/////////////////////////////////////////////////////////////////////////////////

= #todo([Familiarizing With the View and Effortlessness])
#include("chapters/familiarization-intro.typ")

== #todo([Key Point])
#include("chapters/familiarization-key-point.typ")
=== #todo([Garab Dorje's Three Statements])
#include("chapters/garab-dorje.typ")

== #todo([Discerning the Implications])
=== #todo([The Eight Consciousness Model])
=== #todo([Resolving Confusion])
=== #todo([The Three Modes of Liberation])
#include("chapters/three-modes.typ")
=== #todo([Tilopa's Six Words of Advice])
=== #todo([The Eight Similes of Illusion])

== #todo([Embracing the Larger Scope])
=== #todo([The Three Kayas])
=== #todo([The Four Chokshyaks])
#include("chapters/chokshyaks.typ")

== #todo([Coming to the Decisive Conclusion])
=== #todo([Dzogchen Samatha])
#include ("chapters/dzogchen-samatha.typ")
=== #todo([Short Sits])

/////////////////////////////////////////////////////////////////////////////////
// Effortlessness
/////////////////////////////////////////////////////////////////////////////////

= #todo([Pure Effortlessness])

== #todo([Key Point])
#include("chapters/effortlessness-key-point.typ")
=== #todo([The Third Mode of Liberation])
=== #todo([Abiding in Unbinding, Nirvana])

== #todo([Discerning the Implications])

== #todo([Embracing the Larger Scope])
=== #todo([The Four Dzogchen Samayas])
=== #todo([Distinguishing Consciousness from Wisdom])

== #todo([Coming to the Decisive Conclusion])
=== #todo([Dzogchen Non-Meditation])

/////////////////////////////////////////////////////////////////////////////////
// Liberation
/////////////////////////////////////////////////////////////////////////////////

= #todo([Complete Liberation])

== #todo([Key Point])

== #todo([Discerning the Implications])

== #todo([Embracing the Larger Scope])

== #todo([Coming to the Decisive Conclusion])


/////////////////////////////////////////////////////////////////////////////////
// Bibliography
/////////////////////////////////////////////////////////////////////////////////

#bibliography(
  "bib.yml",
  style: "ieee",
)
