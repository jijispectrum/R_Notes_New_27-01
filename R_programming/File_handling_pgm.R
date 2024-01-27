# Define your data
data <- c("John,25,85", "Alice,30,92", "Bob,22,78")

# Define a file path (change it to your desired path)
file_path <- "C:/Users/Cyber Security/Desktop/R_programming/sample.txt"

# Write data to a text file
cat(data, file = file_path, sep = "\n", append = FALSE)

cat("Data written to file successfully.\n")



# Define the file path
file_path <- "C:/Users/Cyber Security/Desktop/R_programming/sample.txt"

# Read the content of the text file line by line
file_content <- readLines(file_path)

# Print the content
cat("File Content:\n")
cat(file_content, sep = "\n")





file.create("GFG.txt")
write.table(x = iris[1:10, ],  
            file = "GFG.txt") 






# Reading txt file 
new.iris <- read.table(file = "GFG.txt") 

# Print 
print(new.iris) 

list.files() 








