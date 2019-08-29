# Java-installation
Installing java using ansible scripts

This repository contains java verification and installation scripts.
Steps to run playbook:
- Download java setup rpm or tar file

- Update config.ini file as per java setup name 

  JAVA_TAR=jdk-8u171-linux-x64.tar.gz

  JDK_RPM=jdk-8u171-linux-x64.rpm

- Configure inventory file to set up taget machine

- Run below command to install java


ansible-playbook /data/ansible/commonscripts/Java_lin.yml -e "configFile=/data/ansible/config.ini hosts=<hosts>" -i /etc/ansible/inventory -vvvv 
  
Note:
  
  <hosts> : pass host name as per inventory file.
  
  /etc/ansible/inventory : inventory hosts file path
  
  configFile: config.ini file
  
