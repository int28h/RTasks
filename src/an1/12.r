# Задача про свинок!
# 
# Воспользуемся еще одним встроенным набором данных в R  - ToothGrowth. Данные позволяют исследовать рост зубов 
# у морских свинок в зависимости от дозировки витамина C и типа потребляемых продуктов.
# 
# Сравните среднее значение длины зубов свинок, которые потребляли апельсиновый сок (OJ) с дозировкой 0.5 миллиграмм, 
# со средним значением длины зубов свинок, которые потребляли аскорбиновую кислоту (VC) с дозировкой 2 миллиграмма. 
# 
# Значение t - критерия сохраните в переменную t_stat.
t_stat <- t.test(ToothGrowth$len[ToothGrowth$supp %in% c('OJ') & ToothGrowth$dose == 0.5], ToothGrowth$len[ToothGrowth$supp %in% c('VC') & ToothGrowth$dose == 2.0])$statistic

# correct_data <- subset(ToothGrowth, supp=='OJ' & dose==0.5 | supp=='VC' & dose==2)   
# t_stat <- t.test(len ~ supp, correct_data)$statistic
