# Если вектор достаточно длинный, то визуально сложно оценить, какие в нём содержатся элементы и сколько раз они повторяются. 
# В этом случае полезно будет посмотреть на таблицу частот элементов.
# 
# Пусть x -- целочисленный вектор. Напишите функцию, которая вернёт матрицу из двух строк. 
# В первой строке перечислите все различные элементы вектора, упорядоченные по возрастанию. 
# Во второй строке укажите частоты (количество повторов) этих элементов.
# 
# Пример. Пусть x <- c(5, 2, 7, 7, 7, 2, 0, 0). Тогда функция должна вернуть матрицу 2х4 с элементами
# 
# 0 2 5 7
# 2 2 1 3

count_elements <- function(x) {
    res <- sort(unique(x))
    res <- rbind(res, as.vector(table(x)))
}