library(data.table)


products <- fread("products.csv", colClasses = c(price = "double"))


products[price<1000,
         name.with.price := paste0(name, " ( ", price, " руб.)")]
products[order(-price)]


products[, price := price / max(price), by=brand]

products