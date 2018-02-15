library(data.table)

purchases <- fread("purchases.csv")
products <- fread("products.csv")

purchases.with.brands <- merge(
  purchases,
  products[, list(product_id, brand)],
  by="product_id"
)

pop.20.brands <- head(
  purchases.with.brands[, 
                        list(
                          total.brand.users = length(unique(externalsessionid))
                        ),
                        by=brand][order(-total.brand.users)], 20)

users <- purchases.with.brands[, list(unique.brands = length(unique(brand)),
                           items = .N,
                           brand = brand[1]),
                    by=externalsessionid]

brand.loyal.users <- users[items > 1][unique.brands == 1][, list(total.loyal.users = .N), by=brand]

brand.stats <- merge(
  pop.20.brands,
  brand.loyal.users,
  by="brand"
)

brand.stats[, loyal := total.loyal.users / total.brand.users]

brand.stats[order(-loyal)]

