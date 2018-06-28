# Part 1 of 3 - Getting ready
?cars # Documentation including meaning of each variable
class(cars) # Object type - checking if is a data.frame
head(cars) # First few values (6 by default)
library(ggplot2)
plot1 <- ggplot(cars, aes(x = speed,y = dist))

# plot1 <- ggplot(cars, aes(x = speed,y = dist, gorillaTroubleShooter = T, sight = 'Legolas')) #work either
# thanks to '. . .' (elipsis) argument and lazy-evaluation