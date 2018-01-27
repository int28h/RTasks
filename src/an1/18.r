# В этой задаче вам дан набор данных, в котором представлена информация о температуре нескольких пациентов, 
# которые лечатся разными таблетками и у разных врачей.
# Проведите однофакторный дисперсионный анализ с повторными измерениями: влияние типа таблетки (pill) 
# на температуру (temperature) с учётом испытуемого (patient). Каково p-value для влияния типа таблеток на температуру?
# 
# Данные: https://stepic.org/media/attachments/lesson/11505/Pillulkin.csv
# 
# Не забудьте, важно перевести переменную patient в фактор!  
df <- read.csv(url('https://stepic.org/media/attachments/lesson/11505/Pillulkin.csv'))
df$patient <- as.factor(df$patient)
summary(aov(temperature ~ pill + Error(patient/pill), data = df))