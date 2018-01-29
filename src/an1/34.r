# Напишите функцию resid.norm, которая тестирует распределение остатков от модели на нормальность при помощи функции 
# shapiro.test и создает гистограмму при помощи функции ggplot() с красной заливкой "red", если распределение остатков 
# значимо отличается от нормального (p < 0.05), и с зелёной заливкой "green" - если распределение остатков значимо 
# не отличается от нормального.
# 
# На вход функция получает регрессионную модель. Функция возвращает переменную, в которой сохранен график ggplot.
resid.norm  <- function(fit){
    color <- ifelse(shapiro.test(fit$residuals)$p.value < 0.05, 'red', 'green')
    df <- data.frame(fit$residuals)
    names(df)[names(df) == 'fit.residuals'] <- 'res'
    my_plot <- ggplot(df, aes(res)) + geom_histogram(bins = 30, fill = color)
}