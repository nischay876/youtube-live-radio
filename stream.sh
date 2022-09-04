#!/bin/bash

set -e

while true
do
  ffmpeg -loglevel error -y -re \
    -re -fflags +genpts -stream_loop -1 -i Sakura-Girl.mp4 \
    -f concat -safe 0 -i <((for f in ./*.mp3; do path="$PWD/$f"; echo "file ${path@Q}"; done) | shuf)  \
    -c:v libx264 -preset ultrafast -b:v 3000k -maxrate 3000k -bufsize 6000k \
    -framerate 25 -video_size 1280x720 -vf "format=yuv420p" -g 50 -shortest -strict experimental \
    -c:a aac -b:a 128k -ar 44100 \
    -f flv rtmp://a.rtmp.youtube.com/live2/jq46-gj64-gwx1-sgqq-1k8c
done
