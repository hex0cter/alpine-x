## Alpine with Xvfb enabled
You can run the X/UI based program in this image.

## Debug mode
```bash
docker run -it --rm -e DEBUG=true -p 5900:5900 -v /tmp:/tmp alpine-x sh
```
In this mode VNC server is enabled, so you can access the GUI from any VNC viewer (port 5900).
