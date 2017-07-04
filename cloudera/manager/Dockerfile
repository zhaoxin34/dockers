# **** cloudera ****
# docker build -t cloudera .
# docker run --privileged=true -it -p 7180:7180 -v /Users/zhaoxin/working/docker_data/cloudera:/data cloudera
FROM cloudera-base

ARG MYSQL_HOST=192.168.0.62
ARG CDH_VERSION=5.11.1

USER root
WORKDIR /root

RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N ''
RUN echo "abc123" | passwd --stdin root
RUN systemctl enable ntpd
RUN systemctl enable sshd

COPY db.properties /etc/cloudera-scm-server/db.properties
RUN cd /etc/cloudera-scm-server/ && sed -i "s/{MYSQL_HOST}/${MYSQL_HOST}/g" db.properties
ADD config.ini /etc/cloudera-scm-agent/config.ini

