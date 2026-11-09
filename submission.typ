#import "@preview/great-theorems:0.1.2": *
#import "@preview/equate:0.3.3": equate

#show: great-theorems-init
#show: equate.with(number-mode: "label")

#set math.equation(
  numbering: "(1)",
  supplement: none,
)
#show ref: it => {
  // provide custom reference for equations
  if it.element != none and it.element.func() == math.equation {
    // optional: wrap inside link, so whole label is linked
    link(it.target)[Eq.~(#it)]
  } else {
    it
  }
}
// One shared counter for mathematical statements
#let thm-counter = counter("theorems")

// AMS-style theorem environments
#let theorem = mathblock(
  blocktitle: "Theorem",
  counter: thm-counter,
  numbering: "1",
  bodyfmt: text.with(style: "italic"),
)

#let lemma = mathblock(
  blocktitle: "Lemma",
  counter: thm-counter,
  numbering: "1",
  bodyfmt: text.with(style: "italic"),
)

#let corollary = mathblock(
  blocktitle: "Corollary",
  counter: thm-counter,
  numbering: "1",
  bodyfmt: text.with(style: "italic"),
)

#let proposition = mathblock(
  blocktitle: "Proposition",
  counter: thm-counter,
  numbering: "1",
  bodyfmt: text.with(style: "italic"),
)

#let definition = mathblock(
  blocktitle: "Definition",
  counter: thm-counter,
  numbering: "1",
)

// Unnumbered proof with QED symbol
#let proof = proofblock()
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
  depth: 2,
)


#v(1fr)

#align(center)[
  #datetime.today().display("[day] [month repr:long] [year]")
]

#pagebreak()

= Problem 1
== a)
Solution here. Use theorems to solve the problem set, such as @th:jensen.

#theorem(title: "Jensen's inequality")[
  Let $g(x)$ be convex. Then

  $
    EE[g(X)] >= g(EE[X]).
  $
] <th:jensen>
#proof[
  skipped.
]
== b)


This is an unnumbered equation, useful for showing derivations.
$
  f(x|mu, sigma^2) = 1/sqrt(2 pi sigma^2) exp {-1/2 (x-mu)^2 /sigma^2} 
$

This is a numbered equation, which can be referenced to in the text like 
@eq:tot_var

$
  "Var"(X) = EE["Var"(X|Y)] + "Var"(EE[X|Y])
$<eq:tot_var>


= Problem 2

== a)

Solution here.

#bibliography("sources.bib", style: "apa")
