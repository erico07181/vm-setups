#! /bin/bash
yum update
yum upgrade
yum install vim-enhanced -y
yum install net-tools -y

yum remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine

yum install -y yum-utils
yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

yum install docker-ce docker-ce-cli containerd.io
swapoff -a

yum install apt-transport-https curl

yum install wget

wget https://github.com/kubeedge/kubeedge/releases/download/v1.9.1/keadm-v1.9.1-linux-amd64.tar.gz
tar -xvsf keadm-v1.9.1-linux-amd64.tar.gz
