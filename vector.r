# Create a vector.
apple <- c("red", "green", "yellow")
print(apple)

# Get the class of the vector.
print(class(apple))

# Create a list.
list1 <- list(c(2, 5, 3), 21.3, sin)

# Print the list.
print(list1)


# Create a matrix.
M <- matrix(c("a", "a", "b", "c", "b", "a"), nrow = 2, ncol = 3, byrow = FALSE)
print(M)

M <- matrix(c("a", "a", "b", "c", "b", "a"), nrow = 2, ncol = 3, byrow = FALSE)
print(M)

# Create an array.
a <- array(c('green','yellow'),dim = c(3,3,2))
print(a)



# Create a vector.
apple_colors <- c('green','green','yellow','red','red','red','green','black')

# Create a factor object.
factor_apple <- factor(apple_colors)

# Print the factor.
print(factor_apple)
print(range.Date(today))
print(nlevels(factor_apple))
