#!/usr/bin/env zsh

a=10 b=15 c=20
print "a=$a, b=$b (stdin) c=$c (data.txt)"
print $c > data.txt
print $b | show-exec-command python3 $TASK $a

a=100 b=101 c=102
print "a=$a, b=$b (stdin) c=$c (data.txt)"
print $c > data.txt
print $b | show-exec-command python3 $TASK $a

a=-1 b=-2 c=-3
print "a=$a, b=$b (stdin) c=$c (data.txt)"
print $c > data.txt
print $b | show-exec-command python3 $TASK $a
