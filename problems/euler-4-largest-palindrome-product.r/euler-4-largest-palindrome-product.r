#!/usr/bin/Rscript

args <- c(commandArgs(trailingOnly = TRUE))
n<- strtoi(args[1])


max_num = 10 ** n - 1
min_num = 10 ** (n - 1) - 1

largest_palindrome = -1
i = max_num
while (i > min_num && largest_palindrome < i * max_num) {
  j = max_num
  while (j > min_num){
    p = i * j
    str_p = toString(p)
    str_split <- strsplit(str_p, NULL)[[1]]
    reversed_string <- paste(rev(str_split), collapse="")
    
    if (p > largest_palindrome && str_p == reversed_string){
      largest_palindrome = p
      break } else if (largest_palindrome > p){
        break
      }
    j = j - 1 }
  i = i - 1
  
}
print(largest_palindrome)