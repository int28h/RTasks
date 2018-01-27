# Скачайте данные, посвященные влиянию различного типа лечения на показатель артериального давления. 
# 
# https://stepic.org/media/attachments/lesson/11504/lekarstva.csv﻿
# 
# По всем испытуемым сравните показатель давления до начала лечения (Pressure_before) 
# с показателем давления после лечения (Pressure_after) при помощи t - критерия для зависимых выборок. 
# 
# В поле для ответа укажите значение t - критерия.
# 
# (В качестве десятичного разделителя используйте запятую, например: 123,54)
df <- read.csv(url('https://stepic.org/media/attachments/lesson/11504/lekarstva.csv'))
t.test(df$Pressure_before, df$Pressure_after, paired = T)
# 14.227