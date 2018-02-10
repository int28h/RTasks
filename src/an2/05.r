# Напишите функцию positive_sum, которая получает на вход dataframe с произвольным количеством числовых переменных. 
# Основная задача функции - найти сумму положительных значений в каждой переменной и сохранить их в список. 
# Рассмотрим пример работы функции на небольшом примере:
# 
# > d <- data.frame(X1 = c(-1, -2, 0), X2 = c(10, 4, NA), X3 = c(-4, NA, NA))
# > positive_sum(d)
# $X1
# [1] 0
# 
# $X2
# [1] 14
# 
# $X3
# [1] 0
# 
# Обратите внимание, если в переменной нет положительных значений, или все значения NA, возвращаем для это переменной 0. 
positive_sum <-  function(test_data){
    test_data[test_data < 0] <- 0
    lapply(test_data, sum, na.rm = T)
}

# positive_sum <- function(d) {lapply(d, function(x) sum(x[x>0], na.rm = T))}