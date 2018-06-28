cumsumX<-cumsum(rnorm(1000))
cumsumY<-cumsum(rnorm(1000))
cumsumZ<-cumsum(rnorm(1000))
random_data<-cbind(cumsumX,cumsumY,cumsumZ)

plot(cumsumX,type='l',col='blue',ylim=range(random_data))