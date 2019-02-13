## Alpine with Xvfb enabled
[![Build Status](https://travis-ci.org/hex0cter/alpine-x.svg?branch=master)](https://travis-ci.org/hex0cter/alpine-x)

You can run the X/UI based program in this image.

## Debug mode
```bash
docker run -it --rm -e DEBUG=true -p 5900:5900 hex0cter/alpine-x sleep 1000
```
In this mode VNC server is enabled, so you can access the GUI from any VNC viewer (port 5900).
