# Age vector
age <- c(19,20,21,22,23,24,24,26,27)

# Salary vector
salary <- c(10000,20000,30000,40000,
            50000,60000,70000,80000,90000)

# Data frame created using age and salary
df <- data.frame( "Age" = age,
                  "Salary" = salary,
                  stringsAsFactors = FALSE)
df
# standardization

data <- data.frame(Age = rnorm(500, 50, 8),
                   Weight = rnorm(500, 80, 10))
data <- as.data.frame(sapply(df, function(x) 
  (x-mean(x))/sd(x)))
data
#normalization
data2 <- data.frame(Age = rnorm(500, 50, 8),
                    Weight = rnorm(500, 80, 10))
data2 <- as.data.frame(sapply(df, function(x) 
  (x-min(x))/(max(x)-min(x))))
data2



# Importing Library
library(caret)

# Standardisation:
data1.pre <- preProcess(df, method=c("center", "scale"))
data1<- predict(data1.pre, df)
data1




# Normalisation:
data2.pre <- preProcess(df, method="range")
data2 <- predict(data2.pre, df)
data2
