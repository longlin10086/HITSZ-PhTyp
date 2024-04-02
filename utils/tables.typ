#import "@preview/tablex:0.0.8" : *

#import "../themes/theme.typ" : *

#let signature_table(
  img
) = {
  set align(right+bottom)
  table(
    columns: (auto, auto),
    inset: (
      x: 20pt,
      y: 10pt
    ),
    align: horizon + center,
    table.header(
      [
        #set text(font: 字体.宋体, size: 字号.四号)
        *教师*
        ], 
      [
        #set text(font: 字体.宋体, size: 字号.四号)
        *姓名*
        ]
    ),
    [
      #set text(font: 字体.楷体, size: 字号.三号)
      签字
      ],
    image(
    img,
    height: 28pt,
    fit: "contain",
    )
  )
  v(4em)
}

#let simple_table(
  column-num: 1,
  cap,
  ..table
) = {
  set align(center)
  set figure.caption(position: top)
  figure(
    caption: cap,
    numbering: none,
    tablex(
      columns: (auto, ) * column-num,
      rows: auto,
      align: center + horizon,
      
      inset: (
        x: 10pt,
        y: 7pt,
      ),
      ..table
    )
  )
}
