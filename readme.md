## 快速安装
```
docker pull actanble/tengine 
```


## 使用
```
docker run -itd -P  --name=tengine  actanble/tengine  

docker exec -t tengine /usr/sbin/nginx 
```


## 自己编译
```
cd online && docker build tengine . 
```


## 安装说明和步骤

- 略
- [个人构建仓库](https://cr.console.aliyun.com/repository/cn-zhangjiakou/xx-zhang/tengine-with-modsecurity/build)

