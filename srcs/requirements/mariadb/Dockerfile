FROM debian:buster 

RUN apt-get update
RUN apt-get install -y mariadb-server; 

COPY tools/setup.sh . 

EXPOSE 3306
RUN rm /etc/mysql/mariadb.conf.d/50-server.cnf 
COPY tmp.sql /
COPY sed.sh /
COPY tools/50-server.cnf /etc/mysql/mariadb.conf.d 
#RUN sed -i -r "s/DB_LOGIN/'${DB_LOGIN}'/g" /tmp.sql
#RUN sed -i -r "s/DB_PASS/'${DB_PASS}'/g" /tmp.sql
#RUN service mysql start && mysqladmin -u root password ${DB_PASS} && mysql -u root -p ${DB_PASS} < tmp.sql
#RUN service mysql restart
ENTRYPOINT ["bash", "sed.sh"]
