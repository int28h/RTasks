# В переменной my_df сохранен dataframe с произвольным числом количественных переменных. 
# При помощи функции apply найдите максимальное значение в каждой строке. Сохраните результат (вектор максимальных значений) 
# в переменную row_max.
row_max <- apply(my_df, MARGIN = 1, FUN = max)