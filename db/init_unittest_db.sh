
# init unit test database script
# dcocker cp ./ mariadb:/db
# docker exec -it mariadb /bin/bash
# cd /db
# chmod 777 init_unittest_db.sh
# ./init_unittest_db.sh

PASSWORD=ladis@123456

echo ${PASSWORD}

mysql -uroot -p${PASSWORD} -h127.0.0.1 -e 'DROP DATABASE IF EXISTS `xprofiler_console`; CREATE DATABASE `xprofiler_console`;'
mysql -uroot -p${PASSWORD} -h127.0.0.1 -D 'xprofiler_console' < ./init.sql
mysql -uroot -p${PASSWORD} -h127.0.0.1 -D 'xprofiler_console' -e 'SHOW tables;'

mysql -uroot -p${PASSWORD} -h127.0.0.1 -e 'DROP DATABASE IF EXISTS `xprofiler_logs`; CREATE DATABASE `xprofiler_logs`;'
mysql -uroot -p${PASSWORD} -h127.0.0.1 -D 'xprofiler_logs' < ./init1.sql
mysql -uroot -p${PASSWORD} -h127.0.0.1 -D 'xprofiler_logs' < ./date.sql
mysql -uroot -p${PASSWORD} -h127.0.0.1 -D 'xprofiler_logs' -e 'SHOW tables;'