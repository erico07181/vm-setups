#! /bin/bash
dnf upgrade --refresh
dnf install dnf-plugin-system-upgrade
dnf system-upgrade download --releasever=35

dnf install vim-enhanced
dnf install net-tools


dnf remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-selinux \
                  docker-engine-selinux \
                  docker-engine


dnf -y install dnf-plugins-core 
dnf config-manager \ 
    --add-repo \
    https://download.docker.com/linux/fedora/docker-ce.repo

dnf install docker-ce docker-ce-cli containerd.io

swapoff -a

dnf  intall apt-transport-https curl

yum intall wget

wget https://github.com/kubeedge/kubeedge/releases/download/v1.9.1/keadm-v1.9.1-linux-amd64.tar.gz
tar -xvsf keadm-v1.9.1-linux-amd64.tar.gz
