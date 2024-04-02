#import "@preview/wrap-it:0.1.0": wrap-content
#import "../themes/theme.typ" : *

#let teacher_signature(
  name,
  images
) = {
  set text(font: 字体.黑体, size: 字号.五号,lang: "zh", region: "cn")
  let bold_name = strong(name)
  let fig = image(
    images,
    height: 28pt,
    fit: "contain",
  )
  wrap-content(
    fig,
    bold_name,
    align: top + right,
    column-gutter: 3pt,
  )
}


