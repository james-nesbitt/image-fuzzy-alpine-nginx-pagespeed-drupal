# wunder/fuzzy-alpine-nginx-pagespeed-drupal
#
# VERSION v1.11.5-0
#
FROM quay.io/wunder/alpine-nginx-pagespeed
MAINTAINER aleksi.johansson@wunder.io

# Add Drupal specific configurations.
ADD etc/nginx/conf.d/app_drupal.conf /etc/nginx/conf.d/app_drupal.conf
ADD etc/nginx/conf.d/fastcgi_drupal.conf /etc/nginx/conf.d/fastcgi_drupal.conf
ADD etc/nginx/conf.d/nginx_app.conf /etc/nginx/conf.d/nginx_app.conf
ADD etc/nginx/conf.d/nginx_upstream.conf /etc/nginx/conf.d/nginx_upstream.conf
