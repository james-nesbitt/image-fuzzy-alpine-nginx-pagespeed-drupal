# image-fuzzy-alpine-nginx-pagespeed-drupal

Fuzzy as in reference to the https://en.wikipedia.org/wiki/The_Mythical_Man-Month book where Fred describes the approach of "write one to throw away" as the best start.

Nginx tailored for running Drupal 8 as the application.

Maintained by: Aleksi Johansson <aleksi.johansson@wunder.io>

## Docker

### Image

This image is available publicly at:

- quay.io/wunder/fuzzy-alpine-nginx-pagespeed-drupal : [![Docker Repository on Quay](https://quay.io/repository/wunder/fuzzy-alpine-nginx-pagespeed-drupal/status "Docker Repository on Quay")](https://quay.io/repository/wunder/fuzzy-alpine-nginx-pagespeed-drupal)

### Base

This image is based on the fuzzy-alpine-nginx-pagespeed image https://github.com/wunderkraut/image-fuzzy-alpine-nginx-pagespeed.

### Modifications

This image adds the following files:

#### /etc/nginx/conf.d/app_drupal.conf

This is a custom nginx configuration:

1. Set Drupal specific directives.

#### /etc/nginx/conf.d/fastcgi_drupal.conf

This is a custom nginx configuration:

1. Set Drupal specific fastcgi definitions.

#### /etc/nginx/conf.d/nginx_app.conf

This is a custom nginx configuration:

1. Define server and root for Drupal 8.

#### /etc/nginx/conf.d/nginx_upstream.conf

This is a custom nginx configuration:

1. Configure upstream settings for PHP FastCGI.

## Using this Image

This image is tailored for Drupal 8 as the application.

Run this container as an independent service:

```
$/> docker run -d quay.io/wunder/fuzzy-alpine-nginx-pagespeed-drupal
```

map any needed services such as php-fpm and mount any source code volumes to whatever path needed:

```
$/> docker run -d \
      -v "$(pwd):/app/web" \
      -l "my_running_fpm_container:fpm.app" \
      quay.io/wunder/fuzzy-alpine-nginx-pagespeed-drupal
```
