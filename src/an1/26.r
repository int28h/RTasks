# Воспользуемся уже знакомыми данными diamonds из библиотеки ggplot2. Только для бриллиантов класса Ideal 
# (переменная cut) c числом карат равным 0.46 (переменная carat) постройте линейную регрессию, 
# где в качестве зависимой переменной выступает price, в качестве предиктора - переменная  depth. 
# Сохраните коэффициенты регрессии в переменную fit_coef.
# Памятка:
# 
# > fit <- lm(mpg ~ disp + wt, mtcars)
# > fit$coefficients # коэффициенты модели
# 
# Это задание нужно решить, не используя цикл for().
df <- subset(diamonds, diamonds$cut %in% c("Ideal") & diamonds$carat == 0.46)
fit_coef <- lm(df$price ~ df$depth, df)$coefficients