# cloudera base
# 添加manager 和agent
FROM centos7-base

USER root
WORKDIR /root
ENV PS1 "[\u@\[\033[0;33m\]\$(date '+%m%d %H:%M:%S') \e[32;1m\h\e[0m]: \w\n$?>"
ADD ./yum.repos.d/* /etc/yum.repos.d/
RUN yum install -y bind-utils chkconfig cyrus-sasl-gssapi cyrus-sasl-plain fuse fuse-libs gcc httpd init-functions libxslt mod_ssl MySQL-python openssl openssl-devel openssl-devel perl portmap psmisc sed service swig zlib
RUN yum install -y ntp python-devel python-mysql python-setuptools python-xml initscripts
RUN yum install -y openssh-server wget
RUN yum install -y cloudera-manager-daemons cloudera-manager-server


CMD ["/bin/bash"]
