library(ggvis)
ggvis(classr, x = ~hours, y = ~grades, text := ~names) %>% layer_text()
library(plotly)
plot_ly(classr, x = ~hours, y = ~grades, type = 'scatter', mode = 'text', text = ~names)
