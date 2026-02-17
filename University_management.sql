create database university;
use university;

create table students(
std_id int primary key,
name varchar(50),
email varchar(50),
address varchar(100),
DOB int);

create table faculty(
faculty_id int primary key,
name varchar(50),
designation varchar(50),
department_id int,
foreign key (department_id) references department(department_id));

create table course(
course_id int primary key,
course_name varchar(50),
duration tinyint,
department_id int,
foreign key (department_id) references department(department_id));

create table department(
department_id int primary key,
department_name varchar(50),
HOD varchar(50));

create table registration(
registration_id int primary key,
student_id int,
course_id int,
semester varchar(20),
year smallint,
foreign key (std_id) references student(std_id),
foreign key (course_id) references course(course_id));

create table classroom(
room_number int primary key,
building varchar(50),
capacity tinyint);

insert into students(Std_id,name, email, address, DOB)
values(101,"riya","rp12@gmail.com","Ayodhya",5-07-2006);

insert into faculty(faculty_id,name,designation,department_id)
values(100,"guest faculty","teacher",1001);

insert into course(course_id,course_name,duration,department_id)
values(1,"AIPA",12,1001);

insert into department(department_id,department_name,HOD)
VALUES(1001,"technical","ayush");

insert into registration(registration_id,student_id,course_id ,semester,year)
values(200,101,1,"first",2025);

insert into classroom(room_number,building,capacity)
values(15,"theory block",20);



