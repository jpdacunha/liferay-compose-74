
CREATE DATABASE IF NOT EXISTS lportal74;

ALTER DATABASE lportal74 CHARACTER SET utf8 COLLATE utf8_general_ci;

GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost' IDENTIFIED BY 'password';
flush privileges;