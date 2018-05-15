from nginx:alpine

copy ./scripts/nginx.tpl /tmp
copy ./scripts/access_file.tpl /tmp
copy ./scripts/index.html /healthcheck/health/index.html

copy ./scripts/run_nginx.sh /bin
run chmod 755 /bin/run_nginx.sh
cmd run_nginx.sh
