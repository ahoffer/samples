#!/bin/sh
# Wrapper script to stream a video file to MediaMTX via RTSP
# Usage: stream-video.sh <video-file> <stream-path>

VIDEO_FILE="$1"
STREAM_PATH="$2"

exec ffmpeg -re -stream_loop -1 -i "$VIDEO_FILE" -c copy -map 0 -f rtsp "rtsp://localhost:8554/$STREAM_PATH"
