#let two_lines = {
  set pad(0pt)
  v(1em)
  grid(
    rows: (auto, auto),
    gutter: 3pt,
    line(length: 100%, stroke: 0.05em),
    line(length: 100%, stroke: 0.05em)
  )
  v(1em)
}