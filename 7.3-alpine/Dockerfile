FROM php:7.3-fpm-alpine3.9

# install libraries
RUN apk upgrade --update \
   && apk add \
   git \
   zlib-dev \
   libzip-dev \
   && docker-php-ext-install pdo_mysql zip
