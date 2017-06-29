# **** cloudera ****
# docker build -t cloudera .
# docker run --privileged=true -it -p 7180:7180 -v /Users/zhaoxin/working/docker_data/cloudera:/data cloudera
FROM cloudera-base

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
ARG CDH_VERSION=5.11.1

RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N ''
RUN echo "abc123" | passwd --stdin root
ADD ./start.sh ./
COPY db.properties /opt/cm-${CDH_VERSION}/etc/cloudera-scm-server

CMD ["/bin/bash", "start.sh"]
