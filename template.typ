#import "layout/page.typ" : *

#show: page_style[
  #head_elements_line(
  "114514班",
  "1919810",
  "longlin",
  "../assets/images/signature.png",
  "2024.4.1",
  "2.0",
  "3.0"
)

#two_lines

= RLC 暂态电路研究

#counter(heading.where(level: 2)).step()
== 预习
#question_list(
    "RC、RL串联电路暂态过程电压表达式，以及时间常数t的表达式是什么？",
    "RLC串联电路的暂态过程（三种阻尼过程）电压表达式、时间常数t表达式是什么？",
    "请绘制数字示波器、信号发生器观测RC、RL和RLC串联电路的连接线路示意图。"
)

#pagebreak()

#counter(heading.where(level: 2)).step()
== 原始数据记录
#question_list(
  [*RC串联电路的暂态特性*\(使用方波信号进行实验，可取 $V_(p p)=10V$\) 
  #simple_table(
  column-num: 5,
    [$R=500 Omega$ #h(1em) #underline_element([方波信号周期T], [$220 mu s$、60 ms、600ms、3s], 15pt)],
    [$tau$ \\ C], [$0.022 mu F$], [$10 mu F$], [$100 mu F$], [$470 mu F$],
    [时间常数 $tau$], [$12 mu s$], [6ms], [56ms], [288ms]
  )
  #simple_table(
    column-num: 5,
    [$C=100 mu F$ #h(1em) #underline_element([方波信号周期T], [10ms、50 ms、100ms、500ms], 15pt)],
    [$tau$ \\ R], [$10 Omega$], [$50 Omega$], [100 Omega], [$500 Omega$],
    [时间常数 $tau$], [1ms], [5.1ms], [12ms], [56ms] 
  )
  ],
  [*RL串联电路的暂态特性*\(使用方波信号进行实验，可取 $V_(p p)=10V$\) 
  #simple_table(
  column-num: 4,
    [$L=10 m H$ #h(1em) #underline_element([方波信号周期T], [$220 mu s$、60 ms、600ms], 15pt)],
    [$tau$ \\ R], [$100 Omega$], [$500Omega$], [$900 Omega$],
    [时间常数 $tau$], [$12 mu s$], [6ms], [56ms],
  )
  #simple_table(
    column-num: 4,
    [$R=1000 Omega$ #h(1em) #underline_element([方波信号周期T], [10ms、50 ms、100ms], 15pt)],
    [$tau$ \\ L], [$10 m H$], [$50 m H$], [100 m H],
    [时间常数 $tau$], [1ms], [5.1ms], [12ms],
  )
  ],
  [*RLC串联电路的暂态特性*\(使用方波信号进行实验，可取 $V_(p p)=10V$\) 
  #simple_table(
  column-num: 10,
    [测量欠阻尼情况下 $U_C$ 充电时振荡波形的任一  $t_1$ 时峰值 $U_(c t_1)$ 和 $t_1+n T$ 时峰值 $U_(c\(t_1+n T\))$ ],
    [n], 0, 1, 2, 3, 4, 5, 6, 7, 8,
    [$U_(c\(t_1+n T\))$], [], [], [], [], [], [], [], []
  )
  #underline_element([E], [10 V], 7pt) #h(10pt) #underline_element([$t_1$], [5s], 7pt)
  ],
)

#signature_table("../assets/images/signature.png")

#pagebreak()
#counter(heading.where(level: 2)).step()
== 数据处理
#question_list(
    [记录各项实验任务过程中的R、C和L各参数值，示波器观察到的波形，以及时间常数 $tau$ 。],
    [测量欠阻尼情况下 $U_C$ 充电时振荡波形的任一 $t_1$ 时峰值 $U_(c t_1)$ 和 $t_1+n T$ 时峰值 $U_(c\(t_1+n T\))$ ，采用最小二乘法或作图法求出 $ln(1- U_C / E)~t$ 的斜率，计算时间常数 $tau$，并与理论值 $tau= (2L) / R \(R=R_("电阻")+R_S+R_L\)$ 进行比较，分析误差产生的原因。]
)

#pagebreak()
#counter(heading.where(level: 2)).step()
== 实验现象分析及结论

#counter(heading.where(level: 2)).step()
== 讨论题
#question_list(
  "在RC和RL电路中，固定方波频率f而改变R的阻值，为什么会有各种不同的波形？若固定R而改变方波频f，会得到类似的波形吗？为什么？",
  "在RLC电路中，为什么要适当调节方波频率才能观测到阻尼振荡的波形？如果频率很高，将会发生什么样的情况？试观察。"
)
]

