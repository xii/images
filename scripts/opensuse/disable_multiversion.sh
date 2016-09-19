#!/usr/bin/env bash
# Disable allow multiple package versions
sed -i 's/^multiversion/# multiversion/' \
  /etc/zypp/zypp.conf
exit 0
