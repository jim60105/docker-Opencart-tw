# Opencart-tw on Docker
這是從屬於 [jim60105/docker-ReverseProxy](https://github.com/jim60105/docker-ReverseProxy) 的 Opencart 方案，必須在上述伺服器運行正常後再做\
我寫了一篇設定教學[在此](https://blog.maki0419.com/2020/08/docker-opencart.html)\
使用Opencart台灣優化版，來自[OSEC.tw](https://www.osec.tw/opencart.html)\
在docker up時自動執行Opencart安裝\
後台網址改為自訂網域，並把前台的/admin屏蔽\
用ssh rsync做定時備份功能，參考[這裡](https://blog.maki0419.com/2020/08/docker-opencart.html#rsync-server%E8%A8%AD%E5%AE%9A%E5%92%8C%E5%82%99%E4%BB%BD%E9%82%84%E5%8E%9F)做設定

## 架構
WWW\
│\
Reverse Proxy (nginx Server) (SSL證書申請、Renew)\
├ Jobber (Cron) (定時備份Docker volume，備份完送至rsync server) \
├ Opencart前台 (nginx Server)\
│  ├ MariaDB資料庫 (網路只對Opencart前後台)\
└ Opencart後台 (nginx Server)\

## 部屬
1. 請參考`.env_sample`建立`.env`
	* LETSENCRYPT_EMAIL=你的email
	* HOST=你的Opencart前台網域
	* HOST_ADMIN=你的Opencart後台網域
	* MYSQL_ROOT_PASSWORD=你的MySQL root密碼
	* OPENCART_TW=Opencart下載網址，由[https://www.osec.tw/opencart.html](https://www.osec.tw/opencart.html)取得
	* OPENCART_ADMIN=Opencart後台管理員帳號
	* OPENCART_ADMIN_PASSWD=Opencart後台管理員密碼
1. rsync ssh passwd 明碼放在 `/root/ssh.pas`，chown root，chmod 600
1. 請參考 `shellScript/upload.sh_sample` 建立 `upload.sh`，Jobber會定時運行`shellScript/backup.sh && shellScript/upload.sh ` 
1. `chmod 777 -R shellScript/`
1. 正式發佈前移除 `.env` 中的 `LETSENCRYPT_TEST=true`\
此設定為SSL測試證書\
正式版有申請次數上限，務必在測試正常、最後上線前再移除
1. `docker-compose up -d`
