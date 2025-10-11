// This file contains all functions and variables used in common between the main file and various chapters.

/////////////////////////////////////////////////////////////////////////////////
// Common Variables
/////////////////////////////////////////////////////////////////////////////////

#let book_title = "The Meditation Online Handbook (Draft)"

/////////////////////////////////////////////////////////////////////////////////
// Functions
/////////////////////////////////////////////////////////////////////////////////

// Colors the words, signifying that the section is unfinished. Used for headers.
#let todo(words) = {
  text(fill: blue, [#words])
}

/////////////////////////////////////////////////////////////////////////////////
// Style and Layout
/////////////////////////////////////////////////////////////////////////////////

// TODO: Can we get good-looking quote blocks for book quotes?

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
    font: "EB Garamond",
    hyphenate: auto,
  )

  set par(
    justify: true,
  )

  // Fix spacing around em-dashes. Use em-dashes like this: "a --- b".
  // Source: https://www.flother.is/til/typst-em-dash-show-rule/
  show " — ": [\u{202F}#sym.dash.em\u{202F}]

  doc
}

