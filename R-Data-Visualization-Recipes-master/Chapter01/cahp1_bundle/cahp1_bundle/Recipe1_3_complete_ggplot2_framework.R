# Part 1 of 3 - Getting ready
?cars # Documentation including meaning of each variable
class(cars) # Object type - checking if is a data.frame
head(cars) # First few values (6 by default)
library(ggplot2)
plot1 <- ggplot(cars, aes(x = speed,y = dist))

# plot1 <- ggplot(cars, aes(x = speed,y = dist, gorillaTroubleShooter = T, sight = 'Legolas')) #work either
# thanks to '. . .' (elipsis) argument and lazy-evaluation

# Part 2 of 3 - Adding one layer of geometry
plot1 + geom_point()

# Part 3 of 3 - Adding three more layers
plot1 +   geom_point() + 
  labs(x = 'Speed (mpg)', y = 'Distance (ft)') + 
  geom_smooth(method = 'lm', se = F) +
  scale_y_continuous(breaks = seq(0, 125, 25))