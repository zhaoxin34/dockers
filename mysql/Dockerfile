# mysql
# 运行方式 1 演示模式：重启后数据丢失，配置丢失
#			docker run -p 3306 mysql
# 运行方式 2 持久化方式：重启后数据和配置都不丢失，但是启动前需要提供一个数据、配置的目录
# docker run -v {mysql数据配置目录}:/home/mysql/ -p 3306 mysql
# mysql home 目录结构如下
# /home/mysql/conf 放置配置文件
# /home/mysql/log 日志存放的目录
# /home/mysql/data mysql数据目录

FROM centos7-base

USER root
WORKDIR /root
RUN yum install -y cmake ncurses-devel
ADD http://dev.mysql.com/get/Downloads/MySQL-5.6/mysql-5.6.26.tar.gz mysql-5.6.26.tar.gz
RUN tar xzvf mysql-5.6.26.tar.gz
RUN groupadd mysql && useradd -g mysql mysql
RUN mkdir /home/mysql/conf && mkdir /home/mysql/data && mkdir /home/mysql/log
RUN cd mysql-5.6.26 && cmake .\
    -DCMAKE_INSTALL_PREFIX=/usr/local/mysql/ \
    -DMYSQL_DATADIR=/home/mysql/data/  \
    -DMYSQL_UNIX_ADDR=/home/mysql/data/mysqld.sock \
    -DWITH_INNOBASE_STORAGE_ENGINE=1  \
    -DENABLED_LOCAL_INFILE=1  \
    -DMYSQL_TCP_PORT=3306 \
    -DEXTRA_CHARSETS=all  \
    -DDEFAULT_CHARSET=utf8 \
    -DDEFAULT_COLLATION=utf8_general_ci \
    -DSYSCONFDIR=/home/mysql/conf \
    -DMYSQL_USER=mysql \
    -DWITH_DEBUG=0 \
    -DSYSCONFDIR=/home/mysql/conf/ \
	&& make && make install
RUN /usr/local/mysql/scripts/mysql_install_db --user=mysql --basedir=/usr/local/mysql/ --datadir=/home/mysql/data/
RUN cp /usr/local/mysql/support-files/mysql.server /etc/init.d/mysqld
ENV PATH $PATH:$HOME/bin:/usr/local/mysql/bin:/usr/local/mysql/lib
CMD ["/bin/bash", "-c", "source .bash_profile; /bin/bash"]
