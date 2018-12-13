#!/bin/sh -ex
supervisord -c /etc/supervisord.conf
exec "$@"
