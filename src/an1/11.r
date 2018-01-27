# При помощи точного критерия Фишера проверьте гипотезу о взаимосвязи типа коробки передач (am) и типа двигателя (vs) 
# в данных mtcars. Результат выполнения критерия сохраните в переменную.Получившийся p - уровень значимости сохраните 
# в переменную fisher_test.
fisher_test <- fisher.test(mtcars$am, mtcars$vs)$p