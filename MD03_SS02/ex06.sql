CREATE DATABASE ecommerce;
USE ecommerce;
CREATE TABLE users(
id INT AUTO_INCREMENT PRIMARY KEY,
fullName VARCHAR(100),
email VARCHAR(255),
password VARCHAR(255),
phone VARCHAR(11),
permission BIT,
status BIT
);
CREATE TABLE address(
id INT AUTO_INCREMENT PRIMARY KEY,
user_id INT REFERENCES users(id),
receiveAddress VARCHAR(100),
receiveName VARCHAR(100),
receivePhone VARCHAR(11),
isDefault BIT
);
CREATE TABLE orders(
id INT AUTO_INCREMENT PRIMARY KEY,
orderAt DATETIME,
totals DOUBLE,
user_id INT REFERENCES users(id),
status BIT
);
CREATE TABLE catalog(
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100),
status BIT
);
CREATE TABLE product(
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100),
price DOUBLE,
stock INT,
catalog_id INT REFERENCES catalog (id),
status BIT
);
CREATE TABLE wishList(
user_id INT REFERENCES users(id),
product_id INT REFERENCES product(id),
PRIMARY KEY(user_id, product_id)
);
CREATE TABLE shopping_cart(
id INT AUTO_INCREMENT PRIMARY KEY,
user_id INT REFERENCES users(id),
product_id INT REFERENCES product(id),
quatity INT
);
CREATE TABLE order_detail(
id INT AUTO_INCREMENT PRIMARY KEY,
order_id INT REFERENCES orders(id),
product_id INT REFERENCES product(id),
quantity INT,
unit_price DOUBLE
);