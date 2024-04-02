#import "../themes/theme.typ" : *

#import "../utils/two_line.typ" : two_lines
#import "../utils/head_element.typ" : head_elements_line
#import "../utils/head_element.typ" : underline_element
#import "../utils/question_list.typ" : question_list
#import "../utils/tables.typ" : signature_table
#import "../utils/tables.typ" : simple_table


#let page_style(body) = {
  set page(
  paper: "a4",
  margin: (top: 100pt, bottom: auto, right: 3.18cm, left: 3.18cm),
  header: [
    #set text(font: 字体.楷体, size: 字号.四号)
    #grid(
      row-gutter: 3pt,
      rows: (auto, auto),
      [
      大学物理实验报告
      #h(1fr)
      哈尔滨工业大学(深圳)
      ],
    line(length: 100%, stroke: 0.05em)
    )

  ],
    footer: [
    #set align(right)
    #set text(8pt)
    #counter(page).display(
      "1",
    )
  ]
)

  show heading.where(level: 1) : it => {
  set align(center)
  set text(font: 字体.黑体, size: 字号.小四)
  grid(
    columns: (auto, auto),
    column-gutter: 10pt,
    strong("实验名称"),
    strong(it),
  )
}


  show heading.where(level: 2) : it => {
  set align(left)
  set text(font: 字体.宋体, size: 字号.五号)
  let num = counter(heading.where(level: 2)).get().at(0)
  grid(
      columns: (0em, auto, auto), 
      column-gutter: 3pt,
      align: bottom + left, 
      hide[一], numbering("一、", num),
      it
      )
  v(0.5em)
}

  body
}
