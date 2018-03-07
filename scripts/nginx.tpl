upstream backend{
	ip_hash;
	server ${SERVICE_NAME}:${SERVICE_HTTP_PORT};
}

server {
	listen ${HTTP_PORT};
	
	location / {
		proxy_pass http://backend/;
		proxy_connect_timeout 1s;
		proxy_read_timeout 1s;
		auth_basic "Resticted Content";
		auth_basic_user_file /etc/nginx/access_file;
	}
}
