library(ggplot2)

data("diamonds")

qplot(x = price, data = diamonds)
qplot(x = price, y = carat, data = diamonds)
qplot(x = cut, y = carat, data = diamonds)

v <- diamonds$carat
qplot(v)
qplot(diamonds$carat)

qplot(diamonds$carat, diamonds$price)

my_plot <- qplot(x = price, y = carat, data = diamonds)

qplot(x = price, 
      y = carat,
      color = color,
      shape = cut,
      data = diamonds, 
      geom = c("point", "smooth"))

qplot(mpg, 
      hp,
      color = I("blue"),
      shape = factor(cyl),
      size = I(5),
      alpha = I(0.3),
      data = mtcars)

qplot(x = price, data = diamonds, 
      fill = I("white"), 
      col = I("black"))

qplot(x = price,
      fill = color,
      data = diamonds,
      col = I("black"))

qplot(x = price,
      fill = color,
      alpha = I(0.2),
      data = diamonds,
      col = I("black"), 
      geom = "density")

