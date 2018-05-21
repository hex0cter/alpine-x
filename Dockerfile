FROM alpine:latest
LABEL maintainer="Daniel Han"

RUN apk --no-cache update
RUN apk add --no-cache --virtual .build-deps \
  xvfb \
  supervisor \
  openbox tint2 xeyes x11vnc ffmpeg

ADD config/tint2rc /root/.config/tint2/tint2rc
ADD services /etc/supervisor.d

# Default to UTF-8 file.encoding
ENV LANG en_US.UTF-8
ENV DISPLAY :99
ENV DEBUG false

EXPOSE 5900
ENTRYPOINT supervisord -n -c /etc/supervisord.conf
