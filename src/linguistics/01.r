# for comments
sum(1, 2, 3)
prod (1, 2, 3)

log(9)
exp(3)

sin(3)
cos(4)

# choose(k, n) calculates the number of sets with n elements than can be chosen 
# from a set with k elements, that is the binomial coefficient.
choose(10, 3)

exp(2/(1-pi))

# objects

typeof(54)
typeof(54.9)
typeof(-54)
typeof(54 + 5i)

typeof("character")
typeof('character too')

typeof(T)
typeof(TRUE)
typeof(true) # Error in typeof(true) : object 'true' not found

typeof(Inf) # double

typeof(NA) # missed value but logical

3:8 # 3 4 5 6 7 8
c(3, 4, 5, 6, 7, 8) # concat

length(1:100)
length(100:1)

c(T, F, T)

# variables

my_var <- 89
my_var # 89
my_var + 1
my_var # still 89
my_var <- my_var + 1
my_var # 90

my_vector <- c("my", "new", "vector") # indexation starts from 1 - not from 0 (个_个)
my_vector[2:3]

numeric_vector <- 5:-23
numeric_vector[numeric_vector %% 2 == 0]

# factor
education <- c("высшее", "среднее", "детсад", "высшее", "среднее", "детсад")
education <- factor(education, levels = c("высшее", "среднее", "детсад"))
education # Levels: высшее среднее детсад

# сложение векторов поэлементно
1:8 + 1 # 2 3 4 5 6 7 8 9
1:8 + 8:1 # 9 9 9 9 9 9 9 9

seq(0, 1, by = 0.01)
?seq # for mac fn+F1

# The Normal Distribution
rnorm(100)

# matrix
matrix(1:16)
matrix(1:16, ncol = 4)
matrix(1:16, nrow = 2)

matrix(1:16, nrow = 2, byrow = T)
matrix(1:16, nrow = 2, byrow = T) * 3

array(1:4, 1:4)

c(1:7, "my") # strings
c(1:7, F) # numbers

list(c(T, F, T),
     c("o", "a"),
     c(1, 2))

# Data.frame - все векторы должны быть одной длины

df <- data.frame(logic = c(T, F, T),
           letters = c("a", "b", "c"),
           numbers = c(1, 2, 3),
           stringsAsFactors = F)

View(df)

df$letters # returns factor without stringsAsFactors = F

df[2,]
df[,2]
df[2:3, "numbers"]
df[df$numbers > 2,]

# functions
my_function <- function(x, y){
  return (x * 3 + y)
}

my_function(3, 3)

is_odd <- function(number){
  ifelse(number %% 2 == 1, T, F)
}

is_odd(4)
is_odd(9)

# Посчитайте сумму 1000 элементой арифметической прогрессии с шагом 9 и первым элементом 42.
sum(seq(from = 42, length.out = 1000, by = 9))

# Сколько различных 3-буквенных множеств можно составить, используя буквы русского алфавита?
# Множества {т, о, к} и {к, о, т} одинаковы.
choose(33, 3)

# Проверьте векторизована ли функция library()
library(c(1, 2))
# Error in library(c(1, 2)) : 'package' must be of length 1 - F

# Установите пакет phonTools и введите команду pickIPA(n = 1). 
# К какому ряду относится в выведенном на экран инвентаре гласный a?
install.packages("phonTools")
# library(phonTools)
pickIPA(n = 1)

# решение квадратного уравнения
# equation <- 3 - 2*pi*x + x**2
polyroot(c(3, -2*pi, 1))

# решение интеграла
integrand <- function(x){
  return ((1 + 2 * x ** 2) * exp(x ** 2))
}
integrate(lower = -1, upper = 1, f = integrand)

# n-й член последовательности фибоначчи
fibonacci <- function(n){
  tail((round(((5 + sqrt(5)) / 10) * (( 1 + sqrt(5)) / 2) ** (1:n - 1))), n = 1)
}
