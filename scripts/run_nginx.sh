#!/bin/sh

envsubst < /tmp/nginx.tpl > /etc/nginx/conf.d/default.conf
envsubst < /tmp/access_file.tpl > /etc/nginx/access_file

nginx -g 'daemon off;'

