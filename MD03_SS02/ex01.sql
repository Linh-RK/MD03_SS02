CREATE DATABASE ss02;
USE ss02;
CREATE TABLE product(
    id   INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    created DATE 
);
CREATE TABLE size(
    id   INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    status BIT 
);
CREATE TABLE color(
    id   INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    status BIT 
);
CREATE TABLE product_detail(
    id   INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT REFERENCES product(id),
    color_id INT REFERENCES color(id),
    size_id INT REFERENCES size(id),
    price DOUBLE,
    stock INT,
    status BIT
);