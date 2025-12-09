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
    #set par(spacing: 0em)
    #set par(justify: false)
    #place(top + center, [
      #text(40pt, weight: "bold", "Beyond Recognition")\
      #v(4pt)\
      #text(28pt, weight: "bold", "Four Phases of Freedom")
    ])
    #place(horizon + center, [
      #v(40pt)
      #image("images/thigle.png", width: 90%)
    ])
    #place(bottom + center, text(30pt, "Lama Dawai Gocha"))
  ]
)

#pagebreak()
#counter(page).update(1) // Don't count the cover page.

/////////////////////////////////////////////////////////////////////////////////
// Copyright and publication information
/////////////////////////////////////////////////////////////////////////////////

#page(
  numbering: none, // Copyright page does not get a page number.
  [
    Draft copy.

    Published #datetime.today().display("[year]-[month]-[day]").

    This text is self-secret and self-protected.

    Copyright © #datetime.today().display("[year]"), Lama Dawai Gocha.

    Licensed under CC BY-NC-SA 4.0.

    No AI was used in the making of this text.
  ]
)

#pagebreak()
#counter(page).update(1) // Don't count this page either

/////////////////////////////////////////////////////////////////////////////////
// Table of Contents
/////////////////////////////////////////////////////////////////////////////////

// Add a little more vertical spacing after the text "Table of Contents".
// #show outline.entry.where(
//   level: 1
// ): set block(above: 1.2em)

#page(
  numbering: "i", // Use a different numbering for the table of contents.
  [
    #outline(
      title: [Table of Contents],
      target: heading,
    )
  ]
)

/////////////////////////////////////////////////////////////////////////////////
// The Four Phases
/////////////////////////////////////////////////////////////////////////////////

#pagebreak(weak: true)
#counter(page).update(1) // For the rest of the book, switch back to "1, 2, 3" page numbering.

#include("chapters/1.typ")
#include("chapters/2.typ")
#include("chapters/3.typ")
#include("chapters/4.typ")

/////////////////////////////////////////////////////////////////////////////////
// Bibliography
/////////////////////////////////////////////////////////////////////////////////

#pagebreak(weak: true)
#bibliography(
  "bib.yml",
  style: "ieee",
)
