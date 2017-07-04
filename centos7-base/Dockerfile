# 目标：制作一个基础班的centos7
# 目录：
#		/usr/local		放置软件
# 功能：
#		java支持
#		时区?
#		tmux?
#		vim?
#		nc telnet wget curl ifconfig
#

FROM centos:7

ARG REPO_SERVER=192.168.0.62:7777
# RUN yum install -y vim

WORKDIR /root
RUN cd /etc/yum.repos.d/ && mkdir back && mv ./*.repo back/
COPY yum.repo.d/* /etc/yum.repos.d/
RUN cd /etc/yum.repos.d/ && sed -i "s/{REPO-SERVER-URL}/http:\/\/${REPO_SERVER}\//g" *.repo
# 所有ENV定义到.bash_profile里
# 运行时的命令行 docker run -it IMAGE_NAME /bin/bash -c "source .bash_profile; /bin/bash"
# 或者在CMD中制指定.bash_profile
# ADD software/jdk-8u131-linux-x64.tar.gz /usr/local/jdk
# ENV JAVA_HOME /usr/local/jdk/jdk1.8.0_131
# ENV PATH "$JAVA_HOME/bin/:${PATH}"
ENV LANG en_US.UTF-8
ENV TZ "Asia/Shanghai"
ENV PS1 "[\u@\[\033[0;33m\]\$(date '+%m%d %H:%M:%S') \e[32;1m\h\e[0m]: \w\n$?>"

# RUN yum install -y epel-release
# RUN yum groupinstall -y "Development Tools"
RUN yum clean all && yum makecache
RUN yum install -y autoconf automake binutils bison flex gcc gcc-c++ gettext libtool make patch pkgconfig redhat-rpm-config rpm-build rpm-sign
RUN yum install -y telnet wget curl nmap-ncat vim net-tools rpm-build tree expect


# 把配置文件考过去
COPY profile/* /root/

#CMD ["/bin/bash", "-c", "su - chaos"]
CMD ["/bin/bash"]

# # Set the working directory to /app
# WORKDIR /app
#
# # Copy the current directory contents into the container at /app
# ADD . /app
#
# # Install any needed packages specified in requirements.txt
# RUN pip install -r requirements.txt
#
# # Make port 80 available to the world outside this container
# EXPOSE 80
#
# # Define environment variable
# ENV NAME World
#
# # Run app.py when the container launches
# CMD ["python", "app.py"]
