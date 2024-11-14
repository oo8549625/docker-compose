https://goharbor.io/docs/1.10/install-config/run-installer-script/

## 部署

一開始什麼都沒有的情況之下，如果想要直接執行部署，跑install.sh
```bash
./install.sh
```

一開始什麼都沒有的情況之下，如果想要自行更動docker-compose.yml文檔，執行prepare腳本，來初始化common文擋和docker-compose.yml，檔案位置可自行在prepare調整。
```bash
./prepare
docker-compose -f docker-compose.yml up -d
```

如果common目錄和docker-compose.yml都有了，可以自行管理yml文檔案，自行部署
```bash
docker-compose -f docker-compose.yml up -d
```