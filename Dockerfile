from nginx:alpine

copy ./scripts/nginx.tpl /tmp

cmd "envsubst < /tmp/nginx.tpl > /etc/nginx/nginx.conf"

