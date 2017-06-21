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
COPY yum.repo.d/* /etc/yum.repo-s.d/

ENV JAVA_HOME /usr/local/jdk
ENV PATH "$JAVA_HOME/bin/:${PATH}"
ENV TZ "Asia/Shanghai"
ENV PS1 "[\e[32;1m\u\e[0m@\h \w]\$ "

RUN yum install -y tmux telnet wget curl nmap-ncat vim net-tools
RUN yum install -y epel-release
RUN yum install -y nodejs
# install gulp
RUN npm install --global gulp-cli

RUN groupadd chaos &&  useradd -g chaos chaos
RUN groupadd datatist &&  useradd -g datatist datatist

# 把配置文件考过去
COPY profile/* /root/
COPY profile/* /home/datatist/

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
