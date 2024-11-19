# Please do not directly edit this file. Instead, modify the .env variables related to NGINX configuration.

server {
    listen ${NGINX_PORT};
    server_name ${NGINX_SERVER_NAME};

    location /console/api {
      proxy_pass http://api:5001;
      include proxy.conf;
    }

    location /api {
      proxy_pass http://api:5001;
      include proxy.conf;
    }

    location /v1 {
      proxy_pass http://api:5001;
      include proxy.conf;
    }

    location /files {
      proxy_pass http://api:5001;
      include proxy.conf;
    }

    location / {
      proxy_pass http://web:3000;
      include proxy.conf;
    }

    # placeholder for acme challenge location
    ${ACME_CHALLENGE_LOCATION}

    # placeholder for https config defined in https.conf.template
    ${HTTPS_CONFIG}
}