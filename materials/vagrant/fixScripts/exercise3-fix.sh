#!/bin/bash
#add fix to exercise3 here
grep -v "Require all denied" /etc/apache2/sites-available/000-default.conf > tmpfile2 && mv -f tmpfile2 /etc/apache2/sites-available/000-default.conf
service apache2 reload