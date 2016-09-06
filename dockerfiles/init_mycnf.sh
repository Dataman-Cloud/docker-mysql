#/bin/bash
num=`hostname -s|grep -o '[[:digit:]]'`
if [ "$num" ];then
    sed -i 's/server-id[[:space:]]*=[[:space:]]*[[:digit:]]*[[:space:]]*/server-id='`hostname -s|grep -o '[[:digit:]]'`'/g' /etc/my.cnf
fi
