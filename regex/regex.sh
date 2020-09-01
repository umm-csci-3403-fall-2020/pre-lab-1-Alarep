#!/usr/bin/env bash

# Extracting the appropriate text for r0 file
sed -E 's/\* ([a-zA-Z]+), ([a-zA-Z]+)/1. \1\n2. \2\n/' < r0_input.txt | tee r0_output.txt

# Extracting the appropriate text for r1 file
awk 'match($0, /(\w+). My favorite sandwich is (\w+)/, groups) {print "1. " groups[1] "\n" "2. " groups[2] "\n" }' < r1_input.txt | tee r1_output.txt


# Extracting the appropriate text for the r2 file
sed -E 's/\* sandwich with ([a-zA-Z\.]+) ([a-zA-Z ]+)/1. \1\n2. \2\n/' < r2_input.txt | tee r2_output.txt
