#Create a vector x storing the sequence 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20.
x<-10:20
print(x)

#a) Add 2 to it. Save the result into a variable called y.
y<-x+2
print(y)

#b) Multiply y by 3. Save that into a variable called z.
z<-y*3
print(z)

#c) Subtract 6 from z and divide the result by 3.
#Save what you get into a variable called answer.
#d) Print your answer variable.
result<-(z-6)/3
print(result)

#e)Try to do the entire operation in a single line of code. 
one_line=((((x)+2)*3-6 )/3)
print(one_line)

#f)What do you need to do to get the same result?
#To get the same result,we need to respect operator precedence in a single line by using parentheses properly

#g)Do you notice anything about the operations? Do they follow a specific order; how are they carried out?
#Yes, operations follow a specific order—R uses standard precedence rules: 
#parentheses first, then multiplication/division, then addition/subtraction.

#h)Create the following vectors in R using 
#(i)1, 1.5, 2, 2.5, …..,12 
print(seq(1,12,0.5))
#(ii)1, 8, 27, 64,……,1000
print(seq(1,10)^3)

#i)Write a R program to count the specific value in a given vector.
target_value<-12
my_vector<-c(12,4,5,6,8,12,5)
count<-sum(my_vector==value)
cat("The value",target_value,"occurs",count,"times in the vector.\n")

#j)Write a R program to find common elements from multiple vectors.
a<-c(20,3,4,5,7)
b<-c(3,5,6,8,7,20)
d<-c(23,4,6,7,20)
print(intersect(intersect(a,b),d))

#k)Create the vectors in R Programming (1,2,3,...,19,20,19,18,...,2,1)
v<-c(1:20, 19:1)
print(v)

#l)Check for presence of the word "data"
quotes <- c("Data is the new oil", "Big data means big responsibility", "Clean data is gold")
contains_data <- grepl("data", quotes, ignore.case = TRUE)
print(contains_data)



