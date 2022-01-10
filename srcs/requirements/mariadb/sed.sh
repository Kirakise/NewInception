if [ ! -d "/var/lib/mysql/wordpress" ]; then
	echo "123"
	service mysql start
	mysql -u root < tmp.sql
	mysqladmin -u root password ${DB_PASS}
	service mysql stop
	echo "123"
fi
mysqld
cat /var/log/mysql/error.log
