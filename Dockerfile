# Real RTSP server + ffmpeg already included
FROM bluenviron/mediamtx:latest-ffmpeg

USER root
RUN apk add --no-cache bash

WORKDIR /app

# MediaMTX configuration
COPY mediamtx.yml /mediamtx.yml

# Our script that runs mediamtx + publishers
COPY entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh

# Bake videos into the image
COPY videos /app/videos

ENV VIDEO_DIR=/app/videos
ENV RTSP_PORT=8554

EXPOSE 8554/tcp 8554/udp 8322/tcp

ENTRYPOINT ["/app/entrypoint.sh"]
