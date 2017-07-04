# repo-server
# 用于创建一个repo的服务器，方便离线安装服务
# BUILD: docker build -t repo-server .
# RUN: docker run -it -p {reportPort}:80 -v {reporDir}:/repo repo-server
# 使用方法
# 登录到repo-server yum安装需要的包 然后createrepo  -d /repo 生成包索引
# **********************************************************************

FROM centos:7

ENV PS1 "[\u@\[\033[0;33m\]\$(date '+%m%d %H:%M:%S') \e[32;1m\h\e[0m]: \w\n$?>"
ENV LANG en_US.UTF-8
ENV TZ "Asia/Shanghai"

ADD ./yum.conf /etc/
ADD ./yum.repos.d/* /etc/yum.repos.d/
RUN yum install -y epel-release
RUN yum install -y yum-utils createrepo
RUN yum install -y nginx
ADD ./nginx.conf /etc/nginx/

USER root
WORKDIR /root

EXPOSE 80
STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]
