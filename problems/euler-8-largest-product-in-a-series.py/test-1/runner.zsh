#!/usr/bin/env zsh
#
# The TASK environment variable will be set automatically in the Einstein execution
# environment.
#
# For testing, try to set the TASK environment variable...
#
[[ -z $TASK ]] && [[ -f $PWD:t ]] && TASK=$PWD:t
[[ -z $TASK ]] && [[ -f $PWD:h:t ]] && TASK=$PWD:h:t

# Fail (exit) immediately if any of the following commands fail.
#
set -e

# The show-exec-command is available in the Einstein execution environment.
# It is also available in the `bin` directory in the project repo.  You can
# install it locally from there for testing.
#
for v in 2 4 7 13
do
  show-exec-command python3 $TASK $v
done
