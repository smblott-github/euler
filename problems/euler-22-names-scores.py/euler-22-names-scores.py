#!/usr/bin/env python3

with open("names.txt") as f:
    names = f.read()
names = names[1:len(names) - 2]
names = names.strip().split("\",\"")

i = 0
while i < len(names):
    p = i
    j = i + 1
    while j < len(names):
        if names[p] > names[j]:
            p = j
        j = j + 1

    if p != i:
        tmp = names[p]
        names[p] = names[i]
        names[i] = tmp
    i = i + 1

i = 0
tot = 0
while i < len(names):
    j = 0
    word_value = 0
    while j < len(names[i]):
        word_value += ord(names[i][j]) - ord("A") + 1
        j = j + 1
    tot = tot + word_value * (i + 1)
    i = i + 1

print(tot)
