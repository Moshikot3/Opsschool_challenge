#!/bin/bash
#add fix to exercise5-server2 here
cat /vagrant/server1_key/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
echo "Host *" >> /home/vagrant/.ssh/config
echo "StrictHostKeyChecking no" >> /home/vagrant/.ssh/config
cp /vagrant/server1_key/id_rsa* /home/vagrant/.ssh/
rm -rf /vagrant/server1_key
