# Opencart-tw on Docker
這是從屬於 [jim60105/docker-ReverseProxy](https://github.com/jim60105/docker-ReverseProxy) 的 Opencart 方案，必須在上述伺服器運行正常後再做\
使用Opencart台灣優化版，來自[OSEC.tw](https://www.osec.tw/opencart.html)\
有定時備份功能

## 架構
WWW\
│\
nginx Server (Reverse Proxy) (SSL證書申請、Renew)\
│  ┌ MariaDB資料庫 (網路只對Opencart)\
└ Opencart\
 　└ Jobber (Cron) (定時Backup Docker volume，Backup完送至rsync server) 

## 部屬
1. 請參考`.env_sample`建立`.env`
	* LETSENCRYPT_EMAIL=你的email
	* LETSENCRYPT_HOST=你的伺服器網域
	* MYSQL_ROOT_PASSWORD=你的MySQL root密碼，在第一次docker up時會使用
	* OPENCART_TW=Opencart-tw檔案網址，由[https://www.osec.tw/opencart.html](https://www.osec.tw/opencart.html)取得
1. rsync ssh passwd 明碼放在 `/root/ssh.pas`，chown root，chmod 600
1. Jobber會運行`shellScript/backup.sh && shellScript/upload.sh `，請參考 `upload.sh_sample` 建立 `upload.sh`
1. 正式發佈前移除 `.env` 中的 `LETSENCRYPT_TEST=true`\
此設定為SSL測試證書\
正式版有申請次數上限，務必在測試正常、最後上線前再移除
1. `docker-compose up -d`