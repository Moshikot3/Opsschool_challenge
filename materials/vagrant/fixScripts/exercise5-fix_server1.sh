#!/bin/bash
#add fix to exercise5-server1 here
#https://www.vagrantup.com/docs/synced-folders
ls -l /vagrant
ssh-keygen -b 4096 -N '' -f /home/vagrant/.ssh/id_rsa
mkdir /vagrant/server1_key
cp /home/vagrant/.ssh/id_rsa.pub /vagrant/server1_key/id_rsa.pub
echo "StrictHostKeyChecking no" >> /home/vagrant/.ssh/config
chown -R vagrant:vagrant /home/vagrant;
systemctl restart ssh
