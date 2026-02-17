create database adv_sql;
use adv_sql;

CREATE TABLE Students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    course VARCHAR(50),
    marks INT,
    email VARCHAR(100)
);

-- Insert 10 sample records
INSERT INTO Students (id, name, course, marks, email) VALUES
(1, 'Amit Sharma', 'Computer Science', 85, 'amit.sharma@example.com'),
(2, 'Priya Verma', 'Information Technology', 90, 'priya.verma@example.com'),
(3, 'Rahul Singh', 'Data Science', 78, 'rahul.singh@example.com'),
(4, 'Sneha Gupta', 'Artificial Intelligence', 88, 'sneha.gupta@example.com'),
(5, 'Vikas Yadav', 'Cyber Security', 82, 'vikas.yadav@example.com'),
(6, 'Neha Patel', 'Machine Learning', 95, 'neha.patel@example.com'),
(7, 'Rohan Mehta', 'Software Engineering', 80, 'rohan.mehta@example.com'),
(8, 'Anjali Nair', 'Cloud Computing', 87, 'anjali.nair@example.com'),
(9, 'Karan Joshi', 'Database Systems', 76, 'karan.joshi@example.com'),
(10, 'Meera Iyer', 'Web Development', 89, 'meera.iyer@example.com');

CREATE view Students_view as
select name,course,marks
from Students;

select * from Students_view;

create view FD_std as
select name, course,marks
from Students 
where marks>80;

select * from FD_std;

## shows how view was created
show create view FD_std;

# update views
update Students_view
set marks =75
where name= 'Rohan Mehta';

delete from  Students_view where name ='Rohan Mehta';


## Apply on two tables

create table course(
course_id int primary key,
course_name varchar(20));

create table std (
id int primary key,
name varchar(50),
course_id int,
foreign key (course_id) references course(course_id));

insert into course values(1,"AIPA"),(2,"CSA"),(3,"COPA");


insert into std values
(101,"Amit",1),
(102,"Manisha",2),
(103,"Ravi",2),
(104,"Ram",1),
(105,"Harsh",3);

CREATE VIEW STD_NAME_COURSE AS
select s.id, s.name, c.course_name
from std s        ## alias (shorter form of table name)
join course c on s.course_id = c.course_id;

select* from STD_NAME_COURSE;

create view std_course as
select s.id, s.name, c.course_name
from std s
join course c on s.course_id = c.course_id
where c.course_name = "COPA";

select * from std_course;
 
----------------------------------------------------------------------------------------------------------------
#Stored procedures

CREATE TABLE Student_sp (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    age INT,
    course VARCHAR(50),
    marks INT,
    fee INT
);

INSERT INTO Student_sp (name, age, course, marks, fee) VALUES
('Amit', 20, 'AIPA', 78, 40000),
('Neha', 19, 'AIPA', 85, 42000),
('Rahul', 17, 'COPA', 65, 30000),
('Pooja', 21, 'COPA', 90, 35000),
('Karan', 18, 'AIPA', 72, 38000);

select * from  Student_sp;

delimiter $$
create procedure studentsDetail()
begin
	select * from  Student_sp;
end $$
delimiter ;

call studentsDetail();

delimiter $$
create procedure student_course(in course_name varchar(50))
begin 
	select* from Student_sp where course= course_name;
end $$
delimiter ;

call student_course("COPA");

DELIMITER $$
CREATE PROCEDURE Eligible()
begin
	SELECT name, age,
    if(age >=18,"Eligible","Not Eligible") as Remarks
    FROM Student_sp;
end $$
delimiter ;

call Eligible();

DELIMITER $$
CREATE procedure FeeIncrease(in course_name varchar(10))
begin 
	update Student_sp
    set fee = fee + 5000
    where course = course_name;
end$$
DELIMITER ;

call FeeIncrease("aipa");

call studentsDetail();

## functions in SQL
delimiter $$
create function Grades(marks int)
returns varchar(1)
deterministic
begin 
	if marks >=85 then
		return 'A';
	elseif marks >=70 then
		return 'B';
	else
		return 'C';
	end if;
end $$
delimiter ;

select name,marks,Grades(marks) as std_grades from Student_sp;

delimiter $$
create function FeeDiscount(fee int)
returns int
deterministic
begin
	return fee *0.10;
end $$
delimiter ;

select name, fee, FeeDiscount(fee) as Discounted_fee from Student_sp;

select name,marks,fee from Student_sp where Grades(marks)="A";

-- DROP procedure if exists FeeIncrease;
-- drop function if exists FeeDiscount;

---------------------------------------------------------------------------------------------------------
#Triggers

CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(100)
);

create table emp_trigger(
log int auto_increment primary key,
employee_id  int,
message varchar(100),
created_at timestamp default current_timestamp);

delimiter $$
create trigger after_insert
after insert on employees
for each row
begin
	insert into emp_trigger(employee_id, message)
    values (new.employee_id,concat('New employee added:',new.name));
end$$
delimiter ;

insert into employees(name,department)
values ("priya","admin");

select * from emp_trigger; 


delimiter $$
create trigger after_delete
after delete on employees
for each row
begin
	insert into emp_trigger(employee_id, message)
    values (old.employee_id,concat('Employee deleted:',old.name));
end$$
delimiter ;

delete from employees where employee_id=1;

delimiter $$
create trigger after_update
after update on employees
for each row 
begin
	insert into emp_trigger(employee_id, message)
    values (new.employee_id,concat('Updated employee:',old.name,'new name:',new.name));
end$$
delimiter ;

update employees set name ="akriti" where employee_id =2;

select * from emp_trigger; 
-- -------------------------------------------------------------------------------------------------
# Partition in SQL
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    region VARCHAR(20),
    amount DECIMAL(10,2)
);

INSERT INTO orders VALUES
(1,101,'2023-01-01','India',1200),(2,102,'2023-01-02','USA',900),
(3,103,'2023-01-03','UK',700),(4,104,'2023-01-04','India',1500),
(5,105,'2023-01-05','USA',1100),(6,106,'2023-01-06','UK',800),
(7,107,'2023-01-07','India',950),(8,108,'2023-01-08','USA',1250),
(9,109,'2023-01-09','UK',670),(10,110,'2023-01-10','India',1400),

(11,111,'2023-02-01','India',1000),(12,112,'2023-02-02','USA',1300),
(13,113,'2023-02-03','UK',900),(14,114,'2023-02-04','India',1600),
(15,115,'2023-02-05','USA',850),(16,116,'2023-02-06','UK',780),
(17,117,'2023-02-07','India',980),(18,118,'2023-02-08','USA',1450),
(19,119,'2023-02-09','UK',690),(20,120,'2023-02-10','India',1700),

(21,121,'2023-03-01','India',1150),(22,122,'2023-03-02','USA',950),
(23,123,'2023-03-03','UK',850),(24,124,'2023-03-04','India',1550),
(25,125,'2023-03-05','USA',1200),(26,126,'2023-03-06','UK',920),
(27,127,'2023-03-07','India',990),(28,128,'2023-03-08','USA',1350),
(29,129,'2023-03-09','UK',720),(30,130,'2023-03-10','India',1650),

(31,131,'2023-04-01','India',1250),(32,132,'2023-04-02','USA',1050),
(33,133,'2023-04-03','UK',880),(34,134,'2023-04-04','India',1580),
(35,135,'2023-04-05','USA',1180),(36,136,'2023-04-06','UK',940),
(37,137,'2023-04-07','India',1020),(38,138,'2023-04-08','USA',1480),
(39,139,'2023-04-09','UK',760),(40,140,'2023-04-10','India',1750),

(41,141,'2023-05-01','India',1300),(42,142,'2023-05-02','USA',980),
(43,143,'2023-05-03','UK',890),(44,144,'2023-05-04','India',1620),
(45,145,'2023-05-05','USA',1220),(46,146,'2023-05-06','UK',910),
(47,147,'2023-05-07','India',1010),(48,148,'2023-05-08','USA',1520),
(49,149,'2023-05-09','UK',740),(50,150,'2023-05-10','India',1800),

(51,151,'2024-01-01','India',1350),(52,152,'2024-01-02','USA',1100),
(53,153,'2024-01-03','UK',950),(54,154,'2024-01-04','India',1700),
(55,155,'2024-01-05','USA',1250),(56,156,'2024-01-06','UK',980),
(57,157,'2024-01-07','India',1080),(58,158,'2024-01-08','USA',1550),
(59,159,'2024-01-09','UK',820),(60,160,'2024-01-10','India',1850),

(61,161,'2024-02-01','India',1400),(62,162,'2024-02-02','USA',1150),
(63,163,'2024-02-03','UK',970),(64,164,'2024-02-04','India',1750),
(65,165,'2024-02-05','USA',1300),(66,166,'2024-02-06','UK',990),
(67,167,'2024-02-07','India',1100),(68,168,'2024-02-08','USA',1600),
(69,169,'2024-02-09','UK',840),(70,170,'2024-02-10','India',1900),

(71,171,'2024-03-01','India',1450),(72,172,'2024-03-02','USA',1200),
(73,173,'2024-03-03','UK',1000),(74,174,'2024-03-04','India',1780),
(75,175,'2024-03-05','USA',1350),(76,176,'2024-03-06','UK',1020),
(77,177,'2024-03-07','India',1120),(78,178,'2024-03-08','USA',1650),
(79,179,'2024-03-09','UK',860),(80,180,'2024-03-10','India',1950),

(81,181,'2024-04-01','India',1500),(82,182,'2024-04-02','USA',1250),
(83,183,'2024-04-03','UK',1050),(84,184,'2024-04-04','India',1820),
(85,185,'2024-04-05','USA',1400),(86,186,'2024-04-06','UK',1080),
(87,187,'2024-04-07','India',1150),(88,188,'2024-04-08','USA',1700),
(89,189,'2024-04-09','UK',900),(90,190,'2024-04-10','India',2000),

(91,191,'2024-05-01','India',1550),(92,192,'2024-05-02','USA',1300),
(93,193,'2024-05-03','UK',1100),(94,194,'2024-05-04','India',1850),
(95,195,'2024-05-05','USA',1450),(96,196,'2024-05-06','UK',1120),
(97,197,'2024-05-07','India',1180),(98,198,'2024-05-08','USA',1750),
(99,199,'2024-05-09','UK',920),(100,200,'2024-05-10','India',2100);

SELECT * FROM ORDERS;

# RANGE PARTITION

CREATE TABLE orders_range (
    order_id INT,
    customer_id INT,
    order_date DATE,
    region VARCHAR(20),
    amount DECIMAL(10,2))
partition by range (year(order_date ))
(partition part2023 values less than(2024),
partition part2024 values less than(2025));

select * from orders_range;

# to insert value from one to another table
insert into orders_range select * from orders;

select * from orders_range
where order_date = '2024-04-05';    ## for specific date

select * from orders_range
where (order_date between '2023-04-05' and '2024-01-01');    ## for a particular range


select * from orders_range
where order_date in ('2024-02-01','2024-02-05','2023-02-05');    ## for particular dates

select * from orders_range
where (order_date between '2023-04-05' and '2024-01-01')
or order_date in ('2024-02-01','2024-02-05','2023-02-05');     ## for both


## LIST PARTITION

CREATE TABLE orders_list (
    order_id INT,
    customer_id INT,
    order_date DATE,
    region VARCHAR(20),
    amount DECIMAL(10,2))
partition by list columns(region)
(partition India values in('India'),
partition USA values in('USA'),
partition UK values in('UK'));

insert into orders_list select * from orders;

select * from orders_list;

select * from orders_list
where region in ("USA","India");

## HASH PARTITION

CREATE TABLE orders_key (
    order_id INT,
    customer_id INT,
    order_date DATE,
    region VARCHAR(20),
    amount DECIMAL(10,2))
partition by key(customer_id)
partitions 5;

insert into orders_key select * from orders;

select * from orders_key
where customer_id= '177';






