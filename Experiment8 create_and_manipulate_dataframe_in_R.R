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