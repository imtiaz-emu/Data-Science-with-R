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

# quartile qsec value
quantile(mtcars$qsec)

# sum of qsec value
sum(mtcars$qsec)

# correclation coefficients between cyl and qsec
cor(
  x = mtcars$cyl,
  y = mtcars$qsec
)

# summary(mtcars)
