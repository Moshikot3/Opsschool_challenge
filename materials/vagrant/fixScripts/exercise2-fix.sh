#!/bin/bash
#add fix to exercise2 here
grep -v "127.0.0.1 www.ascii-art.de" /etc/hosts > tmpfile && mv -f tmpfile /etc/hosts