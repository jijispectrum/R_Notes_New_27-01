library(class)

# Load iris dataset
data(iris)

# Create a data frame
df <- data.frame(iris)

# Shuffle the data
set.seed(123)
ind <- sample(2, nrow(df), replace = TRUE, prob = c(0.7, 0.3))

# Split the data into train and test
train_data <- df[ind==1,]
test_data <- df[ind==2,]

# Run the KNN algorithm
pred <- knn(train = train_data[, -5], test = test_data[, -5], cl = train_data$Species, k = 3)

# Print the prediction
print(pred)
