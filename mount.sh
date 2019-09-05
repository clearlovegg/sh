#!/bin/bash
Cobak_fun(){
    mv /etc/yum.repos.d/Cen* /etc/yum.repos.d/bak
    wget -P /etc/yum.repos.d/  http://xxx.107.173.242/7.5/CentOS7.5.repo
    yum clean all
    yum repolist
    echo  "yum已经配置成功"
}
if [ -f /etc/yum.repos.d/CentOS7.5.repo ];then
    echo "yum已经配置成功"
else
    if [ -d /etc/yum.repos.d/bak ];then
        Cobak_fun    
    else
        mkdir /etc/yum.repos.d/bak 
        Cobak_fun
    fi
fi
