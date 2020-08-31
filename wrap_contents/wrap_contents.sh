#!/usr/bin/env bash

# Setting up arguments
targFile="$1"
specifier="$2"
targDest="$3"

# 
awk '/stop/{show=0} show; /start/ { show=1 }' $1
output=$(sed -n '/start/,/stop/p' $1)
