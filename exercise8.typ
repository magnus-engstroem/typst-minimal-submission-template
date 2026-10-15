#set page(
  paper: "a4",
  margin: 2.5cm,
)

#set text(
  font: "Libertinus Serif",
  size: 11pt,
)

#set heading(numbering: "1.")

#let title = "Exercise Submission"
#let course = "COURSE101 — Course Name"
#let student = "Name Namesson"

#align(left)[
  #image("NTNU hovedlogo - farger - bredde.png", width: 4cm)
]

#v(2cm)

#align(center)[
  #text(size: 24pt, weight: "bold")[#title]

  #v(0.6cm)

  #text(size: 14pt)[#course]

  #v(0.3cm)

  #text(size: 14pt)[#student]
]

#v(2cm)

#outline(
  title: [Table of Contents],
  depth: 1,
)

#pagebreak()

= Problem 1

Write your solution here.

#bibliography("sources.bib", style: "apa")
