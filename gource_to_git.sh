#!/bin/bash

gource --key --seconds-per-day 0.1 --auto-skip-seconds 1 -400x300 -o - | ffmpeg -y -r 60 -f image2pipe -vcodec ppm -i - -vcodec libx264 -preset ultrafast -pix_fmt yuv420p -crf 1 -threads 0 -bf 0 input.mp4
mkdir frames
ffmpeg -i input.mp4 -vf scale=400:-1:flags=lanczos,fps=10 frames/ffout%03d.png
convert -loop 0 frames/ffout*.png output.gif
rm -rf frames
