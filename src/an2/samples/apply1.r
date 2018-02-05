# steps 2 - 3 for vs apply 
library(ggplot2)

data(diamonds)
str(diamonds)

min_size <- numeric(nrow(diamonds))
for (i in 1:nrow(diamonds)){
  min_size[i] <-  min(diamonds[i, 8:10])
}

min_size_2 <- apply(diamonds[, 8:10], 1, min)


# steps 4 and 7 apply function
?apply(array, margin, ...)

apply(X, MARGIN, FUN, ...)

d <- matrix(rnorm(30), nrow = 5)

apply(d, MARGIN = 1, FUN = sd)
apply(d, MARGIN = 2, FUN = sd)

apply(mtcars, 2, sd)
apply(mtcars, 1, sd)

s <- apply(d, MARGIN = 2, FUN = sd)
range(1:10)

my_range <- apply(d, MARGIN = 2, FUN = range)
my_range


# step 8 apply advanced
outliers_count <- function(x){
  otliers <- x[abs(x - mean(x)) > 2 * sd(x)]
  if (length(otliers) > 0){
    return(otliers)
  } else {
    return("There are no otliers")
  }
}

iris_num <- iris[, 1:4]

iris_outliers <- apply(iris_num, 2, outliers_count)
str(iris_outliers)

