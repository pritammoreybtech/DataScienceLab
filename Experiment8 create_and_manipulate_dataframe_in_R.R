#AIM:

#To create and manipulate a data frame in R, understand the use of factors for categorical variables, demonstrate methods of accessing variables, and analyze categorical differences using summary statistics and visualization  
#Create a data frame that looks like this:  
#Months old        Size Weight Breed  
#Flipper         53      medium     21   dog  
#Bromley         19       small      8   dog  
#Nox             34      medium      4   cat  
#Orion           41       large      6   cat  
#Dagger          84       small      7   dog  
#Zizi           140 extra small      2   cat  
#Carrie         109       large     36   dog  
#a) Can you think of a way to invert the values for breed?  
#b) Hint: if you haven't set the stringsAsFactors argument to FALSE, all your character variables will be recorded as factors. Edit the levels of the Breed variable to complete the task.  
#c)You can access a specific variable in a data frame like you would in a matrix.  
#d) Add a new column Age_in_years derived from Months_old / 12.  
#e) Generate a frequency table of Breed vs Size.  
#f) Compute the average Weight grouped by Breed using aggregate().  
#g) Visualize the differences in Weight between breeds using a boxplot.   

#SOLUTION:

# --- Create the data frame ---
pets <- data.frame(
  Name = c("Flipper", "Bromley", "Nox", "Orion", "Dagger", "Zizi", "Carrie"),
  Months_old = c(53, 19, 34, 41, 84, 140, 109),
  Size = c("medium", "small", "medium", "large", "small", "extra small", "large"),
  Weight = c(21, 8, 4, 6, 7, 2, 36),
  Breed = c("dog", "dog", "cat", "cat", "dog", "cat", "dog")
)

print("Original Data Frame:")
print(pets)

# ---------------------------------------------------------
# (a) Invert the values for Breed
# ---------------------------------------------------------
# i.e., change 'dog' → 'cat' and 'cat' → 'dog'
# (b) Use factor level editing

# Ensure Breed is a factor
pets$Breed <- as.factor(pets$Breed)
# Swap the levels
levels(pets$Breed) <- rev(levels(pets$Breed))


print("After Inverting Breed:")
print(pets)

# ---------------------------------------------------------
# (c) Access a specific variable (like a column)
# ---------------------------------------------------------
print("Accessing the 'Weight' variable:")
print(pets$Weight)   # or pets[, "Weight"]

# ---------------------------------------------------------
# (d) Add a new column Age_in_years (Months_old / 12)
# ---------------------------------------------------------
pets$Age_in_years <- pets$Months_old / 12
print("Data Frame with Age_in_years:")
print(pets)

# ---------------------------------------------------------
# (e) Frequency table of Breed vs Size
# ---------------------------------------------------------
print("Frequency Table of Breed vs Size:")
print(table(pets$Breed, pets$Size))

# ---------------------------------------------------------
# (f) Average Weight grouped by Breed using aggregate()
# ---------------------------------------------------------
avg_weight <- aggregate(Weight ~ Breed, data = pets, FUN = mean)
print("Average Weight by Breed:")
print(avg_weight)

# ---------------------------------------------------------
# (g) Boxplot to visualize weight differences between breeds
# ---------------------------------------------------------
boxplot(Weight ~ Breed, data = pets,
        col = c("lightblue", "lightpink"),
        main = "Weight Comparison Between Breeds",
        xlab = "Breed",

        ylab = "Weight")
