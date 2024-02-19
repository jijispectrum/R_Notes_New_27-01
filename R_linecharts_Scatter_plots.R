# Sample data
x <- c(1, 2, 3, 4, 5)
y <- c(2, 4, 6, 8, 10)

# Create line graph
plot(x, y, type = "l", main = "Line Graph ", xlab = "X-axis", ylab = "Y-axis")


# Install and load ggplot2 (if not already installed)
install.packages("ggplot2")
library(ggplot2)

# Create line graph with ggplot2
ggplot(data.frame(x, y), aes(x = x, y = y)) +
  geom_line(color = "blue", size = 1.5) +
  labs(title = "Line Graph with ggplot2", x = "X-axis", y = "Y-axis")



# Sample data
x <- rnorm(100)
y <- rnorm(100)

# Create scatter plot with plot
plot(x, y, pch = 20, main = "Scatter Plot Example", xlab = "X-axis", ylab = "Y-axis")

# Create scatter plot with ggplot2
ggplot(data.frame(x, y), aes(x = x, y = y)) +
  geom_point(color = "red", size = 3) +
  labs(title = "Scatter Plot with ggplot2", x = "X-axis", y = "Y-axis")


# Sample data (replace with your actual data)
days <- 1:30
temperature <- rnorm(30, mean = 15, sd = 3)

# Basic line graph
plot(days, temperature, type = "l", main = "Temperature Fluctuations", xlab = "Day", ylab = "Temperature")

# ggplot2 version with smoothing
library(ggplot2)
ggplot(data.frame(days, temperature), aes(x = days, y = temperature)) +
  geom_line(color = "orange", size = 1.2) +
  geom_smooth(method = "loess", se = FALSE) +
  labs(title = "Temperature Fluctuations with Smoothing", x = "Day", y = "Temperature")

1. Income and Education:
  Code snippet

# Sample data (replace with your actual data)
income <- rnorm(100, mean = 50000, sd = 10000)
education <- rnorm(100, mean = 14, sd = 2)

# Basic scatter plot
plot(income, education, pch = 20, main = "Income vs. Education", xlab = "Income", ylab = "Education")

# ggplot2 version with color gradient
library(ggplot2)
ggplot(data.frame(income, education), aes(x = income, y = education)) +
  geom_point(aes(color = income), size = 3) +
  labs(title = "Income vs. Education (Colored by Income)", x = "Income", y = "Education") +
  scale_color_gradient(n = 20)

# Sample data (replace with your actual data)
height <- rnorm(100, mean = 170, sd = 5)
weight <- rnorm(100, mean = 70, sd = 10)

# Basic scatter plot
plot(height, weight, pch = 20, main = "Height vs. Weight", xlab = "Height", ylab = "Weight")

# ggplot2 version with trendline
library(ggplot2)
ggplot(data.frame(height, weight), aes(x = height, y = weight)) +
  geom_point(size = 3) +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Height vs. Weight (Trendline)", x = "Height", y = "Weight")


