# cloudera base
# 添加manager 和agent
# build的时候保证repo-server启动了，manager-server[agent]等包需要从那里安装
FROM centos7-base

# 开启systemd
ENV container=docker

RUN (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == systemd-tmpfiles-setup.service ] || rm -f $i; done); \
rm -f /lib/systemd/system/multi-user.target.wants/*;\
rm -f /etc/systemd/system/*.wants/*;\
rm -f /lib/systemd/system/local-fs.target.wants/*; \
rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
rm -f /lib/systemd/system/basic.target.wants/*;\
rm -f /lib/systemd/system/anaconda.target.wants/*;
VOLUME /run /tmp

USER root
WORKDIR /root
# ENV PS1 "[\u@\[\033[0;33m\]\$(date '+%m%d %H:%M:%S') \e[32;1m\h\e[0m]: \w\n$?>"
ENV REPO_SERVER=192.168.0.62:7777
RUN rm -rf /etc/yum.repos.d/*
ADD ./yum.repos.d/* /etc/yum.repos.d/
RUN cd /etc/yum.repos.d/ && sed -i "s/{REPO-SERVER-URL}/http:\/\/${REPO_SERVER}\//g" cloudera-*
RUN yum install -y bind-utils chkconfig cyrus-sasl-gssapi cyrus-sasl-plain fuse fuse-libs gcc httpd init-functions libxslt mod_ssl MySQL-python openssl openssl-devel openssl-devel perl portmap psmisc sed service swig zlib
RUN yum install -y ntp python-devel python-mysql python-setuptools python-xml initscripts
RUN yum install -y openssh-server wget
RUN yum install -y cloudera-manager-daemons cloudera-manager-server cloudera-manager-agent
RUN yum install -y java-1.8.0-openjdk mysql-connector-java

CMD ["/usr/sbin/init"]
