#!/bin/bash
#add fix to exercise5-server1 here
#https://www.vagrantup.com/docs/synced-folders
ls -l /vagrant
ssh-keygen -b 4096 -N '' -f /home/vagrant/.ssh/id_rsa
mkdir /vagrant/server1_key
cp /home/vagrant/.ssh/id_rsa* /vagrant/server1_key/
echo "StrictHostKeyChecking no" >> /home/vagrant/.ssh/config
chown -R vagrant:vagrant /home/vagrant;
cat /home/vagrant/.ssh/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys

systemctl restart ssh

