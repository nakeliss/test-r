library(eulerr)
#读取文件
data <- read.csv("plot.csv",encoding="UTF-8")
#循环
a=c()
i=1
v=1
repeat{
  a=c(a,data[v,2])
  names(a)[i]=data[i,1]
  i=i+1
  v=v+1
  if(i>nrow(data)|v>nrow(data)){
    break
    }
}
#输出
fit <- euler(a,shape = "ellipse")
plot(fit)

