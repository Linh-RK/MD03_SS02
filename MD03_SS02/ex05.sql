CREATE DATABASE QuanLyThuVien;
USE QuanLyThuVien;
CREATE TABLE catalog(
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100),
status BIT
);
CREATE TABLE book(
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100),
price DOUBLE,
stock INT,
status BIT
);
CREATE TABLE book_catalog(
catalog_id INT REFERENCES catalog(id),
book_id INT REFERENCES book(id),
PRIMARY KEY(catalog_id,book_id)
);
CREATE TABLE users(
id INT AUTO_INCREMENT PRIMARY KEY,
fullName VARCHAR(100),
email VARCHAR(255),
password VARCHAR(255),
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
CREATE TABLE order_detail(
id INT AUTO_INCREMENT PRIMARY KEY,
order_id INT REFERENCES orders(id),
book_id INT REFERENCES book(id),
quatity INT,
unit_price DOUBLE
);
