# wundertools-image-fuzzy-nginx
A wundertools docker image for an nginx service that is ready for Drupal

## Base

This image is heavily based on the alpine-php image https://github.com/wunderkraut/alpine-nginx-pagespeed
And is mixed with confs from here: https://github.com/wunderkraut/docker-container-app-configs/tree/master/nginx

The following confs are copied in:

1. https://raw.githubusercontent.com/wunderkraut/docker-container-app-configs/master/nginx/nginx.conf_drupal -> /etc/nginx/nginx.conf
2. https://raw.githubusercontent.com/wunderkraut/docker-container-app-configs/master/nginx/conf.d/app_drupal.conf --> /etc/nginx/conf.d/*
3. https://raw.githubusercontent.com/wunderkraut/docker-container-app-configs/master/nginx/conf.d/fastcgi_drupal.conf --> /etc/nginx/conf.d/*
4. https://raw.githubusercontent.com/wunderkraut/docker-container-app-configs/master/nginx/conf.d/nginx_app.conf --> /etc/nginx/conf.d/*
5. https://raw.githubusercontent.com/wunderkraut/docker-container-app-configs/master/nginx/conf.d/nginx_upstream.conf --> /etc/nginx/conf.d/*

## TODO

1. should other configurations be included?
2. better ssl integration, perhaps ssl certs?
