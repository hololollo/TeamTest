create database spring1;

use spring1;

show tables;

desc member;


CREATE TABLE member (
id  VARCHAR(50) PRIMARY KEY,
pw VARCHAR(100) NOT NULL,
name VARCHAR(100),
email VARCHAR(100),
tel VARCHAR(100),
birth VARCHAR(10),
gender VARCHAR(10),
postcode VARCHAR(20),
addr VARCHAR(255)
);
insert into member values('kang123', 'a1234', 'asd','asd@asd.asd','010-1111-1111','1992-10-21',null, '63309', '제주시');
select * from member;

CREATE TABLE notice (
bno int auto_increment PRIMARY KEY,
title VARCHAR(200),
content VARCHAR(2000),
author VARCHAR(100),
visited int DEFAULT 0,
resdate TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
desc notice;
drop table board;





CREATE TABLE board (
no INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(255),
content varchar(2000),
author VARCHAR(255),
datafile VARCHAR(255),
resdate DATETIME,
visited INT DEFAULT 0
);
desc board;
select * from board;


drop table qna;

CREATE TABLE qna (
no int auto_increment PRIMARY KEY,
plevel int,
parno int,
title VARCHAR(200),
content VARCHAR(2000),
resdate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
visited int DEFAULT 0,
aid VARCHAR(50)
);

desc qna;
select * from qna;


commit;