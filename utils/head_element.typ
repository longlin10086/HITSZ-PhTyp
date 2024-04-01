#import "../themes/theme.typ" : *

#let head_element(
  name,
  body,
  size
) = {
  set text(font: 字体.黑体, size: 字号.五号,lang: "zh", region: "cn")
  strong(name)
  h(size)
  underline(offset: 2pt, extent: size, body)
}


#let head_elements_line(
  class,
  id,
  name,
  signature,
  date,
  preview_score,
  all_scores
) = {
  set align(left)
  grid(
    columns: (1.2fr, 1.2fr, 1.2fr, 1fr),
    head_element("班级", class, 15pt),
    head_element("学号", id, 15pt),
    head_element("姓名", name, 20pt),
    head_element("教师签名", signature, 15pt),
  )
  grid(
    columns: (1fr, 1fr, 1fr),
    head_element("实验日期", date, 30pt),
    head_element("预习成绩", preview_score, 30pt),
    head_element("总成绩", all_scores, 30pt),
  )
}
