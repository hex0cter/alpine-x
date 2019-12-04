## Alpine with Xvfb enabled
[![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/hex0cter/alpine-x)](https://hub.docker.com/r/hex0cter/alpine-x/builds)
[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/hex0cter/alpine-x)](https://hub.docker.com/r/hex0cter/alpine-x/builds)
[![Docker Pulls](https://img.shields.io/docker/pulls/hex0cter/alpine-x)](https://hub.docker.com/r/hex0cter/alpine-x)


This image allows you to run any X/GUI based program, such as a web browser, inside a docker container.

## Pull the image
```
docker pull hex0cter/alpine-x:latest
```

## Start a container
```
docker run -it --rm hex0cter/alpine-x [commands]
```
Please visit [docker hub](https://hub.docker.com/repository/docker/hex0cter/alpine-x) for more details.

## Debug mode
```bash
docker run -it --rm -e DEBUG=true -p 5900:5900 hex0cter/alpine-x sleep 1000
```
When **DEBUG=true**, the VNC server will be started, so you can access the container's GUI from any VNC viewer (port 5900).
