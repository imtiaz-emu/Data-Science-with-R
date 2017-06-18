library(ggplot2)

ggplot(data = mtcars, aes(x = am)) + 
       geom_bar() + 
  ggtitle("Car count based on Transmission Type [0 = manual, 1 = auto]") +
  xlab("Transmission Type") +
  ylab("Total cars")
      
       
ggplot(data = mtcars, aes(x = qsec)) + 
  geom_histogram(bins = 10) + 
  ggtitle("Distribution of Fuel") +
  xlab("Fuel per Milage") +
  ylab("Total cars")

ggplot(data = mtcars, aes(x = qsec)) + 
  geom_density() + 
  ggtitle("Distribution of Fuel") +
  xlab("Fuel per Milage") +
  ylab("Total cars")

ggplot(data = mtcars, aes(x = cyl, y = qsec)) + 
  geom_point() + 
  ggtitle("Distribution of Fuel") +
  xlab("cylinders") +
  ylab("Total milage")



