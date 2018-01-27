# Воспользуемся встроенными данными airquality. В новую переменную сохраните subset исходных данных, 
# оставив наблюдения только для месяцев 7, 8 и 9.
# 
# При помощи функции aggregate рассчитайте количество непропущенных наблюдений по переменной Ozone в 7, 8 и 9 месяце. 
# Для определения количества наблюдений используйте функцию length().
# 
# Результат выполнения функции aggregate сохраните в переменную result.
# 
# Подсказки:
# 
# 1. Не забудьте сделать subset, чтобы отобрать наблюдения только по нужным месяцам, вам может пригодиться 
# следующая конструкция:
# 
# > x <- 5
# > x %in% c(3, 4, 5)
# [1] TRUE
# 
# 2. Для подсчета числа непропущенных наблюдений воспользуйтесь записью с помощью формулы, при которой пропущенные значения 
# не учитываются:
# 
# aggregate(y ~ x + z , data, FUN) 
result <- aggregate(Ozone ~ Month, subset(airquality, Month %in% c(7,8,9)), length)