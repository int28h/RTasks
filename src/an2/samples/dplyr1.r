# steps 3 - 4 data_frame

install.packages("dplyr")
library(dplyr)

my_data <- data_frame(x = rnorm(10000), y = rnorm(10000), 
                      f = factor(rep(1:2, 5000)))

my.data <- data.frame(x = rnorm(10000), y = rnorm(10000), 
                      f = factor(rep(1:2, 5000)))
library(ggplot2)

diamonds <- as_data_frame(diamonds)
diamonds
glimpse(diamonds)

my_data_2 <- data_frame(x = rnorm(10), y = abs(x))
my.data.2 <- data.frame(x = rnorm(10), y = abs(x))

# step 5 select columns
select(diamonds, 1, 2, 3)
diamonds[c("cut", "price", "color")]

select(diamonds, contains("t"))


# step 6 slice rows
slice(diamonds, c(1, 4, 5))
diamonds[c(1, 4, 5)]


# step 7 filter observations
filter(diamonds, carat > 0.3 | color == "J")
diamonds[diamonds$carat > 0.3 & diamonds$color == "J", ]
subset(diamonds, carat > 0.3 & color == "J")


# steps 8 - 9 arrange and mutate
arrange(diamonds, desc(price))
diamonds[order(diamonds$price, diamonds$depth), ]

m <- mutate(diamonds, 
            sqrt_price = sqrt(price), 
            log_carat = log(carat))

mutate(mtcars, am = factor(am), vs = factor(vs))
