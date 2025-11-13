#AIM:

#Perform and demonstrate data type conversions in R programming.  
#a) Create a vector called monster, storing the values T, T, T, F, T, T, T, T, T, T.  
#b) Create the character vector yugioh vector. Check the type of yugioh.  
#c) Combine the monster and yugioh vector. Check its type.  
#d) Create atk numerical vector and combine atk and monster into a vector called coerce.check. Check its type and print it, if you need.
#e) Explicit Type Conversion Using as.*() Functions  
#f) Demonstrate label encoding/one-hot encoding in Python.  

#SOLUTION

#a)Create a vector called monster, storing the values T, T, T, F, T, T, T, T, T, T.
monster<-c(TRUE,TRUE,TRUE,FALSE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE)
print(monster)

#b)Create the character vector yugioh vector.Check the type of yugioh. 
yugioh<-c("Dark","Dragon","Spell","Trap","Light")
typeof(yugioh)   

#c)Combine the monster and yugioh vector.Check its type.
combined<-c(monster, yugioh)
typeof(combined)

#d)Create atk numerical vector and combine atk and monster into a vector called coerce.check.
 #Check its type and print it, if you need.   
atk<-c(1000, 2500, 1500)
coerce<-c(atk, monster)
typeof(coerce)
print(coerce)

#e)Explicit Type Conversion Using as.*() Functions
monster <- c(TRUE, TRUE, TRUE, FALSE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE)
yugioh <- c("Dark", "Dragon", "Spell", "Trap", "Light")
atk <- c(1000, 2500, 1500)

num_monster <- as.numeric(monster)
print("Logical to Numeric:")
print(num_monster)
                                                                                                                                                                                                                                                           
fact_yugioh <- as.factor(yugioh)
print("Character to Factor:")
print(fact_yugioh)
typeof(fact_yugioh)

char_yugioh <- as.character(fact_yugioh)
print("Factor to Character:")
print(char_yugioh)

log_atk <- as.logical(atk)
print("Numeric to Logical:")
print(log_atk)







                                                                                                                                                                                                                                                                                                                                                                                                                            
