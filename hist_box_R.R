# Create data for the graph.
v <-  c(9,13,21,8,36,22,12,41,31,33,19)

# Give the chart file a name.
png(file = "histogram.png")

# Create the histogram.
hist(v,xlab = "Weight",col = "yellow",border = "blue")

# Save the file.
dev.off()



# Install and load ggplot2 (if not already installed)
if (!require(ggplot2)) install.packages("ggplot2")
library(ggplot2)

# Set your data
data <- data.frame(weight = c(9,13,21,8,36,22,12,41,31,33,19))

# Create the histogram with ggplot2
ggplot(data, aes(x = weight)) +
  geom_histogram(bins = 30, color = "red", fill = "yellow", border = "blue") +
  labs(title = "Histogram of Weight Data", x = "Weight", y = "Frequency") +
  theme_bw() # change theme for black and white

# Save the plot as a png file
ggsave("histogram.png", width = 8, height = 6, dpi = 300)




# Give the chart file a name.
png(file = "boxplot_with_notch.png")

# Plot the chart.
boxplot(mpg ~ cyl, data = mtcars, 
        xlab = "Number of Cylinders",
        ylab = "Miles Per Gallon", 
        main = "Mileage Data",
        notch = TRUE, 
        varwidth = TRUE, 
        col = c("green","yellow","purple"),
        names = c("High","Medium","Low")
)
# Save the file.
dev.off()



library(ggplot2)

# Create the boxplot
ggplot(mtcars, aes(x = factor(cyl, labels = c("High", "Medium", "Low")), y = mpg, fill = factor(cyl))) +
  geom_boxplot(notch = TRUE, varwidth = TRUE) +
  scale_fill_manual(values = c("green", "yellow", "purple")) +
  labs(title = "Mileage Data", x = "Number of Cylinders", y = "Miles Per Gallon") +
  theme_bw()

# Save the plot as a png file
ggsave("boxplot_with_notch.png", width = 8, height = 6, dpi = 300)

