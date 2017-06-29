# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi
# 所有环境变量的定义做到Dockerfile里面的ENV
#
#
export PS1="[\u@\[\033[0;33m\]\$(date '+%m%d %H:%M:%S') \e[32;1m\h\e[0m]: \w\n$?>"
# export LANG="en_US.UTF-8"
# export JAVA_HOME=/usr/local/jdk
# export M2_HOME=/usr/local/maven
# export PATH=$M2_HOME/bin/:$JAVA_HOME/bin:$PATH
# export PATH=$M2_HOME/bin:$JAVA_HOME/bin:$SVN_HOME/bin:$PATH
# export TZ='Asia/Shanghai'