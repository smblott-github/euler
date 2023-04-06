#!/usr/bin/env zsh

# Set the TASK environment variable to the name of your C++ file without the extension
TASK="euler-1-multiples-of-3-or-5"

# Fail (exit) immediately if any of the following commands fail.
set -e

# Compile the C++ code
g++ -o ${TASK}_compiled ${TASK}.cpp

# The show-exec-command is available in the Einstein execution environment.
# It is also available in the `bin` directory in the project repo.  You can
# install it locally from there for testing.
for v in 25 75 125 250 750
do
  show-exec-command ./${TASK}_compiled $v
done
