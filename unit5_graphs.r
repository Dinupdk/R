x<-c(1,2,3,4,5)
y<-c(10,20,10,30,40)
plot(x,y)
plot(x,y,col="red",pch=16,xlab="X-axis Label",ylab="Y-axis Label", main="Title")

#Bar chart
df=data.frame(category=c("A","B","C","D","E","F"),
            count=c(10,20,30,40,50,60))
barplot(df$count,main="Bar Chart",xlab="Category",ylab="Count",
col="blue",border="red",las=2,font.axis=2)

#########  Histogram
x=rnorm(100)
hist(x,breaks=20,col="blue",xlab="Histogram of X",ylab="Histogram of Y",main="histogram")











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




  # Sample data
x <- 1:10
y <- cumsum(rnorm(10))
# Line chart using base R
plot(x, y, type = "l", col = "red", main = "Line Chart", xlab = "X-axis", ylab = "Y-axis")

# Sample data
data <- data.frame(x = x, y = y)

# Line chart using ggplot2
ggplot(data, aes(x = x, y = y)) +
  geom_line(color = "red") +
  ggtitle("Line Chart") +
  theme_minimal()




# Sample data
x <- rnorm(100)
y <- rnorm(100)

# Scatter plot using base R
plot(x, y, main = "Scatter Plot", xlab = "X-axis", ylab = "Y-axis", col = "blue")

# Sample data
data <- data.frame(x = x, y = y)

# Scatter plot using ggplot2
ggplot(data, aes(x = x, y = y)) +
  geom_point(color = "blue") +
  ggtitle("Scatter Plot") +
  theme_minimal()






  # Sample data
data <- rnorm(1000)

# Histogram using base R
hist(data, main = "Histogram", xlab = "Value", col = "lightblue", border = "black")

# Sample data
data <- data.frame(values = rnorm(1000))

# Histogram using ggplot2
ggplot(data, aes(x = values)) +
  geom_histogram(binwidth = 0.5, fill = "lightblue", color = "black") +
  ggtitle("Histogram") +
  theme_minimal()





# Sample data
data <- data.frame(group = rep(c("A", "B"), each = 50), values = c(rnorm(50), rnorm(50, mean = 1)))

# Boxplot using base R
boxplot(values ~ group, data = data, main = "Boxplot", xlab = "Group", ylab = "Values", col = c("lightblue", "lightgreen"))

# Boxplot using ggplot2
ggplot(data, aes(x = group, y = values)) +
  geom_boxplot(fill = "lightblue") +
  ggtitle("Boxplot") +
  theme_minimal()


  # Sample data
slices <- c(10, 20, 30, 40)
labels <- c("A", "B", "C", "D")

# Pie chart using base R
pie(slices, labels = labels, main = "Pie Chart", col = rainbow(length(slices)))

# Sample data
data <- data.frame(slices = slices, labels = labels)

# Pie chart using ggplot2
ggplot(data, aes(x = "", y = slices, fill = labels)) +
  geom_bar(stat = "identity") +
  coord_polar("y") +
  ggtitle("Pie Chart") +
  theme_void()



  # Sample data
matrix_data <- matrix(rnorm(100), nrow = 10)

# Heatmap using base R
heatmap(matrix_data, main = "Heatmap")


library(reshape2)

# Sample data
matrix_data <- matrix











