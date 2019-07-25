#!/bin/sh -ex
supervisord -c /etc/supervisord.conf

sleep 5 # wait until X is up and running
su -c "$@" appuser
