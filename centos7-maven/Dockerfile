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

FROM centos7-base

# RUN yum install -y vim

WORKDIR /root

ADD software/maven_3.3.9 /usr/local/maven
ENV M2_HOME /usr/local/maven
ENV PATH "$M2_HOME/bin/:${PATH}"

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
