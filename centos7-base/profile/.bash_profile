# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
f
PS1="[\u@\[\033[0;33m\]\$(date '+%m%d %H:%M:%S') \e[32;1m`/sbin/ifconfig| grep 'inet '|grep '192.168'| awk '{print $2}' | sed -e 's/addr://' |grep -v '127.0.0.1'| grep -v '0.0.0.0'| awk '{printf("<%s>", $1)}'`\e[0m]: \w\n$?>"
LANG="en_US.UTF-8"
export JAVA_HOME=/usr/local/jdk
#export M2_HOME=/home/chedan/workspace/maven
#SVN_HOME=/usr/local/svn
##export M2_HOME=/usr/local/maven_3.0.3
export PATH=$JAVA_HOME/bin:$PATH
#export PATH=$M2_HOME/bin:$JAVA_HOME/bin:$SVN_HOME/bin:$PATH
export TZ='Asia/Shanghai'