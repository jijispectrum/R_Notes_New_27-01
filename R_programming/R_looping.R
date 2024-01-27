a <- 33
b <- 200

if (b > a) {
  print("b is greater than a")
} 

x<- 78
y<- 12

if (y < x) {
   print("b is less than a")
}


a <- 33
b <- 33

if (b > a) {
  print("b is greater than a")
} else if (a == b) {
  print ("a and b are equal")
}




p <- 25
q <- 60

if (p<q) {
  print("p is less than q")
} else if (x==y){
  print("a and b are equal")
}



a <- 200
b <- 33

if (b > a) {
  print("b is greater than a")
} else if (a == b) {
  print("a and b are equal")
} else {
  print("a is greater than b")
} 


a <- 200
b <- 33

if (b > a) {
  print("b is greater than a")
} else {
  print("b is not greater than a")
} 




x <- 41

if (x > 10) {
  print("Above ten")
  if (x > 20) {
    print("and also above 20!")
  } else {
    print("but not above 20.")
  }
} else {
  print("below 10.")
} 


#while loop

i <- 1
while (i<8){
  print(i)
  i<-i+1
  if(i==4){
    break
  }
}

#for loops

for (x in 1:10) {
  print(x)
} 


fruits <- list("apple", "banana", "cherry")

for (x in fruits) {
  print(x)
}



dice <- c(1, 2, 3, 4, 5, 6)

for (x in dice) {
  print(x)
} 



fruits <- list("apple", "banana", "cherry")

for (x in fruits) {
  if (x == "cherry") {
    break
  }
  print(x)
} 




fruits <- list("apple", "banana", "cherry")

for (x in fruits) {
  if (x == "banana") {
    next
  }
  print(x)
} 


dice <- 1:6

for(x in dice) {
  if (x == 6) {
    print(paste("The dice number is", x, "Yahtzee!"))
  } else {
    print(paste("The dice number is", x, "Not Yahtzee"))
  }
}


adj <- list("red", "big", "tasty")

fruits <- list("apple", "banana", "cherry")
for (x in adj) {
  for (y in fruits) {
    print(paste(x, y))
  }
} 


