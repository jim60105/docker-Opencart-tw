#!/bin/sh
waitforservice() {
  host="$1"
  port="$2"
  status=1

  echo -n "Waiting for service $host $port"
  while [ "$status" -ne "0" ]; do
    echo -n '.'
    echo | timeout 1 bash -c "cat < /dev/null > /dev/tcp/$host/$port"
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
  waitforservice web 80
  waitforservice php 9000
  waitforservice db 3306
  PHP_UID=`cat /var/www/html/uid`

  wget -N "$OPENCART_TW" || exit 1
  chmod 666 "$OPENCART_TW_FILE"

  unzip -q -u "$OPENCART_TW_FILE" upload/* || exit 1
  chown -R "$PHP_UID" "$DOCUMENT_ROOT"
  
  PHP=`which php`
  $PHP "$DOCUMENT_ROOT/upload/install/cli_install.php" "install" --db_hostname "db" \
                            --db_username "${MYSQL_USER}" \
                            --db_password "${MYSQL_PASSWORD}" \
                            --db_database "${MYSQL_DATABASE}" \
                            --db_driver "mpdo" \
                            --db_port 3306 \
                            --username "${OPENCART_ADMIN}" \
                            --password "${OPENCART_ADMIN_PASSWD}" \
                            --email "${LETSENCRYPT_EMAIL}" \
                            --http_server "http://${HOST}/"
  sed -i -e "s/${HOST}\/admin/${HOST_ADMIN}/g" "$DOCUMENT_ROOT/upload/admin/config.php"
  rm -rf "$DOCUMENT_ROOT/upload/install"
  echo "Rewrite Admin link to: http://${HOST_ADMIN}/"
fi

