x <- 10.5   # numeric
y <- 10L    # integer
z <- 1i     # complex 

x
y
z
class(x)
class(y)
class(z)

#type conversion

#ou can convert from one type to another with the following functions:

#as.numeric()
#as.integer()
#as.complex()

x <- 1L # integer
y <- 2 # numeric
x
y
a <- as.numeric(x)

b <- as.integer(y)

a
b
class(a)
class(b)
