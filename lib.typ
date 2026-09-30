// Jack Justus Eng Resume
#let blue = rgb("#073763")
#let pitch = 14.4pt       // baseline distance between body lines
#let section-gap = 25.8pt // last line of a section -> next heading baseline
#let entry-gap = 24.4pt   // last bullet -> next entry title

#let section(title, above: section-gap) = block(above: above, below: 15.6pt, {
  text(size: 12.5pt, fill: blue, title)
  place(dy: 4.3pt, line(length: 100%, stroke: 1pt))
})

#let entry(title, org: none, date: none) = block(above: 15.6pt, text(fill: blue, grid(
  columns: (1fr, auto),
  [*#title*#if org != none [ #org]], date,
)))

#let sep = text(size: 12pt)[ | ]

#let resume(skills: (:), body) = {
  set document(title: "Jackson Justus Engineering Resume", author: "Jackson Justus")
  set page(paper: "us-letter", margin: (x: 36pt, top: 59.3pt, bottom: 36pt))
  set text(
    font: "Calibri",
    size: 11pt,
    hyphenate: false,
    ligatures: false,
    top-edge: "baseline",
    bottom-edge: "baseline",
  )
  set par(leading: pitch, spacing: pitch)
  set block(spacing: pitch)
  set list(
    marker: box(width: 13.5pt, align(left, text(font: "Arial", "●"))),
    indent: 0pt,
    body-indent: 0pt,
    spacing: pitch,
  )
  show list: set block(below: entry-gap)
  show link: set text(fill: blue)
  show regex("\\w+(-\\w+)+"): box

  // ---------- Header ----------
  align(center)[
    #text(size: 24pt, weight: "bold", fill: blue)[Jackson Justus]
    #block(above: 19.7pt, text(fill: blue)[
      #link("mailto:jackjust@bu.edu")[jackjust\@bu.edu]#sep;949-304-3903#sep#link("https://linkedin.com/in/jackjustus")[linkedin.com/in/jackjustus]#sep#link("https://jackjust.com/eng")[jackjust.com/eng]
    ])
  ]

  // ---------- Education ----------
  section(above: 16.2pt)[Education]
  text(fill: blue, grid(
    columns: (1fr, auto, auto),
    column-gutter: 28.7pt,
    [*Boston University, College of Engineering* | Boston, MA],
    [3.7 GPA],
    [Expected May 2028],
  ))
  [
    Bachelor of Science in Computer Engineering, Minor in Theatre Arts, Upsilon Pi Epsilon \
    Relevant Coursework: Software Engineering, Databases, Computer Organization, Digital Logic, Differential Equations
  ]

  body

  // ---------- Skills ----------
  section[Skills]
  skills.pairs().map(((label, items)) => [#text(fill: blue)[*#label:*] #items]).join(linebreak())

  context if counter(page).final().first() > 1 {
    panic("resume runs past one page")
  }
}
