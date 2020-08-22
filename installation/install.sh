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

OPENCART_TW_FILE="${OPENCART_TW##*/}"
DOCUMENT_ROOT="/var/www/html/"
mkdir -p "$DOCUMENT_ROOT"
cd "$DOCUMENT_ROOT"

if [ ! -d "upload" ]
then
  waitforservice web:80
  waitforservice php:9000
  waitforservice db:3306
  PHP_UID=`cat /var/www/html/uid`

  wget -N "$OPENCART_TW" || exit 1
  chmod 666 "$OPENCART_TW_FILE"

  unzip -q -u "$OPENCART_TW_FILE" upload/* || exit 1
  chown -R "$PHP_UID" "$DOCUMENT_ROOT"
fi

