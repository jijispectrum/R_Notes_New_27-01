thismatrix <- matrix(c(1,2,3,4,5,6),nrow=3,ncol=2)
thismatrix

thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)
thismatrix 


matrix1 <- matrix(c("123","167","45","1234"), nrow = 2, ncol = 2)
matrix1


thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)

thismatrix[2,]

thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)

thismatrix[,2]

matrix2 <- matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"), nrow = 3, ncol = 3)

matrix2[c(1,2),] 





thismatrix <- matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"), nrow = 3, ncol = 3)

thismatrix[, c(1,2)] 


#cbind

matrix3<- matrix(c("jiji","devesh","Gouri","hari","jijidevesh","jijigomez","anjuanjith","rahul","vinu"),nrow=3,ncol=3)
matrix3
newmatrix <- cbind(matrix3, c("strawberry", "blueberry", "raspberry"))

newmatrix


#rbind()
thismatrix <- matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"), nrow = 3, ncol = 3)

newmatrix <- rbind(thismatrix, c("strawberry", "blueberry", "raspberry"))

# Print the new matrix
newmatrix 


thismatrix <- matrix(c("apple", "banana", "cherry", "orange", "mango", "pineapple"), nrow = 3, ncol =2)

#Remove the first row and the first column
thismatrix <- thismatrix[-c(1), -c(1)]

thismatrix 

matrix3 <- matrix(c("jiji", "devesh", "Gouri", "hari", "jijidevesh", "jijigomez", "anjuanjith", "rahul", "vinu"), nrow = 3, ncol = 3)

matrix3 <- matrix3[-c(1), -c(1)]
matrix3




matrix4 <- matrix(c("apple","orange","mango","guva"),nrow=2,ncol=2)
"mango" %in% matrix4

"cherry" %in% matrix4

thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)

length(thismatrix) 


# Combine matrices
Matrix1 <- matrix(c("apple", "banana", "cherry", "grape"), nrow = 2, ncol = 2)
Matrix2 <- matrix(c("orange", "mango", "pineapple", "watermelon"), nrow = 2, ncol = 2)

# Adding it as a rows
Matrix_Combined <- rbind(Matrix1, Matrix2)
Matrix_Combined

# Adding it as a columns
Matrix_Combined <- cbind(Matrix1, Matrix2)
Matrix_Combined 



