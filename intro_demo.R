# R Language Basics

# Assignment operators
x <- "Hello World!"
y = "Hello World!"
"Hello World!" -> z

# Implicit printing
print(x)
x

# Creating variables
logical <- TRUE
integer <- 123L
numerical <- 1.23
character <- "ABC 123"
date <- as.Date("2001-02-03")

# Displaying variables
logical
integer
numerical
character
date

# Creating a function
func <- function(x) { x * 2 }

# Invoking a function
func(2)

# Creating a vector
v <- c(1, 2, 3);
v

# Creating a matrix
m <- matrix(
  data = 1:6, 
  nrow = 2, 
  ncol = 3)
m

# Creating a list
l <- list(TRUE, 123L, 2.34, "abc")
l

# Creating a factor
categories <- c("Male", "Female", "Male", "Male", "Female")
factor <- factor(categories)
factor
levels(factor)
unclass(factor)

# Creating a data frame
df <- data.frame(
  Name = c("Cat", "Dog", "Cow", "Pig"), 
  HowMany = c(5, 10, 15, 20),
  IsPet = c(TRUE, TRUE, FALSE, FALSE))
df

# Indexing data frames by row and column
df[1, 2]

# Indexing data frames by row
df[1, ]

# Indexing data frames by column
df[ , 2]
df[["HowMany"]]
df$HowMany

# Subsetting data frames
df[c(2, 4), ]
df[2:4, ]
df[c(TRUE, FALSE, TRUE, FALSE), ]
df[df$IsPet == TRUE, ]
df[df$HowMany > 10, ]
df[df$Name %in% c("Cat", "Cow"), ]

# R is a vectorized language
1 + 2
c(1, 2, 3) + c(2, 4, 6)

# Installing packages
install.packages("dplyr")

# Loading packages
library("dplyr")

# Viewing help
?data.frame
