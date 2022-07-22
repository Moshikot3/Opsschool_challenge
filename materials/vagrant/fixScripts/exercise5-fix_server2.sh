#!/bin/bash
#add fix to exercise5-server2 here
cat /vagrant/server1_key/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
rm -rf /vagrant/server1_key