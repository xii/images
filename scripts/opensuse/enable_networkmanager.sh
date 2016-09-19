#!/usr/bin/env bash

systemctl stop wicked
systemctl disable wicked
systemctl enable NetworkManager
systemctl start NetworkManager
