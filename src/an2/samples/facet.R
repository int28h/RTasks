ggplot(diamonds, aes(carat))+ 
  geom_density(alpha = .1) + 
  facet_grid(cut ~ color)

mtcars <- mutate(mtcars, 
                 am = factor(am, labels = c("A", "M")), 
                 vs = factor(vs, labels = c("V", "S")))
                 
ggplot(mtcars, aes(hp, mpg))+
  geom_point(aes(col = factor(cyl))) + 
  facet_grid(vs ~ am) + 
  geom_smooth(method = "lm")


ggplot(diamonds, aes(carat))+ 
  geom_density(alpha = .1) + 
  facet_wrap( ~ cut, ncol = 1)

ggplot(diamonds, aes(carat))+ 
  geom_density(alpha = .1) + 
  facet_grid(cut ~ .)

ggplot(diamonds, aes(carat, price))+
  geom_smooth() +   
  facet_grid(color ~ .)
  
