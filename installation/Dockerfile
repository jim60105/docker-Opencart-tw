FROM php:7.3

RUN apt-get update \
  && apt-get -y install \
      unzip \
      wget \
      rsync \
      telnet \
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
    mysqli \
  && docker-php-ext-configure gd \
    --with-freetype-dir=/usr/include/ \
    --with-jpeg-dir=/usr/include/ \
  && docker-php-ext-install gd

COPY ./install.sh /usr/local/bin/install.sh
RUN chmod +x /usr/local/bin/install.sh

VOLUME /var/www/html
ENTRYPOINT ["/bin/sh", "/usr/local/bin/install.sh"]
