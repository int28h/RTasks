library(data.table)
library(plotly)

purchases <- fread("purchases.csv")

price.hist <- ggplot(purchases) + 
  geom_histogram(aes(totalcents), fill="white", color="black") +
  scale_x_log10("Item price", labels = function(x) {
    format(x / 100, scientific = F, big.mark = " ")
  }) +
  ylab("Times purchased")

interactive.price.hist <- ggplotly(price.hist)

interactive.price.hist
