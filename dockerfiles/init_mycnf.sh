#/bin/bash
num=`hostname -s|grep -o '[[:digit:]]*'|tail -1`
if [ "$num" ];then
    sed -i 's/server-id[[:space:]]*=[[:space:]]*[[:digit:]]*[[:space:]]*/server-id='$num'/g' /etc/my.cnf
fi
