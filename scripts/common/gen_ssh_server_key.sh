#!/usr/bin/env bash
set +x

cat << 'EOF' > /etc/init.d/ssh_gen_host_keys
#!/bin/sh
#
# Generates new ssh host keys on first boot
#
# chkconfig: - 2345 02
# description: Generates new ssh host keys on first boot

### BEGIN INIT INFO
# Provides: ssh_gen_host_keys
# Required-Start: $remote_fs $syslog
# Required-Stop: $remote_fs $syslog
# Default-Start: 2 3 4 5
# Default-Stop:
# Short-Description: Generates new ssh host keys on first boot
# Description: Generates new ssh host keys on first boot
### END INIT INFO
rm -f /etc/ssh/ssh_host_*

ssh-keygen -f /etc/ssh/ssh_host_rsa_key -t rsa -N ""
ssh-keygen -f /etc/ssh/ssh_host_ecdsa_key -t ecdsa -N ""
chkconfig ssh_gen_host_keys off

rm -f /etc/init.d/ssh_gen_host_keys
EOF

chmod a+x /etc/init.d/ssh_gen_host_keys
chkconfig ssh_gen_host_keys on

exit 0
