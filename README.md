## Video Streams
Run this container when other video streams are not available. 
The idea is that app has no external dependencies on an RTSP server, or any kind of mounts.


### Quickstart

1. Start the application
2. Run `make build up`
3. Use `rtsp://samples:8554/village-2boys` as a URL

### Developers
This project uses a Makefile.

make build - Build the image. Copies local video files into the image.
make up    - Use Docker compose to run the container.
make down  - Stop the service.

### Add Videos
1. Copy the video file into the `videos` directory.
1. Update the `mediamtx.yml` file.
1. Restart with `make up`

### Update Version or Container Name

Edit the `.env` file.

### URLs
Video streams are published in several ways.
The most useful are RTSP and HLS.

```
rtsp://samples:8554/village-2boys
```

```
http://samples:8888/village-2boys/index.m3u8
```
