#import "../themes/theme.typ" : *

#let question_list(
  questions
) = {
  set align(left)
  set text(font: 字体.宋体, size: 字号.五号)
  set enum(
  numbering: x => {
    grid(
      columns: (0em, auto),
      align: bottom,
      hide[一], numbering("1.", x)
    )
    }
  )
  let num = 1
  for question in questions {
    grid(
      columns: (20pt, auto),
      column-gutter: 5pt,
      hide[一],
      [#num. #question]
    )
    num += 1
  }
}