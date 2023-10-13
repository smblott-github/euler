#!/usr/bin/env zsh
set -e

#
# I'm not sure what a typical kotlin use case looks like, so I haven't
# written a default runner in Einstein.
#
# This script is quite general, and might work for many cases.
#
# I suggest starting with this (just copy it to any new tasks which you
# create) and let me (SB) know if it would be helpful to have any
# particular support built-in to Einstein itself.
#
# I have observed that the kotlin build time is quite slow.  The default
# Einstein timeout is 3 seconds.  I've increased this to 10 seconds for
# kotlin tasks (anything *.kt).  The timeout can be tweaked on a per-task
# basis by adding a file "timeout.txt" containing only the required timeout
# (in seconds).
#
# This script assumes that "kotlinc" is on your $PATH.
#
# SB (13/10/2023).
#

# E.g. if $TASK is "hello.kt", then $jar will be "hello.jar".
#
jar="${TASK%.kt}.jar"

#
# When running the kotlinc compiler, standard input is redirected
# in order to ensure that the compiler cannot consume, and stdin
# is therefore preserved for when the actual upload is run, at the
# end of this script.
#
kotlinc $TASK -include-runtime -d $jar < /dev/null

#
# Note... standard input is preserved (so "stdin.txt" will work), and we
# just pass in any command-line arguments as they were originally provided
# (so "argv.txt" will work too).
#
# Also, we use "exec" here, so the current process is wholly replaced by
# the java process.
#
exec java -jar $jar $argv
