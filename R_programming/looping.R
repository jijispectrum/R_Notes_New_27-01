#looping


# R Program to demonstrate
# the use of for loop
for (i in 1: 4)
{
  print(i ^ 2)
}





# R Program to demonstrate the use of
# for loop along with concatenate
for (i in c(-8, 9, 11, 45))
{
  print(i)
}





# R Program to demonstrate the use of 
# nested for loop
for (i in 1:3)
{
  for (j in 1:i)
  {
    print(i * j)
  }
}



# R Program to demonstrate the use of 
# break in for loop
for (i in c(3, 6, 23, 19, 0, 21))
{
  if (i == 0)
  {
    break
  }
  print(i)
}
print("Outside Loop")




for (i in c(3, 6, 23, 19, 0, 21))
{
  if (i == 0)
  {
    next
  }
  print(i)
}
print('Outside Loop')






