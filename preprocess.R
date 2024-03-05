# Load the dplyr package for data manipulation
library(dplyr)

# Create a sample dataset
data <- data.frame(
  ID = c(1, 2, 3, 4, 5),
  Age = c(25, 30, NA, 35, 40),
  Gender = c("M", "F", "M", "F", "M"),
  Score = c(85, 90, 88, NA, 92)
)

# Display the original dataset
print("Original Dataset:")
print(data)

# Data preprocessing steps
# Handling missing data by removing rows with missing values
data_cleaned <- na.omit(data)

# Encoding categorical variable 'Gender' using one-hot encoding
data_encoded <- data_cleaned %>%
  mutate(Gender_M = as.integer(Gender == "M"),
         Gender_F = as.integer(Gender == "F")) %>%
  select(-Gender)

# Scaling the 'Age' and 'Score' columns
data_scaled <- data_encoded %>%
  mutate(Age_scaled = scale(Age),
         Score_scaled = scale(Score))

# Display the preprocessed dataset
print("Preprocessed Dataset:")
print(data_scaled)

