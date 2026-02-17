-- create database NSTI_DCL;
-- USE NSTI_DCL;

-- create table students(
-- id int primary key,
-- name varchar(50),
-- course varchar(20));

-- insert into students values(
-- 1,"amit","BCA"),
-- (2,"vinay","MCA"),
-- (3,"Manisha","B.Tech");

-- select user, host from mysql.user;

-- # for read only 
-- grant select on NSTI_DCL.students to 'viewer'@'localhost';

-- # edit, read , modify
-- grant select,insert,update on NSTI_DCL.students to 'editor'@'localhost';

-- #Full Control 
-- grant all privileges on NSTI_DCL.students to 'admin'@'localhost';

-- #to apply all these permissions
-- flush privileges;

-- show grants for 'viewer'@'localhost';
-- show grants for 'editor'@'localhost';
-- show grants for 'admin'@'localhost';

-- drop database NSTI_DCL;



CREATE DATABASE NSTI_college;
USE NSTI_college;

 CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    course VARCHAR(50));
    
 CREATE TABLE fees (
    fee_id INT PRIMARY KEY,
    student_id INT,
    amount INT);
    
INSERT INTO students VALUES
(1, 'Amit', 'BCA'),
(2, 'Neha', 'MCA'),
(3, 'Rahul', 'B.Tech');

INSERT INTO fees VALUES
(101, 1, 30000),
(102, 2, 35000),
(103, 3, 40000);

create user 'students'@'localhost' identified with mysql_native_password by 'std@123';

create user 'accountant'@'localhost' identified with mysql_native_password by 'acc@123';

create user 'principal'@'localhost' identified with mysql_native_password by 'ppl@123';

# read only for students
grant select on NSTI_college.students to 'students'@'localhost';

# read and update
grant select,insert, update on NSTI_college.fees to 'accountant'@'localhost';

# all permissions
grant all privileges on  NSTI_college.* to 'principal'@'localhost';

flush privileges;

# show all permissions
show grants for 'students'@'localhost' ;
show grants for 'accountant'@'localhost';
show grants for 'principal'@'localhost';

select user();

# revoke permissions
revoke insert on NSTI_college.fees from  'accountant'@'localhost';
revoke update on NSTI_college.fees from 'accountant'@'localhost';
revoke select on NSTI_college.students from 'students'@'localhost';
flush privileges;





