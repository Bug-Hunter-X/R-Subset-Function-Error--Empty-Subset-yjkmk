```r
# This improved code checks if the subset is empty before proceeding.
# It uses `nrow` to check the number of rows, providing a more robust solution

data <- data.frame(A = 1:5, B = letters[1:5])

subset_data <- subset(data, A > 10)

if (nrow(subset_data) > 0) {
  print(subset_data)
} else {
  print("Subset is empty. No rows satisfy the condition.")
}

#Alternative using filter from dplyr package
library(dplyr)

alternative_subset <- data %>% filter(A > 10)

if (nrow(alternative_subset) > 0) {
  print(alternative_subset)
} else {
  print("Subset is empty. No rows satisfy the condition.")
}
```