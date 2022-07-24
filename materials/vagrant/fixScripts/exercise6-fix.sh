#!/bin/bash
#add fix to exercise6-fix here

Path=$1
TargetPath=${@: -1}
ServerName=$(hostname)

if [ "$ServerName" = "server1" ]; then
            echo "Sending to server2"
            TargetServer="server2"
    else
            echo "Sending to server1"
            TargetServer="Server1"
fi

scp -v -r $Path vagrant@$TargetServer:/$TargetPath &> /tmp/Scp_verbosedata.log

#total number of bytes
echo $(grep "Transferred: " /tmp/Scp_verbosedata.log | awk '{print $3}' | tr -d ',')
