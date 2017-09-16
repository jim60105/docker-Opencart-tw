FROM alpine:3.4

RUN apk add --update \
  curl \
  openssl \
  unzip \
  wget

COPY ./install.sh /usr/local/bin/install.sh
RUN chmod +x /usr/local/bin/install.sh

VOLUME /var/www/html

cmd ["/bin/sh", "/usr/local/bin/install.sh"]
