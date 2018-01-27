# Воспользуемся данными diamonds из библиотеки ggplot2. При помощи критерия Хи - квадрат проверьте гипотезу 
# о взаимосвязи качества огранки бриллианта (сut) и его цвета (color). В переменную main_stat сохраните значение 
# статистики критерия Хи - квадрат. Обратите внимание, main_stat должен быть вектором из одного элемента, 
# а не списком (листом).
# 
# Данные diamonds уже доступны для работы!
main_stat <- chisq.test(table(cbind(diamonds[,'cut'], diamonds[,'color'])))[1]

# diamods_table <- table(diamonds$cut, diamonds$color)    
# chi_result <- chisq.test(diamods_table )    
# main_stat <- chi_result$statistic