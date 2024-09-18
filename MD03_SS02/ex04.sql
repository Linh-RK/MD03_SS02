CREATE DATABASE QuanLyDeThi;
USE QuanLyDeThi;
CREATE TABLE users(
id INT AUTO_INCREMENT PRIMARY KEY,
fullName VARCHAR(100),
email VARCHAR(255),
passsword VARCHAR(255),
phone VARCHAR(11),
permission BIT,
status BIT
);
CREATE TABLE history(
id INT AUTO_INCREMENT PRIMARY KEY,
user_id INT REFERENCES users(id),
point INT,
examDate DATETIME
);
CREATE TABLE exams(
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100),
duration INT,
status BIT
);
CREATE TABLE questions(
id INT AUTO_INCREMENT PRIMARY KEY,
content VARCHAR(255),
exam_id INT REFERENCES exams(id),
status BIT
);
CREATE TABLE history_detail(
id INT AUTO_INCREMENT PRIMARY KEY,
history_id INT REFERENCES history(id),
question_id INT REFERENCES questions(id),
result BIT
);
CREATE TABLE answer(
id INT AUTO_INCREMENT PRIMARY KEY,
content VARCHAR(255),
question_id INT REFERENCES questions(id),
answerTrue BIT
);

