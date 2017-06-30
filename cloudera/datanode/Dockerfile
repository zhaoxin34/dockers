# **** cloudera ****
# docker build -t cloudera .
# docker run --privileged=true -it -p 7180:7180 -v /Users/zhaoxin/working/docker_data/cloudera:/data cloudera
FROM cloudera-node

RUN systemctl disable cloudera-scm-server

