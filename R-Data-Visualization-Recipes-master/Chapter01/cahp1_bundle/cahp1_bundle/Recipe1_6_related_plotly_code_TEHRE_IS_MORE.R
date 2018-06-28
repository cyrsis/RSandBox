library(plotly)
plot_ly(cars, x = ~speed, y = ~dist, type = 'scatter', mode = 'lines+markers')