FROM debian:buster 

RUN apt-get update
RUN apt-get install -y php7.3 php-mysqli php-fpm mariadb-client curl wget
RUN	wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN	chmod +x wp-cli.phar
RUN	mv wp-cli.phar /usr/local/bin/wp 
RUN echo "listen = 9000" >> /etc/php/7.3/fpm/pool.d/www.conf
RUN echo "access.log = /var/log/$pool.access.log" >> /etc/php/7.3/fpm/pool.d/www.conf
RUN mkdir -p /var/www/wordpress 
RUN chown -R  www-data:www-data /var/www/wordpress/
RUN chmod 777 /var/www/wordpress/
RUN mkdir -p /run/php/
COPY tools/setup.sh /
RUN chmod 777 /setup.sh
WORKDIR /var/www/wordpress
EXPOSE 9000
ENTRYPOINT ["sh", "/setup.sh"]

