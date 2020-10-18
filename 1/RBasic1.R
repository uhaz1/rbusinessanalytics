## R BASICS ##

x <- 1
y <- 'happy day'

#packages
#install.packages("ggplot2")
library(ggplot2)

#help
?vector
help(vector)

# Use hashtags for comments

### Arithmetic with R ###
# addition
1 + 2
# subtraction
4-3
# multiplication
5*4
# Division
5/2
# Exponents
2^3
#Modulo
5 %% 2
#Order of operations - PEMDAS - Parentheses, Exponents, Multiplication and Division (from left to right), Addition and Subtraction (from left to right).
#http://www.math.wm.edu/~leemis/Rsamples/4-5.pdf
(100 * 2) + (50 / 2)
#200 + 25
#225
### Operators ###
# assign <-
# r base functions : eg. class(), c()
  

#### Variables ####
# Use hashtags for comments
# assigning 100 to variable X
x <- 1200
balance <- 1400

# Let's see the variable!
x
print(x)

bank.balance <- 1000
deposit <- 200

print(bank.balance + deposit)

bank.balance <- bank.balance + deposit

bank.balance
print(bank.balance)

text1 <- "hi"
print(text1)

### Getting help with R ###
# google search, stackoverflow
# R documentation
# Need help with vectors, try help()
# https://www.r-project.org/other-docs.html
# https://cran.r-project.org/doc/manuals/r-release/R-intro.html
help(vector)
?vector
help.search('vector')

#Most R functions have online documentation.
#help(topic) documentation on topic ?topic id.
#help.search("topic") search the help system
#apropos("topic") the names of all objects in the search list matching the regular expression ”topic”
#help.start() start the HTML version of help
#str(a) display the internal structure of an R object
#summary(a) gives a “summary” of a, usually a statistical summary but it is generic meaning it has different operations for different classes of a
#ls() show objects in the search path; specify pat="pat" to search on a pattern
#ls.str() str() for each variable in the search path
#dir() show files in the current directory
#methods(a) shows S3 methods of a
#methods(class=class(a)) lists all the methods to handle objects of class a
#https://cran.r-project.org/doc/contrib/Short-refcard.pdf

### Comparison Operators ###
# Greater than
3 > 4
4 > 3

# Greater than or equal to
4 >= 3
4 >= 4
7 >= 9

# Less than
3 < 4
4 < 3

# Less than or equal to
4 <= 3
4 <= 4
7 <= 9
v1 <- 4
v2 <- 5

v1 < v2
#Equal
3 == 3
3 == 2
#Not Equal
3 != 3
3 != 2

b <- TRUE #FALSE
  
#element-wise comparion of vectors
vec1 <- c(5,3,8)
print(vec1)
vec2 <- c(4,5,9)
print(vec2)
class(vec1)

vec1 > vec2

# compare a number to an entire vector
vec1 < 4
vec1 == 3
vec3 <- c("hi", "there","hello")
print(vec3)
class(vec3)

### R data types ###
#numeric - floating point/decimal and integers
num1 <- 2.2 
class(num1)

num2 <- 5
class(num2)

#Logical - Boolean values (TRUE or T, FALSE or F)
bool1 <- TRUE
print(bool1)
class(bool1)

bool2 <- FALSE
bool2
class(bool2)

#Character - text or string values. need to use quotation (single or double) marks
char1 <- "Basket of apples" #double quotes
print(char1)
class(char1)

char2 <- 'weather forecast' #single quotes works as well
char2
class(char2)


#factor, date,...

#

### Vector Basics ###
# A vector is a simple data structure - 1 dimensional array that can hold character, numberic or logical data elements
# a vector is created using the function c()
#numeric vector
vec1 <- c(3,4,15,16)
print(vec1)
class(vec1)
#character
vec2 <- c('A','B','S')
print(vec2)
class(vec2)
#logical
vec3 <- c(TRUE,FALSE)
print(vec3)
class(vec3)

#you cannot mix data types. if you try, all elements will be forced to a single data type
vec4 <- c(4,'APPLE')
print(vec4)
class(vec4)

#names can be assigned to each element of a vector
vec5 <- c(3,4,15,16)
names(vec5) <- c('Jan','Feb','Mar','Apr')
print(vec5)

### Vector Indexing and Slicing ###
vec1 <- c(3,4,15,16)
vec2 <- c('A','B','S')

#to get an element of a vector using bracket notation
print(vec1[1])
print(vec1[3])
print(vec2[1])
print(vec2[3])

# to get multiple elements of a vector - multiple indexing 
# pass a vector of index positions
print(vec1[c(1,3)])

#slicing- vector[startIndex:stopIndex]
print(vec1[1:3])

#indexing with names
vec5 <- c(3,4,15,16)
names(vec5) <- c('Jan','Feb','Mar','Apr')
print(vec5)
vec5['Jan']
vec5[c('Jan','Mar')]

vec5 > 4

#Compare and select
print(vec5[vec5>4])
vec5 > 4

# assign names to filters
filter <- vec5 > 4
print(vec5[filter])


### Vector Operations ###
#elementwise
vec5 <- c(3,4,15,16)
vec6 <- c(2,3,5,1)

#add elementwise
print(vec5 + vec6)
#subtract elementwise
print(vec5 - vec6)
#multiply elementwise
print(vec5*vec6)
#divide elementwise
print(vec5/vec6)

#using built-in functions on vectors
#sum() - add all elements
sum(vec6)  
#standard deviation
sd(vec6)
#variance
var(vec6)
#maximum element
max(vec6)
#minimum element
min(vec6)
#product of elements
prod(vec6)

#combine vectors
client1 <- c(3,4,15,16)
client2 <- c(2,3,5,1)

vec7 <- c(client1,client2)
vec7
### Print formatting ###
# print()
print("hi there!")
print(vec6)
print(iris) # measurement samples for 3 flower species /datasets

# paste() : paste (..., sep = " ") - add a default space separator
print(paste("hi","there","uh"))
print(paste("hi","there",sep=":"))
paste("hi","there",sep="")
print(paste("hi","there",sep="-"))
# paste0(...) is equivalent to paste(...,sep="") 
paste0("hi","there", ".")


### R Matrices ###
# store data in two dimensions
#v <- c(1,2)
v <- 1:10 #short notation to create a vector with sequence of numbers
print(v)
help(matrix) #help on matrix function
matrix.numbers <- matrix(v,nrow=2)
print(matrix.numbers)

matrix.numbers2 <- matrix(v,byrow=TRUE,nrow=2)
print(matrix.numbers2)

v2 <- 1:8
print(v2)
matrix.sales <- matrix(v2,byrow=TRUE,nrow=2)
print(matrix.sales)

#naming matrices
months <- c('Jan','Feb','Mar','Apr')
client.names <- c('Client1', 'Client2')

colnames(matrix.sales) <- months       #name columns using the colnames() function
rownames(matrix.sales) <- client.names #name rows using the rownames() function

print(matrix.sales)


