#!/usr/bin/Rscript

args <- c(commandArgs(trailingOnly=TRUE))
x <- strtoi(args[1])

a <- rep(2:x)
b <- rep(2:x)

powers <- c()

for (n in a) {
  for (m in b) {
    power <- n ** m
    powers <- append(powers, power)
  }
}

powers <- unique(sort(powers))

print(length(powers))

