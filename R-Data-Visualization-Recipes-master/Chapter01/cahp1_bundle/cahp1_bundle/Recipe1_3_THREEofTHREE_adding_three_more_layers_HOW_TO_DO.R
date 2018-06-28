# Part 3 of 3 - Adding three more layers
plot1 +   geom_point() + 
  labs(x = 'Speed (mpg)', y = 'Distance (ft)') + 
  geom_smooth(method = 'lm', se = F) +
  scale_y_continuous(breaks = seq(0, 125, 25))