## Video Streams
Run this container when other video streams are not available

### Developers
This project uses a Makefile.

make build - Build the image. Copies local video files into the image.
make up    - Use Docker compose to run the container.
make down  - Stop the service.

### Add Videos
1. Copy the video file into the `videos` directory.
1. Update the `mediamtx.yml` file.
1. Restart with `make up`

### URLs
Video streams are published in several ways.
The most useful are RTSP and HLS.

```
rtsp://samples:8554/martac
```

```
http://samples:8888/martac/index.m3u8
```
