#version 1.0
#!/bin/bash

#docker 部署

#docker 安装
#sudo curl -sSL get.docker.com | sh

#启动容器
docker run -dit \
  -v $PWD/ql:/ql/data \
  -p 5700:5700 \
  --name qinglong \
  --hostname qinglong \
  --restart unless-stopped \
  whyour/qinglong:latest

# 请访问 http://<ip>:5700 登陆并按提示配置...
