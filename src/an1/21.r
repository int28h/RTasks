# Напишите функцию NA.counter для подсчета пропущенных значений в векторе.
# 
# На вход функция  NA.counter должна принимать один аргумент - числовой вектор. 
# Функция должна возвращать количество пропущенных значений.
# 
# > my_vector <- c(1, 2, 3, NA, NA)
# > NA.counter(my_vector)
# [1] 2 
NA.counter <- function(x){
    res <- which(is.na(x))
    length(res)
}

# NA.counter <- function(x){    
#	return(sum(is.na(x)))
# }