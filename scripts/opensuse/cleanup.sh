#!/usr/bin/env bash
set -x

#zypper --non-interactive remove yast2

rm -rf /dev/.udev/ > /dev/null 2>&1
rm -rf /var/mail/* > /dev/null 2>&1
rm -rf /var/lib/dhcp/* > /dev/null 2>&1
rm -rf /etc/zypp/locks > /dev/null 2>&1

rm /etc/udev/rules.d/70-persistent-net.rules

sed -i /HWADDR/d /etc/sysconfig/network/ifcfg-eth0

