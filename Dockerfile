# APP NGINX IMAGE
#
FROM quay.io/wunder/alpine-nginx-pagespeed
MAINTAINER docker@wunder.io

# Need curl for safe downloading
RUN apk --update add curl && \
    rm -rf /tmp/* && \
    rm -rf /var/cache/apk/*

####
# Use drupal specific confs
#
# Get confs from https://github.com/wunderkraut/docker-container-app-configs
#
# Currently the following issues exist upstream:
#   - nginx_drupal.conf should be app_drupal.conf
#   - ssl nginx: [emerg] "keepalive_timeout" directive is duplicate in /etc/nginx/conf.d/nginx_server_ssl.conf:16
#
RUN mkdir /etc/nginx/conf.d && \
    curl -o /etc/nginx/nginx.conf https://raw.githubusercontent.com/wunderkraut/docker-container-app-configs/master/nginx/nginx.conf_drupal && \
    curl -o /etc/nginx/conf.d/app_drupal.conf https://raw.githubusercontent.com/wunderkraut/docker-container-app-configs/master/nginx/conf.d/app_drupal.conf && \
    curl -o /etc/nginx/conf.d/fastcgi_drupal.conf https://raw.githubusercontent.com/wunderkraut/docker-container-app-configs/master/nginx/conf.d/fastcgi_drupal.conf && \
    curl -o /etc/nginx/conf.d/nginx_app.conf https://raw.githubusercontent.com/wunderkraut/docker-container-app-configs/master/nginx/conf.d/nginx_app.conf && \
    curl -o /etc/nginx/conf.d/nginx_upstream.conf https://raw.githubusercontent.com/wunderkraut/docker-container-app-configs/master/nginx/conf.d/nginx_upstream.conf
