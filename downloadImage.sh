#!/bin/bash

# run ./downloadImage.sh filename.txt

while IFS='' read -r line || [[ -n "$line" ]]; do
    mkdir ./images/$line
    python3 image_search.py $line
    mv ./images/*.* ./images/$line
done < "$1"
