# tidyverse - пакет с пакетами

install.packages("tidyverse")
library(tidyverse)

s <- tibble(iris)

tibble(numbers = 1:10, letters = letters[1:10]) # преобразование в датафрейм

# ways to load data

df <- read_csv("link")
df2 <- read_csv("link")

rm(...) # удалить что-то из окружения

sort(sqrt(abs(sin((1:20)^2))), decreasing = F)
(1:20)^2 %>% # Ctrl + Shift + M
  sin() %>% 
  abs() %>%
  sqrt() %>% 
  sort()

