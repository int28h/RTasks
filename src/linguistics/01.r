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

# Посчитайте сумму 1000 элементой арифметической прогрессии с шагом 9 и первым элементом 42.
sum(seq(from = 42, length.out = 1000, by = 9))

# Сколько различных 3-буквенных множеств можно составить, используя буквы русского алфавита?
# Множества {т, о, к} и {к, о, т} одинаковы.
choose(33, 3)

# Проверьте векторизована ли функция library()
# If library is called with no package or help argument, it lists all available packages
# in the libraries specified by lib.loc, and returns the corresponding information
# in an object of class "libraryIQR". 