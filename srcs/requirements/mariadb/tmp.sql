CREATE DATABASE IF NOT EXISTS wordpress;
CREATE USER IF NOT EXISTS 'rcaraway'@'localhost' IDENTIFIED by 'password';
GRANT ALL PRIVILEGES ON *.* TO 'rcaraway'@'localhost' IDENTIFIED BY 'password';
CREATE USER IF NOT EXISTS 'rcaraway'@'%' IDENTIFIED by 'password';
GRANT ALL PRIVILEGES ON *.* TO 'rcaraway'@'%' IDENTIFIED BY 'password';
FLUSH PRIVILEGES;
