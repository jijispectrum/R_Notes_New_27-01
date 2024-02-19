install.packages("RMySQL")
library(RMySQL)

mysqlconnection = dbConnect(MySQL(), user = 'root', password = 'root123', dbname = 'sys',
                            host = '127.0.0.1')

# List the tables available in this database.
dbListTables(mysqlconnection)



library(RMySQL)

# Replace these values with your MySQL database connection details
user <- "root"
password <- "root123"
dbname <- "sys"
host <- "127.0.0.1"

# Establish a connection to the MySQL database
con <- dbConnect(MySQL(), user = user, password = password, dbname = dbname, host = host)

# Check if the connection is successful
if (dbIsValid(con)) {
  cat("Connected to the MySQL database.\n")
} else {
  cat("Failed to connect to the MySQL database.\n")
}

# Execute a query and fetch results
query <- "SELECT * FROM customer"
result <- dbGetQuery(con, query)

# Print the result
print(result)

# Close the result set
dbClearResult(result)

# Don't forget to close the connection when you are done
dbDisconnect(con)

# Correct way to create a data frame
new_data <- data.frame(
  StudentsID = 4,
  Mark = 40
)

# Print the data frame
print(new_data)



# Create the connection object to the database where we want to create the table.
mysqlconnection = dbConnect(MySQL(), user = 'root', password = 'root123', dbname = 'sys', 
                            host = '127.0.0.1')

# Use the R data frame "mtcars" to create the table in MySql.
# All the rows of mtcars are taken inot MySql.
dbWriteTable(mysqlconnection, "mtcars", mtcars[, ], overwrite = TRUE)





dbSendQuery(mysqlconnection,
            "insert into mtcars(row_names, mpg, cyl, disp, hp, drat, wt, qsec, vs, am, gear, carb)
   values('New Mazda RX4 Wag', 21, 6, 168.5, 110, 3.9, 2.875, 17.02, 0, 1, 4, 4)"
)


query <- "SELECT * FROM students"
result <- dbGetQuery(con, query)

# Print the result
print(result)


# Load the RMySQL package
library(RMySQL)

# Create the connection object to the database where we want to create the table
mysqlconnection <- dbConnect(MySQL(), user = 'root', password = 'root123', dbname = 'sys', host = '127.0.0.1')

# Use the R data frame "mtcars" to create the table in MySql.
# All the rows of mtcars are taken into MySql.
dbWriteTable(mysqlconnection, "mtcars", mtcars, overwrite = TRUE)

# Close the database connection
dbDisconnect(mysqlconnection)

# Insert a new row into the "mtcars" table
dbExecute(mysqlconnection, "INSERT INTO mtcars VALUES (999, 'NewCar', 20, 30, 40, 50, 60, 70, 80, 90, 100)")

# OR

# Load the RMySQL package
library(RMySQL)

# Create the connection object to the database where the table exists
mysqlconnection <- dbConnect(MySQL(), user = 'root', password = 'root123', dbname = 'sys', host = '127.0.0.1')


# Drop the column "row_names" from the table
query <- "ALTER TABLE mtcars DROP COLUMN row_names"
dbExecute(mysqlconnection, query)

# Close the database connection
dbDisconnect(mysqlconnection)

# Insert a new row into the "mtcars" table
dbExecute(mysqlconnection, "INSERT INTO mtcars VALUES (999, 'NewCar', 20, 30, 40, 50, 60, 70, 80, 90, 100)")

# OR

# Using dbWriteTable for inserting new rows
new_data <- data.frame(
  mpg = 25,
  cyl = 4,
  disp = 120,
  hp = 80,
  drat = 4.0,
  wt = 2.5,
  qsec = 18.0,
  vs = 1,
  am = 1,
  gear = 4,
  carb = 2
)

dbWriteTable(mysqlconnection, "mtcars", new_data, append = TRUE)


# Check the structure of the connection object
str(mysqlconnection)


install.packages("RMySQL", dependencies=TRUE)
# Restart R session
restartSession()


dbSendQuery(mysqlconnection,
            "insert into mtcars( mpg, cyl, disp, hp, drat, wt, qsec, vs, am, gear, carb)
   values( 21, 6, 168.5, 110, 3.9, 2.875, 17.02, 0, 1, 4, 4)"
)

dbSendQuery(mysqlconnection,
            "INSERT INTO mtcars(mpg, cyl, disp, hp, drat, wt, qsec, vs, am, gear, carb)
             VALUES 
             (21, 6, 168.5, 110, 3.9, 2.875, 17.02, 0, 1, 4, 4),
             (22, 4, 120.3, 90, 3.7, 2.46, 20.01, 1, 0, 3, 1),
             (23, 8, 360.7, 175, 3.15, 3.44, 17.02, 0, 0, 3, 2)")

# Close the database connection
dbDisconnect(mysqlconnection)


#groupby
library(RMySQL)

# Create the connection object to the MySQL database
mysqlconnection <- dbConnect(MySQL(), user = 'root', password = 'root123', dbname = 'sys', host = '127.0.0.1')

# Example: Perform a GROUP BY operation on the "mtcars" table
query <- "SELECT cyl, AVG(mpg) AS avg_mpg, COUNT(*) AS num_cars
          FROM mtcars
          GROUP BY cyl"

# Execute the query and fetch the result
result <- dbGetQuery(mysqlconnection, query)

# Display the result
print(result)

# Close the database connection
dbDisconnect(mysqlconnection)


#describe

# Load the RMySQL package
library(RMySQL)

# Create the connection object to the MySQL database
mysqlconnection <- dbConnect(MySQL(), user = 'root', password = 'root123', dbname = 'sys', host = '127.0.0.1')

# Describe the structure of the "mtcars" table
query <- "DESCRIBE mtcars"
result <- dbGetQuery(mysqlconnection, query)

# Display the result
print(result)

# Close the database connection
dbDisconnect(mysqlconnection)

#orderby

# Load the RMySQL package
library(RMySQL)

# Create the connection object to the MySQL database
mysqlconnection <- dbConnect(MySQL(), user = 'root', password = 'root123', dbname = 'sys', host = '127.0.0.1')

# Example: Retrieve data from the "mtcars" table and order it by the "mpg" column in descending order
query <- "SELECT * FROM mtcars ORDER BY mpg DESC"
result <- dbGetQuery(mysqlconnection, query)

# Display the result
print(result)

# Close the database connection
dbDisconnect(mysqlconnection)


# Load the RMySQL package
library(RMySQL)

# Create the connection object to the MySQL database
mysqlconnection <- dbConnect(MySQL(), user = 'root', password = 'root123', dbname = 'sys', host = '127.0.0.1')

# Example: Retrieve aggregated data from the "mtcars" table
query <- "SELECT cyl, AVG(mpg) AS avg_mpg, SUM(hp) AS total_hp
          FROM mtcars
          GROUP BY cyl
          ORDER BY cyl"
result <- dbGetQuery(mysqlconnection, query)

# Display the result
print(result)

# Close the database connection
dbDisconnect(mysqlconnection)




