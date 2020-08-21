FROM alpine

RUN apk add --update \
  unzip \
  wget \
  curl \
  rsync \
  busybox-extras

COPY ./install.sh /usr/local/bin/install.sh
RUN chmod +x /usr/local/bin/install.sh

VOLUME /var/www/html
ENTRYPOINT ["/bin/sh", "/usr/local/bin/install.sh"]
