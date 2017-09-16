FROM php:5.6-fpm-alpine

RUN apk add --update \
    freetype-dev \
    libjpeg-turbo-dev \
    libmcrypt-dev \
    libpng-dev \
  && docker-php-ext-install \
    mcrypt \
    pdo_mysql \
    zip \
  && docker-php-ext-configure gd \
    --with-freetype-dir=/usr/include/ \
    --with-jpeg-dir=/usr/include/ \
  && docker-php-ext-install gd
