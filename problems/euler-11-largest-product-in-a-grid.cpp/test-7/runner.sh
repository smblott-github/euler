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

# Compile the program
( cd "$(dirname "$0")/.." && make )

# Execute the program with the specified grid.txt file
if [ -f grid.txt ]; then
    ../euler-11-largest-product grid.txt
else
    echo "Error: grid.txt not found."
    exit 1
fi
