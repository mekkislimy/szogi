library(ggplot2)

sales_data <- data.frame(
  product = c("Laptop", "Tablet", "Smartphone", "Desktop", "Monitor", "Printer", "Smartwatch"),
  sales = c(150, 90, 230, 70, 85, 40, 65)
)

ggplot(sales_data, aes(x = product, y = sales, fill = product)) +
  geom_bar(stat = "identity") +
  labs(title = "Product Sales", x = "Product", y = "Number of Sales") +
  theme_minimal()

average_sales <- mean(sales_data$sales)
print(paste("Az átlagos eladás:", average_sales))

best_selling <- sales_data$product[which.max(sales_data$sales)]
print(paste("A legjobban fogyó termék:", best_selling))

#github oldálán írok


sales_data$percentage <- sales_data$sales / sum(sales_data$sales) * 100

ggplot(sales_data, aes(x = "", y = percentage, fill = product)) +
  geom_bar(width = 1, stat = "identity") +
  coord_polar("y") +
  labs(title = "Eladások eloszlása (%)") +
  theme_minimal()
