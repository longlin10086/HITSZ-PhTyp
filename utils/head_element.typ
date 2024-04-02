#import "../themes/theme.typ" : *
#import "image.typ" : teacher_signature

#let underline_element(
  name,
  body,
  size
) = {
  set text(font: 字体.黑体, size: 字号.五号,lang: "zh", region: "cn")
  strong(name)
  h(size)
  underline(offset: 2pt, extent: size, evade: false, body)
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
    underline_element("班级", class, 15pt),
    underline_element("学号", id, 15pt),
    underline_element("姓名", name, 20pt),
    teacher_signature("教师签名", signature),
  )
  grid(
    columns: (1fr, 1fr, 1fr),
    underline_element("实验日期", date, 30pt),
    underline_element("预习成绩", preview_score, 30pt),
    underline_element("总成绩", all_scores, 30pt),
  )
}
