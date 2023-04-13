#!/usr/bin/Rscript

# Function to check if a number is prime
is_prime <- function(n) {
  if (n <= 1) {
      return(FALSE)
  }
  for (i in 2:sqrt(n)) {
    if (n %% i == 0) {
      return(FALSE)
    }
   }
   return(TRUE)
}

# Function to find the largest prime factor of a number
largest_prime_factor <- function(n) {
  if (n <= 1) {
    return(NULL)
  }

max_prime <- 1
for (i in 2:n) {
  if (n %% i == 0) {
    if (is_prime(i)) {
      max_prime <- i
    }
  }
}
return(max_prime)     
}

# Read input number
# cat("Please enter a natural number: ")
args <- commandArgs(trailingOnly = TRUE)             
input_number <- as.integer(args[1])

if (is.na(input_number) || input_number < 1) {
  cat(input_number, "is not a natural number\n")
} else {
  # Find and print the largest prime factor
  largest_factor <- largest_prime_factor(input_number)
  cat("The largest prime factor of", input_number, "is:", largest_factor, "\n")
}

