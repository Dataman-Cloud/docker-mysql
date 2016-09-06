docker run -d \
	--name dataman-mysql \
	--net host  \
        --restart always \
	-e MYSQL_ROOT_PASSWORD=dataman1234 \
	-e MYSQL_CHECK_USER=zabbix_check \
	-e MYSQL_CHECK_PASSWORD=zabbix1234 \
	-e MYSQL_USER=omega \
	-e MYSQL_PASSWORD=omega1234 \
	-e MYSQL_DATABASE='omega-server' \
	-v /data/lib/mysql:/var/lib/mysql \
	library/centos7-mysql-5.6.26
	#--entrypoint=bash \
        #-e CONFIG_SERVER="http://10.3.10.33" \
