# Теперь вашей задачей будет провести двухфакторный дисперсионный анализ с повторными измерениями: 
# влияние факторов doctor, влияние фактора pill и их взаимодействие на temperature. 
# Учтите обе внутригрупповые переменные: и тот факт, что один и тот же больной принимает разные таблетки, 
# и тот факт, что  один и тот же больной лечится у разных врачей! Каково F-значение для взаимодействия 
# факторов доктора (doctor) и типа таблеток (pill)?
# Данные: https://stepic.org/media/attachments/lesson/11505/Pillulkin.csv
df <- read.csv(url('https://stepic.org/media/attachments/lesson/11505/Pillulkin.csv'))
df$patient <- as.factor(df$patient)
res <- aov(temperature ~ pill*doctor + Error(patient/(pill*doctor)), data = df)