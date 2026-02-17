create database hospital;
use hospital;
create table rooms(ID int primary key auto_increment, name varchar(50), age tinyint, disease varchar(50), phone int, email varchar(50));
insert into rooms(name, age, disease, phone, email)
values ("Tina", 35, "TB", 64537383, "ags@gmail.com"),
("Hina", 40, "cancer", 7654389, "abc@gmail.com"),
("Mariya", 22, "cough", 75649837, "xyz@gmail.com");

select* from rooms;

alter table rooms add column address varchar(100);  # add column in table
alter table rooms change column phone mobile_no bigint;   # change the name of column in table
alter table rooms modify column age smallint;     # change the data type of column in table

update rooms
set mobile_no = "9651727284"       # single update
where ID= 1;

set sql_safe_updates = 0;
set sql_safe_updates = 1;
update rooms set address= "varanasi" where age >30;   # multiple range update

delete from room where ID = 1;

select name, age from room;

select * from room where age=35;
