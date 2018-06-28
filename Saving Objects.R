# We can save any object as an .RData file using "save"
x<-matrix(1:12,nrow=3)
save(x,file="x.RData")
rm(list=ls())
load("x.RData")

# We often need to output data in a csv form for others
# to reference. 
require(MASS)
data(Cars93)
write.csv(Cars93,"Cars93.csv")
rm(list=ls())
x<-read.csv("Cars93.csv",header=T)

# You can also write directly other stat program file types using the
# foreign package
install.packages('foreign')