#!/bin/bash

# run ./downloadImage.sh filename.txt

while IFS='' read -r line || [[ -n "$line" ]]; do
    mkdir ../DownloadImage/$line
    python3 image_search.py $line
    mv ./images/* ../DownloadImage/$line
    sleep 1
    killall Xvfb
    sleep 1
done < "$1"
