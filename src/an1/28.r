# Постройте scatterplot по данным iris, сохранив его в переменную my_plot : 
# Ось X - переменная Sepal.Width
# Ось Y -  переменная Petal.Width
# Цвет точек - переменная Species
# Также добавьте линейное сглаживание для каждой группы наблюдений по переменной Species.
# 
# Если Вы все сделали правильно должен получиться следующий график:
# https://ucarecdn.com/cbfc7251-e58d-4a28-87ae-2861f7ae0496/
library(ggplot2)
my_plot <- ggplot(iris, aes(Sepal.Width, Petal.Width, col = Species, xlab = "Sepal.Width", ylab = "Petal.Width"))+ geom_point() + geom_smooth(method = "lm")