library(tree)
library(ggplot2)
library(RColorBrewer)
library(caret)

data("iris")

# set a seed to make randomness reproducable
set.seed(42)

# get 100 random indexes between 1 to 150
indexes <- sample(
  x = 1:150,
  size = 100
)

print(indexes)

# based on the indexes split iris data to TRAIN & TEST
train <- iris[indexes, ]
test <- iris[-indexes, ]

# create a decision trre model based on train data
model <- tree(
  data = train,
  formula = Species ~ . 
)

# get summary of the created model
summary(model)

# plot tree with text
plot(model)
text(model)

# create a color palatte
palatte <- brewer.pal(3, "Set2")

# create a scatterplot with colored species
plot(
  x = iris$Petal.Length,
  y = iris$Petal.Width,
  pch = 19,
  col = palatte[as.numeric(iris$Species)],
  main = "IRIS petal Length vs Width",
  xlab = "Petal Length",
  ylab = "Petal Width"
)

# partition based on species
partition.tree(
  tree = model,
  label = "Species",
  add = TRUE
)

# Predict test data 
predictions <- predict(
  object = model,
  newdata = test,
  type = "class"
)

# create a confussion matrix
table(
  x = predictions,
  y = test$Species
)

# evaluate the predicting result 
confusionMatrix(
  data = predictions,
  reference = test$Species
)
