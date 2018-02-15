library(data.table)

purchases <- fread("purchases.csv")
products <- fread("products.csv")


setkey(purchases, product_id, externalsessionid)
setkey(products, product_id, brand)



key(purchases)
key(products)


merge(purchases, products, by = "product_id")
# merge(purchases, products, by = c("col1", "col2"))
merge(purchases, products, by.x = "product_id", by.y = "product_id")
merge(purchases, products, all.x = T, all.y = F)
merge(purchases, products)


purchases[products, on = "product_id"]

purchases[products]




setkey(products, product_id, price)
setkey(purchases, product_id, ordernumber)
purchases[products]





setkey(purchases, product_id, externalsessionid)
setkey(products, product_id, brand)

products[purchases]



# J, SJ, CJ
products[J(c(158, 208, 10001, 826355, 958238))]
products[data.table(
  c(158, 208, 10001, 826355, 958238)
)]
products[.(c(158, 208, 10001, 826355, 958238))]
products[list(c(158, 208, 10001, 826355, 958238))]

print(SJ(c(158, 208, 10001, 826355, 958238)))
key(SJ(c(158, 208, 10001, 826355, 958238)))

print(CJ(c(158, 826355, 958238),
         c("Supra", "Func")))
key(CJ(c(158, 826355, 958238),
       c("Supra", "Func")))








