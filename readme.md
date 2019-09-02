## 快速安装
```
docker pull actanble/modsecurity 
or 
docker pull registry.cn-zhangjiakou.aliyuncs.com/xx-zhang/tengine-with-modsecurity
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


## 2019-5-26
- 修改使用tini控制子进程。

## 2019-5-27
- 修改版本为当前管理的healtht-check


## Note 
- 规则文件
  - /etc/nginx/nginx.conf 主要启动的文件 下面的文件都是这个里面设置和依赖的。
    - /etc/nginx/vhosts/ 针对nginx.conf 的文件
    - /etc/nginx/help.comf 
    - /var/log/*nginx 自己设置的访问日志文件
    
  - /etc/nginx/crs-setup.conf 引擎初始配置文件
  - /etc/nginx/modsecurity.conf 引擎文件
  - /opt/owasp * 核心规则文件
  - /var/log/modsec_audit.log 告警日志
- **详情查看Dockerfile**
