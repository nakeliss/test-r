library(stringr)
library(eulerr)
data <- read.csv("plot.csv",encoding="UTF-8")
#print(data)
#print(nrow(data))

i=1
v=1

#print(data[i,1])
#print(data[v,2])

print(sprintf(data[i,1]))
print(c("SE" = data[v,2]))

print(sprintf(data[i,1]) = data[v,2])


###
a=c()
append(a,data[i,1] <- data[v,2])
print(a)

repeat{
  i=i+1
  v=v+1

  
  if(i>nrow(data)|v>nrow(data)){
    break
    }

}

###
fit <- euler(c("A" = 4, "B" = 6, "C" = 3, "D" = 2, "E" = 7, "F" = 3,
               "A&B" = 2, "A&F" = 2, "B&C" = 2, "B&D" = 1,
               "B&F" = 2, "C&D" = 1, "D&E" = 1, "E&F" = 1,
               "A&B&F" = 1, "B&C&D" = 1),shape = "ellipse")

plot(fit)

