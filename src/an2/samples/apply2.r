# step 2 apply(x, 1, mean, ...) 
head(airquality)
?airquality

apply(airquality, 2, mean, na.rm = T)

colMeans()
colSums()
rowMeans()
rowSums()

# step 3 
set.seed(42)

d <- as.data.frame(matrix(rnorm(30), nrow = 5))

my_fun <- function(x) x * 2

d[1, 1] <- NA

my_list <- list()
for (i in seq_along(d)){
  temp_col <- d[, i]
  neg_numbers <- temp_col[temp_col < 0]
  my_list[[i]] <- neg_numbers
}
names(my_list) <- colnames(d)

my_list <- apply(d, 2, function(x) x[x < 0])


find_negative <- function(x){
  x[x < 0]
}
find_positive <- function(x){
  x[x > 0]
}

apply(d, 2, find_positive)


# step 4
apply(array, margin, ...)
head(iris)

aov_result <- apply(iris[, 1:4], 2, function(x) aov(x ~ iris$Species))

norm_test <- apply(iris[, 1:4], 2, 
                   function(x) shapiro.test(x))

norm_test_p <- apply(iris[, 1:4], 2, 
                     function(x) shapiro.test(x)$p.value)


str(aov_result)
aov_result$Petal.Length
norm_test$Petal.Width