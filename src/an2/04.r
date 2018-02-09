# Напишите функцию na_rm которая заменяет все пропущенные значения в столбцах dataframe на соответствующее среднее значение. 
# То есть все NA в первом столбце заменяются на среднее значение первого столбца (рассчитанного без учета NA). 
# Все NA второго столбца заменяются на среднее значение второго столбца и т.д.  
# 
# Функция na_rm на вход получает dataframe произвольной размерности, состоящий из количественных переменных. 
# Функция должна возвращать  dataframe с замененными NA. Ни порядок столбцов, ни порядок строк в dataframe изменять не нужно.
na_rm  <- function(x){
	res <- apply(x, 2, function(x) x[is.na(x)] <- mean(x, na.rm = T))
	x[is.na(x)] <- res[which(is.na(x)) %/% nrow(x) + 1]
	x
}