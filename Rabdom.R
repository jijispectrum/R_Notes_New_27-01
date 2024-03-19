# Load the required packages
install.packages("party")
install.packages("randomForest")
library(party)
library(randomForest)

# Print some records from the data set readingSkills
print(head(readingSkills))

# Create the random forest model
output.forest <- randomForest(nativeSpeaker ~ age + shoeSize + score, 
                              data = readingSkills)

# View the forest results
print(output.forest)

# Importance of each predictor
print(importance(output.forest, type = 2))

# Make predictions
predictions <- predict(output.forest, readingSkills)

# Calculate accuracy


accuracy <- mean(predictions == readingSkills$nativeSpeaker)
print(paste("Accuracy:", round(accuracy * 100, 2), "%"))


# Load the required package
install.packages("randomForest")







library(randomForest)

# Train a random forest model using the iris dataset
output.forest <- randomForest(Species ~ ., data = iris)

# Print the importance of predictor variables
print(importance(output.forest, type = 2))

# Make predictions
predictions <- predict(output.forest, iris)

# Calculate accuracy
accuracy <- mean(predictions == iris$Species)
print(paste("Accuracy:", round(accuracy * 100, 2), "%"))

















library(randomForest)

# Train a random forest model using the mtcars dataset
output.forest <- randomForest(vs ~ ., data = mtcars)

# Print the importance of predictor variables
print(importance(output.forest, type = 2))

# Make predictions
predictions <- predict(output.forest, mtcars)

# Calculate accuracy
accuracy <- mean(predictions == mtcars$vs)
print(paste("Accuracy:", round(accuracy * 100, 2), "%"))

