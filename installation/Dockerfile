FROM alpine:3.4

RUN apk add --update \
  curl \
  mysql-client \
  openssl \
  unzip \
  wget

COPY ./install.sh /usr/local/bin/install.sh
RUN chmod +x /usr/local/bin/install.sh
COPY ./tw.sql /etc/tw.sql

VOLUME /var/www/html

cmd ["/bin/sh", "/usr/local/bin/install.sh"]
