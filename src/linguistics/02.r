# tidyverse - пакет с пакетами

install.packages("tidyverse")
library(tidyverse)

s <- tibble(iris)

tibble(numbers = 1:10, letters = letters[1:10]) # преобразование в датафрейм

# ways to load data

df <- read_csv("link")
df2 <- read_csv("link")

sort(sqrt(abs(sin((1:20)^2))), decreasing = F)
(1:20)^2 %>% # Ctrl + Shift + M
  sin() %>% 
  abs() %>%
  sqrt() %>% 
  sort(decreasing = F)

# Скачайте базу данных WALS1. Сколько семитских языков из базы находятся в Африке?
wals1 <- read_csv("https://github.com/agricolamz/r_on_line_course_data/raw/master/WALS.csv")
result <- wals1 %>% 
  filter(genus == "Semitic", 
         macroarea == "Africa")

wals1 %>% 
  slice(c(4,3,9)) -> sliced 
rm(sliced)

wals1 %>% 
  select(genus:countrycodes)

# Скачайте датасет из работы (Nettle 1998). 
# Посчитайте, сколько в среднем языков на страну представлено в каждой из частей света. 
# В ответе приведите наименее разнообразную согласно этой мере часть света.
lang_diversity <- read_tsv("https://raw.githubusercontent.com/agricolamz/r_on_line_course_data/master/language_diversity.csv")
answer <- lang_diversity %>% 
  group_by(Continent) %>% 
  summarise(mean = mean(Langs)) %>% 
  arrange(mean)

