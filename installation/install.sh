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

OPENCART_FILE="2.3.0.2-compiled.zip"
OPENCART_TW_URL="http://www.ntcart.com/upload"
OPENCART_TW_FILE="opencart-tw-2.3.0.2-20170116.zip"
DOCUMENT_ROOT="/var/www/html"
INSTALL_ROOT="/installation_data"

waitforservice web:80
waitforservice php:9000
waitforservice mysql:3306

PHP_UID=`cat /var/www/html/uid`

mkdir -p "$DOCUMENT_ROOT/public"

cd "$DOCUMENT_ROOT/public"
unzip -u "$INSTALL_ROOT/$OPENCART_FILE" upload/* || exit 1

cd "$INSTALL_ROOT"
wget -N "$OPENCART_TW_URL/$OPENCART_TW_FILE" || exit 1
chmod 666 "$OPENCART_TW_FILE"

cd "$DOCUMENT_ROOT/public"
unzip -o "$INSTALL_ROOT/$OPENCART_TW_FILE" upload/catalog/language/zh-TW/* upload/admin/language/zh-TW/* || exit 1
cp /var/www/html/public/upload/config-dist.php /var/www/html/public/upload/config.php
cp /var/www/html/public/upload/admin/config-dist.php /var/www/html/public/upload/admin/config.php

chown -R "$PHP_UID" /var/www/html/public

curl -sSL -X POST \
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

cd "$INSTALL_ROOT"
wget -N "https://github.com/vqmod/vqmod/releases/download/v2.6.3-opencart/vqmod-2.6.3-opencart.zip"
chmod 666 "vqmod-2.6.3-opencart.zip"
cd "$DOCUMENT_ROOT/public/upload"
unzip -u "$INSTALL_ROOT/vqmod-2.6.3-opencart.zip"
chown -R "$PHP_UID" /var/www/html/public/upload/vqmod
curl -sSL "http://web/upload/vqmod/install"

if [ -e "$INSTALL_ROOT/QuickProductEdit-v1.3.zip" ]; then
  echo "Installing QuickProductEdit."
  mkdir /tmp/QuickProductEdit
  cd /tmp/QuickProductEdit
  unzip -u "$INSTALL_ROOT/QuickProductEdit-v1.3.zip"
  cp -r "1.5.1 - 2.x/upload" "$DOCUMENT_ROOT/public/"
  cp -r "compatibilty_fix_230/vqmod" "$DOCUMENT_ROOT/public/upload"
fi
