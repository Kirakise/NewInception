    mysql_install_db
    service mysql start
    
    mysql -e "CREATE USER IF NOT EXISTS '${DB_LOGIN}'@'localhost' identified by '${DB_PASS}';" &&\
	mysql -e "CREATE DATABASE IF NOT EXISTS wordpress;" &&\
	mysql -e "GRANT ALL PRIVILEGES ON *.* TO '${DB_LOGIN}'@'%' IDENTIFIED BY '${DB_PASS}';" &&\
	mysql -e "FLUSH PRIVILEGES;"
    service mysql stop 
mysqld
