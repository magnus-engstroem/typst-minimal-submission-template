#set page(
  paper: "a4",
  margin: 2.5cm,
)

#set text(
  font: "Libertinus Serif",
  size: 11pt,
)

#let title = "Exercise Submission"
#let course = "COURSE101 — Course Name"
#let student = "Name Namesson"

#align(left)[
  #image("NTNU hovedlogo - farger - bredde.png", width: 4cm)
]

#v(2cm)

#set heading(numbering: none)

#show: body => {
  for elem in body.children {
    if elem.func() == math.equation and elem.block {
      let numbering = if "label" in elem.fields().keys() { "(1)" } else { none }
      set math.equation(numbering: numbering)
      elem
    } else {
      elem
    }
  }
}

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
