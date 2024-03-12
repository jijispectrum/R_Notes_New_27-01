# Select some columns form mtcars.
input <- mtcars[,c("am","cyl","hp","wt")]

print(head(input))

input <- mtcars[,c("am","cyl","hp","wt")]

am.data = glm(formula = am ~ cyl + hp + wt, data = input, family = binomial)

print(summary(am.data))


# Load the iris dataset
data(iris)

# View the structure of the dataset
str(iris)

# Fit logistic regression model
model <- glm(Species == "versicolor" ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, 
             data = iris, family = binomial)

# Print summary of the model
summary(model)



# Assuming you have new data in a dataframe called 'new_data'
# You should have the same predictor variables as in the model
# For example:

# Assuming you have new data in a dataframe called 'new_data'
# You should have the same predictor variables as in the model
# For example:
new_data <- data.frame(
  Sepal.Length = c(5.1, 6.2, 4.7),
  Sepal.Width = c(3.5, 2.9, 3.2),
  Petal.Length = c(1.4, 4.3, 1.6),
  Petal.Width = c(0.2, 1.3, 0.2)
)

# Convert 'new_data' to a matrix
new_matrix <- as.matrix(new_data)

# Extract coefficients from the fitted model
coefficients <- coef(model)

# Apply the logistic function to the linear combination of predictors and coefficients
linear_predictor <- as.numeric(new_matrix %*% coefficients[-1] + coefficients[1])
probabilities <- 1 / (1 + exp(-linear_predictor))

# Make predictions based on the threshold (e.g., 0.5)
predictions <- ifelse(probabilities > 0.5, "versicolor", "not versicolor")

# Print the probabilities and predictions
print(probabilities)
print(predictions)

# Load the Titanic dataset from the 'titanic' package
install.packages("titanic")  # Install the package if you haven't already
library(titanic)

# Load the Titanic dataset
data("titanic")

# View the structure of the dataset
str(titanic)

# Fit logistic regression model
model <- glm(Survived ~ Pclass + Age + Sex + Fare, data = titanic, family = binomial)

# Print summary of the model
summary(model)


# Load the ISLR package (if not installed, install it first)
install.packages("ISLR")
library(ISLR)
Default
# View the structure of the Default dataset
str(Default)

# Fit logistic regression model
model <- glm(default ~ balance + income + student, data = Default, family = binomial)

# Print summary of the model
summary(model)


# Assuming you have a new dataset called 'new_data' with predictor variables
# For demonstration purposes, let's create a small new dataset with some sample data
new_data <- data.frame(
  balance = c(1000, 2000, 3000),  # Credit card balance
  income = c(40000, 50000, 60000),  # Income
  student = c("No", "Yes", "No")    # Student status
)

# Convert 'student' variable to a factor with levels consistent with the Default dataset
new_data$student <- factor(new_data$student, levels = levels(Default$student))

# Make predictions using the fitted model
predictions <- predict(model, newdata = new_data, type = "response")

# Threshold the probabilities to get binary predictions (0 or 1)
binary_predictions <- ifelse(predictions > 0.5, "Yes", "No")

# Combine the predictions with the original new_data
predicted_data <- cbind(new_data, Predicted_Default = binary_predictions)

# Print the predictions
print(predicted_data)


