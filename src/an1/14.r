# В этом задании нужно проверить гипотезу о равенстве средних двух выборок, загрузив набор данных 
# (нажмите начать решать задание) и выполнив все необходимые операции на вашем компьютере. 
# В скачанных данных вы найдете две переменные: количественную переменную, и номинативную переменную 
# с двумя градациями (которая разделяет наблюдения на две группы).
# 
# Для того чтобы без труда прочитать скачанные данные воспользуйтесь функцией:
# 
# read.table("dataset_11504_11.txt")
# разумеется, у вас может быть другое название файла
# также убедитесь, что файл находится в рабочей директории
# или укажите полный путь к файлу
# 
# Сначала с помощью теста Бартлетта проверьте гомогенность дисперсий двух выборок. 
# В случае, если дисперсии значимо не отличаются (с уровнем 0.05), примените тест Стьюдента, иначе - непараметрический тест 
# (Манна-Уитни). В поле для ответа введите получившийся p-value, с точностью четыре знака после запятой.
# Обратите внимание, что по умолчанию в t.test стоит var.equal = FALSE, так как мы будем применять его только 
# в случае гомогенности дисперсий, измените значение этого параметра на  var.equal = TRUE.
df <- read.table("dataset_11504_15.txt")
b <- bartlett.test(df)$p.value
if(b < 0.05) {
	print(formatC(t.test(V1 ~ V2, df, var.equal = T)$p.value), 4)
} else {
	print(formatC(wilcox.test(v1 ~ v2, df)), 4)
}