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
    #place(bottom + center, text(24pt, "Lama Dawai Gocha"))
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

    Licensed under the CC0 1.0 Universal Public Domain Dedication.

    #quote(block: true)[
    This work is dedicated to the public domain.
    The author has waived all of their rights to the work worldwide under
    copyright law, including all related and neighboring rights, to the extent
    allowed by law.

    You can copy, modify, distribute, and perform the work, even for commercial
    purposes, all without asking permission.

    In no way are the patent or trademark rights of any person affected by CC0,
    nor are the rights that other persons may have in the work or in how the work is used,
    such as publicity or privacy rights.

    Unless expressly stated otherwise, the person who associated a work with this deed
    makes no warranties about the work, and disclaims liability for all uses of the work,
    to the fullest extent permitted by applicable law.

    When using or citing the work, you should not imply endorsement by the author
    or the affirmer.
    ]
  ]
)

#pagebreak()
#counter(page).update(1) // Don't count this page either

/////////////////////////////////////////////////////////////////////////////////
// Table of Contents
/////////////////////////////////////////////////////////////////////////////////

// Add a little more vertical spacing after the text "Table of Contents".
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
