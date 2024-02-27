# loading tidyverse package    
library(tidyverse)
# creating a tibble named sample_tibble 
sample_tibble <- as_tibble(CO2) 
print(sample_tibble) 




library(tidyverse) 
name <- c("surya", "sai", "Nihith", "prakash", "vikas", "mayur") 
marks_in_Math <- c(91, 85, 92, 89, 90, 93) 
marks_in_Java <- c(89, 91, 88, 91, 89, 87) 
Fav_color <- c("Pink", "Red", "Yellow", "Green", "White", "Blue") 
students <- tibble(name, marks_in_Math, marks_in_Java, Fav_color) 
print(students) 


library(tidyverse) 
name <- c("surya", "sai", "Nihith", "prakash", "vikas", "mayur") 
marks_in_Math <- c(91, 90, 91, 85, 90, 92) 
marks_in_Java <- c(91, 91, 92, 91, 89, 93) 
Fav_color <- c("Pink", "Red", "Yellow", "Green", "White", "Blue") 

students <- tibble(name, marks_in_Math, marks_in_Java, Fav_color) 
students$Fav_color 
students$marks_in_Math 



library(tidyverse) 
name <- c("surya", "sai", "Nihith", "prakash", "vikas", "mayur") 
marks_in_Math <- c(91, 90, 91, 85, 90, 92) 
marks_in_Java <- c(91, 91, 92, 91, 89, 93) 
Fav_color <- c("Pink", "Red", "Yellow", "Green", "White", "Blue") 

students <- tibble(name, marks_in_Math, marks_in_Java, Fav_color) 
students$Fav_color 
students[["name"]] 
students[["marks_in_Math"]] 


library(tidyverse) 
name <- c("surya", "sai", "Nihith", "prakash", "vikas", "mayur") 
marks_in_Math <- c(91, 90, 91, 85, 90, 92) 
marks_in_Java <- c(91, 91, 92, 91, 89, 93) 
Fav_color <- c("Pink", "Red", "Yellow", "Green", "White", "Blue") 

students <- tibble(name, marks_in_Math, marks_in_Java, Fav_color) 
filter_students<- filter(students,marks_in_Java>=90)
print(filter_students) 




library(tidyverse) 
name <- c("surya", "sai", "Nihith", "prakash", "vikas", "mayur") 
marks_in_Math <- c(91, 90, 91, 85, 90, 92) 
marks_in_Java <- c(91, 91, 92, 91, 89, 93) 
Fav_color <- c("Pink", "Red", "Yellow", "Green", "White", "Blue") 

data<-data.frame(name,marks_in_Math,marks_in_Java,Fav_color)
data
tibble_data<- as_tibble(data)
tibble_data
