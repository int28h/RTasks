# t-Критерий Стьюдента для независимых выборок
# t.test(Var1 ~ Var2, data) # если первая переменная количественная, а вторая фактор
# t.test(data$Var1, data$Var2) # если обе переменные количественные
# 
# t-Критерий Стьюдента для зависимых выборок 
# t.test(data$Var1, data$Var2, paired = T)
# 
# Проверка на нормальность распределения
# shapiro.test(Var1) # проверка на нормальность распределения переменной Var1
# но не удобно когда есть группирующая факторная переменная
# 
# Поможет функция by(), которая применяет различные функции на каждом уровне фактора.  
# 
# by(iris$Sepal.Length, INDICES = iris$Species, shapiro.test) # проверка на нормальность переменной 
# Sepal.Length в трех разных группах в соответствии с переменной Species
# 
# Проверка на гомогенность дисперсий
# bartlett.test(mpg ~ am, mtcars) #Критерий Бартлетта 


?iris
df  <- iris

str(df)

df1  <- subset(df, Species != "setosa")
str(df1)
table(df1$Species)

hist(df1$Sepal.Length)

ggplot(df1, aes(x =Sepal.Length ))+
  geom_histogram(fill = "white", col = "black", binwidth = 0.4)+
  facet_grid(Species ~ .)

ggplot(df1, aes(Sepal.Length, fill = Species ))+
  geom_density(alpha = 0.5)

ggplot(df1, aes(Species, Sepal.Length))+
  geom_boxplot()

shapiro.test(df1$Sepal.Length)

shapiro.test(df1$Sepal.Length[df1$Species == "versicolor"])
shapiro.test(df1$Sepal.Length[df1$Species == "virginica"])

#The same result in one line
by(df1$Sepal.Length, INDICES = df1$Species, shapiro.test)

bartlett.test(Sepal.Length  ~ Species, df1)


t.test(Sepal.Length  ~ Species, df1)
test1  <- t.test(Sepal.Length  ~ Species, df1)

str(test1)
test1$p.value

t.test(Sepal.Length  ~ Species, df1, var.equal = T)

t.test(df1$Sepal.Length, mu = 8)

t.test(df1$Petal.Length, df1$Petal.Width, paired = T)

ggplot(df1, aes(Species, Sepal.Length))+
  stat_summary(fun.data = mean_cl_normal, geom = "errorbar", 
               width = 0.1)+
  stat_summary(fun.y = mean, geom = "point", size = 4)

ggplot(df1, aes(Species, Sepal.Length))+
  stat_summary(fun.data = mean_cl_normal, geom = "pointrange", 
               size = 2)


?wilcox.test

test2  <- wilcox.test(Petal.Length ~ Species, df1)
pv  <- test2$p.value

ggplot(df1, aes(Species, Petal.Length))+
  geom_boxplot()


wilcox.test(df1$Petal.Length, df1$Petal.Width, paired = T)

paired_wtest  <- wilcox.test(df1$Petal.Length, df1$Petal.Width, paired = T)

paired_wtest$p.value
