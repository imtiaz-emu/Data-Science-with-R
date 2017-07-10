library(ggplot2)

# Create a frequency bar chart
ggplot(data = mtcars, aes(x = am)) + 
       geom_bar() + 
  ggtitle("Car count based on Transmission Type [0 = auto, 1 = manual]") +
  xlab("Transmission Type") +
  ylab("Total cars")
      
# Create a histogram       
ggplot(data = mtcars, aes(x = qsec)) + 
  geom_histogram(bins = 10) + 
  ggtitle("Distribution of Fuel") +
  xlab("Fuel per Milage") +
  ylab("Count of cars")

# Create a density plot
ggplot(data = mtcars, aes(x = qsec)) + 
  geom_density() + 
  ggtitle("Distribution of Fuel Economy") +
  xlab("Fuel per Milage") +
  ylab("Density")

# Create a scatterplot
ggplot(data = mtcars, aes(x = cyl, y = qsec)) + 
  geom_point() + 
  ggtitle("Fuel Economy by Cylinders") +
  xlab("Number of Cylinders") +
  ylab("Fuel Economy (mpg)")



