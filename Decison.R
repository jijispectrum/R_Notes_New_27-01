install.packages("party")
install.packages("TH.data")

# Load the party package. It will automatically load other
# dependent packages.
library(party)

# Print some records from data set readingSkills.
print(head(readingSkills))



# Create the input data frame.
input.dat <- readingSkills[c(1:105),]

# Give the chart file a name.
png(file = "decision_tree.png")

# Create the tree.
output.tree <- ctree(
  nativeSpeaker ~ age + shoeSize + score, 
  data = input.dat)

# Plot the tree.
plot(output.tree)

# Save the file.
dev.off()

# Load the required package
library(party)

# Load the iris dataset
data(iris)

# Print the first few rows of the dataset
print(head(iris))

# Create the input data frame
input_data <- iris

# Give the chart file a name
png(file = "decision_tree_iris.png")

# Create the tree
output_tree <- ctree(
  Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, 
  data = input_data)

# Plot the tree
plot(output_tree)

# Save the file
dev.off()
install.packages(c("caTools", "rpart", "rpart.plot", "caret", "Boruta", "cvms", "dplyr"))



library(caTools)
library(rpart)
library(rpart.plot)
library(caret)
library(Boruta)
library(cvms)
library(dplyr)

head(iris)

set.seed(42)
sample_split <- sample.split(Y = iris$Species, SplitRatio = 0.75)
train_set <- subset(x = iris, sample_split == TRUE)
test_set <- subset(x = iris, sample_split == FALSE)


model <- rpart(Species ~ ., data = train_set, method = "class")
model
rpart.plot(model)
importances <- varImp(model)
importances <- importances %>% arrange(desc(Overall))
importances

preds <- predict(model, newdata = test_set, type = "class")
preds
confusionMatrix(test_set$Species, preds)
library(cvms)

cm <- confusionMatrix(test_set$Species, preds)
cfm <- as_tibble(cm$table)
plot_confusion_matrix(cfm, target_col = "Reference", prediction_col = "Prediction", counts_col = "n")