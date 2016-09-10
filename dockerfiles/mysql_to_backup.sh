#!/bin/bash
MYSQL_BIN="mysql -h$MYSQL_HOST -u$MYSQL_ADMIN_USER -p$MYSQL_ADMIN_PASSWORD"
sql+="
stop slave;
change master to MASTER_HOST='"$MASTER_HOST"',master_user='"$MYSQL_ADMIN_USER"',master_password='"$MYSQL_ADMIN_PASSWORD"',MASTER_PORT = 3306,MASTER_CONNECT_R
ETRY = 60,master_auto_position=1;
start slave;
"
$MYSQL_BIN -e "$sql"

$MYSQL_BIN -e "show slave status \G;" |grep YES
