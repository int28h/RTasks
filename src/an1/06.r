# Используем знакомые нам данные mtcars. 
# 
# Нужно построить scatterplot с помощью ggplot из ggplot2, по оси x которого будет mpg, по оси y - disp, 
# а цветом отобразить переменную (hp).
# 
# Полученный график нужно сохранить в переменную plot1. Таким образом в ответе должен быть скрипт:
# 
# plot1 <- ggplot(data, aes())+
#  geom_****()
#
# https://ucarecdn.com/c8169c84-04fc-46a1-af1f-0c441edd9de4/
plot1 <- ggplot(data, aes(x = mpg, y = disp, col = hp, size = qsec))+
  geom_point()