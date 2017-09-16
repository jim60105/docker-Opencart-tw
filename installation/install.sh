#!/bin/sh
waitforservice() {
  host="$1"
  port="$2"
  status=1

  echo -n "Waiting for service ${host}:${port}"
  while [ "$status" -ne "0" ]; do
    echo -n '.'
    echo | telnet "$host" "$port"
    status="$?"
    sleep 1
  done
  echo "done"
}

OPENCART_URL="http://www.ntcart.com/upload"
OPENCART_FILE="opencart-tw-2.3.0.2-20170116.zip"
DOCUMENT_ROOT="/var/www/html"
INSTALL_ROOT="/installation_data"

cd "$INSTALL_ROOT"
wget -N "$OPENCART_URL/$OPENCART_FILE" || exit 1
chmod 666 "$OPENCART_FILE"

mkdir -p "$DOCUMENT_ROOT/public"
cd "$DOCUMENT_ROOT/public"
unzip -u "$INSTALL_ROOT/$OPENCART_FILE" || exit 1
cp /var/www/html/public/upload/config-dist.php /var/www/html/public/upload/config.php
cp /var/www/html/public/upload/admin/config-dist.php /var/www/html/public/upload/admin/config.php

chown -R 82 /var/www/html/public

waitforservice web:80
waitforservice php:9000
waitforservice mysql:3306

curl -D - -X POST \
  -H "Host: ${SERVER_HOSTNAME}" \
  -F "db_driver=mpdo" \
  -F "db_hostname=mysql" \
  -F "db_username=${MYSQL_USER}" \
  -F "db_password=${MYSQL_PASSWORD}" \
  -F "db_database=${MYSQL_DATABASE}" \
  -F "db_port=3306" \
  -F "db_prefix=oc_" \
  -F "username=${OPENCART_USER}" \
  -F "password=${OPENCART_PASSWORD}" \
  -F "email=${OPENCART_EMAIL}" \
  'http://web/upload/install/index.php?route=install/step_3'
