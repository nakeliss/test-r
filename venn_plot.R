library(VennDiagram)
library(grid)

#读取文件
df <- read.csv("plot.csv",encoding="UTF-8")
set1 =list(df$Set1)
set2 =list(df$Set2)
set3 =list(df$Set3)
set4 =list(df$Set4)
set5 =list(df$Set5)

print(set1)
print(A)

#2
venn.plot =venn.diagram(
  x=list(set1, set2),
  category.names = c("Set 1" , "Set 2 "),
  filename = 'venn2.png',#保存路径
  col ="black",#指定图形的圆周边缘颜色  transparent 透明
  fill=c("red","blue"),#填充颜色
  alpha=0.5,#透明度
  
  cex = 1,    #每个区域label名称的大小
  cat.col = c("darkblue", "darkgreen"),  #分类颜色
  cat.cex = 1,      #每个分类名称大小
  cat.dist = 0.07,   
  cat.pos = 0,        #
  cat.fontfamily = "serif",     #分类字体
  rotation.degree = 0,        #旋转角度
  margin = 0.2
)


#5
venn.plot <- venn.diagram(#数据列表
  x = list(set1, set2, set3, set4, set5),
  category.names = c("Set 1" , "Set 2 " , "Set 3", "Set 4", "Set 5"),
  filename = "Venn5.png",    #保存路径
  col = "transparent",      #指定图形的圆周边缘颜色  transparent 透明          
  fill = c("blue", "green", "yellow", "grey50","pink"),  #填充颜色
  alpha = 0.50,     #透明度
  cex = 1.2,    #每个区域label名称的大小
  cat.col = c("darkblue", "darkgreen", "orange", "grey50","red"),  #分类颜色
  cat.cex = 1.2,      #每个分类名称大小
  cat.dist = 0.07,   
  cat.pos = 0,        #
  cat.fontfamily = "serif",     #分类字体
  rotation.degree = 270,        #旋转角度
  margin = 0.2
  )   






venn.diagram(
  x = list(set1, set2),
  category.names = c("Set 1" , "Set 2 "),
  filename = 'venn2.png',
  output=TRUE
)


venn.diagram(
  x = list(set1, set2, set3),
  category.names = c("Set 1" , "Set 2 " , "Set 3"),
  filename = 'venn3.png',
  output=TRUE
)

venn.diagram(
  x = list(set1, set2, set3, set4),
  category.names = c("Set 1" , "Set 2 " , "Set 3", "Set 4"),
  filename = 'venn4.png',
  output=TRUE
)

venn.diagram(
  x = list(set1, set2, set3, set4, set5),
  category.names = c("Set 1" , "Set 2 " , "Set 3", "Set 4", "Set 5"),
  filename = 'venn5.png',
  output=TRUE
)




library(RColorBrewer)
color <- brewer.pal(3, "Set3")

# Chart
venn.diagram(
  x = list(set1, set2, set3),
  category.names = c("Set 1" , "Set 2 " , "Set 3"),
  filename = 'venn2.png',
  output=TRUE,
  
  # 输出
  imagetype="png" ,  # 类型（tiff png svg）
  #height = 1000 ,   # 高度
  #width = 1000 ,   # 宽度
  resolution = 400,  # 分辨率
  compression = "lzw",  # 压缩算法
  
  # 圈
  lwd = 5,  # 圈线条粗细 1 2 3 4 5
  lty = 1,  # 线条类型, 1 实线, 2 虚线, blank 无线条
  fill = color,  # 填充色
  col = c("red", 'green', 'blue'),  # 线条色
  
  # 数字 number
  cex = 2,  # 数字大小
  fontface = "bold",  # 加粗
  fontfamily = "sans",  # 字体
  
  # 标签 category
  cat.cex = 2,  # 字体大小
  cat.col = c("red", 'green', 'blue'),  # 字体色
  cat.fontface = "bold",  # 加粗
  cat.default.pos = "outer",  # 位置, outer 内 text 外
  cat.pos = c(-27, 27, 135),  # 位置，用圆的度数
  cat.dist = c(0.055, 0.055, 0.085),  # 位置，离圆的距离
  cat.fontfamily = "sans",  # 字体
  rotation = 1  # 1 2 3 旋转确定大打头数据集
)

library(RColorBrewer)

p = venn.diagram(
  x = list(set1, set2, set3, set4, set5),
  category.names = c("Set 1" , "Set 2 " , "Set 3", "Set 4", "Set 5"),
  # filename = 'venn.png',
  filename = NULL,
  output=TRUE,
  
  fill = brewer.pal(5, "Set2"),
  col = brewer.pal(5, "Set3"),
  fontface = "bold",
  cat.col = brewer.pal(5, "Set3"),
  cat.fontface = "bold"
)


png("venn-png.png")
grid.draw(p)
dev.off()

