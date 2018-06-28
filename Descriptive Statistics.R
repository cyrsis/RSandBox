plot(x=iris$Petal.Length,y=iris$Petal.Width,
     col=ifelse(iris$Species=="setosa","blue",
                ifelse(iris$Species=='virginica',"red","green")))
legend("topleft",legend=c("setosa","virginica","versicolor"),
       col=c("blue","red","green"),pch=1)
