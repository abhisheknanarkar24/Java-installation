#!/bin/bash

#Run this script as redHat user (or any user with sudo access)

#Install Java using rpm
rpm -ivh $1

alternatives --install /usr/bin/java java /usr/java/jdk$2/bin/java 200000

#Set environment variables

tee -a /etc/profile.d/bash_profile.sh <<- 'EOF'
export JAVA_HOME=/usr/java/latest && export JRE_HOME=/usr/java/latest/jre && export PATH=$JAVA_HOME/bin:$JRE_HOME/bin:$PATH
export JRE_HOME=$JAVA_HOME/jre:$PATH
export PATH=$JAVA_HOME/bin:$PATH
EOF
