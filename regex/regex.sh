#!/usr/bin/env bash

# Extracting the appropriate text for r0 file
sed -E 's/\* ([a-zA-Z]+), ([a-zA-Z]+)/1. \1\n2. \2\n/' < r0_input.txt | tee r0_output.txt

# Extracting the appropriate text for r1 file
sed -E 's/\* ([a-zA-Z]+), ([a-zA-Z]+)/1. \1\n2. \2\n/' < r1_input.txt | tee r1_output.txt

# Extracting the appropriate text for r2 file
# sed -E 's/\*([^[.+?].]), ([^[.+?].])/1. \1\n2. \2\n/' < r2_input.txt | tee r2_output.txt

# Try again
sed -E 's/\* sandwich with ([a-zA-Z\.]+) ([a-zA-Z ]+)/1. \1\n2. \2\n/' < r2_input.txt | tee r2_output.txt

# another
# sed -E 's/\* ([\.[A-Z]+]), ([\.[A-Z]+)/1. \1\n2. \2\n/' < r2_input.txt | tee r2_output.txt

# oof
# awk 'match($0, /(^[a-z]+\.), (^[a-z]+\.)/, groups) {print "1. " groups[1] "\n" "2. " groups[2] "\n" }' < r2_input.txt

# awk attempt
#awk -F '.' 'NF > 2 { sub("^[^.]*\.", "") } 1' r2_input.txt