## 部署nacos

```bash
# 根據需求修改 nacos.env 和 mysql.env
# 產身key
openssl rand -hex 32
# 到網站編碼成Base64
https://base64.us/
NACOS_AUTH_TOKEN
# 配置帳密
NACOS_AUTH_IDENTITY_KEY
NACOS_AUTH_IDENTITY_VALUE
# 部署 volume
docker volume create mysql_data
# 部署 nacos
docker compose -f docker-compose.yml up -d
```