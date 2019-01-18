FROM alpine:latest
LABEL maintainer="Daniel Han <hex0cter@gmail.com>"

RUN apk --no-cache update \
  && apk add --no-cache --virtual .build-deps \
  xvfb \
  supervisor \
  openbox \
  tint2 \
  xeyes \
  x11vnc \
  ffmpeg \
  ttf-opensans \
  && rm -rf /var/cache/apk/*

ADD config/tint2rc /root/.config/tint2/tint2rc
ADD services /etc/supervisor.d
ADD entrypoint.sh /usr/local/bin

ENV DISPLAY=:99 \
    DEBUG=false \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8 \
    LC_ALL=en_US.UTF-8

EXPOSE 5900
ENTRYPOINT entrypoint.sh
