ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'moises2023';
GRANT ALL PRIVILEGES ON * . * TO 'root'@'localhost';
FLUSH PRIVILEGES;
