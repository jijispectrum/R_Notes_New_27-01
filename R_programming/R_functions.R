my_function <- function(){
  print("hello world")
}

myfunction<- function(){
  print('hello jiji are you fine')
}

myfunction()

my_function<-function(fname){
  paste(fname,"jiji")

}

my_function("peter")
my_function('lois')
my_function('stewie')


my_function <- function(fname, lname) {
  paste(fname, lname)
}

my_function("Peter", "Griffin") 




my_function <- function(fname, lname) {
  paste(fname, lname)
}

my_function("Peter")


my_function <- function(country = "Norway") {
  paste("I am from", country)
}

my_function("Sweden")
my_function("India")
my_function() # will get the default value, which is Norway
my_function("USA") 

my_function <- function(x) {
  return (5 * x)
}

print(my_function(3))
print(my_function(5))
print(my_function(9)) 



Nested_function <- function(x, y) {
  a <- x + y
  return(a)
}

Nested_function(Nested_function(2,2), Nested_function(3,3)) 


Outer_func <- function(x) {
  Inner_func <- function(y) {
    a <- x + y
    return(a)
  }
  return (Inner_func)
}
output <- Outer_func(3) # To call the Outer_func
output(5) 


