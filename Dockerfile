FROM bluenviron/mediamtx:1.15.3-ffmpeg

WORKDIR /app

# Copy stream wrapper script
COPY stream-video.sh /usr/local/bin/stream-video.sh
RUN chmod +x /usr/local/bin/stream-video.sh

# Bake videos into the image
COPY videos /app/videos

# Expose MediaMTX default ports
EXPOSE 8554 8888 8000/udp 8001/udp

ENTRYPOINT ["/mediamtx", "/mediamtx.yml"]
