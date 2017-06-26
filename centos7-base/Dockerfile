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

# RUN yum install -y vim

WORKDIR /root

ADD software/jdk1.8.0_101 /usr/local/jdk
ADD software/maven_3.3.9 /usr/local/maven
COPY yum.repo.d/* /etc/yum.repo-s.d/
# 所有ENV定义到.bash_profile里
# 运行时的命令行 docker run -it IMAGE_NAME /bin/bash -c "source .bash_profile; /bin/bash"
# 或者在CMD中制指定.bash_profile
ENV JAVA_HOME /usr/local/jdk
ENV M2_HOME /usr/local/maven
ENV PATH "$M2_HOME/bin/:$JAVA_HOME/bin/:${PATH}"
ENV LANG en_US.UTF-8
ENV TZ "Asia/Shanghai"

RUN yum install -y epel-release
RUN yum groupinstall -y development tools
RUN yum install -y tmux telnet wget curl nmap-ncat vim net-tools rpm-build tree expect
RUN yum install -y nodejs
# install gulp
RUN npm install --global gulp-cli

RUN groupadd chaos &&  useradd -g chaos chaos
RUN groupadd datatist &&  useradd -g datatist datatist

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
