#!/bin/bash
set -x

yum -y install https://download.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-8.noarch.rpm
sed -i -e 's/^enabled=1/enabled=0/' /etc/yum.repos.d/epel.repo

yum -y install sshfs vim git wget nfs-utils nfs-utils-lib

