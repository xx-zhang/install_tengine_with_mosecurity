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
-v $(pwd)/nginx.conf.d/modsecurity.conf:/etc/nginx/modsecurity.conf \
  --restart=always --name=waf \
  registry.cn-hangzhou.aliyuncs.com/xxzhang/tengine-with-modsecurity:v0.1 \
 supervisord -c /etc/supervisord.conf

# 对于已经部署过tengine/waf/nginx的宿主机可以使用这个
docker run -itd -p 32180:80 -p 35280:8080 \
-v /spool/log/:/spool/log/ \
-v /etc/localtime:/etc/localtime:ro \
-v /etc/nginx:/etc/nginx \
--restart=always --name=waf \
  registry.cn-hangzhou.aliyuncs.com/xxzhang/tengine-with-modsecurity:v0.1 \
  supervisord -c /etc/supervisord.conf

```

## [关联日志处理](https://github.com/xx-sec/tengine-mosecruity-logdev)
- https://github.com/xx-sec/tengine-mosecruity-logdev
- python 安装的库可以参考 `xx-scan` 即可。

## 2019-9-3
> 由于需要对接WAF平台到管控设备，所以修改了WAF相关配置策略。
- 当前Dockerfile修改为从supervisord启动。
=======

## 2019-7-5
- 强烈推荐进入 online 安装，就是 hub 上编译的时候选择 /online 目录。


## 2019-9-28
- 一直找 `SecAuditLogFormat JSON` 这个设置没有用。
- 后来才知道，原来 [YAGL](https://github.com/SpiderLabs/ModSecurity/issues/1585)