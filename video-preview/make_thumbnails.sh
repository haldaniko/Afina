#!/bin/bash

mkdir -p thumbnails

for i in {1..24}
do
  input="video${i}.mp4"
  output="thumbnails/video${i}.jpg"

  if [ -f "$input" ]; then
    echo "Creating thumbnail for $input"
    ffmpeg -ss 00:00:02 -i "$input" -frames:v 1 -q:v 2 "$output"
  else
    echo "File $input not found, skipping"
  fi
done
