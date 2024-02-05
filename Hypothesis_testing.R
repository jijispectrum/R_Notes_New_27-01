data <- c(12, 10, 15, 14, 18, 20, 11, 9, 17, 13)
t.test(data, mu = 15) 

group1 <- c(12, 10, 15, 14, 18, 20, 11, 9, 17, 13)
group2 <- c(18, 17, 19, 20, 22, 21, 25, 28, 29, 24)
t.test(group1, group2)

# Data
pre_treatment <- c(12, 10, 15, 14, 18, 20, 11, 9, 17, 13)
post_treatment <- c(14, 12, 17, 16, 20, 22, 13, 11, 19, 15)

# Hypothesis test
t.test(pre_treatment, post_treatment, paired = TRUE)
data <- matrix(c(10, 20, 30, 40), nrow = 2, ncol = 2, byrow = TRUE)

# Hypothesis test
chisq.test(data)

#anova

# Check if dplyr is installed
if (!requireNamespace("dplyr", quietly = TRUE)) {
  # Install dplyr if not installed
  install.packages("dplyr")
}

# Load the dplyr package
library(dplyr)

# Load necessary library
library(dplyr)

# Create sample data
group1 <- c(5, 8, 6, 7, 5)
group2 <- c(3, 2, 4, 6, 4)
group3 <- c(9, 7, 8, 10, 11)

# Combine the data into a data frame
data <- data.frame(scores = c(group1, group2, group3),
                   group = factor(rep(
                     c("Group1", "Group2", "Group3"),
                     times = c(length(group1), length(group2), length(group3))
                   )))

# Perform one-way ANOVA
anova_result <- aov(scores ~ group, data = data)

# Show the summary of the ANOVA result
summary(anova_result)