# Напишите функцию corr.calc, которая на вход получает data.frame с двумя количественными переменными, 
# рассчитывает коэффициент корреляции Пирсона и возвращает вектор из двух значений: коэффициент корреляции 
# и p - уровень значимости.
# 
# Пример работы функции:
# 
# > corr.calc( mtcars[, c(1,5)] )  # на вход подаем данные mtcars только с переменными mpg и drat
# [1] 0.6811719078 0.0000177624
# 
# > corr.calc( iris[,1:2] ) # на вход подаем данные iris только с переменными Sepal.Length и Sepal.Width
# [1] -0.1175698 0.1518983
# 
# При написании функции обратите внимание, что названия переменных входящего dataframe могут быть произвольными. 
# Пишите функцию с учетом, что она должна работать на любом  dataframe с двумя количественными переменными как в примере выше. 
corr.calc <- function(x){
    res <- c(cor.test(x[[1]], x[[2]])$estimate, cor.test(x[[1]], x[[2]])$p.value)
}