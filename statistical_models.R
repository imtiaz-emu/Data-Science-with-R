library(ggplot2)

data("iris")

head(iris)

# draw a scatterplot based on petal width
petal_plot <- ggplot(data = iris, aes(x = Petal.Width, y = Petal.Length)) +
              geom_point() + 
              ggtitle("Scatterplot of petal width & length") +
              xlab("petal width") +
              ylab("petal length")

# create a linear regression model
linear_model <- lm(
  formula = Petal.Width ~ Petal.Length,
  data = iris
)

# summary(linear_model)

# draw linear regression line
petal_plot + stat_smooth(method = "lm", col = "red")

# getting correlation coefficients
cor(
  x = iris$Petal.Width,
  y = iris$Petal.Length
)

# predict new values from the model
predict(
  object = linear_model,
  newdata = data.frame(Petal.Length = c(2,5,7))
)