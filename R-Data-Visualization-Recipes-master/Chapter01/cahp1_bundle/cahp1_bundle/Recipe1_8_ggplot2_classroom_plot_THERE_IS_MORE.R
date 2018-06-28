library(ggplot2)
plot2 <- ggplot(classr, aes(x = hours, y = grades))
plot2 + geom_text(aes(label = names))