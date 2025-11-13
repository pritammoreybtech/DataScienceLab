#AIM:

#To load and explore data in R using tibbles, perform descriptive analysis, fit a linear regression model, visualize the regression line, and evaluate model performance using statistical metrics such as R-squared and p-values. 
#Load the libraries you will need in R programming  
#a)Load the data as a tibble (readr has a function that does this directly)  
#b)Get the descriptives for your data so you can understand what you're dealing with a little better   
#c) Explore the data and see if there are any interesting trends to consider   
#d) Define the linear model   
#e) Plot the regression line   
#f) Print the results of the model   
#g) How many observations was the regression run on?   
#h) What is the R-squared of this regression? What does it tell you?  
#i) Determine if size is a statistically significant predictor of price.   
#j) What is the regression equation associated with this regression model?   

#SOLUTION:

library(tidyverse)
library(readr)

# --- Data Definition ---
house_data <- tibble(
  size = c(1500, 1650, 1800, 1400, 2000, 2150, 1750, 1200, 2500, 1900, 1350, 2200, 1600, 2400, 1450),
  price = c(250000, 285000, 310000, 225000, 360000, 390000, 305000, 195000, 450000, 335000, 215000, 410000, 275000, 430000, 230000)
)
# Use this line if reading from file:
# house_data <- read_csv("C:/Users/RENUKA/Downloads/house_Data.csv")
# -------------------------

# b) Descriptive Statistics
cat("Descriptive Statistics:\n")
print(summary(house_data))

# c) Data Exploration
cat("\nData Glimpse:\n")
print(glimpse(house_data))
print(head(house_data))

# Scatter Plot
ggplot(house_data, aes(x = size, y = price)) +
  geom_point() + 
  labs(title = "Scatter Plot: House Price vs. Size", x = "Size (Sq. Footage)", y = "Price (USD)") +
  theme_minimal()

# d) Define the linear model
model <- lm(price ~ size, data = house_data)

# e) Plot the regression line
ggplot(house_data, aes(x = size, y = price)) +
  geom_point() +
  geom_smooth(method = "lm") + 
  labs(title = "Linear Regression: Price vs. Size", x = "Size (Sq. Footage)", y = "Price (USD)") 

# f) Print the results of the model
cat("\nModel Summary/Results:\n")
model_summary <- summary(model)
print(model_summary)

# g) Number of Observations
cat("\nNumber of Observations (N):\n")
N_obs <- nobs(model) 
cat(N_obs, "\n")

# h) R-squared Value and Interpretation
cat("\nR-squared Value:\n")
r_squared <- model_summary$r.squared
cat(round(r_squared, 4), "\n")

# i) Statistical Significance of 'size'
cat("\nP-value for 'size' and Significance:\n")
p_value_size <- model_summary$coefficients["size", "Pr(>|t|)"]
if (p_value_size < 0.05) {
  cat("Conclusion: Statistically significant (p < 0.05).\n")
} else {
  cat("Conclusion: Not statistically significant (p > 0.05).\n")
}
# j) Regression Equation
# Regression Equation (using indexes)
intercept <- model_summary$coefficients[1, 1]
slope_size <- model_summary$coefficients[2, 1]

cat("Regression Equation:\n")
cat("Price =", round(intercept, 2), "+ (", round(slope_size, 4), " * Size)\n")







