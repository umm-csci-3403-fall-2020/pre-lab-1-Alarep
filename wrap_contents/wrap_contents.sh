#!/usr/bin/env bash

# Setting up arguments
targFile="$1"
specifier="$2"
targDest="$3"

# Creating the header and footer variables
head="$specifier"_header.html
foot="$specifier"_footer.html
# I am not sure if I need these next two lines but I am leaving them in to ask questions
#awk '/stop/{show=0} show; /start/ { show=1 }' "$1"
#sed -n '/start/,/stop/p' "$1"

# Combining the values
cat "$head" "$targFile" "$foot" > "$targDest"
