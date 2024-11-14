# 部署
```bash
# 若沒有net bridge網路的話自行創建
docker network create -d bridge net

docker compose up -d
```

https://github.com/jenkinsci/docker/blob/master/README.md

## docker 權限問題
sudo chmod 666 /var/run/docker.sock