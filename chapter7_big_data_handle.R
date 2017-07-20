# Handling Big Data

# Set working directory
setwd("/home/emu/R Projects/Data Science with R/")

# Load the ff package
library(ff)
library(ggplot2)

# Read a CSV file as ff data frame
irisff <- read.table.ffdf(
  file = "Iris.csv",
  FUN = "read.csv")

# Inspect the class
class(irisff)

# see the names of the columns
names(irisff)

# access first 5 rows
irisff[1:5,]

# Load the biglm package
library(biglm)

# create linear model using biglm
model <- biglm(
  formula = Petal.Width ~ Petal.Length,
  data = irisff)

# Summarize the model
summary(model)

# Create a scatterplot
plot(
  x = irisff$Petal.Length[], 
  y = irisff$Petal.Width[],
  main = "Iris Petal Length vs. Width",
  xlab = "Petal Length (cm)",
  ylab = "Petal Width (cm)")

# Get y-intercept from model
b <- summary(model)$mat[1,1]

# Get slope from model
m <- summary(model)$mat[2,1]

# Draw a regression line on plot
lines(
  x = irisff$Petal.Length[],
  y = m * irisff$Petal.Length[] + b, 
  col = "red",
  lwd = 3)

# Predict new values with the model
predict(
  object = model,
  newdata = data.frame(
    Petal.Length = c(2, 5, 7),
    Petal.Width = c(0, 0, 0)))
