FROM php:7.3-fpm

RUN apt-get update \
  && apt-get -y install \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libmcrypt-dev \
    libpng-dev \
    libzip-dev \
  && pecl install mcrypt-1.0.2 \
  && docker-php-ext-enable mcrypt \
  && docker-php-ext-install \
    pdo_mysql \
    zip \
  && docker-php-ext-configure gd \
    --with-freetype-dir=/usr/include/ \
    --with-jpeg-dir=/usr/include/ \
  && docker-php-ext-install gd

COPY ./docker-php-entrypoint /usr/local/bin/docker-php-entrypoint
COPY ./php.ini /usr/local/etc/php/php.ini
RUN chmod +x /usr/local/bin/docker-php-entrypoint
