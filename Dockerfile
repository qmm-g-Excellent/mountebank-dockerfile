#必须基于一个父镜像，必须在Dockerfile的第一行
FROM node:8.4.0-alpine

#注意坑：这里安装mountebank必须是全局安装-g，否则构建镜像后，运行容器会失败：找不到mb命令
RUN set -ex \
   && npm install -g mountebank

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY ./imposter.ejs /usr/src/app

#/mockApi不存在会自动创建
COPY ./mockApi /usr/src/app/mockApi

EXPOSE 8001
CMD mb --configfile imposter.ejs

#CMD语句与RUN不同，RUN是在build镜像的时候运行，而CMD语句是在build结束后运行。
#一个Dockerfile钟可以有多个RUN语句，虽然也可以有多个CMD语句，但是却只有最后一条CMD语句会执行。

