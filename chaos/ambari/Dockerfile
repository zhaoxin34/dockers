# ambari
FROM centos7-base

USER root
WORKDIR /root
# RUN wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo
# RUN wget -O /etc/yum.repos.d/epel.repo http://mirrors.aliyun.com/repo/epel-7.repo
# RUN wget -O /etc/yum.repos.d/ambari.repo http://public-repo-1.hortonworks.com/ambari/centos7/2.x/updates/2.5.1.0/ambari.repo
# RUN yum clean all
# RUN yum makecache
# RUN yum install ambari-server -y

# 安装phantomjs 解压缩phantomjs到/usr/local下，然后在path中添加bin
RUN yum install -y fontconfig
ADD ./software/phantomjs-2.1.1-linux-x86_64.tar.bz2 /usr/local/phantomjs
COPY ./software/yarn-v0.23.2.tar.gz /Users/zhaoxin/working/java/repo/com/github/eirslett/yarn/0.23.2/yarn-0.23.2./yarn-v0.23.2.tar.gz
# COPY /Users/zhaoxin/working/java/repo/com/github/eirslett/node/4.5.0/node-4.5.0-linux-x64.tar.gz
ADD software/apache-ambari-2.5.1-src.tar.gz ./
# https://npm.taobao.org/mirrors/phantomjs
# yarn config set registry https://registry.npm.taobao.org
ENV PATH "/usr/local/phantomjs/phantomjs-2.1.1-linux-x86_64/bin/:$M2_HOME/bin/:$JAVA_HOME/bin/:${PATH}"

# RUN wget https://mirrors.tuna.tsinghua.edu.cn/apache/ambari/ambari-2.5.1/apache-ambari-2.5.1-src.tar.gz
COPY ./software/apache-ambari-2.5.1-src.tar.gz ./
RUN tar xzvf apache-ambari-2.5.1-src.tar.gz
RUN cd apache-ambari-2.5.1-src \
	&& mvn versions:set -DnewVersion=2.5.1.0.0 \
	&& pushd ambari-metrics \
	&& mvn versions:set -DnewVersion=2.5.1.0.0 \
	&& popd
CMD ["/bin/bash", "-c", "source .bash_profile; /bin/bash"]
