## Alpine with Xvfb enabled
You can run the X/UI based program in this image.

## Debug mode
 docker run -it --rm -e DEBUG=true -p 5900:5900 -v /tmp:/tmp alpine-x sh
