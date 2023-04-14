#!/bin/bash

# The TASK environment variable will be set automatically in the Einstein execution
# environment.
#
# For testing, try to set the TASK environment variable...
#
[ -z "$TASK" ] && [ -f "$PWD:t" ] && TASK="$PWD:t"
[ -z "$TASK" ] && [ -f "$PWD:h:t" ] && TASK="$PWD:h:t"

# Fail (exit) immediately if any of the following commands fail.
#
set -e

show-exec-command cat grid.txt

# Compile the program
g++ -std=c++11 -Wall -Wextra -O2 -o ${TASK%.cpp} $TASK
show-exec-command ./${TASK%.cpp}

# Execute the program with grid.txt as an argument
./euler-11-largest-product grid.txt
