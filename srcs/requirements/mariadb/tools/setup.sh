    mysql_install_db 
    service mysql start
    mysql -u root -p ${DB_PASS} -e "FLUSH PRIVILEGES;"
    mysql -u root -p ${DB_PASS} -e "CREATE USER IF NOT EXISTS '${DB_LOGIN}'@'localhost' identified by '${DB_PASS}';" &&\
	mysql -u root -p ${DB_PASS} -e "CREATE DATABASE IF NOT EXISTS wordpress;" &&\
	mysql -u root -p ${DB_PASS} -e "GRANT ALL PRIVILEGES ON *.* TO '${DB_LOGIN}'@'%' IDENTIFIED BY '${DB_PASS}';" &&\
	mysql -u root -p ${DB_PASS} -e "FLUSH PRIVILEGES;"
    service mysql stop 
mysqld
