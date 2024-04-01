#import "themes/theme.typ" : *

#import "utils/two_line.typ" : two_lines
#import "utils/head_element.typ" : head_elements_line
#import "utils/question_list.typ" : question_list

#set page(
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

#show heading.where(level: 1) : it => {
  set align(center)
  set text(font: 字体.黑体, size: 字号.小四)
  grid(
    columns: (auto, auto),
    column-gutter: 10pt,
    strong("实验名称"),
    strong(it),
  )
}


#show heading.where(level: 2) : it => {
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




#head_elements_line(
  "114514班",
  "1919810",
  "longlin",
  "张三",
  "2024.4.1",
  "2.0",
  "3.0"
)

#two_lines

= RLC 暂态电路研究

#counter(heading.where(level: 2)).step()
== 预习
#question_list(
  (
    "RC、RL串联电路暂态过程电压表达式，以及时间常数t的表达式是什么？",
    "RLC串联电路的暂态过程（三种阻尼过程）电压表达式、时间常数t表达式是什么？",
    "请绘制数字示波器、信号发生器观测RC、RL和RLC串联电路的连接线路示意图。"
  )
)

#counter(heading.where(level: 2)).step()
== 原始数据记录

#counter(heading.where(level: 2)).step()
== 数据处理

#counter(heading.where(level: 2)).step()
== 实验现象分析及结论

#counter(heading.where(level: 2)).step()
== 讨论题