#!/bin/bash

# $1 = assets_dir
# $2 = java_dir

sudo cat >> "/etc/profile" <<EOL
JAVA_HOME= "$1/$2"
PATH=$PATH:$HOME/bin:$JAVA_HOME/bin
export JAVA_HOME
export PATH
EOL
ln -s $1/$2/bin/java /usr/bin/java
ln -s $1/$2/bin/javac /usr/bin/javac
ln -s $1/$2/bin/jar /usr/bin/jar


