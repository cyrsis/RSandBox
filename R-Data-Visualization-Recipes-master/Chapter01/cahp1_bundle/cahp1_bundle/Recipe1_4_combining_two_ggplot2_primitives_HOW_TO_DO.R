library(ggplot2)
plot1 <- ggplot(cars, aes(x = speed, y = dist))
plot1 + geom_point() + geom_path()