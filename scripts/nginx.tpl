upstream backend{
	ip_hash;
	server ${SERVICE_NAME}:${SERVICE_HTTP_PORT};
}

server {
	listen ${HTTP_PORT};
	client_max_body_size ${CLIENT_MAX_BODY_SIZE};
	location / {
		proxy_pass http://backend/;
		proxy_connect_timeout 600s;
		proxy_read_timeout 600s;
		proxy_send_timeout 600s;
		send_timeout 600s;
		auth_basic "Resticted Content";
		auth_basic_user_file /etc/nginx/access_file;
	}
}
