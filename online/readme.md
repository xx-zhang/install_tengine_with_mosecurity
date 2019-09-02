# 在线安装的版本


## 注意事项
- `&& { git checkout -b v3/master origin/v3/master }|| {echo 'None git check'}  \`
- Dockerfile 中的第42行可能需要删除, 免得报错。


## 2019-6-28
- 进入aliyun进行全编译。
```
configure.ac: installing './ylwrap'
5585Loaded plugins: fastestmirror, ovl
5586Cannot open: https://archives.fedoraproject.org/pub/archive/fedora/linux/updates/23/x86_64/b/bison-3.0.4-3.fc23.x86_64.rpm. Skipping.
5587Error: Nothing to do
5588The command '/bin/sh -c cd ${DEPLOY_PATH} && /bin/bash build_modsecurity.sh' returned a non-zero code: 1
5589{"exitCode":8, "message":"docker build failed or timeout "}
```

## Runed in a line 
```bash
docker run -itd -p 32180:80 -p 35280:8080 \
-v /spool/log/:/spool/log/ \
-v /etc/localtime:/etc/localtime:ro \
-v $(pwd)/nginx.conf.d/nginx.conf:/etc/nginx.conf \
-v $(pwd)/nginx.conf.d/help.conf:/etc/nginx/help.conf \
-v $(pwd)/nginx.conf.d/vhosts:/etc/nginx/vhosts \
  --restart=always --name=waf \
  registry.cn-hangzhou.aliyuncs.com/xxzhang/tengine-with-modsecurity:v0.1 \
  /bin/bash
  
```

## [关联日志处理](https://github.com/xx-sec/tengine-mosecruity-logdev)
- https://github.com/xx-sec/tengine-mosecruity-logdev