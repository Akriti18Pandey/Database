create database dbdemo;
use dbdemo;
create table student (
	student_id int auto_increment primary key,
    student_name varchar(100) not null,
    email varchar(100) not null,
    enrollment_date date not null default(current_date()),
    specialisation varchar(100)
);

create table department(
	dept_id int auto_increment primary key,
    dept_name varchar(100) not null unique,
    dept_head varchar(100) not null
);

create table instructor(
	inst_id int auto_increment primary key,
    inst_name varchar(100) not null,
    email varchar(100) unique not null,
    dept_id int,
    foreign key (dept_id) references department(dept_id) on delete set null
);

create table course(
	course_id int auto_increment primary key,
    title varchar(100),
    credits int not null check(credits between 1 and 5),
    inst_id int,
    dept_id int not null,
    foreign key (inst_id) references instructor(inst_id) on delete set null,
    foreign key (dept_id) references department(dept_id) on delete cascade
);

create table enrollment(
	enroll_id int primary key auto_increment,
    student_id int not null,
    course_id int not null,
    enrollment_date date not null default(current_date()),
    grade enum('A','B','C','D','F','Incomplete') default 'Incomplete',
    unique(student_id, course_id),
    foreign key (student_id) references student(student_id) on delete cascade,
    foreign key (course_id) references course(course_id) on delete cascade
);

insert into student(student_name,email,specialisation) values
('Riya','riya123@gmail.com', 'AI'),
('Shreya','shreya@gmail.com', 'DS'),
('Akriti','akriti@gmail.com', 'Cyber'),
('Suraj','suraj@gmail.com', 'Web');

insert into department(dept_name,dept_head) values
('database','Dr.Hiren'),
('Data science', 'Dr, Gyatri'),
('Science', 'Dr.Shlok');

insert into instructor(inst_name,email,dept_id) values
('Sneha','sneha@gmail.com',1),
('Arti', 'arti@gmail.com',2),
('Rishi', 'rishi@gmail.com',1);

 
insert into course(title, credits, inst_id, dept_id) values 
('AI', 4, 1,1),
('Web',3,2,2),
('Web',4,3,1);

insert into enrollment(student_id,course_id,grade) values 
(1,1, 'A'),
(2,2, 'B'),
(3,3, 'B');

select * from student;
select * from department;
select * from instructor;
select * from course;
select * from enrollment;



UPDATE enrollment set grade='A' WHERE enroll_id = 3;

select * from student order by enrollment_date desc limit 5;

select s.student_name as Student, c.title as course, i.inst_name as instructor
from student s
join enrollment e using (student_id)
join course c using (course_id)
join instructor i on c.inst_id = i.inst_id;

select * from enrollment;

DELIMITER //
CREATE PROCEDURE enrollstud (in student_id int, in course_id int, in grd enum('A','B','C','D','F','Incomplete'))

BEGIN
INSERT into enrollment (student_id, course_id, grade) values (student_id, course_id, grd);
END //
DELIMITER ;

CALL enrollstud(4,3,'B');


