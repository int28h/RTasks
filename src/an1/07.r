# К частям таблицы можно обращаться так же, как и к матрицам.
# 
# HairEyeColor - таблица с данными, встроенными в R. Посмотрите на неё в R. 
# Команда dimnames(HairEyeColor) позволит нам посмотреть, какие измерения есть в этой таблице и как они называются. 
# Например, чтобы обратиться к части таблицы, в которой хранятся данные только о мужчинах, нам нужно выполнить следующую команду: 
# 
# HairEyeColor[ , ,'Male']
# 
# Ваша задача в переменную red_men сохранить долю рыжеволосых (Red) от общего числа голубоглазых мужчин.
# 
# Обратите внимание, что нужны не проценты, а просто доля, то есть десятичная дробь  (например, не 10%, а 0.1).
red_men <- prop.table(HairEyeColor[ , ,'Male'],2)['Red','Blue']

# red_men <- HairEyeColor["Red", "Blue", "Male"] / sum(HairEyeColor[, "Blue", "Male"])