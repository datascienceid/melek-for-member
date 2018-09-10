# Variable Assignments
A <- 10
B = 2
benar <- TRUE
hari_ini <- Sys.Date()
nama <- "Andreas"

# Data type
class(A)
class(benar)
class(hari_ini)
class(nama)

#Operations
A + B
A - B
A * B
A / B
A %% B
A %/% B
A ** B
A ^ B


# conditional structures
x = 5

#1
if (x < 5) {
  print("Bad")
}else{
  print("Good") 
}

#2
if (x < 5) {
  print("Bad")
}else if (x < 8) {
  print("Enough")
}else{
  print("Good") 
}

#3
ifelse(x > 5, "good", "bad")


# Loop
#1
for (i in 1:10) {
  print(i)
}

print(1:10)

#2
fruits <- c("Apple", "Orange", "Banana")
for (i in fruits) {
  print(i)
}

#3
i <- 1
while (i <= length(fruits)) {
  print(fruits[i])
  i <- i + 1
}


# function
#1
hello <- function(){
  print("Hello World")
}

#2
hello_name <- function(name) {
  print(paste("Hello", name))
  print(sprintf("Hello %s", name))
}

hello_name("Andre")

#3
check <- function(x){
  if (x < 5) {
    print("Parah Abis")
  } else if (x < 8) {
    print("Lumayan")
  } else {
    print("Pinter abes") 
  }
}

check(9)

#4
call_sum <- function(x){
  return(sum(x))
}

var = call_sum(c(1,2,3,4,5))
var + 2