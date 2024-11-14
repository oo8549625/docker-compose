## 數據庫
https://hub.docker.com/r/jumpserver/jms_all

mysql >= 5.7, character set: utf8, collate: utf8_general_ci

redis >= 6.0

## 部署
```bash
cd ~/jumpserver
vi .env
# 若沒有net bridge網路的話自行創建
docker network create -d bridge net

docker compose up -d
```

## 初始账号
- 默认账号: `admin`
- 默认密码: `ChangeMe`

## 更新
```bash
# 備份
docker stop jms
docker exec -it jms_mysql bash
mysqldump --skip-lock-tables --single-transaction --host=${DB_HOST} --port=${DB_PORT} --user=${DB_USER} --password=${DB_PASSWORD} ${DB_NAME} > /opt/jumpserver.sql
exit
docker cp jms_mysql:/opt/jumpserver.sql ./jumpserver.sql

# 修改版本號
vi .env

# 修改版本号为你要升级的版本, 其他选项保持默认
VERSION=v4.2.0-ce

docker rm jms
docker compose up -d
```