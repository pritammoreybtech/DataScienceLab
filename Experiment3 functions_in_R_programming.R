#Aim:

#To study useful functions in R Programming  
#a) Find what arguments the sample () function takes.  
#b) Demonstrate any real world scenario by writing the code using sample() function.  
#c) Find out what arguments the median function takes. While calling the median for the lvl object, try setting the na.rm = argument to TRUE.   
#d) Does R return a different value from the one when na.rm = is set to FALSE (NB: the default value for the na.rm = argument is FALSE; this means that whenever we do not explicitly specify that it must be set to TRUE, it is set to FALSE)?   
#e) How which() function is useful?  
#f) Creates a frequency table of categorical data.  
#g) Demonstrate the utility of subset() function.   
#h) Demonstrate the utility ifelse() function.  
#i) Apply ggplot() function on the iris dataset.  

#SOLUTION:

#a)Find what arguments the sample() function takes
args(sample)

#b)Demonstrate any real world scenario by writing the code using sample() function.
#Scenario:Selecting 3 random students from a class list.
students<-c("John", "Natasha", "Renuka", "Sara", "David")
sample(students,size=3,replace=FALSE)

#c)Find out what arguments the median function takes. 
#While calling the median for the lvl object,try setting na.rm=argument to TRUE. 
args(median)
x<-c(1,3,NA,5,7,8,NA)
median(x,na.rm=TRUE)

#d)Does R return a different value from the one when na.rm = is set to FALSE
x1<-c(1,3,NA,5,7,8,NA)
median(x1,na.rm=FALSE)
#Yes,R returns a different value when na.rm = TRUE compared to when na.rm = FALSE.
#When na.rm = FALSE (default), the result is NA if any NA exists in the vector.

#e)How which() function is useful?
marks<-c(85, 33, 76, 29, 90, 40, 38)
fail<-which(marks < 40)
#index for failed ones
fail

#f)Creates a frequency table of categorical data.
#Fruits in a basket
basket<-c("Apple", "Banana", "Orange", "Apple", "Mango", 
          "Banana", "Apple", "Orange", "Banana", "Mango", "Banana")
fruit_freq<-table(basket)
fruit_freq

#g)Demonstrate the utility of subset() function. 
#Student data
students <- data.frame(
  Name = c("Anjali", "Ravi", "Meena", "Arjun", "Tara"),
  Marks = c(85, 33, 76, 29, 90),
  Gender = c("F", "M", "F", "M", "F")
)
passed_students<-subset(students,Marks>40)
passed_students

#h)Demonstrate the utility ifelse() function.
#Student marks
marks<-c(85, 33, 76, 29, 90, 40)
#Passing marks=40
result<-ifelse(marks >= 40, "Pass", "Fail")
data.frame(Marks=marks,Result=result)

#i)Apply ggplot() function on the iris dataset.
install.packages("ggplot2")
library(ggplot2)

ggplot(iris, aes(x=Species,y=Petal.Length,fill=Species))+
  geom_boxplot() +
  labs(title="Petal Length Distribution by Species",
       x="Species",y="Petal Length")

ggplot(iris, aes(x=Sepal.Length,fill=Species))+
  geom_histogram(binwidth=0.3, position ="dodge") +
  labs(title = "Sepal Length Distribution by Species",
       x = "Sepal Length",
       y = "Count")

ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point(size = 2) +
  labs(title = "Sepal Dimensions by Species",
       x = "Sepal Length",
       y = "Sepal Width") 







