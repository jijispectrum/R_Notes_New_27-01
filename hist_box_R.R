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




