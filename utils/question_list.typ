#import "../themes/theme.typ" : *

#let question_list(..questions)={
  set text(font: ("Times New Roman", "Source Han Serif"), size: 12pt)
  enum(..questions, indent: 2em, tight: false)
}