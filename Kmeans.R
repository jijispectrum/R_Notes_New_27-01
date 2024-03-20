# Load the USArrests dataset
data("USArrests")

# Scale the data
df <- scale(USArrests)

# View the first 3 rows of the scaled data
head(df, n = 3)

# Perform k-means clustering
# df: The data matrix
# centers: The number of clusters
# iter.max: The maximum number of iterations
# nstart: The number of random starts to avoid local minima
result <- kmeans(df, centers = 3, iter.max = 10, nstart = 1)

# View the clustering result
print(result)
install.packages("factoextra")
library(factoextra)# Compute k-means with k = 4
set.seed(123)
km.res <- kmeans(df, 4, nstart = 25)
print(km.res)
aggregate(USArrests, by=list(cluster=km.res$cluster), mean)


# Load the required packages
library(factoextra)

# Compute k-means with k = 4
set.seed(123)
km.res <- kmeans(df, 4, nstart = 25)

# Plot the clustering result
fviz_cluster(km.res, data = df, geom = "point")




dd <- cbind(USArrests, cluster = km.res$cluster)
head(dd)
# Cluster number for each of the observations
km.res$cluster
# Cluster size
km.res$size

# Cluster means
km.res$centers





