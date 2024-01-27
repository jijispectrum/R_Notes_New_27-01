# Load necessary libraries
library(ggplot2)

# Load the diamonds dataset
data(diamonds)

# Display the first few rows of the dataset
head(diamonds)

# Summary statistics
summary(diamonds)

# Check for missing values
missing_values <- sum(is.na(diamonds))
cat("Missing Values:", missing_values, "\n")

# Univariate Analysis - Histogram for Price
ggplot(diamonds, aes(x = price)) +
  geom_histogram(binwidth = 500, fill = "skyblue", color = "black", alpha = 0.7) +
  labs(title = "Histogram of Diamond Prices")

# Bivariate Analysis - Scatter Plot for Carat vs. Price
ggplot(diamonds, aes(x = carat, y = price)) +
  geom_point(alpha = 0.5, color = "darkgreen") +
  labs(title = "Scatter Plot of Carat vs. Price")

# Multivariate Analysis - Box Plot for Price by Cut
ggplot(diamonds, aes(x = cut, y = price, fill = cut)) +
  geom_boxplot() +
  labs(title = "Box Plot of Diamond Prices by Cut")

# Correlation Matrix
correlation_matrix <- cor(diamonds[, c("carat", "depth", "table", "price")])
cat("Correlation Matrix:\n")
print(correlation_matrix)
