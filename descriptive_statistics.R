mtcars

# find number of cars based on Automatic/Manual gear
table(mtcars$am)

# minimum qsec value
min(mtcars$qsec)

# maximum qsec value
max(mtcars$qsec)

# mean qsec value
mean(mtcars$qsec)

# median qsec value
median(mtcars$qsec)

# mode of carburator (carb) value
mode <- function(vector) {
  uniq <- unique(vector)
  uniq[which.max(tabulate(match(vector, uniq)))]
}
mode(mtcars$carb)
table(mtcars$carb)

# quartile qsec value
quantile(mtcars$qsec)

quantile(mtcars$qsec, .7)

# standard deviation of qsec value
sd(mtcars$qsec)

# sum of qsec value
sum(mtcars$qsec)

# correclation coefficients between cyl and qsec
cor(
  x = mtcars$cyl,
  y = mtcars$qsec
)

summary(mtcars)
