// This file contains all functions and variables used in common between the main file and various chapters.

/////////////////////////////////////////////////////////////////////////////////
// Common Variables
/////////////////////////////////////////////////////////////////////////////////

#let book_title = "The Meditation Online Handbook"

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
  set text(font: "EB Garamond")

  doc
}

