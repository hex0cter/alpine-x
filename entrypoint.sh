#!/bin/sh -ex

supervisord -c /etc/supervisord.conf
sleep 5 # wait until X is up and running

if [ -n "$USER_ID" ]
then
  # addgroup appgroup && adduser -D -S -u $USER_ID appuser appgroup
  adduser -D -S -u $USER_ID  -s /bin/sh appuser
  echo "appuser ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/appuser
  su -c "$@" appuser
else
  exec "$@"
fi
