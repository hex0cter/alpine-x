## Alpine with Xvfb enabled
[![Build Status](https://travis-ci.org/hex0cter/alpine-x.svg?branch=master)](https://travis-ci.org/hex0cter/alpine-x)

This image allows you to run any X/UI based program, such as a web browser, in a docker container.

## Debug mode
```bash
docker run -it --rm -e DEBUG=true -p 5900:5900 hex0cter/alpine-x sleep 1000
```
When DEBUG=true, the VNC server will be started, so you can access the container's GUI from any VNC viewer (port 5900).
