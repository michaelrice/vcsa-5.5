#!/bin/bash

rm -rf /root/.ssh
cp -a /home/vagrant/.ssh /root/
chown -R root:root /root/.ssh
chmod 700 /root/.ssh
chmod 600 /root/.ssh/authorized_keys
