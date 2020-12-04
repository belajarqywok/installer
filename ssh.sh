#!/bin/bash
apt install openssh-server
ufw allow ssh
cp sshd_config /etc/ssh/
clear
systemctl status ssh

