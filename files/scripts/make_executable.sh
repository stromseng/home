#!/bin/bash

# run chmod +x make_executable.sh to make this script executable
# chmods all files in the current directory and subdirectories
# usage: ./make_executable.sh

# Make sure the script is running in the directory it is located in
cd "$(dirname "$0")"

# Make every .sh file in the current directory executable
chmod +x *.sh

echo "All files in the directory have been made executable."