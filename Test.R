library(gapminder)
library(ggplot2)
library(dplyr)
library(gganimate)

datos = gapminder
head(datos)



grafico <- datos %>%
  ggplot() + 
  geom_point(aes(x = gdpPercap, y = lifeExp, col = continent, size = pop), alpha = 0.8) + theme_minimal() + 
  theme(legend.position = "bottom") + guides(size = "none") + 
  labs(x = "PIB per Capita" ,y = "Esperanza de Vida",  col = "") 

grafico

grafico +
  transition_time(year)
