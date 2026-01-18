#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Error: two arguments are required: writefile and writestr."
    exit 1
fi

writefile=$1
writestr=$2

if ! mkdir -p "$(dirname "$writefile")"; then
    echo "Error: could not create directory path for $writefile."
    exit 1
fi

if ! echo "$writestr" > "$writefile"; then
    echo "Error: Could not create or write to file $writefile."
    exit 1
fi
