# a) Load the sample data (example in kg)
weights_before <- c(85, 90, 78, 92, 88, 95, 100, 76, 84, 89)
weights_after  <- c(80, 85, 74, 86, 84, 91, 95, 72, 80, 84)

# b) Convert to weight loss (in kg)
weight_loss <- weights_before - weights_after
print("Weight loss data (kg):")
print(weight_loss)

# c) State null hypothesis
# H0: mean weight loss = 0  (program has no effect)
# H1: mean weight loss > 0  (program works and people lost weight)

# d) Perform one-sample t-test
t_test_result <- t.test(weight_loss, mu = 0, alternative = "greater")
print("===== t-test Result =====")
print(t_test_result)

# e) Extract test statistic and decision
t_value <- t_test_result$statistic
p_value <- t_test_result$p.value
cat("t-test statistic (t-value):", round(t_value, 3), "\n")
cat("p-value:", round(p_value, 4), "\n")

if (p_value < 0.05) {
  cat("Conclusion: Reject H0 – Program is effective.\n")
} else {
  cat("Conclusion: Fail to reject H0 – No significant evidence program works.\n")
}