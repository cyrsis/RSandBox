# Creating a quick time-series object:
# install.packages('xts')
require(xts)
x<-xts(rnorm(20),order.by=Sys.time()-3600*(20:1),tzone="America/Chicago")