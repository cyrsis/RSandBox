library(ggvis)
ggvis(cars, x = ~speed, y = ~dist) %>% layer_points() %>% layer_paths()