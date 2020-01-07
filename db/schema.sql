DROP DATABASE IF EXISTS o0alowvmji0trkk8;
CREATE DATABASE o0alowvmji0trkk8;
USE o0alowvmji0trkk8;
CREATE TABLE burgers(
    id INT NOT NULL AUTO_INCREMENT,
    burger_name VARCHAR(255) NOT NULL,
    devoured BOOLEAN,
    PRIMARY KEY (id)
);  