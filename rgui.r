

# Sample data
categories <- c("A", "B", "C")
values <- c(3, 5, 2)

# Bar chart using base R
barplot(values, names.arg = categories, col = "blue", main = "Bar Chart")

library(ggplot2)

# Sample data
data <- data.frame(categories = categories, values = values)

# Bar chart using ggplot2
ggplot(data, aes(x = categories, y = values)) +
  geom_bar(stat = "identity", fill = "blue") +
  ggtitle("Bar Chart") +
  theme_minimal()

