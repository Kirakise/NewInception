sleep 10
if  [ ! -f /var/www/wordpress/wp-config.php ]; then 
   #--locale=ru_RU 
    wp core --allow-root download --locale=ru_RU --force --path='/var/www/wordpress' 
    while  [ ! -f /var/www/wordpress/wp-config.php ]; do    
        wp core config --allow-root --dbname=wordpress --path='/var/www/wordpress' --dbuser=$DB_LOGIN --dbpass=$DB_PASS --dbhost=mariadb:3306
    done 
#fi
    wp core install --allow-root --url='rcaraway.42.fr' --title='WordPress for Inception' --admin_user=$WP_LOGIN --admin_password=$WP_PASS  --admin_email="admin@admin.com" --path='/var/www/wordpress';
    wp  user create --allow-root $WPU_1LOGIN user1@user.com --user_pass=$WPU_1PASS --role=author --path='/var/www/wordpress';
fi 
php-fpm7.3 --nodaemonize
